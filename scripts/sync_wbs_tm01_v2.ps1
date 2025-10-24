# SCRIPT DE SINCRONIZACIÓN WBS TM01 CON EXTRACCIÓN AUTOMÁTICA T05
# Archivo: scripts/sync_wbs_tm01_v2.ps1
# Propósito: Sincronizar datos WBS + extraer componentes detallados de documentos T05
# Fecha: 24 de octubre de 2025
# Versión: 2.0

param(
    [string]$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js",
    [string]$TargetPath = "Sistema_Validacion_Web/datos_wbs_TM01_items.js",
    [string]$T05Path = "V. Ingenieria de Detalle",
    [switch]$Verbose = $false,
    [switch]$DryRun = $false,
    [switch]$ExtractT05 = $true
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
    
    if ($Verbose) {
        Write-Host $LogEntry
    }
    
    Add-Content -Path $LogFile -Value $LogEntry -Encoding UTF8
    
    if ($Level -eq "ERROR") {
        Add-Content -Path $ErrorLogFile -Value $LogEntry -Encoding UTF8
    }
}

# Función para extraer componentes de documentos T05
function Extract-T05Components {
    param([string]$T05Path)
    
    Write-Log "Iniciando extracción de componentes T05 desde: $T05Path"
    
    # Mapeo de documentos T05 a sistemas
    $t05Mapping = @{
        "04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md" = "SOS"
        "07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md" = "ETD/RADAR"
        "05_T05_Ingenieria_Detalle_CCTV_v1.0.md" = "CCTV"
        "06_T05_Ingenieria_Detalle_PMV_v1.0.md" = "PMV"
        "10_T05_Ingenieria_Detalle_WIM_v1.0.md" = "WIM"
        "01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md" = "TELECOM"
    }
    
    $allComponents = @()
    
    foreach ($file in $t05Mapping.Keys) {
        $filePath = Join-Path $T05Path $file
        $sistema = $t05Mapping[$file]
        
        if (Test-Path $filePath) {
            Write-Log "Procesando: $file -> $sistema"
            
            $content = Get-Content $filePath -Raw -Encoding UTF8
            
            # Buscar tabla de componentes (patrón mejorado)
            $pattern = '\|\s*([^|]+?)\s*\|\s*(\d+)\s*\|\s*\$?([0-9,]+)\s*\|\s*\$?([0-9,]+)\s*\|'
            $matches = [regex]::Matches($content, $pattern)
            
            foreach ($match in $matches) {
                $componente = $match.Groups[1].Value.Trim()
                $cantidad = $match.Groups[2].Value.Trim()
                $costoUnit = $match.Groups[3].Value.Trim()
                $total = $match.Groups[4].Value.Trim()
                
                # Filtrar componentes válidos
                if ($componente -notmatch "SUBTOTAL|TOTAL|CAPEX|OPEX|% del Total" -and 
                    $componente.Length -gt 5 -and 
                    $componente -notmatch "^\d+\.\s*") {
                    
                    $allComponents += @{
                        Sistema = $sistema
                        Componente = $componente
                        Cantidad = $cantidad
                        CostoUnit = $costoUnit
                        Total = $total
                        Archivo = $file
                    }
                }
            }
            
            Write-Log "Extraídos componentes para $sistema desde $file"
        } else {
            Write-Log "Archivo no encontrado: $filePath" "WARNING"
        }
    }
    
    Write-Log "Total componentes extraídos: $($allComponents.Count)"
    return $allComponents
}

# Función para generar WBS detallado con componentes T05
function Generate-DetailedWBS {
    param(
        [string]$WBSData,
        [array]$T05Components
    )
    
    Write-Log "Generando WBS detallado con componentes T05"
    
    # Parsear datos WBS básicos
    $wbsItems = @()
    
    # Convertir string WBS a objetos (simplificado)
    $wbsLines = $WBSData -split "`n" | Where-Object { $_ -match "^\s*\{id:" }
    
    foreach ($line in $wbsLines) {
        if ($line -match "id:\s*'([^']+)'.*descripcion:\s*`"([^`"]+)`".*sistema:\s*`"([^`"]+)`"") {
            $id = $matches[1]
            $descripcion = $matches[2]
            $sistema = $matches[3]
            
            # Buscar componentes T05 para este sistema
            $sistemaComponents = $T05Components | Where-Object { $_.Sistema -eq $sistema }
            
            if ($sistemaComponents.Count -gt 0) {
                Write-Log "Agregando $($sistemaComponents.Count) componentes detallados para $sistema"
                
                # Agregar componentes detallados
                foreach ($comp in $sistemaComponents) {
                    $wbsItems += @{
                        id = "$id.$($wbsItems.Count + 1)"
                        nivel = 4
                        item = "$id.$($wbsItems.Count + 1)"
                        descripcion = $comp.Componente
                        sistema = $sistema
                        cantidad = $comp.Cantidad
                        unidad = "UND"
                        tipo = "componente"
                        criterio = "T05 Detalle"
                        vu = $comp.CostoUnit
                        total = $comp.Total
                        totalCOP = ([int]$comp.Total * 4400).ToString()
                    }
                }
            }
        }
    }
    
    return $wbsItems
}

# Función principal mejorada
function Start-WBSSyncV2 {
    Write-Log "=== INICIANDO SINCRONIZACIÓN WBS TM01 V2.0 ===" "INFO"
    Write-Log "Extracción T05 habilitada: $ExtractT05"
    
    # Validar archivo fuente
    if (!(Test-Path $SourcePath)) {
        Write-Log "No se puede continuar sin el archivo fuente" "ERROR"
        return $false
    }
    
    # Extraer datos WBS básicos
    $WBSData = Extract-WBSData -SourcePath $SourcePath
    if (!$WBSData) {
        Write-Log "No se pudieron extraer los datos WBS básicos" "ERROR"
        return $false
    }
    
    # Extraer componentes T05 si está habilitado
    $T05Components = @()
    if ($ExtractT05 -and (Test-Path $T05Path)) {
        $T05Components = Extract-T05Components -T05Path $T05Path
        Write-Log "Componentes T05 extraídos: $($T05Components.Count)"
    }
    
    # Generar WBS detallado
    $DetailedWBS = Generate-DetailedWBS -WBSData $WBSData -T05Components $T05Components
    
    # Generar archivo final
    $Success = Generate-WBSDataFileV2 -WBSData $WBSData -T05Components $T05Components -TargetPath $TargetPath
    if (!$Success) {
        Write-Log "No se pudo generar el archivo de datos WBS" "ERROR"
        return $false
    }
    
    Write-Log "=== SINCRONIZACIÓN WBS TM01 V2.0 COMPLETADA ===" "INFO"
    return $true
}

# Función para generar archivo de datos mejorado
function Generate-WBSDataFileV2 {
    param(
        [string]$WBSData,
        [array]$T05Components,
        [string]$TargetPath
    )
    
    try {
        Write-Log "Generando archivo de datos WBS mejorado"
        
        $FileContent = @"
// Datos WBS TM01 Troncal Magdalena - CON COMPONENTES T05 DETALLADOS
// Generado para Sistema de Validación ITS
// Fecha: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Script: sync_wbs_tm01_v2.ps1
// Componentes T05 extraídos: $($T05Components.Count)

window.wbsDataGlobal = window.datos_wbs = {
    "fecha_actualizacion": "$(Get-Date -Format "yyyy-MM-dd")",
    "total_capitulos": 10,
    "version": "2.1",
    "componentes_t05": $($T05Components | ConvertTo-Json -Depth 2),
    "items": [
$WBSData
    ]
};

// Función para obtener componentes T05 por sistema
function obtenerComponentesT05(sistema) {
    return window.datos_wbs.componentes_t05.filter(comp => comp.Sistema === sistema);
}

// Función para obtener todos los items WBS
function obtenerItemsWBS() {
    return window.datos_wbs.items;
}

// Función para obtener items por sistema
function obtenerItemsPorSistema(sistema) {
    return window.datos_wbs.items.filter(item => item.sistema === sistema);
}

// Función para obtener totales por sistema con componentes T05
function obtenerTotalesPorSistemaConT05() {
    const sistemas = {};
    
    // Procesar items WBS básicos
    window.datos_wbs.items.forEach(item => {
        if (item.sistema && item.total) {
            if (!sistemas[item.sistema]) {
                sistemas[item.sistema] = {
                    sistema: item.sistema,
                    totalUSD: 0,
                    totalCOP: 0,
                    items: 0,
                    componentes: []
                };
            }
            
            sistemas[item.sistema].totalUSD += parseFloat(item.total) || 0;
            sistemas[item.sistema].totalCOP += parseFloat(item.totalCOP) || 0;
            sistemas[item.sistema].items++;
        }
    });
    
    // Agregar componentes T05
    window.datos_wbs.componentes_t05.forEach(comp => {
        if (sistemas[comp.Sistema]) {
            sistemas[comp.Sistema].componentes.push(comp);
        }
    });
    
    return Object.values(sistemas);
}
"@

        if (!$DryRun) {
            Set-Content -Path $TargetPath -Value $FileContent -Encoding UTF8
            Write-Log "Archivo de datos WBS mejorado generado: $TargetPath"
        } else {
            Write-Log "DRY RUN: Archivo no escrito. Contenido generado correctamente." "INFO"
        }
        
        return $true
        
    } catch {
        Write-Log "Error al generar archivo de datos WBS mejorado: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Función para extraer datos WBS (reutilizada del script original)
function Extract-WBSData {
    param([string]$SourcePath)
    
    try {
        Write-Log "Iniciando extracción de datos WBS desde: $SourcePath"
        
        $SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
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

# Ejecutar sincronización mejorada
try {
    $Result = Start-WBSSyncV2
    
    if ($Result) {
        Write-Host "✅ Sincronización WBS V2.0 completada exitosamente" -ForegroundColor Green
        Write-Host "📁 Archivo generado: $TargetPath" -ForegroundColor Cyan
        Write-Host "📋 Log: $LogFile" -ForegroundColor Yellow
        
        if (Test-Path $ErrorLogFile) {
            Write-Host "⚠️  Errores encontrados: $ErrorLogFile" -ForegroundColor Red
        }
    } else {
        Write-Host "❌ Error en la sincronización WBS V2.0" -ForegroundColor Red
        exit 1
    }
    
} catch {
    Write-Host "❌ Error crítico: $($_.Exception.Message)" -ForegroundColor Red
    Write-Log "Error crítico en sincronización: $($_.Exception.Message)" "ERROR"
    exit 1
}
