# MÓDULO SISTEMAMAPPER - SISTEMA TM01 TRONCAL MAGDALENA
# Archivo: modules/SistemaMapper.psm1
# Propósito: Mapeo y gestión de sistemas ITS del proyecto TM01
# Fecha: 24 de octubre de 2025
# Versión: 1.0

# Importar módulo Logger
Import-Module -Name "$PSScriptRoot\Logger.psm1" -Force

# Configuración de sistemas TM01
$Global:SistemasTM01 = @{
    "SOS" = @{
        Nombre = "Sistema de Postes de Auxilio"
        Codigo = "SOS"
        Responsable = "Ing. Civil"
        Criterio = "AT1 Cap. 3 - Criterio 1km"
        Cantidad = 88
        Unidad = "unidades"
        Descripcion = "Postes de auxilio distribuidos cada 1km"
        Especificacion = "Poste con panel solar, botón de emergencia, iluminación LED"
        CostoUnitario = 15000
        Moneda = "USD"
        PKInicio = 0
        PKFin = 293
        Intervalo = 1
        Tipo = "Infraestructura"
        Prioridad = "Alta"
        Estado = "Activo"
    }
    "ETD" = @{
        Nombre = "Estaciones de Tratamiento de Datos"
        Codigo = "ETD"
        Responsable = "Ing. Sistemas"
        Criterio = "AT1 Cap. 3 - Criterio 15km"
        Cantidad = 14
        Unidad = "unidades"
        Descripcion = "Estaciones de tratamiento de datos cada 15km"
        Especificacion = "Servidor industrial, UPS, sistema de comunicaciones"
        CostoUnitario = 50000
        Moneda = "USD"
        PKInicio = 15
        PKFin = 285
        Intervalo = 15
        Tipo = "Sistemas"
        Prioridad = "Alta"
        Estado = "Activo"
    }
    "RADAR" = @{
        Nombre = "Sistema de Radar de Velocidad"
        Codigo = "RADAR"
        Responsable = "Ing. Sistemas"
        Criterio = "AT1 Cap. 3 - Control de velocidad"
        Cantidad = 2
        Unidad = "unidades"
        Descripcion = "Radares de velocidad en puntos críticos"
        Especificacion = "Radar Doppler, cámara de alta resolución, sistema de comunicaciones"
        CostoUnitario = 75000
        Moneda = "USD"
        PKInicio = 100
        PKFin = 200
        Intervalo = 50
        Tipo = "Sistemas"
        Prioridad = "Media"
        Estado = "Activo"
    }
    "CCTV" = @{
        Nombre = "Sistema de Cámaras de Vigilancia"
        Codigo = "CCTV"
        Responsable = "Ing. Sistemas"
        Criterio = "AT1 Cap. 3 - Solo en peajes"
        Cantidad = 45
        Unidad = "unidades"
        Descripcion = "Cámaras de vigilancia en peajes y puntos críticos"
        Especificacion = "Cámara IP, zoom óptico, visión nocturna, sistema de grabación"
        CostoUnitario = 25000
        Moneda = "USD"
        PKInicio = 0
        PKFin = 293
        Intervalo = 0
        Tipo = "Sistemas"
        Prioridad = "Alta"
        Estado = "Activo"
    }
    "PMV" = @{
        Nombre = "Paneles de Mensaje Variable"
        Codigo = "PMV"
        Responsable = "Ing. Civil"
        Criterio = "AT1 Cap. 3 - Criterio 20km"
        Cantidad = 12
        Unidad = "unidades"
        Descripcion = "Paneles de mensaje variable cada 20km"
        Especificacion = "Panel LED, sistema de comunicaciones, software de gestión"
        CostoUnitario = 35000
        Moneda = "USD"
        PKInicio = 20
        PKFin = 280
        Intervalo = 20
        Tipo = "Infraestructura"
        Prioridad = "Media"
        Estado = "Activo"
    }
    "METEO" = @{
        Nombre = "Estaciones Meteorológicas"
        Codigo = "METEO"
        Responsable = "Ing. Ambiental"
        Criterio = "NTC 5660 + Supervisión CCO"
        Cantidad = 3
        Unidad = "unidades"
        Descripcion = "Estaciones meteorológicas para monitoreo ambiental"
        Especificacion = "Estación Davis Pro2, sensores múltiples, sistema de comunicaciones"
        CostoUnitario = 40000
        Moneda = "USD"
        PKInicio = 50
        PKFin = 250
        Intervalo = 100
        Tipo = "Ambiental"
        Prioridad = "Media"
        Estado = "Activo"
    }
    "WIM" = @{
        Nombre = "Sistema de Pesaje en Movimiento"
        Codigo = "WIM"
        Responsable = "Ing. Civil"
        Criterio = "Control de peso vehicular"
        Cantidad = 1
        Unidad = "unidades"
        Descripcion = "Sistema de pesaje en movimiento para control de peso"
        Especificacion = "Sensores de peso, sistema de comunicaciones, software de análisis"
        CostoUnitario = 100000
        Moneda = "USD"
        PKInicio = 150
        PKFin = 150
        Intervalo = 0
        Tipo = "Control"
        Prioridad = "Alta"
        Estado = "Activo"
    }
}

# Función para obtener información de un sistema
function Get-SistemaInfo {
    param([string]$CodigoSistema)
    
    if ($Global:SistemasTM01.ContainsKey($CodigoSistema)) {
        return $Global:SistemasTM01[$CodigoSistema]
    } else {
        Write-WarningLog -Message "Sistema no encontrado: $CodigoSistema" -Source "SistemaMapper"
        return $null
    }
}

# Función para obtener todos los sistemas
function Get-TodosSistemas {
    return $Global:SistemasTM01
}

# Función para obtener sistemas por tipo
function Get-SistemasPorTipo {
    param([string]$Tipo)
    
    $SistemasFiltrados = @{}
    
    foreach ($Sistema in $Global:SistemasTM01.GetEnumerator()) {
        if ($Sistema.Value.Tipo -eq $Tipo) {
            $SistemasFiltrados[$Sistema.Key] = $Sistema.Value
        }
    }
    
    return $SistemasFiltrados
}

# Función para obtener sistemas por responsable
function Get-SistemasPorResponsable {
    param([string]$Responsable)
    
    $SistemasFiltrados = @{}
    
    foreach ($Sistema in $Global:SistemasTM01.GetEnumerator()) {
        if ($Sistema.Value.Responsable -eq $Responsable) {
            $SistemasFiltrados[$Sistema.Key] = $Sistema.Value
        }
    }
    
    return $SistemasFiltrados
}

# Función para obtener sistemas por prioridad
function Get-SistemasPorPrioridad {
    param([string]$Prioridad)
    
    $SistemasFiltrados = @{}
    
    foreach ($Sistema in $Global:SistemasTM01.GetEnumerator()) {
        if ($Sistema.Value.Prioridad -eq $Prioridad) {
            $SistemasFiltrados[$Sistema.Key] = $Sistema.Value
        }
    }
    
    return $SistemasFiltrados
}

# Función para calcular ubicaciones de equipos
function Get-UbicacionesEquipos {
    param([string]$CodigoSistema)
    
    $Sistema = Get-SistemaInfo -CodigoSistema $CodigoSistema
    if (!$Sistema) { return @() }
    
    $Ubicaciones = @()
    
    if ($Sistema.Intervalo -gt 0) {
        # Distribución por intervalo
        for ($PK = $Sistema.PKInicio; $PK -le $Sistema.PKFin; $PK += $Sistema.Intervalo) {
            $Ubicaciones += @{
                PK = $PK
                Sistema = $CodigoSistema
                Tipo = $Sistema.Tipo
                Responsable = $Sistema.Responsable
                Estado = $Sistema.Estado
            }
        }
    } else {
        # Distribución específica
        switch ($CodigoSistema) {
            "CCTV" {
                # CCTV solo en peajes (PK específicos)
                $PKsPeajes = @(0, 50, 100, 150, 200, 250, 293)
                foreach ($PK in $PKsPeajes) {
                    $Ubicaciones += @{
                        PK = $PK
                        Sistema = $CodigoSistema
                        Tipo = $Sistema.Tipo
                        Responsable = $Sistema.Responsable
                        Estado = $Sistema.Estado
                    }
                }
            }
            "WIM" {
                # WIM en PK específico
                $Ubicaciones += @{
                    PK = $Sistema.PKInicio
                    Sistema = $CodigoSistema
                    Tipo = $Sistema.Tipo
                    Responsable = $Sistema.Responsable
                    Estado = $Sistema.Estado
                }
            }
        }
    }
    
    return $Ubicaciones
}

# Función para calcular costo total por sistema
function Get-CostoTotalSistema {
    param([string]$CodigoSistema)
    
    $Sistema = Get-SistemaInfo -CodigoSistema $CodigoSistema
    if (!$Sistema) { return 0 }
    
    return $Sistema.Cantidad * $Sistema.CostoUnitario
}

# Función para calcular costo total del proyecto
function Get-CostoTotalProyecto {
    $CostoTotal = 0
    
    foreach ($Sistema in $Global:SistemasTM01.GetEnumerator()) {
        $CostoTotal += Get-CostoTotalSistema -CodigoSistema $Sistema.Key
    }
    
    return $CostoTotal
}

# Función para obtener estadísticas del proyecto
function Get-EstadisticasProyecto {
    $Estadisticas = @{
        TotalSistemas = $Global:SistemasTM01.Count
        TotalEquipos = 0
        CostoTotal = 0
        PorTipo = @{}
        PorResponsable = @{}
        PorPrioridad = @{}
    }
    
    foreach ($Sistema in $Global:SistemasTM01.GetEnumerator()) {
        $Estadisticas.TotalEquipos += $Sistema.Value.Cantidad
        $Estadisticas.CostoTotal += Get-CostoTotalSistema -CodigoSistema $Sistema.Key
        
        # Contar por tipo
        if (!$Estadisticas.PorTipo.ContainsKey($Sistema.Value.Tipo)) {
            $Estadisticas.PorTipo[$Sistema.Value.Tipo] = 0
        }
        $Estadisticas.PorTipo[$Sistema.Value.Tipo]++
        
        # Contar por responsable
        if (!$Estadisticas.PorResponsable.ContainsKey($Sistema.Value.Responsable)) {
            $Estadisticas.PorResponsable[$Sistema.Value.Responsable] = 0
        }
        $Estadisticas.PorResponsable[$Sistema.Value.Responsable]++
        
        # Contar por prioridad
        if (!$Estadisticas.PorPrioridad.ContainsKey($Sistema.Value.Prioridad)) {
            $Estadisticas.PorPrioridad[$Sistema.Value.Prioridad] = 0
        }
        $Estadisticas.PorPrioridad[$Sistema.Value.Prioridad]++
    }
    
    return $Estadisticas
}

# Función para validar configuración de sistema
function Test-SistemaConfig {
    param([string]$CodigoSistema)
    
    $Sistema = Get-SistemaInfo -CodigoSistema $CodigoSistema
    if (!$Sistema) { return $false }
    
    $Errores = @()
    
    # Validar campos obligatorios
    $CamposObligatorios = @("Nombre", "Codigo", "Responsable", "Criterio", "Cantidad", "CostoUnitario")
    foreach ($Campo in $CamposObligatorios) {
        if ([string]::IsNullOrEmpty($Sistema[$Campo])) {
            $Errores += "Campo obligatorio faltante: $Campo"
        }
    }
    
    # Validar valores numéricos
    if ($Sistema.Cantidad -le 0) {
        $Errores += "Cantidad debe ser mayor a 0"
    }
    
    if ($Sistema.CostoUnitario -le 0) {
        $Errores += "Costo unitario debe ser mayor a 0"
    }
    
    # Validar PKs
    if ($Sistema.PKInicio -lt 0 -or $Sistema.PKFin -gt 293) {
        $Errores += "PKs fuera del rango válido (0-293)"
    }
    
    if ($Sistema.PKInicio -gt $Sistema.PKFin) {
        $Errores += "PK inicio mayor que PK fin"
    }
    
    if ($Errores.Count -gt 0) {
        Write-ErrorLog -Message "Errores de validación en sistema $CodigoSistema" -Source "SistemaMapper" -Data @{ Errores = $Errores }
        return $false
    }
    
    return $true
}

# Función para actualizar configuración de sistema
function Update-SistemaConfig {
    param(
        [string]$CodigoSistema,
        [hashtable]$NuevosValores
    )
    
    if (!$Global:SistemasTM01.ContainsKey($CodigoSistema)) {
        Write-ErrorLog -Message "Sistema no encontrado para actualizar: $CodigoSistema" -Source "SistemaMapper"
        return $false
    }
    
    try {
        foreach ($Campo in $NuevosValores.GetEnumerator()) {
            $Global:SistemasTM01[$CodigoSistema][$Campo.Key] = $Campo.Value
        }
        
        Write-InfoLog -Message "Sistema actualizado: $CodigoSistema" -Source "SistemaMapper" -Data $NuevosValores
        
        return $true
    } catch {
        Write-ErrorLog -Message "Error al actualizar sistema $CodigoSistema`: $($_.Exception.Message)" -Source "SistemaMapper"
        return $false
    }
}

# Función para exportar configuración a JSON
function Export-SistemaConfig {
    param([string]$FilePath = "config_sistemas_tm01.json")
    
    try {
        $Config = @{
            FechaExportacion = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
            Version = "1.0"
            Proyecto = "TM01 Troncal Magdalena"
            Sistemas = $Global:SistemasTM01
        }
        
        $Config | ConvertTo-Json -Depth 5 | Set-Content -Path $FilePath -Encoding UTF8
        
        Write-InfoLog -Message "Configuración exportada: $FilePath" -Source "SistemaMapper"
        return $true
    } catch {
        Write-ErrorLog -Message "Error al exportar configuración: $($_.Exception.Message)" -Source "SistemaMapper"
        return $false
    }
}

# Función para importar configuración desde JSON
function Import-SistemaConfig {
    param([string]$FilePath)
    
    if (!(Test-Path $FilePath)) {
        Write-ErrorLog -Message "Archivo de configuración no encontrado: $FilePath" -Source "SistemaMapper"
        return $false
    }
    
    try {
        $Config = Get-Content -Path $FilePath -Raw | ConvertFrom-Json
        
        if ($Config.Sistemas) {
            $Global:SistemasTM01 = $Config.Sistemas
            Write-InfoLog -Message "Configuración importada: $FilePath" -Source "SistemaMapper"
            return $true
        } else {
            Write-ErrorLog -Message "Formato de configuración inválido" -Source "SistemaMapper"
            return $false
        }
    } catch {
        Write-ErrorLog -Message "Error al importar configuración: $($_.Exception.Message)" -Source "SistemaMapper"
        return $false
    }
}

# Exportar funciones públicas
Export-ModuleMember -Function @(
    "Get-SistemaInfo",
    "Get-TodosSistemas",
    "Get-SistemasPorTipo",
    "Get-SistemasPorResponsable",
    "Get-SistemasPorPrioridad",
    "Get-UbicacionesEquipos",
    "Get-CostoTotalSistema",
    "Get-CostoTotalProyecto",
    "Get-EstadisticasProyecto",
    "Test-SistemaConfig",
    "Update-SistemaConfig",
    "Export-SistemaConfig",
    "Import-SistemaConfig"
)
