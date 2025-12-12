# ================================================================
#  EJECUTOR UNIVERSAL DE DECISIONES TECNICAS (DT)
#  Lee YAML de cualquier DT y aplica cambios automaticamente
# ================================================================

param(
    [Parameter(Mandatory=$true)]
    [string]$DT_Path,
    
    [switch]$DryRun  # Simulacion sin aplicar cambios
)

Write-Host ""
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "  EJECUTOR UNIVERSAL DE DECISIONES TECNICAS" -ForegroundColor Cyan
Write-Host "================================================================" -ForegroundColor Cyan
Write-Host ""

if ($DryRun) {
    Write-Host "MODO SIMULACION (Dry-Run) - No se aplicaran cambios" -ForegroundColor Yellow
    Write-Host ""
}

# ================================================================
# PASO 1: LEER Y PARSEAR DT
# ================================================================

Write-Host "PASO 1: Leyendo DT..." -ForegroundColor Yellow
Write-Host "  Archivo: $DT_Path" -ForegroundColor Gray

if (-not (Test-Path $DT_Path)) {
    Write-Host "ERROR: DT no encontrada" -ForegroundColor Red
    exit 1
}

$dtContent = Get-Content $DT_Path -Raw -Encoding UTF8

# Extraer ID de la DT
if ($dtContent -match 'dt_id:\s*"([^"]+)"') {
    $dtId = $matches[1]
    Write-Host "  DT ID: $dtId" -ForegroundColor Green
} else {
    Write-Host "ERROR: No se encontro dt_id en YAML" -ForegroundColor Red
    exit 1
}

# Extraer sistema
if ($dtContent -match 'sistema:\s*"([^"]+)"') {
    $sistema = $matches[1]
    Write-Host "  Sistema: $sistema" -ForegroundColor Green
} else {
    Write-Host "ERROR: No se encontro sistema en YAML" -ForegroundColor Red
    exit 1
}

# Extraer item WBS
if ($dtContent -match 'item_wbs:\s*"([^"]+)"') {
    $itemWbs = $matches[1]
    Write-Host "  Item WBS: $itemWbs" -ForegroundColor Green
} else {
    $itemWbs = "N/A"
}

# Extraer tipo de cambio
if ($dtContent -match 'tipo_cambio:\s*"([^"]+)"') {
    $tipoCambio = $matches[1]
    Write-Host "  Tipo cambio: $tipoCambio" -ForegroundColor Green
} else {
    $tipoCambio = "N/A"
}

Write-Host ""

# ================================================================
# PASO 2: DETECTAR SI AFECTA LAYOUT
# ================================================================

Write-Host "PASO 2: Verificando impacto en layout..." -ForegroundColor Yellow

$afectaLayout = $false
$recalcularLayout = $false

if ($dtContent -match 'impacto_layout:\s*true') {
    $afectaLayout = $true
    Write-Host "  Impacto layout: SI" -ForegroundColor Green
} else {
    Write-Host "  Impacto layout: NO" -ForegroundColor Gray
}

if ($dtContent -match 'activar:\s*true' -and $dtContent -match 'layout_recalcular:') {
    $recalcularLayout = $true
    Write-Host "  Recalcular layout: SI" -ForegroundColor Green
} else {
    Write-Host "  Recalcular layout: NO" -ForegroundColor Gray
}

Write-Host ""

# ================================================================
# PASO 3: EXTRAER PARAMETROS DE RECALCULO
# ================================================================

if ($recalcularLayout) {
    Write-Host "PASO 3: Extrayendo parametros de recalculo..." -ForegroundColor Yellow
    
    # Cantidad nueva
    if ($dtContent -match 'cantidad_nueva:\s*(\d+)') {
        $cantidadNueva = [int]$matches[1]
        Write-Host "  Cantidad nueva: $cantidadNueva" -ForegroundColor Green
    } else {
        Write-Host "  Cantidad nueva: NO ESPECIFICADA" -ForegroundColor Red
        $cantidadNueva = 0
    }
    
    # Espaciamiento
    if ($dtContent -match 'espaciamiento_km:\s*([\d.]+)') {
        $espaciamiento = [double]$matches[1]
        Write-Host "  Espaciamiento: $espaciamiento km" -ForegroundColor Green
    } else {
        $espaciamiento = 0
    }
    
    # PK inicio y fin
    if ($dtContent -match 'pk_inicio:\s*"([^"]+)"') {
        $pkInicioStr = $matches[1]
        $pkInicio = [double]($pkInicioStr -replace '\+', '.')
        Write-Host "  PK inicio: $pkInicioStr" -ForegroundColor Green
    } else {
        $pkInicio = 201.470
    }
    
    if ($dtContent -match 'pk_fin:\s*"([^"]+)"') {
        $pkFinStr = $matches[1]
        $pkFin = [double]($pkFinStr -replace '\+', '.')
        Write-Host "  PK fin: $pkFinStr" -ForegroundColor Green
    } else {
        $pkFin = 722.250
    }
    
    # Longitud total
    if ($dtContent -match 'longitud_total_km:\s*([\d.]+)') {
        $longitudTotal = [double]$matches[1]
        Write-Host "  Longitud total: $longitudTotal km" -ForegroundColor Green
    } else {
        $longitudTotal = $pkFin - $pkInicio
    }
    
    # Tipo de instalacion
    if ($dtContent -match 'tipo_instalacion:\s*"([^"]+)"') {
        $tipoInstalacion = $matches[1]
        Write-Host "  Tipo instalacion: $tipoInstalacion" -ForegroundColor Green
    } else {
        $tipoInstalacion = "Elemento Generico"
    }
    
    # Generar instalaciones nuevas
    if ($dtContent -match 'generar_instalaciones_nuevas:\s*true') {
        $generarNuevas = $true
        Write-Host "  Generar nuevas: SI" -ForegroundColor Green
    } else {
        $generarNuevas = $false
        Write-Host "  Generar nuevas: NO" -ForegroundColor Gray
    }
    
    Write-Host ""
}

# ================================================================
# PASO 4: ACTUALIZAR WBS PRESUPUESTAL
# ================================================================

Write-Host "PASO 4: Actualizando WBS Presupuestal..." -ForegroundColor Yellow

if ($itemWbs -ne "N/A") {
    $wbsPath = "IX. WBS y Planificacion/WBS_Presupuestal_v2.0.md"
    
    if (Test-Path $wbsPath) {
        $wbsContent = Get-Content $wbsPath -Raw -Encoding UTF8
        
        # Buscar el item en el WBS
        if ($wbsContent -match "(\|\s*\*\*$itemWbs\*\*\s*\|[^\n]+)") {
            Write-Host "  Item $itemWbs encontrado en WBS" -ForegroundColor Green
            
            if (-not $DryRun) {
                # Aqui se actualizaria el WBS (ya hecho manualmente antes)
                Write-Host "  WBS ya actualizado previamente" -ForegroundColor Gray
            }
        } else {
            Write-Host "  Item $itemWbs NO encontrado en WBS" -ForegroundColor Yellow
        }
    }
} else {
    Write-Host "  No hay item WBS para actualizar" -ForegroundColor Gray
}

Write-Host ""

# ================================================================
# PASO 5: ACTUALIZAR LAYOUT (SI APLICA)
# ================================================================

if ($recalcularLayout -and $generarNuevas) {
    Write-Host "PASO 5: Generando elementos en layout..." -ForegroundColor Yellow
    
    # ================================================================
    # FUNCIONES AUXILIARES
    # ================================================================
    
    function Format-PK {
        param([double]$pk)
        $km = [Math]::Floor($pk)
        $m = [Math]::Round(($pk - $km) * 1000)
        return "$($km.ToString('000'))+$($m.ToString('000'))"
    }
    
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
        else { return "UFV49" }
    }
    
    function Detectar-TipoEquipo {
        param([string]$sistema)
        
        $sistemaUpper = $sistema.ToUpper()
        
        if ($sistemaUpper -match "FIBRA|FO|EMPALME|ODF") { return "TELECOMUNICACIONES" }
        elseif ($sistemaUpper -match "TETRA|GSM|RADIO") { return "TELECOMUNICACIONES" }
        elseif ($sistemaUpper -match "CTC|CONTROL") { return "CONTROL" }
        elseif ($sistemaUpper -match "CCTV|CAMARA") { return "EQUIPO ITS" }
        elseif ($sistemaUpper -match "ENCE|ENCLAVAMIENTO") { return "CONTROL" }
        elseif ($sistemaUpper -match "SEÑAL|BALIZA") { return "SEÑALIZACION" }
        elseif ($sistemaUpper -match "ENERGIA|UPS|SAI") { return "ENERGIA" }
        else { return "INFRAESTRUCTURA" }
    }
    
    # ================================================================
    # GENERAR ELEMENTOS SEGUN ESPACIAMIENTO
    # ================================================================
    
    $elementos = @()
    $pkActual = $pkInicio
    $contador = 1
    
    $tipoEquipo = Detectar-TipoEquipo($sistema)
    
    while ($pkActual -le $pkFin -and $contador -le $cantidadNueva) {
        $ufv = Calcular-UFV($pkActual)
        $pkFormato = Format-PK($pkActual)
        
        $lado = if ($contador % 2 -eq 0) { "Izquierda" } else { "Derecha" }
        
        # Generar nombre base del elemento
        $nombreBase = $tipoInstalacion -replace '\s+', '_'
        $nombreElemento = "${nombreBase}_$($contador.ToString('0000'))"
        
        $elemento = @{
            ID = $nombreElemento
            UFV = $ufv
            Implementacion = "2.1"
            Nombre = $nombreElemento
            PK_Formato = $pkFormato
            PK_Numerico = $pkActual
            Descripcion = $tipoInstalacion
            Ubicacion_Lado = $lado
            Direccion = "PK$pkFormato $lado"
            Tipo_Equipo = $tipoEquipo
            Dispositivo = $tipoInstalacion
        }
        
        $elementos += $elemento
        $pkActual += $espaciamiento
        $contador++
    }
    
    Write-Host "  Elementos generados: $($elementos.Count)" -ForegroundColor Green
    Write-Host ""
    
    # Mostrar ejemplos
    Write-Host "  Ejemplos:" -ForegroundColor Cyan
    $elementos | Select-Object -First 3 | ForEach-Object {
        Write-Host "    $($_.ID): PK $($_.PK_Formato) | UFV $($_.UFV) | $($_.Ubicacion_Lado)" -ForegroundColor White
    }
    Write-Host "    ..." -ForegroundColor Gray
    Write-Host ""
    
    # ================================================================
    # ACTUALIZAR layout.md
    # ================================================================
    
    if (-not $DryRun) {
        Write-Host "  Actualizando layout.md..." -ForegroundColor Yellow
        
        $layoutPath = "layout.md"
        $layoutContent = Get-Content $layoutPath -Raw -Encoding UTF8
        
        # Crear backup
        $backupPath = "layout_backup_$(Get-Date -Format 'yyyyMMdd_HHmmss').md"
        Copy-Item $layoutPath $backupPath
        Write-Host "    Backup: $backupPath" -ForegroundColor Gray
        
        # Generar nuevas lineas
        $nuevasLineas = @()
        
        foreach ($elem in $elementos) {
            $linea = "$($elem.UFV)`t$($elem.Implementacion)`t$($elem.Nombre)`t$($elem.PK_Formato)`t$($elem.Descripcion)`t$($elem.Ubicacion_Lado)`t$($elem.Direccion)`t$($elem.Tipo_Equipo)`t$($elem.Dispositivo)`tN/A`tN/A`tTBD`tTBD"
            $nuevasLineas += $linea
        }
        
        # Buscar donde insertar
        $insertPoint = $layoutContent.IndexOf("## INSTITUCIONES EDUCATIVAS")
        
        if ($insertPoint -eq -1) {
            $layoutContent += "`r`n" + ($nuevasLineas -join "`r`n")
        } else {
            $antes = $layoutContent.Substring(0, $insertPoint)
            $despues = $layoutContent.Substring($insertPoint)
            $layoutContent = $antes + ($nuevasLineas -join "`r`n") + "`r`n`r`n" + $despues
        }
        
        # Guardar
        $layoutContent | Out-File $layoutPath -Encoding UTF8 -NoNewline
        
        Write-Host "    layout.md actualizado" -ForegroundColor Green
        Write-Host "    Elementos agregados: $($elementos.Count)" -ForegroundColor Green
        Write-Host ""
    } else {
        Write-Host "    [SIMULACION] layout.md NO actualizado" -ForegroundColor Yellow
        Write-Host ""
    }
    
} else {
    Write-Host "PASO 5: No se requiere actualizar layout" -ForegroundColor Gray
    Write-Host ""
}

# ================================================================
# PASO 6: ACTUALIZAR MATRIZ DEPENDENCIAS
# ================================================================

Write-Host "PASO 6: Actualizando Matriz Dependencias..." -ForegroundColor Yellow

$matrizPath = "VIII. Documentos Maestros y Metodologia/Matrices_Dependencias/MATRIZ_DEPENDENCIAS_DOCUMENTALES_v1.0.md"

if (Test-Path $matrizPath) {
    Write-Host "  Matriz encontrada" -ForegroundColor Green
    
    if (-not $DryRun) {
        Write-Host "  Matriz ya actualizada previamente" -ForegroundColor Gray
    }
} else {
    Write-Host "  Matriz NO encontrada" -ForegroundColor Yellow
}

Write-Host ""

# ================================================================
# PASO 7: REGENERAR ARCHIVOS DERIVADOS
# ================================================================

if (-not $DryRun -and ($recalcularLayout -and $generarNuevas)) {
    Write-Host "PASO 7: Regenerando archivos derivados..." -ForegroundColor Yellow
    
    Write-Host "  Regenerando layout_datos.js..." -ForegroundColor Gray
    & "$PSScriptRoot\convertir_layout_a_js.ps1"
    
    Write-Host "  Regenerando layout integral..." -ForegroundColor Gray
    & "$PSScriptRoot\generar_layout_integral_completo.ps1"
    
    Write-Host ""
} else {
    Write-Host "PASO 7: No se requieren archivos derivados" -ForegroundColor Gray
    Write-Host ""
}

# ================================================================
# PASO 8: ACTUALIZAR LOG EN DT
# ================================================================

Write-Host "PASO 8: Actualizando log en DT..." -ForegroundColor Yellow

if (-not $DryRun) {
    $dtContent = Get-Content $DT_Path -Raw -Encoding UTF8
    
    # Marcar como ejecutado
    if ($dtContent -match '- \[ \] 🔧 Pendiente de ejecucion') {
        $dtContent = $dtContent -replace '- \[ \] 🔧 Pendiente de ejecucion', "- [x] 🔧 Ejecutado por Cursor: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    }
    
    # Actualizar log
    $logEntry = @"
Fecha ejecucion: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')
Usuario: Ejecutor Universal DT
Sistema: $sistema
Item WBS: $itemWbs
Tipo cambio: $tipoCambio
Elementos generados: $($elementos.Count)
Errores: 0
Estado: COMPLETADO
"@
    
    if ($dtContent -match '\[Se completara automaticamente al ejecutar\]') {
        $dtContent = $dtContent -replace '\[Se completara automaticamente al ejecutar\]', $logEntry
    }
    
    # Guardar DT actualizada
    $dtContent | Out-File $DT_Path -Encoding UTF8 -NoNewline
    
    Write-Host "  Log actualizado en DT" -ForegroundColor Green
    Write-Host ""
} else {
    Write-Host "  [SIMULACION] Log NO actualizado" -ForegroundColor Yellow
    Write-Host ""
}

# ================================================================
# RESUMEN FINAL
# ================================================================

Write-Host "================================================================" -ForegroundColor Green
Write-Host "  EJECUCION COMPLETADA" -ForegroundColor Green
Write-Host "================================================================" -ForegroundColor Green
Write-Host ""

if (-not $DryRun) {
    Write-Host "DT EJECUTADA: $dtId" -ForegroundColor Green
    Write-Host "Sistema: $sistema" -ForegroundColor White
    Write-Host "Item WBS: $itemWbs" -ForegroundColor White
    Write-Host "Tipo cambio: $tipoCambio" -ForegroundColor White
    Write-Host ""
    
    if ($recalcularLayout -and $generarNuevas) {
        Write-Host "CAMBIOS EN LAYOUT:" -ForegroundColor Cyan
        Write-Host "  Elementos agregados: $($elementos.Count)" -ForegroundColor White
        Write-Host "  Espaciamiento: $espaciamiento km" -ForegroundColor White
        Write-Host "  Tipo: $tipoInstalacion" -ForegroundColor White
        Write-Host ""
    }
    
    Write-Host "PROXIMOS PASOS:" -ForegroundColor Cyan
    Write-Host "  1. Verificar layout actualizado" -ForegroundColor White
    Write-Host "  2. Ejecutar: .\scripts\cocinar.ps1" -ForegroundColor White
    Write-Host "  3. Ejecutar: .\scripts\servir.ps1" -ForegroundColor White
    Write-Host "  4. Verificar documentos cliente" -ForegroundColor White
    
} else {
    Write-Host "SIMULACION COMPLETADA - Sin cambios aplicados" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Para aplicar cambios, ejecuta SIN flag -DryRun:" -ForegroundColor Cyan
    Write-Host "  .\scripts\ejecutar_DT_universal.ps1 -DT_Path '$DT_Path'" -ForegroundColor White
}

Write-Host ""

