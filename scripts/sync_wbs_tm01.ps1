# SCRIPT DE SINCRONIZACION WBS TM01 CON EXTRACCION AUTOMATICA T05
# Archivo: scripts/sync_wbs_tm01.ps1
# Proposito: Sincronizar datos WBS + extraer componentes detallados de documentos T05
# Fecha: 23 de Enero 2026 (Updated - Role-based extraction)
# Version: 3.0

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
    Write-Log "=== INICIANDO SINCRONIZACION WBS TM01 V3.0 ==="
    
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
    "version": "3.0",
    "items": [
$JoinedItems
    ]
};
"@
    Set-Content -Path $TargetPath -Value $JSContent -Encoding UTF8
    Write-Log "Sincronizacion completada. Archivo generado: $TargetPath"
}

function Extract-ValidationDocs {
    param([string]$ValidationPath = "VII. Documentos Transversales")
    $OutputPath = "docs/data/validaciones_content.js"
    Write-Log "Iniciando extraccion de documentos de validacion desde: $ValidationPath"

    $validations = @{}
    $files = Get-ChildItem -Path $ValidationPath -Filter "*VALIDACION*.md"
    
    foreach ($file in $files) {
        $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8

        # --- AUDIT 6.0: NORMATIVE SANITIZATION (RETIE 2024 & IP/REV 2021) ---
        $content = $content -replace "Resolución 546 de 2018", "Resolución 20213040035125 (IP/REV)"
        $content = $content -replace "Res. 546/2018", "Res. 20213040035125 (IP/REV)"
        $content = $content -replace "Resolución 90708", "Resolución 40117 de 2024 (RETIE)"
        $content = $content -replace "RETIE 2013", "RETIE 2024 (Res. 40117)"
        # --------------------------------------------------------------------

        
        $sysKey = ""
        if ($file.Name -match "CCTV") { $sysKey = "CCTV" }
        elseif ($file.Name -match "SOS") { $sysKey = "SOS" }
        elseif ($file.Name -match "PMV") { $sysKey = "PMV" }
        elseif ($file.Name -match "WIM" -or $file.Name -match "PESAJE") { $sysKey = "WIM" }
        elseif ($file.Name -match "METEO") { $sysKey = "METEO" }
        elseif ($file.Name -match "FIBRA" -or $file.Name -match "TELECOM") { $sysKey = "FIBRA" }
        elseif ($file.Name -match "PEAJE") { $sysKey = "PEAJES" }
        elseif ($file.Name -match "CCO" -or $file.Name -match "CENTRO CONTROL") { $sysKey = "CCO" }
        elseif ($file.Name -match "RADIO") { $sysKey = "RADIO" }
        elseif ($file.Name -match "GALIBO") { $sysKey = "GALIBOS" }
        elseif ($file.Name -match "ETD" -or $file.Name -match "RADAR") { $sysKey = "ETD" }
        elseif ($file.Name -match "ILUMINACION") { $sysKey = "ILUMINACION" }
        elseif ($file.Name -match "SENALIZACION") { $sysKey = "SENALIZACION" }
        elseif ($file.Name -match "ENERGIA") { $sysKey = "ENERGIA" }
        
        if ($sysKey) {
            # Extract sections using stricter patterns to avoid matching the Definition Title (Level 1)
            # We target specific chapters usually found at Level 2
            $contractual = Get-SectionByKeyword $content 'RESUMEN|ANÁLISIS CONTRACTUAL|FUENTE CONTRACTUAL|OBLIGACI'
            $technical = Get-SectionByKeyword $content 'VALIDACIÓN DE CANTIDADES|ESPECIFICACIONES|UBICACIONES|ARQUITECTURA|COMPONENTES'
            $financial = Get-SectionByKeyword $content 'IMPACTO ECONÓMICO|PRESUPUESTO|COSTOS|CAPEX|APU'
            $risks = Get-SectionByKeyword $content 'RIESGOS|MITIGACIONES|DEFENSA|RECOMENDACIONES'
            
            # Robust JS escape for single-quoted strings
            # 1. Escape backslashes first (so we don't double escape later)
            # 2. Remove CR
            # 3. Escape Newline
            # 4. Escape Single Quotes
            
            $fullEsc = $content -replace "\\", "\\\\" -replace "`r", "" -replace "`n", "\\n" -replace "'", "\'"
            $contrEsc = $contractual -replace "\\", "\\\\" -replace "`r", "" -replace "`n", "\\n" -replace "'", "\'"
            $techEsc = $technical -replace "\\", "\\\\" -replace "`r", "" -replace "`n", "\\n" -replace "'", "\'"
            $finEsc = $financial -replace "\\", "\\\\" -replace "`r", "" -replace "`n", "\\n" -replace "'", "\'"
            $riskEsc = $risks -replace "\\", "\\\\" -replace "`r", "" -replace "`n", "\\n" -replace "'", "\'"
            
            $validations[$sysKey] = @{
                full        = $fullEsc
                contractual = $contrEsc
                technical   = $techEsc
                financial   = $finEsc
                risks       = $riskEsc
            }
        }
    }

    $jsContent = "window.validacionesData = {`n"
    foreach ($key in $validations.Keys) {
        $v = $validations[$key]
        $jsContent += "  '$key': {`n"
        $jsContent += "    full: '$($v.full)',`n"
        $jsContent += "    contractual: '$($v.contractual)',`n"
        $jsContent += "    technical: '$($v.technical)',`n"
        $jsContent += "    financial: '$($v.financial)',`n"
        $jsContent += "    risks: '$($v.risks)'`n"
        $jsContent += "  },`n"
    }
    $jsContent += "};`n"
    
    Set-Content -Path $OutputPath -Value $jsContent -Encoding UTF8
    Write-Log "Validaciones extraidas a: $OutputPath"
}

function Get-SectionByKeyword {
    param([string]$Content, [string]$Pattern)
    
    $lines = $Content -split "`n"
    $result = @()
    $capturing = $false
    $captureLevel = 0
    
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i].TrimEnd()
        
        # Detect Header
        if ($line -match '^(#{1,6})\s+(.+)$') {
            $level = $Matches[1].Length
            $title = $Matches[2]
            
            # If we are already capturing...
            if ($capturing) {
                # Stop if we hit a header of same or higher importance (smaller level number)
                # Example: If we started at ## (2), stop at ## (2) or # (1).
                # Note: We ALLOW subsections (###) to be captured.
                if ($level -le $captureLevel) {
                    break
                }
            }
            
            # Check if this header matches our target pattern
            if ($title -match $Pattern) {
                $capturing = $true
                $captureLevel = $level
                # Add the header itself to context
                $result += $line
                continue
            }
        }
        
        if ($capturing) {
            $result += $line
        }
    }
    
    return ($result -join "`n")
}

try {
    Start-WBSSyncV2
    Extract-ValidationDocs
    Write-Host "SCRIPT DE SINCRONIZACION COMPLETADO EXITOSAMENTE" -ForegroundColor Green
}
catch {
    Write-Log "ERROR detectado: $($_.Exception.Message)" "ERROR"
    Write-Error $_
    exit 1
}
