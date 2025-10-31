# Script mejorado para sincronizacion WBS TM01
# Version: 2.0 - Corrige extraccion de campos vuCOP y totalCOP

param(
    [switch]$Force
)

# Configuracion
$SourceFile = "Sistema_Validacion_Web/data/tm01_master_data.js"
$TargetFile = "Sistema_Validacion_Web/datos_wbs_TM01_items.js"
$LogFile = "logs/sync_wbs_fixed_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

# Funcion de logging
function Write-Log {
    param([string]$Message, [string]$Level = "INFO")
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $LogEntry = "[$Timestamp] [$Level] $Message"
    Write-Host $LogEntry
    Add-Content -Path $LogFile -Value $LogEntry -Encoding UTF8
}

# Funcion para extraer datos WBS del archivo fuente
function Extract-WBSData {
    param([string]$SourcePath)
    
    try {
        Write-Log "Iniciando extraccion de datos WBS desde: $SourcePath"
        
        # Leer el archivo fuente
        $SourceContent = Get-Content -Path $SourcePath -Raw -Encoding UTF8
        
        # Buscar el array de datos WBS en el archivo JavaScript
        $WBSMatch = [regex]::Match($SourceContent, 'this\.data\.wbs\s*=\s*\[(.*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        
        if (!$WBSMatch.Success) {
            Write-Log "No se encontro el array de datos WBS en el archivo fuente" "ERROR"
            return $null
        }
        
        $WBSArrayContent = $WBSMatch.Groups[1].Value
        Write-Log "Datos WBS extraidos exitosamente. Tamano: $($WBSArrayContent.Length) caracteres"
        
        # Procesar cada objeto del array para extraer campos individuales
        $WBSItems = @()
        
        # Buscar todos los objetos en el array
        $ObjectMatches = [regex]::Matches($WBSArrayContent, '\{[^}]*\}', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        
        foreach ($Match in $ObjectMatches) {
            $ObjectContent = $Match.Value
            
            # Extraer campos individuales usando regex
            $Item = @{}
            
            # Campos basicos
            $Item.id = Extract-Field $ObjectContent "id"
            $Item.nivel = Extract-Field $ObjectContent "nivel"
            $Item.item = Extract-Field $ObjectContent "item"
            $Item.descripcion = Extract-Field $ObjectContent "descripcion"
            $Item.sistema = Extract-Field $ObjectContent "sistema"
            $Item.tipo = Extract-Field $ObjectContent "tipo"
            $Item.cantidad = Extract-Field $ObjectContent "cantidad"
            $Item.unidad = Extract-Field $ObjectContent "unidad"
            $Item.criterio = Extract-Field $ObjectContent "criterio"
            $Item.vu = Extract-Field $ObjectContent "vu"
            $Item.vuCOP = Extract-Field $ObjectContent "vuCOP"
            $Item.total = Extract-Field $ObjectContent "total"
            $Item.totalCOP = Extract-Field $ObjectContent "totalCOP"
            
            $WBSItems += $Item
        }
        
        Write-Log "Procesados $($WBSItems.Count) items WBS"
        return $WBSItems
        
    } catch {
        Write-Log "Error al extraer datos WBS: $($_.Exception.Message)" "ERROR"
        return $null
    }
}

# Funcion para extraer un campo especifico de un objeto
function Extract-Field {
    param([string]$ObjectContent, [string]$FieldName)
    
    $Pattern = "$FieldName`:\s*`"([^`"]*)`""
    $Match = [regex]::Match($ObjectContent, $Pattern)
    
    if ($Match.Success) {
        return $Match.Groups[1].Value
    }
    
    return ""
}

# Funcion para generar el archivo de datos WBS
function Generate-WBSDataFile {
    param(
        [array]$WBSItems,
        [string]$TargetPath
    )
    
    try {
        Write-Log "Generando archivo de datos WBS en: $TargetPath"
        
        # Convertir a JSON para mantener estructura
        $WBSJson = $WBSItems | ConvertTo-Json -Depth 10
        
        # Crear el contenido del archivo JavaScript
        $FileContent = @"
// DATOS WBS TM01 - GENERADOS AUTOMATICAMENTE
// Archivo: datos_wbs_TM01_items.js
// Fecha: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
// Total items: $($WBSItems.Count)

window.wbsDataGlobal = window.datos_wbs = {
    "fecha_actualizacion": "$(Get-Date -Format "yyyy-MM-dd")",
    "total_items": $($WBSItems.Count),
    "version": "2.1",
    "items": $WBSJson
};

// Funciones de ayuda para acceder a los datos
function obtenerItemsWBS() {
    return window.datos_wbs.items;
}

function obtenerItemsPorSistema(sistema) {
    return window.datos_wbs.items.filter(item => item.sistema === sistema);
}

function obtenerItemsPorNivel(nivel) {
    return window.datos_wbs.items.filter(item => item.nivel === nivel);
}

// Funcion para calcular totales por sistema
function calcularTotalesPorSistema() {
    const totales = {};
    window.datos_wbs.items.forEach(item => {
        if (item.nivel === 3 && item.sistema) {
            if (!totales[item.sistema]) {
                totales[item.sistema] = {
                    cantidad: 0,
                    costoTotalUSD: 0,
                    costoTotalCOP: 0,
                    items: 0
                };
            }
            
            const cantidad = parseFloat(item.cantidad?.replace(/,/g, '') || 0);
            const costoUSD = parseFloat(item.total?.replace(/,/g, '') || 0);
            const costoCOP = parseFloat(item.totalCOP?.replace(/,/g, '') || 0);
            
            totales[item.sistema].cantidad += cantidad;
            totales[item.sistema].costoTotalUSD += costoUSD;
            totales[item.sistema].costoTotalCOP += costoCOP;
            totales[item.sistema].items += 1;
        }
    });
    
    return totales;
}

console.log('Datos WBS TM01 cargados:', window.datos_wbs);
"@
        
        # Escribir el archivo con UTF-8 sin BOM (preserva caracteres especiales)
        $utf8NoBom = New-Object System.Text.UTF8Encoding $false
        [System.IO.File]::WriteAllText((Resolve-Path $TargetPath -ErrorAction SilentlyContinue), $FileContent, $utf8NoBom)
        
        Write-Log "Archivo generado exitosamente: $TargetPath"
        return $true
        
    } catch {
        Write-Log "Error al generar archivo: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Funcion principal
function Main {
    Write-Log "=== INICIANDO SINCRONIZACION WBS TM01 (VERSION CORREGIDA) ==="
    
    # Verificar archivo fuente
    if (!(Test-Path $SourceFile)) {
        Write-Log "Archivo fuente no encontrado: $SourceFile" "ERROR"
        return $false
    }
    
    # Crear directorio de logs si no existe
    $LogDir = Split-Path $LogFile -Parent
    if (!(Test-Path $LogDir)) {
        New-Item -ItemType Directory -Path $LogDir -Force | Out-Null
    }
    
    # Extraer datos WBS
    $WBSItems = Extract-WBSData -SourcePath $SourceFile
    if ($WBSItems -eq $null) {
        Write-Log "No se pudieron extraer los datos WBS" "ERROR"
        return $false
    }
    
    # Generar archivo de datos
    $Success = Generate-WBSDataFile -WBSItems $WBSItems -TargetPath $TargetFile
    if (!$Success) {
        Write-Log "No se pudo generar el archivo de datos" "ERROR"
        return $false
    }
    
    Write-Log "Sincronizacion WBS completada exitosamente"
    Write-Log "Archivo generado: $TargetFile"
    Write-Log "Log: $LogFile"
    
    return $true
}

# Ejecutar funcion principal
$Result = Main
if ($Result) {
    exit 0
} else {
    exit 1
}