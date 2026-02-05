# SCRIPT DE SINCRONIZACION WBS TM01
# Version: 3.10 (Budget Table Discrimination)

$SourcePath = 'docs/data/tm01_master_data.js'
$TargetPath = 'docs/datos_wbs_TM01_items.js'
$T05Path = 'V. Ingenieria de Detalle'

function WL($m) { Write-Host (Get-Date -UFormat '%H:%M:%S') $m }

function SN($n) {
    if (!$n) { return "" }
    $o = ""
    foreach ($c in $n.ToUpper().ToCharArray()) {
        if ([char]::IsLetter($c)) { $o += $c }
    }
    return $o
}

function EX($p) {
    $m = @{
        '04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md'                = 'SOS (Postes de Auxilio)'
        '07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md'                 = 'ETD/RADAR'
        '05_T05_Ingenieria_Detalle_CCTV_v1.0.md'                      = 'CCTV (Seguridad)'
        '06_T05_Ingenieria_Detalle_PMV_v1.0.md'                       = 'PMV (Mensajería Variable)'
        '10_T05_Ingenieria_Detalle_WIM_v1.0.md'                       = 'WIM (Pesaje Dinámico)'
        '11_T05_Ingenieria_Detalle_Peaje_v1.0.md'                     = 'Peajes'
        '01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md'              = 'Fibra Óptica'
        '09_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md' = 'METEO (Estaciones Meteorológicas)'
        '08_T05_Ingenieria_Detalle_Galibos_v1.0.md'                   = 'Gálibos'
    }
    $r = @()
    foreach ($f in $m.Keys) {
        $fp = Join-Path $p $f
        if (Test-Path $fp) {
            $s = $m[$f]
            $l = Get-Content $fp -Encoding UTF8
            $currentType = 'SUMINISTRO' # Default
            foreach ($line in $l) {
                $t = $line.Trim()
                
                # Detect the type from headers or special lines
                if ($t -match 'SUMINISTRO|EQUIPO') { $currentType = 'SUMINISTRO' }
                elseif ($t -match 'OBRA|CIVIL|INSTALACI[OÓ]N|MONTAJE|CIMENTACI[OÓ]N') { $currentType = 'OBRA' }
                elseif ($t -match 'SERVICIO|INGENIER[IÍ]A|PRUEBAS') { $currentType = 'SERVICIO' }
                
                # CRITICAL: Only extract rows with currency symbols ($) to avoid location tables
                if ($t.StartsWith('|') -and $t.EndsWith('|') -and $t.Contains('$')) {
                    $parts = $t.Split('|')
                    if ($parts.Count -ge 5) {
                        # Logic to avoid headers and separators
                        $c1 = $parts[1].Trim()
                        if ($c1.Length -gt 0 -and $c1 -notmatch '---' -and $c1 -notmatch 'Ítem|Componente|Tipo') {
                            $obj = @{ Sistema = $s; Componente = $c1; Cantidad = '1'; Total = '0'; Tipo = $currentType; Unidad = '' }
                            
                            $rawT = ''
                            if ($parts.Count -ge 7) {
                                # New format: | Ítem | Desc | Und | Cant | VU | Total |
                                $obj.Componente = $parts[2].Trim()
                                if ($obj.Componente -eq '') { $obj.Componente = $parts[1].Trim() }
                                $obj.Unidad = $parts[3].Trim()
                                $obj.Cantidad = $parts[4].Trim()
                                $rawT = [regex]::Replace($parts[6].Trim(), '[^0-9.]', '')
                            }
                            else {
                                # Old format: | Comp | Cant | Total |
                                $obj.Cantidad = $parts[2].Trim()
                                $rawT = [regex]::Replace($parts[4].Trim(), '[^0-9.]', '')
                            }
                            
                            if ($rawT -match '^[0-9]{3,}$') {
                                # Only accept numbers with 3 or more digits (real prices)
                                $obj.Total = $rawT
                                if ($obj.Componente -notmatch 'TOTAL' -and $obj.Componente -notmatch 'CAPEX' -and $obj.Componente -notmatch '---') { 
                                    $r += $obj 
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return $r
}

try {
    WL 'Sync 3.10 start'
    $txt = Get-Content $SourcePath -Encoding UTF8 -Raw
    $idx1 = $txt.IndexOf('sistemas: [')
    if ($idx1 -lt 0) { throw "No systems array" }
    $idx2 = $txt.IndexOf('],', $idx1)
    $sc = $txt.Substring($idx1, $idx2 - $idx1)
    
    $cs = EX $T05Path
    $items = @()
    $c = 0
    
    $blks = $sc.Split('}')
    foreach ($b in $blks) {
        if ($b.IndexOf('sistema:') -ge 0) {
            $c++
            $n = $b.Substring($b.IndexOf('sistema:') + 8).Split(',')[0].Replace('"', '').Replace("'", "").Trim()
            $qt = $b.Substring($b.IndexOf('cantidad:') + 9).Split(',')[0].Trim()
            $u = $b.Substring($b.IndexOf('capexUSD:') + 9).Split(',')[0].Trim()
            $cp = $b.Substring($b.IndexOf('capexCOP:') + 9).Split(',')[0].Trim()
            
            $norm = SN $n
            $iSt = $c.ToString()
            
            $items += '{ item: ' + "'" + $iSt + "'" + ', id: ' + "'" + $iSt + "'" + ', nivel: 1, descripcion: ' + "'" + 'SISTEMA ' + $n.ToUpper() + "'" + ', sistema: ' + "'" + $n + "'" + ', tipo: ' + "'" + 'capitulo' + "'" + ' }'
            
            $f = $cs | Where-Object { (SN $_.Sistema) -eq $norm }
            if ($f.Count -gt 0) {
                $j = 0
                foreach ($row in $f) {
                    $j++
                    $id = $iSt + '.1.' + $j.ToString()
                    $tv = [double]$row.Total
                    $cv = [math]::Round($tv * 4400)
                    $items += '{ item: ' + "'" + $id + "'" + ', id: ' + "'" + $id + "'" + ', nivel: 3, descripcion: ' + "'" + $row.Componente + "'" + ', sistema: ' + "'" + $n + "'" + ', cantidad: ' + "'" + $row.Cantidad + "'" + ', unidad: ' + "'" + $row.Unidad + "'" + ', totalUSD: ' + $tv + ', totalCOP: ' + $cv + ', tipo: ' + "'" + 'item' + "'" + ', tipo_presupuesto: ' + "'" + $row.Tipo + "'" + ' }'
                }
            }
            else {
                $id = $iSt + '.1.1'
                $items += '{ item: ' + "'" + $id + "'" + ', id: ' + "'" + $id + "'" + ', nivel: 3, descripcion: ' + "'" + $n + ' (Global)' + "'" + ', sistema: ' + "'" + $n + "'" + ', cantidad: ' + "'" + $qt + "'" + ', totalUSD: ' + $u + ', totalCOP: ' + $cp + ', tipo: ' + "'" + 'item' + "'" + ', tipo_presupuesto: ' + "'" + 'SUMINISTRO' + "'" + ' }'
            }
        }
    }
    
    $joined = $items -join ",`n"
    $d = (Get-Date).ToString('yyyy-MM-dd')
    $t = $items.Count
    $o = "window.wbsDataGlobal = { fecha: '$d', total: $t, items: [`n" + $joined + "`n] };"
    
    Set-Content $TargetPath $o -Encoding UTF8
    WL 'Sync success'
}
catch {
    Write-Host 'Error: ' $_.Exception.Message
    exit 1
}
