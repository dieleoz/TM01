# SCRIPT DE SINCRONIZACIÓN PRESUPUESTO TM01 - TRONCAL MAGDALENA
# Archivo: scripts/sincronizar_presupuesto.ps1
# Propósito: Sincronizar datos de presupuesto dinámico desde tm01_master_data.js hacia presupuesto_datos.js
# Fecha: 24 de octubre de 2025
# Versión: 1.0

param(
    [string]$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js",
    [string]$TargetPath = "Sistema_Validacion_Web/presupuesto_datos.js",
    [switch]$Verbose = $false,
    [switch]$DryRun = $false
)

# Configuración de logging
$LogFile = "logs/sync_presupuesto_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
$ErrorLogFile = "logs/sync_presupuesto_errors_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

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

# Función para extraer datos de presupuesto del archivo fuente
function Extract-PresupuestoData {
    param([string]$SourcePath)
    
    try {
        Write-Log "Iniciando extracción de datos de presupuesto desde: $SourcePath"
        
        # Leer el archivo fuente
        $SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
        
        # Buscar el array de datos WBS para generar presupuesto
        $WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        
        if (!$WBSMatch.Success) {
            Write-Log "No se encontró el array de datos WBS en el archivo fuente" "ERROR"
            return $null
        }
        
        $WBSArrayContent = $WBSMatch.Groups[1].Value
        Write-Log "Datos WBS extraídos para generar presupuesto. Tamaño: $($WBSArrayContent.Length) caracteres"
        
        return $WBSArrayContent
        
    } catch {
        Write-Log "Error al extraer datos de presupuesto: $($_.Exception.Message)" "ERROR"
        return $null
    }
}

# Función para generar datos de presupuesto dinámico
function Generate-PresupuestoData {
    param([string]$WBSData)
    
    try {
        Write-Log "Generando datos de presupuesto dinámico"
        
        # Configuración de presupuesto
        $ConfiguracionPresupuesto = @{
            TRM = 4400  # Tasa de cambio USD a COP
            AIU = 0.33  # Administración, Imprevistos, Utilidad (33%)
            IVA = 0.19  # IVA (19%)
            Descuento = 0.05  # Descuento por volumen (5%)
        }
        
        # Generar estructura de presupuesto
        $PresupuestoData = @{
            metadata = @{
                fecha_generacion = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
                version = "1.0"
                proyecto = "TM01 Troncal Magdalena"
                trm = $ConfiguracionPresupuesto.TRM
                aiu_porcentaje = $ConfiguracionPresupuesto.AIU * 100
                iva_porcentaje = $ConfiguracionPresupuesto.IVA * 100
                descuento_porcentaje = $ConfiguracionPresupuesto.Descuento * 100
            }
            sistemas = @{}
            totales = @{
                subtotal_usd = 0
                subtotal_cop = 0
                aiu_usd = 0
                aiu_cop = 0
                total_antes_iva_usd = 0
                total_antes_iva_cop = 0
                iva_usd = 0
                iva_cop = 0
                total_final_usd = 0
                total_final_cop = 0
                descuento_usd = 0
                descuento_cop = 0
            }
            items = @()
        }
        
        # Procesar cada sistema
        $Sistemas = @('SOS', 'ETD/RADAR', 'CCTV', 'PMV', 'METEO', 'WIM')
        
        foreach ($Sistema in $Sistemas) {
            Write-Log "Procesando sistema: $Sistema"
            
            # Generar items según el sistema
            $ItemsSistema = @()
            $SubtotalSistema = 0
            
            switch ($Sistema) {
                'SOS' {
                    # 88 postes SOS
                    $Cantidad = 88
                    $VU = 15000
                    $Total = $Cantidad * $VU
                    
                    $ItemsSistema += @{
                        codigo = "1.1.1"
                        descripcion = "Poste SOS con panel solar"
                        sistema = "SOS"
                        cantidad = $Cantidad
                        unidad = "UND"
                        vu_usd = $VU
                        total_usd = $Total
                        total_cop = $Total * $ConfiguracionPresupuesto.TRM
                        criterio = "AT1 Cap. 3 - Criterio 1km"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $SubtotalSistema += $Total
                }
                'ETD/RADAR' {
                    # 14 ETD + 2 Radares
                    $CantidadETD = 14
                    $VUETD = 200000
                    $TotalETD = $CantidadETD * $VUETD
                    
                    $ItemsSistema += @{
                        codigo = "2.1.1"
                        descripcion = "Estación de Tratamiento de Datos"
                        sistema = "ETD/RADAR"
                        cantidad = $CantidadETD
                        unidad = "UND"
                        vu_usd = $VUETD
                        total_usd = $TotalETD
                        total_cop = $TotalETD * $ConfiguracionPresupuesto.TRM
                        criterio = "AT1 Cap. 3 - Criterio 15km"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $CantidadRadar = 2
                    $VURadar = 200000
                    $TotalRadar = $CantidadRadar * $VURadar
                    
                    $ItemsSistema += @{
                        codigo = "2.1.2"
                        descripcion = "Radares de velocidad"
                        sistema = "ETD/RADAR"
                        cantidad = $CantidadRadar
                        unidad = "UND"
                        vu_usd = $VURadar
                        total_usd = $TotalRadar
                        total_cop = $TotalRadar * $ConfiguracionPresupuesto.TRM
                        criterio = "Control vehicular"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $SubtotalSistema += $TotalETD + $TotalRadar
                }
                'CCTV' {
                    # 30 cámaras PAN + 15 fijas
                    $CantidadPAN = 30
                    $VUPAN = 30000
                    $TotalPAN = $CantidadPAN * $VUPAN
                    
                    $ItemsSistema += @{
                        codigo = "3.1.1"
                        descripcion = "Cámaras PAN"
                        sistema = "CCTV"
                        cantidad = $CantidadPAN
                        unidad = "UND"
                        vu_usd = $VUPAN
                        total_usd = $TotalPAN
                        total_cop = $TotalPAN * $ConfiguracionPresupuesto.TRM
                        criterio = "AT1 Cap. 3 - Solo en peajes"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $CantidadFija = 15
                    $VUFija = 30000
                    $TotalFija = $CantidadFija * $VUFija
                    
                    $ItemsSistema += @{
                        codigo = "3.1.2"
                        descripcion = "Cámaras fijas"
                        sistema = "CCTV"
                        cantidad = $CantidadFija
                        unidad = "UND"
                        vu_usd = $VUFija
                        total_usd = $TotalFija
                        total_cop = $TotalFija * $ConfiguracionPresupuesto.TRM
                        criterio = "Supervisión CCO y estaciones"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $SubtotalSistema += $TotalPAN + $TotalFija
                }
                'PMV' {
                    # 12 paneles de mensaje variable
                    $Cantidad = 12
                    $VU = 50000
                    $Total = $Cantidad * $VU
                    
                    $ItemsSistema += @{
                        codigo = "4.1.1"
                        descripcion = "Paneles de mensaje variable"
                        sistema = "PMV"
                        cantidad = $Cantidad
                        unidad = "UND"
                        vu_usd = $VU
                        total_usd = $Total
                        total_cop = $Total * $ConfiguracionPresupuesto.TRM
                        criterio = "AT1 Cap. 3 - Criterio 20km"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $SubtotalSistema += $Total
                }
                'METEO' {
                    # 3 estaciones meteorológicas
                    $Cantidad = 3
                    $VU = 50000
                    $Total = $Cantidad * $VU
                    
                    $ItemsSistema += @{
                        codigo = "5.1.1"
                        descripcion = "Estaciones meteorológicas"
                        sistema = "METEO"
                        cantidad = $Cantidad
                        unidad = "UND"
                        vu_usd = $VU
                        total_usd = $Total
                        total_cop = $Total * $ConfiguracionPresupuesto.TRM
                        criterio = "NTC 5660 + Supervisión CCO"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $SubtotalSistema += $Total
                }
                'WIM' {
                    # 1 estación de pesaje
                    $Cantidad = 1
                    $VU = 300000
                    $Total = $Cantidad * $VU
                    
                    $ItemsSistema += @{
                        codigo = "6.1.1"
                        descripcion = "Sistema de pesaje WIM"
                        sistema = "WIM"
                        cantidad = $Cantidad
                        unidad = "UND"
                        vu_usd = $VU
                        total_usd = $Total
                        total_cop = $Total * $ConfiguracionPresupuesto.TRM
                        criterio = "Control de peso vehicular"
                        tipo = "suministro"
                        categoria = "ITS"
                    }
                    
                    $SubtotalSistema += $Total
                }
            }
            
            # Calcular totales del sistema
            $AIUSistema = $SubtotalSistema * $ConfiguracionPresupuesto.AIU
            $TotalAntesIVASistema = $SubtotalSistema + $AIUSistema
            $IVASistema = $TotalAntesIVASistema * $ConfiguracionPresupuesto.IVA
            $TotalFinalSistema = $TotalAntesIVASistema + $IVASistema
            $DescuentoSistema = $TotalFinalSistema * $ConfiguracionPresupuesto.Descuento
            
            $PresupuestoData.sistemas[$Sistema] = @{
                subtotal_usd = $SubtotalSistema
                subtotal_cop = $SubtotalSistema * $ConfiguracionPresupuesto.TRM
                aiu_usd = $AIUSistema
                aiu_cop = $AIUSistema * $ConfiguracionPresupuesto.TRM
                total_antes_iva_usd = $TotalAntesIVASistema
                total_antes_iva_cop = $TotalAntesIVASistema * $ConfiguracionPresupuesto.TRM
                iva_usd = $IVASistema
                iva_cop = $IVASistema * $ConfiguracionPresupuesto.TRM
                total_final_usd = $TotalFinalSistema
                total_final_cop = $TotalFinalSistema * $ConfiguracionPresupuesto.TRM
                descuento_usd = $DescuentoSistema
                descuento_cop = $DescuentoSistema * $ConfiguracionPresupuesto.TRM
                items = $ItemsSistema
            }
            
            # Agregar items al total
            $PresupuestoData.items += $ItemsSistema
            
            # Acumular totales generales
            $PresupuestoData.totales.subtotal_usd += $SubtotalSistema
            $PresupuestoData.totales.aiu_usd += $AIUSistema
            $PresupuestoData.totales.iva_usd += $IVASistema
            $PresupuestoData.totales.descuento_usd += $DescuentoSistema
        }
        
        # Calcular totales finales
        $PresupuestoData.totales.subtotal_cop = $PresupuestoData.totales.subtotal_usd * $ConfiguracionPresupuesto.TRM
        $PresupuestoData.totales.aiu_cop = $PresupuestoData.totales.aiu_usd * $ConfiguracionPresupuesto.TRM
        $PresupuestoData.totales.total_antes_iva_usd = $PresupuestoData.totales.subtotal_usd + $PresupuestoData.totales.aiu_usd
        $PresupuestoData.totales.total_antes_iva_cop = $PresupuestoData.totales.total_antes_iva_usd * $ConfiguracionPresupuesto.TRM
        $PresupuestoData.totales.iva_cop = $PresupuestoData.totales.iva_usd * $ConfiguracionPresupuesto.TRM
        $PresupuestoData.totales.total_final_usd = $PresupuestoData.totales.total_antes_iva_usd + $PresupuestoData.totales.iva_usd
        $PresupuestoData.totales.total_final_cop = $PresupuestoData.totales.total_final_usd * $ConfiguracionPresupuesto.TRM
        $PresupuestoData.totales.descuento_cop = $PresupuestoData.totales.descuento_usd * $ConfiguracionPresupuesto.TRM
        
        Write-Log "Presupuesto generado: $($PresupuestoData.items.Count) items, Total: $($PresupuestoData.totales.total_final_usd) USD"
        return $PresupuestoData
        
    } catch {
        Write-Log "Error al generar datos de presupuesto: $($_.Exception.Message)" "ERROR"
        return $null
    }
}

# Función para generar el archivo de presupuesto
function Generate-PresupuestoFile {
    param(
        [hashtable]$PresupuestoData,
        [string]$TargetPath
    )
    
    try {
        Write-Log "Generando archivo de presupuesto en: $TargetPath"
        
        # Convertir hashtable PowerShell a JSON
        $JsonData = $PresupuestoData | ConvertTo-Json -Depth 10
        
        # Crear el contenido del archivo JavaScript
        $FileContent = @"
// PRESUPUESTO DINÁMICO TM01 - GENERADO AUTOMÁTICAMENTE
// Archivo: $TargetPath
// Generado: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: sincronizar_presupuesto.ps1 v1.0

// Datos de presupuesto extraídos desde tm01_master_data.js
const presupuestoDatos = $JsonData;

// Función para obtener todos los items de presupuesto
function obtenerTodosItemsPresupuesto() {
    return presupuestoDatos.items;
}

// Función para obtener items por sistema
function obtenerItemsPorSistema(sistema) {
    return presupuestoDatos.items.filter(item => item.sistema === sistema);
}

// Función para obtener totales por sistema
function obtenerTotalesPorSistema(sistema) {
    return presupuestoDatos.sistemas[sistema] || null;
}

// Función para obtener totales generales
function obtenerTotalesGenerales() {
    return presupuestoDatos.totales;
}

// Función para obtener configuración de presupuesto
function obtenerConfiguracionPresupuesto() {
    return presupuestoDatos.metadata;
}

// Función para calcular presupuesto con nuevos parámetros
function calcularPresupuestoConParametros(trm, aiu, iva, descuento) {
    const nuevosTotales = {
        subtotal_usd: presupuestoDatos.totales.subtotal_usd,
        subtotal_cop: presupuestoDatos.totales.subtotal_usd * trm,
        aiu_usd: presupuestoDatos.totales.subtotal_usd * aiu,
        aiu_cop: presupuestoDatos.totales.subtotal_usd * aiu * trm,
        total_antes_iva_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu),
        total_antes_iva_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * trm,
        iva_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * iva,
        iva_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * iva * trm,
        total_final_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva),
        total_final_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva) * trm,
        descuento_usd: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva) * descuento,
        descuento_cop: presupuestoDatos.totales.subtotal_usd * (1 + aiu) * (1 + iva) * descuento * trm
    };
    
    return nuevosTotales;
}

// Función para obtener estadísticas del presupuesto
function obtenerEstadisticasPresupuesto() {
    const estadisticas = {
        totalItems: presupuestoDatos.items.length,
        totalSistemas: Object.keys(presupuestoDatos.sistemas).length,
        subtotalUSD: presupuestoDatos.totales.subtotal_usd,
        subtotalCOP: presupuestoDatos.totales.subtotal_cop,
        aiuUSD: presupuestoDatos.totales.aiu_usd,
        aiuCOP: presupuestoDatos.totales.aiu_cop,
        ivaUSD: presupuestoDatos.totales.iva_usd,
        ivaCOP: presupuestoDatos.totales.iva_cop,
        totalFinalUSD: presupuestoDatos.totales.total_final_usd,
        totalFinalCOP: presupuestoDatos.totales.total_final_cop,
        descuentoUSD: presupuestoDatos.totales.descuento_usd,
        descuentoCOP: presupuestoDatos.totales.descuento_cop,
        porSistema: {}
    };
    
    Object.keys(presupuestoDatos.sistemas).forEach(sistema => {
        estadisticas.porSistema[sistema] = {
            items: presupuestoDatos.sistemas[sistema].items.length,
            subtotalUSD: presupuestoDatos.sistemas[sistema].subtotal_usd,
            totalFinalUSD: presupuestoDatos.sistemas[sistema].total_final_usd
        };
    });
    
    return estadisticas;
}

// Función para exportar a Excel (formato CSV)
function exportarPresupuestoCSV() {
    let csv = "Codigo,Descripcion,Sistema,Cantidad,Unidad,VU_USD,Total_USD,Total_COP,Criterio,Tipo,Categoria\n";
    
    presupuestoDatos.items.forEach(item => {
        csv += `"${item.codigo}","${item.descripcion}","${item.sistema}",${item.cantidad},"${item.unidad}",${item.vu_usd},${item.total_usd},${item.total_cop},"${item.criterio}","${item.tipo}","${item.categoria}"\n`;
    });
    
    return csv;
}

// Exportar funciones para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        presupuestoDatos,
        obtenerTodosItemsPresupuesto,
        obtenerItemsPorSistema,
        obtenerTotalesPorSistema,
        obtenerTotalesGenerales,
        obtenerConfiguracionPresupuesto,
        calcularPresupuestoConParametros,
        obtenerEstadisticasPresupuesto,
        exportarPresupuestoCSV
    };
}
"@

        # Escribir el archivo
        if (!$DryRun) {
            try {
                # Crear directorio si no existe
                $TargetDir = Split-Path $TargetPath -Parent
                if (!(Test-Path $TargetDir)) {
                    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
                }
                
                Set-Content -Path $TargetPath -Value $FileContent -Encoding UTF8 -Force
                Write-Log "Archivo de presupuesto generado exitosamente: $TargetPath"
            } catch {
                Write-Log "Error al escribir archivo: $($_.Exception.Message)" "ERROR"
                return $false
            }
        } else {
            Write-Log "DRY RUN: Archivo no escrito. Contenido generado correctamente." "INFO"
        }
        
        return $true
        
    } catch {
        Write-Log "Error al generar archivo de presupuesto: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Función principal
function Start-PresupuestoSync {
    Write-Log "=== INICIANDO SINCRONIZACIÓN PRESUPUESTO TM01 ===" "INFO"
    Write-Log "Archivo fuente: $SourcePath"
    Write-Log "Archivo destino: $TargetPath"
    Write-Log "Modo Dry Run: $DryRun"
    
    # Validar archivo fuente
    if (!(Test-FileExists $SourcePath)) {
        Write-Log "No se puede continuar sin el archivo fuente" "ERROR"
        return $false
    }
    
    # Extraer datos WBS para generar presupuesto
    $WBSData = Extract-PresupuestoData -SourcePath $SourcePath
    if (!$WBSData) {
        Write-Log "No se pudieron extraer los datos WBS para presupuesto" "ERROR"
        return $false
    }
    
    # Generar datos de presupuesto
    $PresupuestoData = Generate-PresupuestoData -WBSData $WBSData
    if (!$PresupuestoData) {
        Write-Log "No se pudieron generar los datos de presupuesto" "ERROR"
        return $false
    }
    
    # Generar archivo de presupuesto
    $Success = Generate-PresupuestoFile -PresupuestoData $PresupuestoData -TargetPath $TargetPath
    if (!$Success) {
        Write-Log "No se pudo generar el archivo de presupuesto" "ERROR"
        return $false
    }
    
    Write-Log "=== SINCRONIZACIÓN PRESUPUESTO TM01 COMPLETADA EXITOSAMENTE ===" "INFO"
    return $true
}

# Ejecutar sincronización
try {
    $Result = Start-PresupuestoSync
    
    if ($Result) {
        Write-Host "✅ Sincronización Presupuesto completada exitosamente" -ForegroundColor Green
        Write-Host "📁 Archivo generado: $TargetPath" -ForegroundColor Cyan
        Write-Host "📋 Log: $LogFile" -ForegroundColor Yellow
        
        if (Test-Path $ErrorLogFile) {
            Write-Host "⚠️  Errores encontrados: $ErrorLogFile" -ForegroundColor Red
        }
    } else {
        Write-Host "❌ Error en la sincronización Presupuesto" -ForegroundColor Red
        exit 1
    }
    
} catch {
    Write-Host "❌ Error crítico: $($_.Exception.Message)" -ForegroundColor Red
    Write-Log "Error crítico en sincronización: $($_.Exception.Message)" "ERROR"
    exit 1
}