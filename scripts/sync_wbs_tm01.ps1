# SCRIPT DE SINCRONIZACIÓN WBS TM01 - TRONCAL MAGDALENA
# Archivo: scripts/sync_wbs_tm01.ps1
# Propósito: Sincronizar datos WBS desde tm01_master_data.js hacia datos_wbs_TM01_items.js
# Fecha: 23 de octubre de 2025
# Versión: 1.0

param(
    [string]$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js",
    [string]$TargetPath = "Sistema_Validacion_Web/datos_wbs_TM01_items.js",
    [switch]$Verbose = $false,
    [switch]$DryRun = $false
)

# Configuración de logging
$LogFile = "logs/sync_wbs_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
$ErrorLogFile = "logs/sync_wbs_errors_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

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

# Función para extraer datos WBS del archivo fuente
function Extract-WBSData {
    param([string]$SourcePath)
    
    try {
        Write-Log "Iniciando extracción de datos WBS desde: $SourcePath"
        
        # Leer el archivo fuente
        $SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
        
        # Buscar el array de datos WBS en el archivo JavaScript
        $WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        
        if (!$WBSMatch.Success) {
            Write-Log "No se encontró el array de datos WBS en el archivo fuente" "ERROR"
            return $null
        }
        
        $WBSArrayContent = $WBSMatch.Groups[1].Value
        Write-Log "Datos WBS extraídos exitosamente. Tamaño: $($WBSArrayContent.Length) caracteres"
        
        return $WBSArrayContent
        
    } catch {
        Write-Log "Error al extraer datos WBS: $($_.Exception.Message)" "ERROR"
        return $null
    }
}

# Función para generar el archivo de datos WBS
function Generate-WBSDataFile {
    param(
        [string]$WBSData,
        [string]$TargetPath
    )
    
    try {
        Write-Log "Generando archivo de datos WBS en: $TargetPath"
        
        # Crear el contenido del archivo JavaScript
        $FileContent = @"
// DATOS WBS TM01 - GENERADOS AUTOMÁTICAMENTE
// Archivo: $TargetPath
// Generado: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: sync_wbs_tm01.ps1 v1.0

// Datos WBS extraídos desde tm01_master_data.js
const datosWBS = [
$WBSData
];

// Función para obtener todos los items WBS
function obtenerItemsWBS() {
    return datosWBS;
}

// Función para obtener items por sistema
function obtenerItemsPorSistema(sistema) {
    return datosWBS.filter(item => item.sistema === sistema);
}

// Función para obtener items por nivel
function obtenerItemsPorNivel(nivel) {
    return datosWBS.filter(item => item.nivel === nivel);
}

// Función para obtener items con cantidad
function obtenerItemsConCantidad() {
    return datosWBS.filter(item => item.cantidad && item.cantidad !== "");
}

// Función para obtener totales por sistema
function obtenerTotalesPorSistema() {
    const sistemas = {};
    
    datosWBS.forEach(item => {
        if (item.sistema && item.total) {
            if (!sistemas[item.sistema]) {
                sistemas[item.sistema] = {
                    sistema: item.sistema,
                    totalUSD: 0,
                    totalCOP: 0,
                    items: 0
                };
            }
            
            sistemas[item.sistema].totalUSD += parseFloat(item.total) || 0;
            sistemas[item.sistema].totalCOP += parseFloat(item.totalCOP) || 0;
            sistemas[item.sistema].items++;
        }
    });
    
    return Object.values(sistemas);
}

// Exportar funciones para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        datosWBS,
        obtenerItemsWBS,
        obtenerItemsPorSistema,
        obtenerItemsPorNivel,
        obtenerItemsConCantidad,
        obtenerTotalesPorSistema
    };
}
"@

        # Escribir el archivo
        if (!$DryRun) {
            Set-Content -Path $TargetPath -Value $FileContent -Encoding UTF8
            Write-Log "Archivo de datos WBS generado exitosamente: $TargetPath"
        } else {
            Write-Log "DRY RUN: Archivo no escrito. Contenido generado correctamente." "INFO"
        }
        
        return $true
        
    } catch {
        Write-Log "Error al generar archivo de datos WBS: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Función para validar la estructura de datos
function Test-WBSDataStructure {
    param([string]$WBSData)
    
    try {
        Write-Log "Validando estructura de datos WBS"
        
        # Contar elementos
        $ItemCount = ($WBSData -split '{').Count - 1
        Write-Log "Elementos WBS encontrados: $ItemCount"
        
        # Validar que hay elementos
        if ($ItemCount -eq 0) {
            Write-Log "No se encontraron elementos WBS en los datos" "ERROR"
            return $false
        }
        
        # Validar estructura básica
        $RequiredFields = @('id', 'nivel', 'item', 'descripcion', 'sistema', 'tipo')
        $ValidStructure = $true
        
        foreach ($field in $RequiredFields) {
            if ($WBSData -notmatch $field) {
                Write-Log "Campo requerido '$field' no encontrado en los datos" "ERROR"
                $ValidStructure = $false
            }
        }
        
        if ($ValidStructure) {
            Write-Log "Estructura de datos WBS validada exitosamente"
        }
        
        return $ValidStructure
        
    } catch {
        Write-Log "Error al validar estructura de datos WBS: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Función principal
function Start-WBSSync {
    Write-Log "=== INICIANDO SINCRONIZACIÓN WBS TM01 ===" "INFO"
    Write-Log "Archivo fuente: $SourcePath"
    Write-Log "Archivo destino: $TargetPath"
    Write-Log "Modo Dry Run: $DryRun"
    
    # Validar archivo fuente
    if (!(Test-FileExists $SourcePath)) {
        Write-Log "No se puede continuar sin el archivo fuente" "ERROR"
        return $false
    }
    
    # Extraer datos WBS
    $WBSData = Extract-WBSData -SourcePath $SourcePath
    if (!$WBSData) {
        Write-Log "No se pudieron extraer los datos WBS" "ERROR"
        return $false
    }
    
    # Validar estructura
    if (!(Test-WBSDataStructure -WBSData $WBSData)) {
        Write-Log "La estructura de datos WBS no es válida" "ERROR"
        return $false
    }
    
    # Generar archivo de datos
    $Success = Generate-WBSDataFile -WBSData $WBSData -TargetPath $TargetPath
    if (!$Success) {
        Write-Log "No se pudo generar el archivo de datos WBS" "ERROR"
        return $false
    }
    
    Write-Log "=== SINCRONIZACIÓN WBS TM01 COMPLETADA EXITOSAMENTE ===" "INFO"
    return $true
}

# Ejecutar sincronización
try {
    $Result = Start-WBSSync
    
    if ($Result) {
        Write-Host "✅ Sincronización WBS completada exitosamente" -ForegroundColor Green
        Write-Host "📁 Archivo generado: $TargetPath" -ForegroundColor Cyan
        Write-Host "📋 Log: $LogFile" -ForegroundColor Yellow
        
        if (Test-Path $ErrorLogFile) {
            Write-Host "⚠️  Errores encontrados: $ErrorLogFile" -ForegroundColor Red
        }
    } else {
        Write-Host "❌ Error en la sincronización WBS" -ForegroundColor Red
        exit 1
    }
    
} catch {
    Write-Host "❌ Error crítico: $($_.Exception.Message)" -ForegroundColor Red
    Write-Log "Error crítico en sincronización: $($_.Exception.Message)" "ERROR"
    exit 1
}