# Script para analizar costos base vs costos actuales
# Archivo: analizar_costos_base.ps1

Write-Host "=== ANALISIS DE COSTOS BASE vs COSTOS ACTUALES ===" -ForegroundColor Green

# Costos base de la imagen (en COP)
$costosBase = @{
    "SISTEMA DE TELEFONIA DE EMERGENCIA" = 6789105265.12
    "ESTACION METEOROLOGICA" = 486775340.32
    "PANEL DE MENSAJERIA VARIABLE" = 10900277831.53
    "SISTEMA DE CONTROL DE ALTURA" = 2419254965.76
    "ESTACION TOMA DE DATOS" = 1715153656.10
    "SISTEMA DE CCTV" = 1894483630.89
    "FIBRA OPTICA Y COMUNICACIONES" = 16324858316.04
    "PEAJE" = 3352522807.88
    "PESAJE (Basculas sentido Sur y Norte)" = 3291697319.71
    "RADIO COMUNICACIONES" = 1812038101.41
    "CCO" = 3934077022.50
    "CONTROL DE ACCESOS EN PEAJE" = 78424521.25
    "PASO ELEVADO FIBRA OPTICA" = 82081639
    "BASCULAS DINAMICAS EN ZONA DE PEAJE" = 3182719610
}

# Mapeo de sistemas base a nuestros sistemas
$mapeoSistemas = @{
    "SISTEMA DE TELEFONIA DE EMERGENCIA" = "SOS"
    "ESTACION METEOROLOGICA" = "METEO"
    "PANEL DE MENSAJERIA VARIABLE" = "PMV"
    "SISTEMA DE CONTROL DE ALTURA" = "GALIBOS"
    "ESTACION TOMA DE DATOS" = "ETD/RADAR"
    "SISTEMA DE CCTV" = "CCTV"
    "FIBRA OPTICA Y COMUNICACIONES" = "TELECOM"
    "PEAJE" = "PEAJES"
    "PESAJE (Basculas sentido Sur y Norte)" = "WIM"
    "RADIO COMUNICACIONES" = "TELECOM"
    "CCO" = "CCO"
    "CONTROL DE ACCESOS EN PEAJE" = "PEAJES"
    "PASO ELEVADO FIBRA OPTICA" = "TELECOM"
    "BASCULAS DINAMICAS EN ZONA DE PEAJE" = "WIM"
}

# Leer datos actuales
$masterDataPath = "Sistema_Validacion_Web/data/tm01_master_data.js"
if (Test-Path $masterDataPath) {
    $content = Get-Content $masterDataPath -Raw
    
    # Extraer datos WBS usando regex
    $wbsPattern = 'this\.data\.wbs\s*=\s*\[(.*?)\];'
    if ($content -match $wbsPattern) {
        $wbsContent = $matches[1]
        
        # Parsear items individuales
        $itemPattern = '\{id:\s*''([^'']+)'',\s*nivel:\s*(\d+),\s*item:\s*"([^"]+)",\s*descripcion:\s*"([^"]+)",\s*sistema:\s*"([^"]+)",\s*tipo:\s*"([^"]+)"(?:,\s*cantidad:\s*"([^"]+)"(?:,\s*unidad:\s*"([^"]+)"(?:,\s*tipo:\s*"([^"]+)"(?:,\s*criterio:\s*"([^"]+)"(?:,\s*vu:\s*"([^"]+)"(?:,\s*vuCOP:\s*"([^"]+)"(?:,\s*total:\s*"([^"]+)"(?:,\s*totalCOP:\s*"([^"]+)")?)?)?)?)?)?)?)?)?)?)?'
        
        $items = @()
        $wbsContent | Select-String -Pattern $itemPattern -AllMatches | ForEach-Object {
            $_.Matches | ForEach-Object {
                $item = @{
                    id = $_.Groups[1].Value
                    nivel = [int]$_.Groups[2].Value
                    item = $_.Groups[3].Value
                    descripcion = $_.Groups[4].Value
                    sistema = $_.Groups[5].Value
                    tipo = $_.Groups[6].Value
                    cantidad = $_.Groups[7].Value
                    unidad = $_.Groups[8].Value
                    vu = $_.Groups[11].Value
                    vuCOP = $_.Groups[12].Value
                    total = $_.Groups[13].Value
                    totalCOP = $_.Groups[14].Value
                }
                $items += $item
            }
        }
        
        # Calcular totales por sistema
        $totalesActuales = @{}
        $items | Where-Object { $_.nivel -eq 3 -and $_.sistema -and $_.totalCOP } | ForEach-Object {
            $sistema = $_.sistema
            $costo = [double]($_.totalCOP -replace ',', '')
            
            if (-not $totalesActuales.ContainsKey($sistema)) {
                $totalesActuales[$sistema] = 0
            }
            $totalesActuales[$sistema] += $costo
        }
        
        Write-Host "`n=== COMPARACION DE COSTOS ===" -ForegroundColor Yellow
        Write-Host "Sistema | Costo Base (COP) | Costo Actual (COP) | Diferencia | % Dif" -ForegroundColor Cyan
        Write-Host "--------|------------------|-------------------|------------|-------" -ForegroundColor Cyan
        
        $totalBase = 0
        $totalActual = 0
        
        foreach ($sistemaBase in $costosBase.Keys) {
            $costoBase = $costosBase[$sistemaBase]
            $sistemaActual = $mapeoSistemas[$sistemaBase]
            
            if ($totalesActuales.ContainsKey($sistemaActual)) {
                $costoActual = $totalesActuales[$sistemaActual]
                $diferencia = $costoActual - $costoBase
                $porcentaje = if ($costoBase -ne 0) { ($diferencia / $costoBase) * 100 } else { 0 }
                
                $color = if ($diferencia -gt 0) { "Red" } else { "Green" }
                
                Write-Host "$($sistemaBase.Substring(0, [Math]::Min(20, $sistemaBase.Length))) | $($costoBase.ToString('N0')) | $($costoActual.ToString('N0')) | $($diferencia.ToString('N0')) | $($porcentaje.ToString('F1'))%" -ForegroundColor $color
                
                $totalBase += $costoBase
                $totalActual += $costoActual
            } else {
                Write-Host "$($sistemaBase.Substring(0, [Math]::Min(20, $sistemaBase.Length))) | $($costoBase.ToString('N0')) | NO ENCONTRADO | - | -" -ForegroundColor Red
                $totalBase += $costoBase
            }
        }
        
        Write-Host "`n=== RESUMEN GENERAL ===" -ForegroundColor Yellow
        $diferenciaTotal = $totalActual - $totalBase
        $porcentajeTotal = if ($totalBase -ne 0) { ($diferenciaTotal / $totalBase) * 100 } else { 0 }
        
        Write-Host "Total Base: $($totalBase.ToString('N0')) COP" -ForegroundColor White
        Write-Host "Total Actual: $($totalActual.ToString('N0')) COP" -ForegroundColor White
        Write-Host "Diferencia: $($diferenciaTotal.ToString('N0')) COP" -ForegroundColor $(if ($diferenciaTotal -gt 0) { "Red" } else { "Green" })
        Write-Host "Porcentaje: $($porcentajeTotal.ToString('F2'))%" -ForegroundColor $(if ($diferenciaTotal -gt 0) { "Red" } else { "Green" })
        
        # Análisis detallado por sistema
        Write-Host "`n=== ANALISIS DETALLADO ===" -ForegroundColor Yellow
        foreach ($sistema in $totalesActuales.Keys) {
            Write-Host "`nSistema: $sistema" -ForegroundColor Cyan
            Write-Host "Costo Actual: $($totalesActuales[$sistema].ToString('N0')) COP" -ForegroundColor White
            
            # Buscar sistemas base correspondientes
            $sistemasBase = $mapeoSistemas.GetEnumerator() | Where-Object { $_.Value -eq $sistema }
            if ($sistemasBase) {
                foreach ($sistemaBase in $sistemasBase) {
                    $costoBase = $costosBase[$sistemaBase.Key]
                    Write-Host "  - $($sistemaBase.Key): $($costoBase.ToString('N0')) COP" -ForegroundColor Gray
                }
            }
        }
        
    } else {
        Write-Host "No se pudo extraer datos WBS del archivo" -ForegroundColor Red
    }
} else {
    Write-Host "Archivo de datos maestros no encontrado: $masterDataPath" -ForegroundColor Red
}

Write-Host "`n=== ANALISIS COMPLETADO ===" -ForegroundColor Green