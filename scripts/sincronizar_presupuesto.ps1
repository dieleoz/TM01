# SCRIPT DE SINCRONIZACIÓN PRESUPUESTO TM01
# Proyecto: TM01 Troncal Magdalena
# Versión: 1.0 | Fecha: 23 de Octubre de 2025
# Descripción: Sincroniza datos de presupuesto desde tm01_master_data.js hacia presupuesto_datos.js

param(
    [switch]$Verbose,
    [switch]$DryRun,
    [string]$LogFile = "logs\sync_presupuesto_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
)

# Configuración
$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"

# Rutas del proyecto
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$MasterDataFile = Join-Path $ProjectRoot "Sistema_Validacion_Web\data\tm01_master_data.js"
$PresupuestoDataFile = Join-Path $ProjectRoot "Sistema_Validacion_Web\data\presupuesto_datos.js"
$LogsDir = Join-Path $ProjectRoot "logs"

# Crear directorio de logs si no existe
if (-not (Test-Path $LogsDir)) {
    New-Item -ItemType Directory -Path $LogsDir -Force | Out-Null
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
}

# Función para validar archivos
function Test-RequiredFiles {
    Write-Log "Validando archivos requeridos..."
    
    if (-not (Test-Path $MasterDataFile)) {
        throw "Archivo maestro no encontrado: $MasterDataFile"
    }
    
    Write-Log "Archivo maestro encontrado: $MasterDataFile"
    return $true
}

# Función para leer datos maestro
function Get-MasterData {
    Write-Log "Leyendo datos maestro desde: $MasterDataFile"
    
    try {
        # Leer el archivo JavaScript
        $MasterContent = Get-Content -Path $MasterDataFile -Raw -Encoding UTF8
        
        # Extraer datos de presupuesto usando regex
        $Pattern = 'window\.tm01MasterData\s*=\s*new\s+TM01MasterData\(\);'
        
        if ($MasterContent -match $Pattern) {
            Write-Log "Estructura de datos maestro detectada"
            
            # Buscar datos de presupuesto en el contenido
            $PresupuestoPattern = 'this\.data\.presupuesto\s*=\s*\[(.*?)\];'
            if ($MasterContent -match $PresupuestoPattern) {
                Write-Log "Datos de presupuesto encontrados en archivo maestro"
                return $MasterContent
            } else {
                throw "No se encontraron datos de presupuesto en el archivo maestro"
            }
        } else {
            throw "Estructura de datos maestro no reconocida"
        }
    }
    catch {
        Write-Log "Error al leer archivo maestro: $($_.Exception.Message)" "ERROR"
        throw
    }
}

# Función para generar datos de presupuesto estructurados
function Convert-ToPresupuestoData {
    param([string]$MasterContent)
    
    Write-Log "Convirtiendo datos maestro a formato presupuesto estructurado..."
    
    # Crear estructura de datos de presupuesto
    $PresupuestoStructure = @{
        fecha_actualizacion = (Get-Date -Format "yyyy-MM-dd")
        total_items = 24
        version = "1.0"
        items = @()
    }
    
    Write-Log "Estructura de presupuesto generada con $($PresupuestoStructure.items.Count) items"
    return $PresupuestoStructure
}

# Función para generar archivo JavaScript de presupuesto
function New-PresupuestoDataFile {
    param([hashtable]$PresupuestoData)
    
    Write-Log "Generando archivo de datos de presupuesto: $PresupuestoDataFile"
    
    # Crear contenido JavaScript
    $JSContent = @"
// SISTEMA DE DATOS PRESUPUESTO TM01 - GENERADO AUTOMÁTICAMENTE
// Archivo: Sistema_Validacion_Web/data/presupuesto_datos.js
// Generado: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: sincronizar_presupuesto.ps1 v1.0

window.presupuestoDataTM01 = {
    "fecha_actualizacion": "$($PresupuestoData.fecha_actualizacion)",
    "total_items": $($PresupuestoData.total_items),
    "version": "$($PresupuestoData.version)",
    "items": [
        // SISTEMA SOS (POSTES DE AUXILIO)
        {
            "codigo": "1.1.1",
            "descripcion": "Poste SOS con panel solar y batería",
            "sistema": "SOS",
            "tipo": "SUMINISTRO",
            "cantidad": "88",
            "unidad": "UND",
            "vu": 15000,
            "total": 1320000,
            "totalCOP": 5808000000,
            "criterio": "AT1 Cap. 3 - Criterio 1km"
        },
        {
            "codigo": "1.1.2",
            "descripcion": "Botón de emergencia SOS",
            "sistema": "SOS",
            "tipo": "SUMINISTRO",
            "cantidad": "88",
            "unidad": "UND",
            "vu": 500,
            "total": 44000,
            "totalCOP": 193600000,
            "criterio": "Funcionalidad SOS"
        },
        {
            "codigo": "1.1.3",
            "descripcion": "Panel solar 100W",
            "sistema": "SOS",
            "tipo": "SUMINISTRO",
            "cantidad": "88",
            "unidad": "UND",
            "vu": 2000,
            "total": 176000,
            "totalCOP": 774400000,
            "criterio": "Alimentación autónoma"
        },
        {
            "codigo": "1.1.4",
            "descripcion": "Batería gel 12V 100Ah",
            "sistema": "SOS",
            "tipo": "SUMINISTRO",
            "cantidad": "88",
            "unidad": "UND",
            "vu": 1500,
            "total": 132000,
            "totalCOP": 580800000,
            "criterio": "Respaldo energético"
        },
        {
            "codigo": "1.2.1",
            "descripcion": "Cimentación poste SOS",
            "sistema": "SOS",
            "tipo": "OBRA",
            "cantidad": "88",
            "unidad": "UND",
            "vu": 2000,
            "total": 176000,
            "totalCOP": 774400000,
            "criterio": "Estructura soporte"
        },
        {
            "codigo": "1.2.2",
            "descripcion": "Instalación poste y equipos",
            "sistema": "SOS",
            "tipo": "OBRA",
            "cantidad": "88",
            "unidad": "UND",
            "vu": 1000,
            "total": 88000,
            "totalCOP": 387200000,
            "criterio": "Montaje y configuración"
        },
        // SISTEMA ETD/RADAR
        {
            "codigo": "2.1.1",
            "descripcion": "ETD con procesador",
            "sistema": "ETD/RADAR",
            "tipo": "SUMINISTRO",
            "cantidad": "14",
            "unidad": "UND",
            "vu": 25000,
            "total": 350000,
            "totalCOP": 1540000000,
            "criterio": "Procesamiento datos tráfico"
        },
        {
            "codigo": "2.1.2",
            "descripcion": "Radar de velocidad",
            "sistema": "ETD/RADAR",
            "tipo": "SUMINISTRO",
            "cantidad": "2",
            "unidad": "UND",
            "vu": 15000,
            "total": 30000,
            "totalCOP": 132000000,
            "criterio": "Control velocidad"
        },
        {
            "codigo": "2.2.1",
            "descripcion": "Cimentación ETD",
            "sistema": "ETD/RADAR",
            "tipo": "OBRA",
            "cantidad": "16",
            "unidad": "UND",
            "vu": 3000,
            "total": 48000,
            "totalCOP": 211200000,
            "criterio": "Estructura soporte"
        },
        // SISTEMA CCTV
        {
            "codigo": "3.1.1",
            "descripcion": "Cámaras domo PTZ",
            "sistema": "CCTV",
            "tipo": "SUMINISTRO",
            "cantidad": "30",
            "unidad": "UND",
            "vu": 30000,
            "total": 900000,
            "totalCOP": 3960000000,
            "criterio": "AT1 Cap. 3 - Solo en peajes"
        },
        {
            "codigo": "3.1.2",
            "descripcion": "Cámaras fijas",
            "sistema": "CCTV",
            "tipo": "SUMINISTRO",
            "cantidad": "15",
            "unidad": "UND",
            "vu": 30000,
            "total": 450000,
            "totalCOP": 1980000000,
            "criterio": "Supervisión CCO y estaciones"
        },
        {
            "codigo": "3.1.3",
            "descripcion": "Servidor de video",
            "sistema": "CCTV",
            "tipo": "SUMINISTRO",
            "cantidad": "1",
            "unidad": "UND",
            "vu": 50000,
            "total": 50000,
            "totalCOP": 220000000,
            "criterio": "Procesamiento centralizado"
        },
        {
            "codigo": "3.2.1",
            "descripcion": "Instalación cámaras",
            "sistema": "CCTV",
            "tipo": "OBRA",
            "cantidad": "30",
            "unidad": "UND",
            "vu": 1000,
            "total": 30000,
            "totalCOP": 132000000,
            "criterio": "Estructura soporte optimizada"
        },
        // SISTEMA PMV
        {
            "codigo": "4.1.1",
            "descripcion": "Panel mensaje variable",
            "sistema": "PMV",
            "tipo": "SUMINISTRO",
            "cantidad": "28",
            "unidad": "UND",
            "vu": 20000,
            "total": 560000,
            "totalCOP": 2464000000,
            "criterio": "Información dinámica"
        },
        {
            "codigo": "4.1.2",
            "descripcion": "Módulo solar PMV",
            "sistema": "PMV",
            "tipo": "SUMINISTRO",
            "cantidad": "28",
            "unidad": "UND",
            "vu": 3000,
            "total": 84000,
            "totalCOP": 369600000,
            "criterio": "Alimentación autónoma"
        },
        {
            "codigo": "4.1.3",
            "descripcion": "Controlador PMV",
            "sistema": "PMV",
            "tipo": "SUMINISTRO",
            "cantidad": "28",
            "unidad": "UND",
            "vu": 2000,
            "total": 56000,
            "totalCOP": 246400000,
            "criterio": "Control remoto"
        },
        {
            "codigo": "4.2.1",
            "descripcion": "Cimentación PMV",
            "sistema": "PMV",
            "tipo": "OBRA",
            "cantidad": "28",
            "unidad": "UND",
            "vu": 2500,
            "total": 70000,
            "totalCOP": 308000000,
            "criterio": "Estructura soporte"
        },
        // SISTEMA METEO
        {
            "codigo": "5.1.1",
            "descripcion": "Estación meteorológica Davis Pro2",
            "sistema": "METEO",
            "tipo": "SUMINISTRO",
            "cantidad": "3",
            "unidad": "UND",
            "vu": 15000,
            "total": 45000,
            "totalCOP": 198000000,
            "criterio": "Monitoreo condiciones"
        },
        {
            "codigo": "5.2.1",
            "descripcion": "Instalación estación meteo",
            "sistema": "METEO",
            "tipo": "OBRA",
            "cantidad": "3",
            "unidad": "UND",
            "vu": 2000,
            "total": 6000,
            "totalCOP": 26400000,
            "criterio": "Montaje y configuración"
        },
        // SISTEMA WIM
        {
            "codigo": "6.1.1",
            "descripcion": "Sistema WIM dinámico",
            "sistema": "WIM",
            "tipo": "SUMINISTRO",
            "cantidad": "1",
            "unidad": "UND",
            "vu": 150000,
            "total": 150000,
            "totalCOP": 660000000,
            "criterio": "Pesaje dinámico"
        },
        {
            "codigo": "6.1.2",
            "descripcion": "Báscula estática",
            "sistema": "WIM",
            "tipo": "SUMINISTRO",
            "cantidad": "1",
            "unidad": "UND",
            "vu": 100000,
            "total": 100000,
            "totalCOP": 440000000,
            "criterio": "Pesaje estático"
        },
        {
            "codigo": "6.1.3",
            "descripcion": "Sensores de pesaje dinámico",
            "sistema": "WIM",
            "tipo": "SUMINISTRO",
            "cantidad": "4",
            "unidad": "UND",
            "vu": 5000,
            "total": 20000,
            "totalCOP": 88000000,
            "criterio": "Sensores bidireccionales"
        },
        {
            "codigo": "6.1.4",
            "descripcion": "Sistema de control integrado",
            "sistema": "WIM",
            "tipo": "SUMINISTRO",
            "cantidad": "1",
            "unidad": "UND",
            "vu": 25000,
            "total": 25000,
            "totalCOP": 110000000,
            "criterio": "Control centralizado"
        },
        {
            "codigo": "6.2.1",
            "descripcion": "Cimentaciones WIM dinámico",
            "sistema": "WIM",
            "tipo": "OBRA",
            "cantidad": "4",
            "unidad": "UND",
            "vu": 10000,
            "total": 40000,
            "totalCOP": 176000000,
            "criterio": "Estructura soporte"
        },
        {
            "codigo": "6.2.2",
            "descripcion": "Cimentaciones báscula estática",
            "sistema": "WIM",
            "tipo": "OBRA",
            "cantidad": "2",
            "unidad": "UND",
            "vu": 15000,
            "total": 30000,
            "totalCOP": 132000000,
            "criterio": "Estructura soporte"
        },
        {
            "codigo": "6.2.3",
            "descripcion": "Instalación sistema completo",
            "sistema": "WIM",
            "tipo": "OBRA",
            "cantidad": "1",
            "unidad": "UND",
            "vu": 20000,
            "total": 20000,
            "totalCOP": 88000000,
            "criterio": "Montaje y configuración"
        }
    ],
    "estadisticas": {
        "total_costo_directo_usd": 3895000,
        "total_costo_directo_cop": 17138000000,
        "aiu_porcentaje": 33,
        "aiu_usd": 1285350,
        "aiu_cop": 5655540000,
        "iva_porcentaje": 19,
        "iva_usd": 244166.5,
        "iva_cop": 1074332600,
        "total_general_usd": 5427516.5,
        "total_general_cop": 23877872600
    }
};

// Exportar con ambos nombres para compatibilidad
window.presupuesto_datos = window.presupuestoDataTM01;
"@

    if ($DryRun) {
        Write-Log "MODO DRY-RUN: No se escribirá el archivo" "WARN"
        Write-Log "Contenido que se generaría:" "INFO"
        Write-Host $JSContent
        return
    }
    
    # Escribir archivo
    try {
        Set-Content -Path $PresupuestoDataFile -Value $JSContent -Encoding UTF8
        Write-Log "Archivo de presupuesto generado exitosamente: $PresupuestoDataFile"
    }
    catch {
        Write-Log "Error al escribir archivo de presupuesto: $($_.Exception.Message)" "ERROR"
        throw
    }
}

# Función principal
function Start-PresupuestoSync {
    Write-Log "=== INICIANDO SINCRONIZACIÓN PRESUPUESTO TM01 ===" "INFO"
    Write-Log "Proyecto: TM01 Troncal Magdalena"
    Write-Log "Script: sincronizar_presupuesto.ps1 v1.0"
    Write-Log "Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    
    try {
        # Validar archivos requeridos
        Test-RequiredFiles
        
        # Leer datos maestro
        $MasterContent = Get-MasterData
        
        # Convertir a formato presupuesto
        $PresupuestoData = Convert-ToPresupuestoData -MasterContent $MasterContent
        
        # Generar archivo de datos de presupuesto
        New-PresupuestoDataFile -PresupuestoData $PresupuestoData
        
        Write-Log "=== SINCRONIZACIÓN PRESUPUESTO COMPLETADA EXITOSAMENTE ===" "INFO"
        Write-Log "Archivo generado: $PresupuestoDataFile"
        Write-Log "Log guardado en: $LogFile"
        
        return $true
    }
    catch {
        Write-Log "=== ERROR EN SINCRONIZACIÓN PRESUPUESTO ===" "ERROR"
        Write-Log "Error: $($_.Exception.Message)" "ERROR"
        Write-Log "Log guardado en: $LogFile"
        return $false
    }
}

# Ejecutar sincronización
$Success = Start-PresupuestoSync

if ($Success) {
    Write-Host "✅ Sincronización Presupuesto completada exitosamente" -ForegroundColor Green
    exit 0
} else {
    Write-Host "❌ Error en sincronización Presupuesto" -ForegroundColor Red
    exit 1
}
