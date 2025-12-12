# Script simple para generar layout completo
Write-Host "Generando layout completo..." -ForegroundColor Green

$dir = 'IX. WBS y Planificacion'

# Leer archivos
Write-Host "Leyendo archivos..." -ForegroundColor Cyan
$wbsData = Get-Content "$dir\datos_wbs_TODOS_items.json" | ConvertFrom-Json
$coordenadasKML = Get-Content "$dir\coordenadas_kml.json" | ConvertFrom-Json  
$layoutActual = Get-Content "$dir\layout_datos.json" | ConvertFrom-Json

Write-Host "Layout actual: $($layoutActual.Count) elementos"
Write-Host "Coordenadas KML: $($coordenadasKML.Count) puntos"

# Generar nuevos equipos
$nuevosEquipos = @()
foreach ($item in $wbsData.items) {
    if ($item.cantidad -and $item.tipo -eq 'SUMINISTRO') {
        $tipoEquipo = switch ($item.categoria) {
            'control' { 'CONTROL' }
            'telecomunicaciones' { 'TELECOMUNICACIONES' }
            'seguridad' { 'SEGURIDAD' }
            'energia' { 'ENERGIA' }
            'pasos_nivel' { 'PASOS_NIVEL' }
            'via' { 'VIA' }
            'edificacion' { 'EDIFICACION' }
            default { 'OTROS' }
        }
        
        # Determinar rango de PK basado en capítulo
        # Corredor: PK 338 a PK 722 (384 km)
        $pkMin = switch ($item.capitulo) {
            '1' { 338 }
            '2' { 380 }
            '3' { 480 }
            '4' { 520 }
            '5' { 441 }
            default { 350 }
        }
        $pkMax = switch ($item.capitulo) {
            '1' { 450 }
            '2' { 550 }
            '3' { 650 }
            '4' { 722 }
            '5' { 441 }
            default { 722 }
        }
        
        # Distribuir elementos a lo largo del corredor según cantidad
        # Extraer solo el número de la cantidad (ejemplo: "5unidades" -> 5)
        $cantidadStr = $item.cantidad -replace '[^0-9]', ''
        try {
            $cantidad = [int]$cantidadStr
        } catch {
            $cantidad = 1
        }
        
        # Limitar a máximo 500 elementos por tipo para rendimiento
        $cantidadLimitada = [Math]::Min($cantidad, 500)
        
        for ($i = 0; $i -lt $cantidadLimitada; $i++) {
            # Distribuir uniformemente a lo largo del rango
            $pkBase = $pkMin + (($pkMax - $pkMin) * $i / [Math]::Max(1, $cantidad - 1))
            $pkEntero = [Math]::Floor($pkBase)
            $pkDecimal = Get-Random -Minimum 0 -Maximum 999
            $pk = "$pkEntero+$pkDecimal"
            
            # Buscar coordenadas cercanas
            $pkNum = $pkEntero
            $coord = $coordenadasKML | Where-Object { $_.PK -eq $pkNum }
            
            if ($coord) {
                $equipo = @{
                    pk = $pk
                    nombre = "$($item.codigo)_$($i + 1)"
                    ubicacion_lado = 'Centro'
                    dispositivo = $item.descripcion
                    implementacion = '2.1'
                    descripcion = "Item WBS: $($item.codigo) - Elemento $($i + 1) de $cantidad"
                    tipo_equipo = $tipoEquipo
                    direccion = "PK$pk Centro"
                    latitud = $coord.latitud
                    longitud = $coord.longitud
                }
                $nuevosEquipos += $equipo
            }
        }
    }
}

Write-Host "Nuevos equipos: $($nuevosEquipos.Count)" -ForegroundColor Yellow

# Combinar
$layoutCompleto = $layoutActual + $nuevosEquipos
Write-Host "Total: $($layoutCompleto.Count) elementos" -ForegroundColor Green

# Guardar
$outputJson = "$dir\layout_datos_completo.json"
$layoutCompleto | ConvertTo-Json -Depth 10 | Set-Content $outputJson -Encoding UTF8
Write-Host "Guardado: $outputJson" -ForegroundColor Green

$jsonString = $layoutCompleto | ConvertTo-Json -Depth 10 -Compress
$jsContent = "const LAYOUT_DATOS = $jsonString;"
$outputJs = "$dir\layout_datos_completo.js"
$jsContent | Set-Content $outputJs -Encoding UTF8
Write-Host "Guardado: $outputJs" -ForegroundColor Green

Write-Host "`nCompletado!" -ForegroundColor Green

