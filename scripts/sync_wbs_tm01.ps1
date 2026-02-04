# SCRIPT DE SINCRONIZACION WBS TM01
# Archivo: scripts/sync_wbs_tm01.ps1
# Version: 3.2 (Ultra-Safe Syntax)

param(
    [string]$SourcePath = "docs/data/tm01_master_data.js",
    [string]$TargetPath = "docs/datos_wbs_TM01_items.js",
    [string]$T05Path = "V. Ingenieria de Detalle"
)

function Write-Log([string]$msg) { 
    $ts = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
    Write-Host "[$ts] $msg" 
}

function Extract-T05 {
    param($Path)
    $map = @{
        "04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"                = "SOS (Postes de Auxilio)"
        "07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md"                 = "ETD/RADAR"
        "05_T05_Ingenieria_Detalle_CCTV_v1.0.md"                      = "CCTV (Seguridad)"
        "06_T05_Ingenieria_Detalle_PMV_v1.0.md"                       = "PMV (Mensajería Variable)"
        "10_T05_Ingenieria_Detalle_WIM_v1.0.md"                       = "WIM (Pesaje Dinámico)"
        "11_T05_Ingenieria_Detalle_Peaje_v1.0.md"                     = "Peajes"
        "01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md"              = "Fibra Óptica"
        "09_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md" = "METEO (Estaciones Meteorológicas)"
    }
    
    $results = @()
    foreach ($file in $map.Keys) {
        $fpath = Join-Path $Path $file
        if (Test-Path $fpath) {
            $sys = $map[$file]
            $lines = Get-Content $fpath -Encoding UTF8
            foreach ($l in $lines) {
                if ($l -match "\|\s*([^|]+)\s*\|\s*([^|]+)\s*\|\s*([0-9.,]+)\s*\|\s*([^|]+)\s*\|\s*\$?([0-9,.]+)\s*\|\s*\$?([0-9,.]+)\s*\|") {
                    $name = $Matches[2].Trim()
                    $total = $Matches[6].Trim() -replace ",", ""
                    if ($name -notmatch "TOTAL|CAPEX|---") {
                        $results += @{ Sistema = $sys; Componente = $name; Cantidad = $Matches[3].Trim(); Total = $total }
                    }
                }
                elseif ($l -match "\|\s*([^|]+)\s*\|\s*([0-9.,]+)\s*\|\s*\$?([0-9,.]+)\s*\|\s*\$?([0-9,.]+)\s*\|") {
                    $name = $Matches[1].Trim()
                    $total = $Matches[4].Trim() -replace ",", ""
                    if ($name -notmatch "TOTAL|CAPEX|---") {
                        $results += @{ Sistema = $sys; Componente = $name; Cantidad = $Matches[2].Trim(); Total = $total }
                    }
                }
            }
        }
    }
    return $results
}

try {
    Write-Log "Sync v3.2 start"
    $master = Get-Content $SourcePath -Raw -Encoding UTF8
    $match = [regex]::Match($master, "(?s)sistemas:\s*\[(.*?)\]")
    if (!$match.Success) { throw "No array" }
    
    $blocks = [regex]::Matches($match.Groups[1].Value, "(?s)\{.*?\}")
    $comps = Extract-T05 $T05Path
    $wbs_items = @()
    $i = 0
    
    foreach ($b in $blocks) {
        $i++
        $t = $b.Value
        $name = [regex]::Match($t, "sistema:\s*[`"']([^`"']+)").Groups[1].Value
        $cant = [regex]::Match($t, "cantidad:\s*(\d+)").Groups[1].Value
        $usd = [regex]::Match($t, "capexUSD:\s*([\d.]+)").Groups[1].Value
        $cop = [regex]::Match($t, "capexCOP:\s*([\d.]+)").Groups[1].Value
        
        $norm = $name.ToUpper() -replace "[^A-Z]", ""
        
        $wbs_items += "{ item: '$i', id: '$i', nivel: 1, descripcion: 'SISTEMA $($name.ToUpper())', sistema: '$name', tipo: 'capitulo' }"
        
        $found = $comps | Where-Object { ($_.Sistema.ToUpper() -replace "[^A-Z]", "") -eq $norm }
        if ($found.Count -gt 0) {
            $j = 0
            foreach ($f in $found) {
                $j++
                $id = "$i.1.$j"
                $cVal = [math]::Round([double]$f.Total * 4400)
                $wbs_items += "{ item: '$id', id: '$id', nivel: 3, descripcion: '$($f.Componente)', sistema: '$name', cantidad: '$($f.Cantidad)', total: '$($f.Total)', totalCOP: '$cVal', tipo: 'item' }"
            }
        }
        else {
            $id = "$i.1.1"
            $wbs_items += "{ item: '$id', id: '$id', nivel: 3, descripcion: '$name (Global)', sistema: '$name', cantidad: '$cant', total: '$usd', totalCOP: '$cop', tipo: 'item' }"
        }
    }
    
    $joined = $wbs_items -join ",`n"
    $date = Get-Date -Format "yyyy-MM-dd"
    $count = $wbs_items.Count
    $output = "window.wbsDataGlobal = { fecha: '$date', total: $count, items: [`n$joined`n] };"
    
    Set-Content $TargetPath $output -Encoding UTF8
    Write-Log "Success"
}
catch {
    Write-Host "Error: $($_.Exception.Message)"
    exit 1
}
