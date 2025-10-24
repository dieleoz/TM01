# MÓDULO LAYOUTEXECUTOR - SISTEMA TM01 TRONCAL MAGDALENA
# Archivo: modules/LayoutExecutor.psm1
# Propósito: Ejecución y gestión de layout georreferenciado
# Fecha: 24 de octubre de 2025
# Versión: 1.0

# Importar módulos
Import-Module -Name "$PSScriptRoot\Logger.psm1" -Force
Import-Module -Name "$PSScriptRoot\SistemaMapper.psm1" -Force

# Configuración de coordenadas TM01
$Global:CoordenadasTM01 = @{
    PKInicio = 0
    PKFin = 293
    LatitudInicio = 7.499
    LongitudInicio = -73.201
    LatitudFin = 7.4
    LongitudFin = -73.3
    Direccion = "Norte-Sur"
    Proyeccion = "WGS84"
    ZonaUTM = "18N"
}

# Función para calcular coordenadas por PK
function Get-CoordenadasPorPK {
    param([double]$PK)
    
    # Validar PK
    if ($PK -lt $Global:CoordenadasTM01.PKInicio -or $PK -gt $Global:CoordenadasTM01.PKFin) {
        Write-WarningLog -Message "PK fuera del rango válido: $PK" -Source "LayoutExecutor"
        return $null
    }
    
    # Calcular coordenadas interpoladas
    $Progreso = ($PK - $Global:CoordenadasTM01.PKInicio) / ($Global:CoordenadasTM01.PKFin - $Global:CoordenadasTM01.PKInicio)
    
    $Latitud = $Global:CoordenadasTM01.LatitudInicio + ($Global:CoordenadasTM01.LatitudFin - $Global:CoordenadasTM01.LatitudInicio) * $Progreso
    $Longitud = $Global:CoordenadasTM01.LongitudInicio + ($Global:CoordenadasTM01.LongitudFin - $Global:CoordenadasTM01.LongitudInicio) * $Progreso
    
    return @{
        PK = $PK
        Latitud = [Math]::Round($Latitud, 6)
        Longitud = [Math]::Round($Longitud, 6)
        Proyeccion = $Global:CoordenadasTM01.Proyeccion
        ZonaUTM = $Global:CoordenadasTM01.ZonaUTM
    }
}

# Función para generar layout completo
function New-LayoutCompleto {
    param(
        [string]$Sistema = "",
        [switch]$IncluirTodos = $false
    )
    
    $LayoutCompleto = @()
    
    if ($IncluirTodos) {
        # Generar layout para todos los sistemas
        $Sistemas = Get-TodosSistemas
        foreach ($SistemaItem in $Sistemas.GetEnumerator()) {
            $LayoutSistema = Get-LayoutSistema -Sistema $SistemaItem.Key
            $LayoutCompleto += $LayoutSistema
        }
    } elseif (![string]::IsNullOrEmpty($Sistema)) {
        # Generar layout para sistema específico
        $LayoutCompleto = Get-LayoutSistema -Sistema $Sistema
    } else {
        Write-ErrorLog -Message "Debe especificar un sistema o usar -IncluirTodos" -Source "LayoutExecutor"
        return @()
    }
    
    Write-InfoLog -Message "Layout generado: $($LayoutCompleto.Count) equipos" -Source "LayoutExecutor"
    return $LayoutCompleto
}

# Función para generar layout de un sistema específico
function Get-LayoutSistema {
    param([string]$Sistema)
    
    $SistemaInfo = Get-SistemaInfo -CodigoSistema $Sistema
    if (!$SistemaInfo) {
        Write-ErrorLog -Message "Sistema no encontrado: $Sistema" -Source "LayoutExecutor"
        return @()
    }
    
    $LayoutSistema = @()
    
    # Generar equipos según tipo de sistema
    switch ($Sistema) {
        "SOS" {
            $LayoutSistema = Get-LayoutSOS -SistemaInfo $SistemaInfo
        }
        "ETD" {
            $LayoutSistema = Get-LayoutETD -SistemaInfo $SistemaInfo
        }
        "RADAR" {
            $LayoutSistema = Get-LayoutRADAR -SistemaInfo $SistemaInfo
        }
        "CCTV" {
            $LayoutSistema = Get-LayoutCCTV -SistemaInfo $SistemaInfo
        }
        "PMV" {
            $LayoutSistema = Get-LayoutPMV -SistemaInfo $SistemaInfo
        }
        "METEO" {
            $LayoutSistema = Get-LayoutMETEO -SistemaInfo $SistemaInfo
        }
        "WIM" {
            $LayoutSistema = Get-LayoutWIM -SistemaInfo $SistemaInfo
        }
        default {
            Write-WarningLog -Message "Sistema no reconocido: $Sistema" -Source "LayoutExecutor"
        }
    }
    
    return $LayoutSistema
}

# Función para generar layout SOS
function Get-LayoutSOS {
    param([hashtable]$SistemaInfo)
    
    $LayoutSOS = @()
    
    for ($PK = $SistemaInfo.PKInicio; $PK -le $SistemaInfo.PKFin; $PK += $SistemaInfo.Intervalo) {
        $Coordenadas = Get-CoordenadasPorPK -PK $PK
        
        if ($Coordenadas) {
            $LayoutSOS += @{
                Id = "SOS_$($PK.ToString('000'))"
                Nombre = "Poste SOS PK $PK"
                Tipo = "SOS"
                Sistema = "SOS"
                PK = $PK
                Latitud = $Coordenadas.Latitud
                Longitud = $Coordenadas.Longitud
                Estado = "Activo"
                Instalacion = "2025-12-01"
                Mantenimiento = "2026-01-01"
                Responsable = $SistemaInfo.Responsable
                Observaciones = "Poste de auxilio con panel solar"
                Especificacion = $SistemaInfo.Especificacion
                CostoUnitario = $SistemaInfo.CostoUnitario
                Moneda = $SistemaInfo.Moneda
            }
        }
    }
    
    return $LayoutSOS
}

# Función para generar layout ETD
function Get-LayoutETD {
    param([hashtable]$SistemaInfo)
    
    $LayoutETD = @()
    
    for ($PK = $SistemaInfo.PKInicio; $PK -le $SistemaInfo.PKFin; $PK += $SistemaInfo.Intervalo) {
        $Coordenadas = Get-CoordenadasPorPK -PK $PK
        
        if ($Coordenadas) {
            $LayoutETD += @{
                Id = "ETD_$($PK.ToString('000'))"
                Nombre = "ETD PK $PK"
                Tipo = "ETD"
                Sistema = "ETD"
                PK = $PK
                Latitud = $Coordenadas.Latitud
                Longitud = $Coordenadas.Longitud
                Estado = "Activo"
                Instalacion = "2025-12-01"
                Mantenimiento = "2026-01-01"
                Responsable = $SistemaInfo.Responsable
                Observaciones = "Estación de tratamiento de datos"
                Especificacion = $SistemaInfo.Especificacion
                CostoUnitario = $SistemaInfo.CostoUnitario
                Moneda = $SistemaInfo.Moneda
            }
        }
    }
    
    return $LayoutETD
}

# Función para generar layout RADAR
function Get-LayoutRADAR {
    param([hashtable]$SistemaInfo)
    
    $LayoutRADAR = @()
    
    for ($PK = $SistemaInfo.PKInicio; $PK -le $SistemaInfo.PKFin; $PK += $SistemaInfo.Intervalo) {
        $Coordenadas = Get-CoordenadasPorPK -PK $PK
        
        if ($Coordenadas) {
            $LayoutRADAR += @{
                Id = "RADAR_$($PK.ToString('000'))"
                Nombre = "Radar PK $PK"
                Tipo = "RADAR"
                Sistema = "RADAR"
                PK = $PK
                Latitud = $Coordenadas.Latitud
                Longitud = $Coordenadas.Longitud
                Estado = "Activo"
                Instalacion = "2025-12-01"
                Mantenimiento = "2026-01-01"
                Responsable = $SistemaInfo.Responsable
                Observaciones = "Radar de velocidad"
                Especificacion = $SistemaInfo.Especificacion
                CostoUnitario = $SistemaInfo.CostoUnitario
                Moneda = $SistemaInfo.Moneda
            }
        }
    }
    
    return $LayoutRADAR
}

# Función para generar layout CCTV
function Get-LayoutCCTV {
    param([hashtable]$SistemaInfo)
    
    $LayoutCCTV = @()
    
    # CCTV solo en peajes (PK específicos)
    $PKsPeajes = @(0, 50, 100, 150, 200, 250, 293)
    
    foreach ($PK in $PKsPeajes) {
        $Coordenadas = Get-CoordenadasPorPK -PK $PK
        
        if ($Coordenadas) {
            # Generar cámaras PAN y fijas en cada peaje
            $LayoutCCTV += @{
                Id = "CCTV_PAN_$($PK.ToString('000'))"
                Nombre = "Cámara PAN PK $PK"
                Tipo = "CCTV_PAN"
                Sistema = "CCTV"
                PK = $PK
                Latitud = $Coordenadas.Latitud
                Longitud = $Coordenadas.Longitud
                Estado = "Activo"
                Instalacion = "2025-12-01"
                Mantenimiento = "2026-01-01"
                Responsable = $SistemaInfo.Responsable
                Observaciones = "Cámara panorámica IP"
                Especificacion = $SistemaInfo.Especificacion
                CostoUnitario = $SistemaInfo.CostoUnitario
                Moneda = $SistemaInfo.Moneda
            }
            
            $LayoutCCTV += @{
                Id = "CCTV_FIJA_$($PK.ToString('000'))"
                Nombre = "Cámara Fija PK $PK"
                Tipo = "CCTV_FIJA"
                Sistema = "CCTV"
                PK = $PK
                Latitud = $Coordenadas.Latitud
                Longitud = $Coordenadas.Longitud
                Estado = "Activo"
                Instalacion = "2025-12-01"
                Mantenimiento = "2026-01-01"
                Responsable = $SistemaInfo.Responsable
                Observaciones = "Cámara fija IP"
                Especificacion = $SistemaInfo.Especificacion
                CostoUnitario = $SistemaInfo.CostoUnitario
                Moneda = $SistemaInfo.Moneda
            }
        }
    }
    
    return $LayoutCCTV
}

# Función para generar layout PMV
function Get-LayoutPMV {
    param([hashtable]$SistemaInfo)
    
    $LayoutPMV = @()
    
    for ($PK = $SistemaInfo.PKInicio; $PK -le $SistemaInfo.PKFin; $PK += $SistemaInfo.Intervalo) {
        $Coordenadas = Get-CoordenadasPorPK -PK $PK
        
        if ($Coordenadas) {
            $LayoutPMV += @{
                Id = "PMV_$($PK.ToString('000'))"
                Nombre = "PMV PK $PK"
                Tipo = "PMV"
                Sistema = "PMV"
                PK = $PK
                Latitud = $Coordenadas.Latitud
                Longitud = $Coordenadas.Longitud
                Estado = "Activo"
                Instalacion = "2025-12-01"
                Mantenimiento = "2026-01-01"
                Responsable = $SistemaInfo.Responsable
                Observaciones = "Panel de mensaje variable"
                Especificacion = $SistemaInfo.Especificacion
                CostoUnitario = $SistemaInfo.CostoUnitario
                Moneda = $SistemaInfo.Moneda
            }
        }
    }
    
    return $LayoutPMV
}

# Función para generar layout METEO
function Get-LayoutMETEO {
    param([hashtable]$SistemaInfo)
    
    $LayoutMETEO = @()
    
    for ($PK = $SistemaInfo.PKInicio; $PK -le $SistemaInfo.PKFin; $PK += $SistemaInfo.Intervalo) {
        $Coordenadas = Get-CoordenadasPorPK -PK $PK
        
        if ($Coordenadas) {
            $LayoutMETEO += @{
                Id = "METEO_$($PK.ToString('000'))"
                Nombre = "Estación Meteo PK $PK"
                Tipo = "METEO"
                Sistema = "METEO"
                PK = $PK
                Latitud = $Coordenadas.Latitud
                Longitud = $Coordenadas.Longitud
                Estado = "Activo"
                Instalacion = "2025-12-01"
                Mantenimiento = "2026-01-01"
                Responsable = $SistemaInfo.Responsable
                Observaciones = "Estación meteorológica Davis Pro2"
                Especificacion = $SistemaInfo.Especificacion
                CostoUnitario = $SistemaInfo.CostoUnitario
                Moneda = $SistemaInfo.Moneda
            }
        }
    }
    
    return $LayoutMETEO
}

# Función para generar layout WIM
function Get-LayoutWIM {
    param([hashtable]$SistemaInfo)
    
    $LayoutWIM = @()
    
    $Coordenadas = Get-CoordenadasPorPK -PK $SistemaInfo.PKInicio
    
    if ($Coordenadas) {
        $LayoutWIM += @{
            Id = "WIM_001"
            Nombre = "Estación WIM PK $($SistemaInfo.PKInicio)"
            Tipo = "WIM"
            Sistema = "WIM"
            PK = $SistemaInfo.PKInicio
            Latitud = $Coordenadas.Latitud
            Longitud = $Coordenadas.Longitud
            Estado = "Activo"
            Instalacion = "2025-12-01"
            Mantenimiento = "2026-01-01"
            Responsable = $SistemaInfo.Responsable
            Observaciones = "Sistema de pesaje en movimiento"
            Especificacion = $SistemaInfo.Especificacion
            CostoUnitario = $SistemaInfo.CostoUnitario
            Moneda = $SistemaInfo.Moneda
        }
    }
    
    return $LayoutWIM
}

# Función para exportar layout a archivo
function Export-Layout {
    param(
        [array]$Layout,
        [string]$FilePath = "Sistema_Validacion_Web/layout_datos.js",
        [string]$Format = "JavaScript"
    )
    
    try {
        # Crear directorio si no existe
        $Directory = Split-Path $FilePath -Parent
        if (!(Test-Path $Directory)) {
            New-Item -ItemType Directory -Path $Directory -Force | Out-Null
        }
        
        $Contenido = ""
        
        switch ($Format) {
            "JavaScript" {
                $Contenido = Get-LayoutJavaScript -Layout $Layout
            }
            "JSON" {
                $Contenido = $Layout | ConvertTo-Json -Depth 3
            }
            "CSV" {
                $Contenido = Get-LayoutCSV -Layout $Layout
            }
            default {
                Write-ErrorLog -Message "Formato no soportado: $Format" -Source "LayoutExecutor"
                return $false
            }
        }
        
        # Escribir archivo
        Set-Content -Path $FilePath -Value $Contenido -Encoding UTF8
        
        Write-InfoLog -Message "Layout exportado: $FilePath ($($Layout.Count) equipos)" -Source "LayoutExecutor"
        return $true
        
    } catch {
        Write-ErrorLog -Message "Error al exportar layout: $($_.Exception.Message)" -Source "LayoutExecutor"
        return $false
    }
}

# Función para generar contenido JavaScript
function Get-LayoutJavaScript {
    param([array]$Layout)
    
    $Contenido = @"
// LAYOUT GEORREFERENCIADO TM01 - GENERADO AUTOMATICAMENTE
// Archivo: Sistema_Validacion_Web/layout_datos.js
// Generado: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: LayoutExecutor.psm1 v1.0

// Datos de layout extraidos desde tm01_master_data.js
const layoutDatos = [
"@
    
    foreach ($Equipo in $Layout) {
        $Contenido += @"

    {
        "id": "$($Equipo.Id)",
        "nombre": "$($Equipo.Nombre)",
        "tipo": "$($Equipo.Tipo)",
        "sistema": "$($Equipo.Sistema)",
        "pk": $($Equipo.PK),
        "latitud": $($Equipo.Latitud),
        "longitud": $($Equipo.Longitud),
        "estado": "$($Equipo.Estado)",
        "instalacion": "$($Equipo.Instalacion)",
        "mantenimiento": "$($Equipo.Mantenimiento)",
        "responsable": "$($Equipo.Responsable)",
        "observaciones": "$($Equipo.Observaciones)"
    },"
    }
    
    $Contenido += @"

];

// Funciones de consulta
function obtenerTodosEquipos() {
    return layoutDatos;
}

function obtenerEquiposPorSistema(sistema) {
    return layoutDatos.filter(equipo => equipo.sistema === sistema);
}

function obtenerEquiposPorTipo(tipo) {
    return layoutDatos.filter(equipo => equipo.tipo === tipo);
}

function obtenerEquiposPorPK(pkInicio, pkFin) {
    return layoutDatos.filter(equipo => equipo.pk >= pkInicio && equipo.pk <= pkFin);
}

function obtenerEquiposPorEstado(estado) {
    return layoutDatos.filter(equipo => equipo.estado === estado);
}

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
    
    return $Contenido
}

# Función para generar contenido CSV
function Get-LayoutCSV {
    param([array]$Layout)
    
    $Contenido = "Id,Nombre,Tipo,Sistema,PK,Latitud,Longitud,Estado,Instalacion,Mantenimiento,Responsable,Observaciones`n"
    
    foreach ($Equipo in $Layout) {
        $Contenido += "$($Equipo.Id),$($Equipo.Nombre),$($Equipo.Tipo),$($Equipo.Sistema),$($Equipo.PK),$($Equipo.Latitud),$($Equipo.Longitud),$($Equipo.Estado),$($Equipo.Instalacion),$($Equipo.Mantenimiento),$($Equipo.Responsable),$($Equipo.Observaciones)`n"
    }
    
    return $Contenido
}

# Función para validar layout
function Test-Layout {
    param([array]$Layout)
    
    $Errores = @()
    
    foreach ($Equipo in $Layout) {
        # Validar campos obligatorios
        $CamposObligatorios = @("Id", "Nombre", "Tipo", "Sistema", "PK", "Latitud", "Longitud")
        foreach ($Campo in $CamposObligatorios) {
            if ([string]::IsNullOrEmpty($Equipo[$Campo])) {
                $Errores += "Campo obligatorio faltante en $($Equipo.Id): $Campo"
            }
        }
        
        # Validar PK
        if ($Equipo.PK -lt 0 -or $Equipo.PK -gt 293) {
            $Errores += "PK inválido en $($Equipo.Id): $($Equipo.PK)"
        }
        
        # Validar coordenadas
        if ($Equipo.Latitud -lt 7.0 -or $Equipo.Latitud -gt 8.0) {
            $Errores += "Latitud inválida en $($Equipo.Id): $($Equipo.Latitud)"
        }
        
        if ($Equipo.Longitud -lt -74.0 -or $Equipo.Longitud -gt -73.0) {
            $Errores += "Longitud inválida en $($Equipo.Id): $($Equipo.Longitud)"
        }
    }
    
    if ($Errores.Count -gt 0) {
        Write-ErrorLog -Message "Errores de validación en layout" -Source "LayoutExecutor" -Data @{ Errores = $Errores }
        return $false
    }
    
    Write-InfoLog -Message "Layout validado exitosamente: $($Layout.Count) equipos" -Source "LayoutExecutor"
    return $true
}

# Exportar funciones públicas
Export-ModuleMember -Function @(
    "Get-CoordenadasPorPK",
    "New-LayoutCompleto",
    "Get-LayoutSistema",
    "Export-Layout",
    "Test-Layout"
)
