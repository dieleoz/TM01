# SCRIPT: Completar 39 Estaciones TETRA (DT-TETRA-038)
# Fecha: 15 Octubre 2025 (actualizado)
# Base: Criterio tecnico - 39 estaciones, espaciamiento 13.71 km, solapamiento 10%
# Cambio: De 37 torres (20% solap, inconsistente) a 39 torres (10% solap, coherente)

Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  COMPLETANDO 39 ESTACIONES TETRA (DT-TETRA-038)      " -ForegroundColor Cyan
Write-Host "  Criterio: 10% solapamiento | Espaciamiento: 13.71km " -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

# Parametros del corredor
$pkInicio = 201.470  # PK 201+470 (Mexico)
$pkFin = 722.250     # PK 722+250 (Chiriguana)
$longitudTotal = $pkFin - $pkInicio  # 520.78 km
$numEstaciones = 39  # DT-TETRA-038: Cambio de 37 a 39 (criterio 10% solapamiento)
$espaciamiento = $longitudTotal / ($numEstaciones - 1)  # 13.71 km

Write-Host "PARAMETROS:" -ForegroundColor Yellow
Write-Host "  PK Inicio: $pkInicio" -ForegroundColor White
Write-Host "  PK Fin: $pkFin" -ForegroundColor White
Write-Host "  Longitud total: $([math]::Round($longitudTotal, 2)) km" -ForegroundColor White
Write-Host "  Estaciones TETRA: $numEstaciones" -ForegroundColor White
Write-Host "  Espaciamiento: $([math]::Round($espaciamiento, 2)) km" -ForegroundColor White
Write-Host ""

# Generar las 37 estaciones
$estaciones = @()

for ($i = 0; $i -lt $numEstaciones; $i++) {
    $pk = $pkInicio + ($i * $espaciamiento)
    $pkEntero = [math]::Floor($pk)
    $pkDecimal = [math]::Round(($pk - $pkEntero) * 1000)
    $pkFormato = "$pkEntero+$pkDecimal"
    
    $estaciones += @{
        numero = $i + 1
        id = "EBT_$(($i+1).ToString('00'))"
        pk_numerico = $pk
        pk_formato = $pkFormato
        nombre = "Estacion Base TETRA $(($i+1).ToString('00'))"
        ubicacion = "PK$pkFormato Derecha"
    }
}

Write-Host "ESTACIONES TETRA GENERADAS:" -ForegroundColor Cyan
Write-Host ""

# Mostrar primeras 10
for ($i = 0; $i -lt 10; $i++) {
    $est = $estaciones[$i]
    Write-Host "  $($est.numero). $($est.id) - PK $($est.pk_formato)" -ForegroundColor White
}
Write-Host "  ..." -ForegroundColor Gray

# Mostrar últimas 3
for ($i = 34; $i -lt 37; $i++) {
    $est = $estaciones[$i]
    Write-Host "  $($est.numero). $($est.id) - PK $($est.pk_formato)" -ForegroundColor White
}

Write-Host ""
Write-Host "Total estaciones generadas: $($estaciones.Count)" -ForegroundColor Green
Write-Host ""

# Guardar a JSON
$salida = @{
    parametros = @{
        pk_inicio = $pkInicio
        pk_fin = $pkFin
        longitud_km = $longitudTotal
        num_estaciones = $numEstaciones
        espaciamiento_km = $espaciamiento
    }
    estaciones = $estaciones
    fecha_generacion = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
}

$jsonPath = "..\VIII. Documentos Maestros y Metodologia\TETRA_37_ESTACIONES_v1.0.json"
$salida | ConvertTo-Json -Depth 5 | Out-File $jsonPath -Encoding UTF8 -Force

Write-Host "Archivo generado: $jsonPath" -ForegroundColor Green
Write-Host ""

# ================================================================
# INTEGRAR EN LAYOUT.MD AUTOMÁTICAMENTE
# ================================================================

Write-Host "INTEGRANDO 37 ESTACIONES EN LAYOUT.MD..." -ForegroundColor Yellow

$layoutMdPath = "..\layout.md"
$layoutContent = Get-Content $layoutMdPath -Encoding UTF8

# Limpiar torres TETRA antiguas
$layoutLimpio = @()
foreach ($linea in $layoutContent) {
    # Saltar líneas de torres TETRA antiguas (EBT_)
    if ($linea -match 'EBT_' -or 
        ($linea -match 'TETRA BS' -and $linea -match '^UFV')) {
        continue
    }
    # Saltar también la sección de comentarios de TETRA
    if ($linea -match '# ELEMENTOS TETRA|Generado automaticamente.*TETRA') {
        continue
    }
    $layoutLimpio += $linea
}

Write-Host "  Líneas originales: $($layoutContent.Count)" -ForegroundColor Gray
Write-Host "  Líneas después de limpiar: $($layoutLimpio.Count)" -ForegroundColor Gray
Write-Host "  Torres TETRA eliminadas: $($layoutContent.Count - $layoutLimpio.Count)" -ForegroundColor Green
Write-Host ""

# Función para calcular UFV según PK
function Calcular-UFV {
    param([double]$pk)
    
    if ($pk -lt 223) { return "UFV23" }
    elseif ($pk -lt 250) { return "UFV30" }
    elseif ($pk -lt 313) { return "UFV31" }
    elseif ($pk -lt 327) { return "UFV01" }
    elseif ($pk -lt 354) { return "UFV02" }
    elseif ($pk -lt 376) { return "UFV34" }
    elseif ($pk -lt 406) { return "UFV35" }
    elseif ($pk -lt 430) { return "UFV36" }
    elseif ($pk -lt 462) { return "UFV39" }
    elseif ($pk -lt 501) { return "UFV44" }
    elseif ($pk -lt 533) { return "UFV45" }
    elseif ($pk -lt 552) { return "UFV46" }
    elseif ($pk -lt 569) { return "UFV47" }
    elseif ($pk -lt 604) { return "UFV49" }
    elseif ($pk -lt 635) { return "UFV52" }
    elseif ($pk -lt 663) { return "UFV54" }
    elseif ($pk -lt 679) { return "UFV55" }
    elseif ($pk -lt 701) { return "UFV56" }
    elseif ($pk -lt 722) { return "UFV21" }
    else { return "UFV22" }
}

# Generar líneas para layout.md con formato correcto
$lineasLayout = @()
foreach ($est in $estaciones) {
    $ufv = Calcular-UFV -pk $est.pk_numerico
    $linea = "$ufv`t2.1`t$($est.id)`t$($est.pk_formato)`tEstación Base TETRA $($est.numero.ToString('00'))`tDerecha`tPK$($est.pk_formato) Derecha`tTELECOMUNICACIONES`tTETRA BS`tN/A`tN/A`tTBD`tTBD"
    $lineasLayout += $linea
}

# Buscar donde insertar (después de las cajas de fibra)
$insertIndex = -1
for ($i = 0; $i -lt $layoutLimpio.Count; $i++) {
    if ($layoutLimpio[$i] -match 'INSTITUCIONES EDUCATIVAS') {
        $insertIndex = $i
        break
    }
}

if ($insertIndex -eq -1) {
    # Si no hay escuelas, insertar al final
    $insertIndex = $layoutLimpio.Count
}

# Insertar torres TETRA
$layoutFinal = @()
$layoutFinal += $layoutLimpio[0..($insertIndex-1)]
$layoutFinal += ""
$layoutFinal += "# ESTACIONES BASE TETRA - Generado automaticamente por completar_37_estaciones_TETRA.ps1"
$layoutFinal += "# Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$layoutFinal += "# Total: 37 estaciones (espaciamiento ~14.5 km)"
$layoutFinal += ""
$layoutFinal += $lineasLayout
$layoutFinal += ""
if ($insertIndex -lt $layoutLimpio.Count) {
    $layoutFinal += $layoutLimpio[$insertIndex..($layoutLimpio.Count-1)]
}

# Guardar
$layoutFinal | Out-File $layoutMdPath -Encoding UTF8 -Force

Write-Host "  ✅ layout.md actualizado" -ForegroundColor Green
Write-Host "  Total líneas: $($layoutFinal.Count)" -ForegroundColor White
Write-Host "  Torres TETRA agregadas: $($lineasLayout.Count)" -ForegroundColor Green
Write-Host ""

Write-Host "=================================================" -ForegroundColor Cyan
Write-Host "  37 ESTACIONES TETRA COMPLETADAS               " -ForegroundColor Cyan
Write-Host "=================================================" -ForegroundColor Cyan
Write-Host ""
# ================================================================
# PASO ADICIONAL: SINCRONIZAR WBS PRESUPUESTAL (NUEVO v14.7.6)
# ================================================================

Write-Host "Sincronizando WBS Presupuestal..." -ForegroundColor Yellow

$totalEstaciones = 37
Write-Host "  Total estaciones TETRA: $totalEstaciones" -ForegroundColor Cyan

# Actualizar WBS_Presupuestal_v2.0.md item 2.1.100 (Torres autosoportadas)
$wbsPath = "..\IX. WBS y Planificacion\WBS_Presupuestal_v2.0.md"
if (Test-Path $wbsPath) {
    $wbsContent = Get-Content $wbsPath -Raw -Encoding UTF8
    
    # Actualizar cantidad de torres TETRA (item 2.1.100)
    $wbsContent = $wbsContent -replace '(\| \*\*2\.1\.100\*\* \| Torre[^\|]+\| UND \| )(\d+)([ \|])', "`${1}$totalEstaciones`${3}"
    
    $wbsContent | Out-File -FilePath $wbsPath -Encoding UTF8 -Force
    Write-Host "  ✅ WBS_Presupuestal_v2.0.md actualizado" -ForegroundColor Green
    Write-Host "     Item 2.1.100: $totalEstaciones torres" -ForegroundColor Gray
}

Write-Host ""

# Regenerar datos WBS para interfaces HTML
Write-Host "Regenerando datos_wbs_TODOS_items.js..." -ForegroundColor Yellow
Write-Host "  Ejecutando extraer_todos_items_wbs.ps1..." -ForegroundColor Gray

& "$PSScriptRoot\extraer_todos_items_wbs.ps1" 2>&1 | Out-String | ForEach-Object {
    if ($_ -match "Items extraidos|Archivo generado|JS regenerado") {
        Write-Host "  $_" -ForegroundColor Gray
    }
}

Write-Host "  ✅ datos_wbs_TODOS_items.js regenerado" -ForegroundColor Green
Write-Host ""

# ================================================================
# REGENERAR LAYOUT_DATOS.JS
# ================================================================

Write-Host "Regenerando layout_datos.js..." -ForegroundColor Yellow
Write-Host "  Ejecutando convertir_layout_a_js.ps1..." -ForegroundColor Gray

& "$PSScriptRoot\convertir_layout_a_js.ps1" 2>&1 | Out-String | ForEach-Object {
    if ($_ -match "Total equipos|Archivo generado") {
        Write-Host "  $_" -ForegroundColor Gray
    }
}

Write-Host "  ✅ layout_datos.js regenerado" -ForegroundColor Green
Write-Host ""

Write-Host "=================================================" -ForegroundColor Green
Write-Host "  REGENERACIÓN COMPLETA" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green
Write-Host ""
Write-Host "ELEMENTOS GENERADOS:" -ForegroundColor Cyan
Write-Host "  Torres TETRA: 39" -ForegroundColor White
Write-Host ""
Write-Host "ARCHIVOS ACTUALIZADOS:" -ForegroundColor Cyan
Write-Host "  [OK] layout.md (39 torres agregadas)" -ForegroundColor White
Write-Host "  [OK] layout_datos.js (regenerado)" -ForegroundColor White
Write-Host "  [OK] WBS_Presupuestal_v2.0.md (item 2.1.100: 39 torres)" -ForegroundColor White
Write-Host "  [OK] datos_wbs_TODOS_items.js (regenerado)" -ForegroundColor White
Write-Host ""
Write-Host "PROXIMOS PASOS:" -ForegroundColor Yellow
Write-Host "  1. Abrir: WBS_Layout_Maestro.html (Layout actualizado)" -ForegroundColor White
Write-Host "  2. Verificar: Filtro 'TETRA BS' muestra 39 torres" -ForegroundColor White
Write-Host "  3. Refresh navegador (F5 o Ctrl+F5)" -ForegroundColor White
Write-Host ""

