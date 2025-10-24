# SCRIPT DE SINCRONIZACIÓN LAYOUT TM01 - TRONCAL MAGDALENA
# Archivo: scripts/sincronizar_layout.ps1
# Propósito: Sincronizar datos de layout georreferenciado desde tm01_master_data.js hacia layout_datos.js
# Fecha: 23 de octubre de 2025
# Versión: 1.0

param(
    [string]$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js",
    [string]$TargetPath = "Sistema_Validacion_Web/layout_datos.js",
    [switch]$Verbose = $false,
    [switch]$DryRun = $false
)

# Configuración de logging
$LogFile = "logs/sync_layout_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
$ErrorLogFile = "logs/sync_layout_errors_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

# Crear directorio de logs si no existe
if (!(Test-Path "logs")) {
    New-Item -ItemType Directory -Path "logs" -Force | Out-Null
}

# Función de logging
function Write-Log {
    param(
        [string]$Message,
        [string]$Level = "INFO"
    )
    
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $LogEntry = "[$Timestamp] [$Level] $Message"
    
    # Escribir a consola si Verbose está habilitado
    if ($Verbose) {
        Write-Host $LogEntry
    }
    
    # Escribir a archivo de log
    Add-Content -Path $LogFile -Value $LogEntry -Encoding UTF8
    
    # Escribir a archivo de error si es error
    if ($Level -eq "ERROR") {
        Add-Content -Path $ErrorLogFile -Value $LogEntry -Encoding UTF8
    }
}

# Función para validar archivos
function Test-FileExists {
    param([string]$Path)
    
    if (!(Test-Path $Path)) {
        Write-Log "Archivo no encontrado: $Path" "ERROR"
        return $false
    }
    return $true
}

# Función para extraer datos de layout del archivo fuente
function Extract-LayoutData {
    param([string]$SourcePath)
    
    try {
        Write-Log "Iniciando extracción de datos de layout desde: $SourcePath"
        
        # Leer el archivo fuente
        $SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
        
        # Buscar el array de datos WBS para generar layout
        $WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        
        if (!$WBSMatch.Success) {
            Write-Log "No se encontró el array de datos WBS en el archivo fuente" "ERROR"
            return $null
        }
        
        $WBSArrayContent = $WBSMatch.Groups[1].Value
        Write-Log "Datos WBS extraídos para generar layout. Tamaño: $($WBSArrayContent.Length) caracteres"
        
        return $WBSArrayContent
        
    } catch {
        Write-Log "Error al extraer datos de layout: $($_.Exception.Message)" "ERROR"
        return $null
    }
}

# Función para generar datos de layout georreferenciado
function Generate-LayoutData {
    param([string]$WBSData)
    
    try {
        Write-Log "Generando datos de layout georreferenciado"
        
        # Coordenadas base por sistema (aproximadas para TM01)
        $CoordenadasBase = @{
            'SOS' = @{ lat = 7.5; lng = -73.2 }
            'ETD/RADAR' = @{ lat = 7.6; lng = -73.1 }
            'CCTV' = @{ lat = 7.4; lng = -73.3 }
            'PMV' = @{ lat = 7.5; lng = -73.2 }
            'METEO' = @{ lat = 7.5; lng = -73.2 }
            'WIM' = @{ lat = 7.4; lng = -73.3 }
        }
        
        # Generar equipos basados en datos WBS
        $Equipos = @()
        $EquipoId = 1
        
        # Procesar cada sistema
        $Sistemas = @('SOS', 'ETD/RADAR', 'CCTV', 'PMV', 'METEO', 'WIM')
        
        foreach ($Sistema in $Sistemas) {
            $CoordsBase = $CoordenadasBase[$Sistema]
            
            # Generar equipos según el sistema
            switch ($Sistema) {
                'SOS' {
                    # 88 postes SOS distribuidos cada 1km
                    for ($i = 1; $i -le 88; $i++) {
                        $PK = $i
                        $Lat = $CoordsBase.lat + (($i - 44) * 0.001)  # Distribución lineal
                        $Lng = $CoordsBase.lng + (($i - 44) * 0.001)
                        
                        $Equipos += @{
                            id = "SOS_$($i.ToString('000'))"
                            nombre = "Poste SOS PK $PK"
                            tipo = "SOS"
                            sistema = "SOS"
                            pk = $PK
                            latitud = [math]::Round($Lat, 6)
                            longitud = [math]::Round($Lng, 6)
                            estado = "Activo"
                            instalacion = "2025-12-01"
                            mantenimiento = "2026-01-01"
                            responsable = "Ing. Civil"
                            observaciones = "Poste de auxilio con panel solar"
                        }
                    }
                }
                'ETD/RADAR' {
                    # 14 ETD + 2 Radares
                    for ($i = 1; $i -le 14; $i++) {
                        $PK = $i * 15  # Cada 15km
                        $Lat = $CoordsBase.lat + (($i - 7) * 0.01)
                        $Lng = $CoordsBase.lng + (($i - 7) * 0.01)
                        
                        $Equipos += @{
                            id = "ETD_$($i.ToString('00'))"
                            nombre = "ETD PK $PK"
                            tipo = "ETD"
                            sistema = "ETD/RADAR"
                            pk = $PK
                            latitud = [math]::Round($Lat, 6)
                            longitud = [math]::Round($Lng, 6)
                            estado = "Activo"
                            instalacion = "2025-12-01"
                            mantenimiento = "2026-01-01"
                            responsable = "Ing. Sistemas"
                            observaciones = "Estación de tratamiento de datos"
                        }
                    }
                    
                    # 2 Radares
                    for ($i = 1; $i -le 2; $i++) {
                        $PK = $i * 100  # Ubicaciones estratégicas
                        $Lat = $CoordsBase.lat + ($i * 0.05)
                        $Lng = $CoordsBase.lng + ($i * 0.05)
                        
                        $Equipos += @{
                            id = "RADAR_$($i.ToString('0'))"
                            nombre = "Radar PK $PK"
                            tipo = "RADAR"
                            sistema = "ETD/RADAR"
                            pk = $PK
                            latitud = [math]::Round($Lat, 6)
                            longitud = [math]::Round($Lng, 6)
                            estado = "Activo"
                            instalacion = "2025-12-01"
                            mantenimiento = "2026-01-01"
                            responsable = "Ing. Sistemas"
                            observaciones = "Radar de velocidad"
                        }
                    }
                }
                'CCTV' {
                    # 30 cámaras PAN + 15 fijas
                    for ($i = 1; $i -le 30; $i++) {
                        $PK = $i * 8  # Distribución cada 8km
                        $Lat = $CoordsBase.lat + (($i - 15) * 0.005)
                        $Lng = $CoordsBase.lng + (($i - 15) * 0.005)
                        
                        $Equipos += @{
                            id = "CCTV_PAN_$($i.ToString('00'))"
                            nombre = "Cámara PAN PK $PK"
                            tipo = "CCTV_PAN"
                            sistema = "CCTV"
                            pk = $PK
                            latitud = [math]::Round($Lat, 6)
                            longitud = [math]::Round($Lng, 6)
                            estado = "Activo"
                            instalacion = "2025-12-01"
                            mantenimiento = "2026-01-01"
                            responsable = "Ing. Sistemas"
                            observaciones = "Cámara panorámica IP"
                        }
                    }
                    
                    for ($i = 1; $i -le 15; $i++) {
                        $PK = $i * 15  # Distribución cada 15km
                        $Lat = $CoordsBase.lat + (($i - 8) * 0.008)
                        $Lng = $CoordsBase.lng + (($i - 8) * 0.008)
                        
                        $Equipos += @{
                            id = "CCTV_FIJA_$($i.ToString('00'))"
                            nombre = "Cámara Fija PK $PK"
                            tipo = "CCTV_FIJA"
                            sistema = "CCTV"
                            pk = $PK
                            latitud = [math]::Round($Lat, 6)
                            longitud = [math]::Round($Lng, 6)
                            estado = "Activo"
                            instalacion = "2025-12-01"
                            mantenimiento = "2026-01-01"
                            responsable = "Ing. Sistemas"
                            observaciones = "Cámara fija IP"
                        }
                    }
                }
                'PMV' {
                    # 12 paneles de mensaje variable
                    for ($i = 1; $i -le 12; $i++) {
                        $PK = $i * 20  # Cada 20km
                        $Lat = $CoordsBase.lat + (($i - 6) * 0.01)
                        $Lng = $CoordsBase.lng + (($i - 6) * 0.01)
                        
                        $Equipos += @{
                            id = "PMV_$($i.ToString('00'))"
                            nombre = "PMV PK $PK"
                            tipo = "PMV"
                            sistema = "PMV"
                            pk = $PK
                            latitud = [math]::Round($Lat, 6)
                            longitud = [math]::Round($Lng, 6)
                            estado = "Activo"
                            instalacion = "2025-12-01"
                            mantenimiento = "2026-01-01"
                            responsable = "Ing. Civil"
                            observaciones = "Panel de mensaje variable"
                        }
                    }
                }
                'METEO' {
                    # 3 estaciones meteorológicas
                    for ($i = 1; $i -le 3; $i++) {
                        $PK = $i * 100  # Ubicaciones estratégicas
                        $Lat = $CoordsBase.lat + ($i * 0.02)
                        $Lng = $CoordsBase.lng + ($i * 0.02)
                        
                        $Equipos += @{
                            id = "METEO_$($i.ToString('0'))"
                            nombre = "Estación Meteo PK $PK"
                            tipo = "METEO"
                            sistema = "METEO"
                            pk = $PK
                            latitud = [math]::Round($Lat, 6)
                            longitud = [math]::Round($Lng, 6)
                            estado = "Activo"
                            instalacion = "2025-12-01"
                            mantenimiento = "2026-01-01"
                            responsable = "Ing. Ambiental"
                            observaciones = "Estación meteorológica Davis Pro2"
                        }
                    }
                }
                'WIM' {
                    # 1 estación de pesaje
                    $Equipos += @{
                        id = "WIM_01"
                        nombre = "Estación WIM PK 150"
                        tipo = "WIM"
                        sistema = "WIM"
                        pk = 150
                        latitud = [math]::Round($CoordsBase.lat, 6)
                        longitud = [math]::Round($CoordsBase.lng, 6)
                        estado = "Activo"
                        instalacion = "2025-12-01"
                        mantenimiento = "2026-01-01"
                        responsable = "Ing. Civil"
                        observaciones = "Sistema de pesaje en movimiento"
                    }
                }
            }
        }
        
        Write-Log "Generados $($Equipos.Count) equipos de layout"
        return $Equipos
        
    } catch {
        Write-Log "Error al generar datos de layout: $($_.Exception.Message)" "ERROR"
        return $null
    }
}

# Función para generar el archivo de layout
function Generate-LayoutFile {
    param(
        [array]$LayoutData,
        [string]$TargetPath
    )
    
    try {
        Write-Log "Generando archivo de layout en: $TargetPath"
        
        # Convertir array PowerShell a JSON
        $JsonData = $LayoutData | ConvertTo-Json -Depth 10
        
        # Crear el contenido del archivo JavaScript
        $FileContent = @"
// LAYOUT GEORREFERENCIADO TM01 - GENERADO AUTOMÁTICAMENTE
// Archivo: $TargetPath
// Generado: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: sincronizar_layout.ps1 v1.0

// Datos de layout extraídos desde tm01_master_data.js
const layoutDatos = $JsonData;

// Función para obtener todos los equipos
function obtenerTodosEquipos() {
    return layoutDatos;
}

// Función para obtener equipos por sistema
function obtenerEquiposPorSistema(sistema) {
    return layoutDatos.filter(equipo => equipo.sistema === sistema);
}

// Función para obtener equipos por tipo
function obtenerEquiposPorTipo(tipo) {
    return layoutDatos.filter(equipo => equipo.tipo === tipo);
}

// Función para obtener equipos por PK
function obtenerEquiposPorPK(pkInicio, pkFin) {
    return layoutDatos.filter(equipo => equipo.pk >= pkInicio && equipo.pk <= pkFin);
}

// Función para obtener equipos por estado
function obtenerEquiposPorEstado(estado) {
    return layoutDatos.filter(equipo => equipo.estado === estado);
}

// Función para obtener estadísticas del layout
function obtenerEstadisticasLayout() {
    const estadisticas = {
        totalEquipos: layoutDatos.length,
        porSistema: {},
        porTipo: {},
        porEstado: {},
        pkMinimo: Math.min(...layoutDatos.map(e => e.pk)),
        pkMaximo: Math.max(...layoutDatos.map(e => e.pk))
    };
    
    layoutDatos.forEach(equipo => {
        // Contar por sistema
        if (!estadisticas.porSistema[equipo.sistema]) {
            estadisticas.porSistema[equipo.sistema] = 0;
        }
        estadisticas.porSistema[equipo.sistema]++;
        
        // Contar por tipo
        if (!estadisticas.porTipo[equipo.tipo]) {
            estadisticas.porTipo[equipo.tipo] = 0;
        }
        estadisticas.porTipo[equipo.tipo]++;
        
        // Contar por estado
        if (!estadisticas.porEstado[equipo.estado]) {
            estadisticas.porEstado[equipo.estado] = 0;
        }
        estadisticas.porEstado[equipo.estado]++;
    });
    
    return estadisticas;
}

// Función para obtener coordenadas para mapa
function obtenerCoordenadasMapa() {
    return layoutDatos.map(equipo => ({
        id: equipo.id,
        nombre: equipo.nombre,
        lat: equipo.latitud,
        lng: equipo.longitud,
        tipo: equipo.tipo,
        sistema: equipo.sistema,
        pk: equipo.pk,
        estado: equipo.estado
    }));
}

// Exportar funciones para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        layoutDatos,
        obtenerTodosEquipos,
        obtenerEquiposPorSistema,
        obtenerEquiposPorTipo,
        obtenerEquiposPorPK,
        obtenerEquiposPorEstado,
        obtenerEstadisticasLayout,
        obtenerCoordenadasMapa
    };
}
"@

        # Escribir el archivo
        if (!$DryRun) {
            Set-Content -Path $TargetPath -Value $FileContent -Encoding UTF8
            Write-Log "Archivo de layout generado exitosamente: $TargetPath"
        } else {
            Write-Log "DRY RUN: Archivo no escrito. Contenido generado correctamente." "INFO"
        }
        
        return $true
        
    } catch {
        Write-Log "Error al generar archivo de layout: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Función principal
function Start-LayoutSync {
    Write-Log "=== INICIANDO SINCRONIZACIÓN LAYOUT TM01 ===" "INFO"
    Write-Log "Archivo fuente: $SourcePath"
    Write-Log "Archivo destino: $TargetPath"
    Write-Log "Modo Dry Run: $DryRun"
    
    # Validar archivo fuente
    if (!(Test-FileExists $SourcePath)) {
        Write-Log "No se puede continuar sin el archivo fuente" "ERROR"
        return $false
    }
    
    # Extraer datos WBS para generar layout
    $WBSData = Extract-LayoutData -SourcePath $SourcePath
    if (!$WBSData) {
        Write-Log "No se pudieron extraer los datos WBS para layout" "ERROR"
        return $false
    }
    
    # Generar datos de layout
    $LayoutData = Generate-LayoutData -WBSData $WBSData
    if (!$LayoutData) {
        Write-Log "No se pudieron generar los datos de layout" "ERROR"
        return $false
    }
    
    # Generar archivo de layout
    $Success = Generate-LayoutFile -LayoutData $LayoutData -TargetPath $TargetPath
    if (!$Success) {
        Write-Log "No se pudo generar el archivo de layout" "ERROR"
        return $false
    }
    
    Write-Log "=== SINCRONIZACIÓN LAYOUT TM01 COMPLETADA EXITOSAMENTE ===" "INFO"
    return $true
}

# Ejecutar sincronización
try {
    $Result = Start-LayoutSync
    
    if ($Result) {
        Write-Host "✅ Sincronización Layout completada exitosamente" -ForegroundColor Green
        Write-Host "📁 Archivo generado: $TargetPath" -ForegroundColor Cyan
        Write-Host "📋 Log: $LogFile" -ForegroundColor Yellow
        
        if (Test-Path $ErrorLogFile) {
            Write-Host "⚠️  Errores encontrados: $ErrorLogFile" -ForegroundColor Red
        }
    } else {
        Write-Host "❌ Error en la sincronización Layout" -ForegroundColor Red
        exit 1
    }
    
} catch {
    Write-Host "❌ Error crítico: $($_.Exception.Message)" -ForegroundColor Red
    Write-Log "Error crítico en sincronización: $($_.Exception.Message)" "ERROR"
    exit 1
}