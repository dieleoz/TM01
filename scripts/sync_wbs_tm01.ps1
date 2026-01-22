# SCRIPT DE SINCRONIZACION WBS TM01 CON EXTRACCION AUTOMATICA T05
# Archivo: scripts/sync_wbs_tm01.ps1
# Proposito: Sincronizar datos WBS + extraer componentes detallados de documentos T05
# Fecha: 21 de Enero 2026 (Updated)
# Version: 2.9 (ASCII only Matching)

param(
    [string]$SourcePath = "docs/data/tm01_master_data.js",
    [string]$TargetPath = "docs/datos_wbs_TM01_items.js",
    [string]$T05Path = "V. Ingenieria de Detalle",
    [switch]$Verbose = $true,
    [switch]$DryRun = $false,
    [switch]$ExtractT05 = $true
)

# Configuracion de logging
if (!(Test-Path "logs")) { New-Item -ItemType Directory -Path "logs" -Force | Out-Null }
$LogFile = "logs/sync_wbs_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
$ErrorLogFile = "logs/sync_wbs_errors_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

function Write-Log {
    param([string]$Message, [string]$Level = "INFO")
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $LogEntry = "[$Timestamp] [$Level] $Message"
    if ($Verbose) { Write-Host $LogEntry }
    Add-Content -Path $LogFile -Value $LogEntry -Encoding UTF8
    if ($Level -eq "ERROR") { Add-Content -Path $ErrorLogFile -Value $LogEntry -Encoding UTF8 }
}

function Extract-T05Components {
    param([string]$T05Path)
    Write-Log "Iniciando extraccion de componentes T05 desde: $T05Path"
    
    $t05Mapping = @{
        "04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"                = "SOS"
        "07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md"                 = "ETD/RADAR"
        "05_T05_Ingenieria_Detalle_CCTV_v1.0.md"                      = "CCTV"
        "06_T05_Ingenieria_Detalle_PMV_v1.0.md"                       = "PMV"
        "10_T05_Ingenieria_Detalle_WIM_v1.0.md"                       = "WIM"
        "11_T05_Ingenieria_Detalle_Peaje_v1.0.md"                     = "Peajes"
        "01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md"              = "Telecomunicaciones"
        "09_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md" = "METEO"
    }

    $allComponents = @()
    foreach ($file in $t05Mapping.Keys) {
        $filePath = Join-Path $T05Path $file
        $defaultSistema = $t05Mapping[$file]
        
        if (Test-Path $filePath) {
            Write-Log "Procesando file: $file"
            $lines = Get-Content $filePath -Encoding UTF8
            
            $currentSistema = $defaultSistema
            $ignoreCurrentTable = $false
            
            $typesTableProcessed = $false
            
            foreach ($line in $lines) {
                if ($line -match '\|\s*Componente\s*\|') { 
                    $ignoreCurrentTable = $true 
                    Write-Log "  -> Ignorando tabla detallada: Componentes"
                    continue
                }
                if ($line -match '\|\s*(Tipo|Item)\s*\|') { 
                    if ($typesTableProcessed) {
                        $ignoreCurrentTable = $true
                        Write-Log "  -> Ignorando tabla duplicada de Tipos"
                        continue
                    }
                    $ignoreCurrentTable = $false 
                    $typesTableProcessed = $true
                    Write-Log "  -> Procesando tabla resumenPrincipal: Tipos/Items"
                    continue
                }
                if ($ignoreCurrentTable) { continue }

                if ($file -match "07_T05_Ingenieria_Detalle_RADAR_ETD") {
                    if ($line -match "###.*1\.\s+ETD") { $currentSistema = "ETD/RADAR" }
                    elseif ($line -match "###.*2\.\s+RADARES SANCIONATORIOS") { $currentSistema = "SAST (Sancionatorio)" }
                    elseif ($line -match "###.*3\.\s+RADARES PEDAG") { $currentSistema = "RADAR PEDAGOGICO" }
                }

                if ($line -match '\|\s*([^|]+?)\s*\|\s*([0-9.,]+)\s*\|\s*\$?([0-9,.]+)\s*\|\s*\$?([0-9,.]+)\s*\|') {
                    $compName = $Matches[1].Trim()
                    $cant = $Matches[2].Trim()
                    $costo = $Matches[3].Trim() -replace ',', ''
                    $total = $Matches[4].Trim() -replace ',', ''

                    if ($compName -notmatch "SUBTOTAL|TOTAL|CAPEX|OPEX|% del Total|Item" -and $compName.Length -gt 2 -and $compName -notmatch "^\d+\.\d+" -and $compName -notmatch "^(UND|GLB|ML|M3|KG|HH|M2)$") {
                        # Deduplication Check
                        $exists = $allComponents | Where-Object { $_.Sistema -eq $currentSistema -and $_.Componente -eq $compName }
                        if (-not $exists) {
                            $allComponents += @{
                                Sistema    = $currentSistema
                                Componente = $compName
                                Cantidad   = $cant
                                CostoUnit  = $costo
                                Total      = $total
                                Archivo    = $file
                            }
                        }
                    }
                }
            }
        }
    }
    Write-Log "Total componentes extraidos: $($allComponents.Count)"
    return $allComponents
}

function Start-WBSSyncV2 {
    Write-Log "=== INICIANDO SINCRONIZACION WBS TM01 V2.9 ==="
    
    if (!(Test-Path $SourcePath)) {
        throw "No se encuentra el archivo de datos maestro: $SourcePath"
    }

    $SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
    $SystemsMatch = [regex]::Match($SourceContent, 'this\.data\.sistemas\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    
    if (!$SystemsMatch.Success) {
        throw "No se encontro el array de sistemas en $SourcePath"
    }

    $SystemsContent = $SystemsMatch.Groups[1].Value
    $SystemBlocks = [regex]::Matches($SystemsContent, '\{[^{}]*\}')
    
    $T05Comps = Extract-T05Components -T05Path $T05Path
    $AllWBSItems = @()
    $idx = 0
    
    foreach ($block in $SystemBlocks) {
        $idx++
        $text = $block.Value
        $sysName = [regex]::Match($text, "sistema:\s*'([^']+)'").Groups[1].Value
        # Extreme normalization to ASCII only for comparison
        $sysNameNorm = $sysName.ToUpper() -replace '[^A-Z/]', ''

        $cantString = [regex]::Match($text, "cantidad:\s*(\d+)").Groups[1].Value
        $capexUnit = [regex]::Match($text, "capexUnitarioUSD:\s*([\d.]+)").Groups[1].Value
        $capexTotal = [regex]::Match($text, "capexUSD:\s*([\d.]+)").Groups[1].Value
        $capexCOP = [regex]::Match($text, "capexCOP:\s*([\d.]+)").Groups[1].Value
        
        if (!$sysName) { continue }
        
        $capId = "$idx"
        $sysUpper = $sysName.ToUpper()
        
        # L1 - Capitulo
        $AllWBSItems += "{ item: '$capId', descripcion: 'SISTEMA $sysUpper', id: '$capId', nivel: 1, cantidad: '', vuCOP: '', criterio: '', unidad: '', vu: '', sistema: '$sysName', totalCOP: '', tipo: 'capitulo', total: '' }"
        
        # L2 - Subcapitulo
        $AllWBSItems += "{ item: '$capId.1', descripcion: 'SUMINISTROS $sysUpper', id: '$capId.1', nivel: 2, cantidad: '', vuCOP: '', criterio: '', unidad: '', vu: '', sistema: '$sysName', totalCOP: '', tipo: 'subcapitulo', total: '' }"
        
        # L3 - items
        $sysComps = $T05Comps | Where-Object { 
            $cNorm = $_.Sistema.ToUpper() -replace '[^A-Z/]', ''
            $cNorm -eq $sysNameNorm 
        }
        
        if ($sysComps.Count -gt 0) {
            $subIdx = 0
            foreach ($c in $sysComps) {
                $subIdx++
                $itemId = "$capId.1.$subIdx"
                $vu = $c.CostoUnit
                $total = $c.Total
                $vuCOP = [math]::Round([double]$vu * 4000).ToString()
                $totalCOP = [math]::Round([double]$total * 4000).ToString()
                
                $desc = $c.Componente -replace "'", ""
                $tipoPresupuesto = if ($desc -match "Tipo A") { "SUMINISTRO" } else { "" }
                $propertyTipo = if ($tipoPresupuesto) { ", tipo_presupuesto: '$tipoPresupuesto'" } else { "" }
                
                $AllWBSItems += "{ item: '$itemId', descripcion: '$desc', id: '$itemId', nivel: 3, cantidad: '$($c.Cantidad)', vuCOP: '$vuCOP', criterio: 'T05', unidad: 'UND', vu: '$vu', sistema: '$sysName', totalCOP: '$totalCOP', tipo: 'item', total: '$total'$propertyTipo }"
            }
        }
        else {
            # Fallback a item resumen
            $AllWBSItems += "{ item: '$capId.1.1', descripcion: '$sysName - Sistema completo', id: '$capId.1.1', nivel: 3, cantidad: '$cantString', vuCOP: '$capexCOP', criterio: 'Validado', unidad: 'UND', vu: '$capexUnit', sistema: '$sysName', totalCOP: '$capexCOP', tipo: 'item', total: '$capexTotal' }"
        }
    }
    
    $JoinedItems = $AllWBSItems -join ",`n"
    $Fecha = Get-Date -Format "yyyy-MM-dd"
    $TotalCount = $AllWBSItems.Count
    
    $JSContent = @"
window.wbsDataGlobal = window.datos_wbs = {
    "fecha_actualizacion": "$Fecha",
    "total_items": $TotalCount,
    "version": "2.9",
    "items": [
$JoinedItems
    ]
};
"@
    Set-Content -Path $TargetPath -Value $JSContent -Encoding UTF8
    Write-Log "Sincronizacion completada. Archivo generado: $TargetPath"
}

try {
    Start-WBSSyncV2
    Write-Host "SCRIPT DE SINCRONIZACION COMPLETADO EXITOSAMENTE" -ForegroundColor Green
}
catch {
    Write-Log "ERROR detectado: $($_.Exception.Message)" "ERROR"
    Write-Error $_
    exit 1
}
