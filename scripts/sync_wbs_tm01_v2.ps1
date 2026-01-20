# SCRIPT DE SINCRONIZACIÓN WBS TM01 CON EXTRACCIÓN AUTOMÁTICA T05
# Archivo: scripts/sync_wbs_tm01_v2.ps1
# Propósito: Sincronizar datos WBS + extraer componentes detallados de documentos T05
# Fecha: 20 de Enero 2026
# Versión: 2.5 (Fixed Path Resolution & Regex)

param(
    [string]$SourcePathRelative = "..\docs\data\tm01_master_data.js",
    [string]$TargetPathRelative = "..\docs\datos_wbs_TM01_items.js",
    [string]$T05PathRelative = "..\V. Ingenieria de Detalle",
    [switch]$Verbose = $true
)

# Resolve Absolute Paths
$ScriptDir = $PSScriptRoot
$SourcePath = [System.IO.Path]::GetFullPath((Join-Path $ScriptDir $SourcePathRelative))
$TargetPath = [System.IO.Path]::GetFullPath((Join-Path $ScriptDir $TargetPathRelative))
$T05Path = [System.IO.Path]::GetFullPath((Join-Path $ScriptDir $T05PathRelative))

# Configuración de logging
if (!(Test-Path "$ScriptDir\logs")) { New-Item -ItemType Directory -Path "$ScriptDir\logs" -Force | Out-Null }
$LogFile = "$ScriptDir\logs\sync_wbs_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

function Write-Log {
    param([string]$Message)
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $LogEntry = "[$Timestamp] $Message"
    if ($Verbose) { Write-Host $LogEntry }
    Add-Content -Path $LogFile -Value $LogEntry -Encoding UTF8
}

function Extract-T05Components {
    param([string]$T05Path)
    Write-Log "Iniciando extracción T05 desde: $T05Path"
    
    $t05Mapping = @{
        "04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"                = "Postes SOS"
        "07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md"                 = "ETD/RADAR"
        "05_T05_Ingenieria_Detalle_CCTV_v1.0.md"                      = "CCTV"
        "06_T05_Ingenieria_Detalle_PMV_v1.0.md"                       = "PMV"
        "10_T05_Ingenieria_Detalle_WIM_v1.0.md"                       = "WIM"
        "01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md"              = "Telecomunicaciones"
        "08_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md" = "Estaciones Meteorológicas"
    }
    
    $allComponents = @()
    foreach ($file in $t05Mapping.Keys) {
        $filePath = Join-Path $T05Path $file
        $sistema = $t05Mapping[$file]
        
        if (Test-Path $filePath) {
            Write-Log "Procesando $file"
            $content = Get-Content $filePath -Raw -Encoding UTF8
            # Regex for table rows
            $pattern = '\|\s*([^|]+?)\s*\|\s*(\d+)\s*\|\s*\$?\s*([0-9,.]+)\s*\|\s*\$?\s*([0-9,.]+)\s*\|'
            $matches = [regex]::Matches($content, $pattern)
            
            foreach ($match in $matches) {
                $comp = $match.Groups[1].Value.Trim()
                $cant = $match.Groups[2].Value.Trim()
                $vu = $match.Groups[3].Value.Trim() -replace ',', '' -replace '\s+', ''
                $tot = $match.Groups[4].Value.Trim() -replace ',', '' -replace '\s+', ''
                
                if ($comp -notmatch "SUBTOTAL|TOTAL|CAPEX|OPEX|% del Total|Item|Ítem" -and $comp.Length -gt 2) {
                    $allComponents += @{ Sistema = $sistema; Componente = $comp; Cantidad = $cant; CostoUnit = $vu; Total = $tot }
                }
            }
        }
    }
    return $allComponents
}

function Start-WBSSync {
    Write-Log "Sync Start"
    Write-Log "Source: $SourcePath"
    
    if (!(Test-Path $SourcePath)) { throw "Source file not found: $SourcePath" }
    
    $T05Comps = Extract-T05Components -T05Path $T05Path
    
    $SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
    $SystemsMatch = [regex]::Match($SourceContent, 'this\.data\.sistemas\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    if (!$SystemsMatch.Success) { throw "No systems found in Master Data" }
    
    $SystemsContent = $SystemsMatch.Groups[1].Value
    # Extract blocks {...}
    $SystemBlocks = [regex]::Matches($SystemsContent, '\{[^{}]*\}')
    
    $AllWBSItems = @()
    $idx = 0
    foreach ($block in $SystemBlocks) {
        $idx++
        $text = $block.Value
        
        $sysName = [regex]::Match($text, "sistema:\s*'([^']+)'").Groups[1].Value
        $cantStr = [regex]::Match($text, "cantidad:\s*(\d+)").Groups[1].Value
        $capexTotalVal = [regex]::Match($text, "capexUSD:\s*([\d.]+)").Groups[1].Value
        $capexCOPVal = [regex]::Match($text, "capexCOP:\s*([\d.]+)").Groups[1].Value
        
        if (!$sysName) { continue }
        
        $capId = "$idx"
        $AllWBSItems += "{ item: '$capId', descripcion: 'SISTEMA $($sysName.ToUpper())', id: '$capId', nivel: 1, tipo: 'capitulo', sistema: '$sysName' }"
        $AllWBSItems += "{ item: '$capId.1', descripcion: 'SUMINISTROS $($sysName.ToUpper())', id: '$capId.1', nivel: 2, tipo: 'subcapitulo', sistema: '$sysName' }"
        
        $sysComps = $T05Comps | Where-Object { $_.Sistema -eq $sysName }
        if ($sysComps.Count -gt 0) {
            $subIdx = 0
            foreach ($c in $sysComps) {
                $subIdx++
                $itemId = "$capId.1.$subIdx"
                $vuVal = [double]($c.CostoUnit)
                $totVal = [double]($c.Total)
                $vuCOP = [math]::Round($vuVal * 4000).ToString()
                $totalCOP = [math]::Round($totVal * 4000).ToString()
                $AllWBSItems += "{ item: '$itemId', descripcion: '$($c.Componente)', id: '$itemId', nivel: 3, cantidad: '$($c.Cantidad)', vuCOP: '$vuCOP', criterio: 'T05', unidad: 'UND', vu: '$vuVal', sistema: '$sysName', totalCOP: '$totalCOP', tipo: 'item', total: '$totVal' }"
            }
        }
        else {
            $AllWBSItems += "{ item: '$capId.1.1', descripcion: '$sysName - Completo', id: '$capId.1.1', nivel: 3, cantidad: '$cantStr', sistema: '$sysName', totalCOP: '$capexCOPVal', tipo: 'item', total: '$capexTotalVal', vu: '$capexTotalVal' }"
        }
    }
    
    $JSHeader = "window.wbsDataGlobal = window.datos_wbs = {`r`n    'fecha_actualizacion': '$(Get-Date -Format 'yyyy-MM-dd')',`r`n    'total_items': $($AllWBSItems.Count),`r`n    'version': '2.5',`r`n    'items': ["
    $JSFooter = "`r`n    ]`r`n};"
    $JSBody = $AllWBSItems -join ",`r`n"
    
    $FinalContent = $JSHeader + "`r`n" + $JSBody + $JSFooter
    Set-Content -Path $TargetPath -Value $FinalContent -Encoding UTF8
    Write-Log "Sync complete: $TargetPath"
}

try {
    Start-WBSSync
}
catch {
    Write-Error "CRITICAL ERROR: $($_.Exception.Message)"
    exit 1
}
