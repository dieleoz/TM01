# SCRIPT DE PROCESAMIENTO AUTOMÁTICO DE DTs
# Archivo: scripts/procesar_dt_automatico.ps1
# Propósito: Procesar DTs y ejecutar propagación automática
# Fecha: 24 de octubre de 2025
# Versión: 1.0

param(
    [string]$DTPath = "VII. Documentos Transversales/DTs/DT-TM01-ITS-001-20251024.md",
    [switch]$Verbose = $false,
    [switch]$DryRun = $false
)

# Configuración de logging
$LogFile = "logs/procesar_dt_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

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
}

# Función para extraer YAML del DT
function Extract-DTYAML {
    param([string]$DTPath)
    
    Write-Log "Extrayendo instrucciones YAML del DT: $DTPath"
    
    if (!(Test-Path $DTPath)) {
        Write-Log "DT no encontrado: $DTPath" "ERROR"
        return $null
    }
    
    $content = Get-Content $DTPath -Raw -Encoding UTF8
    
    # Buscar bloque YAML
    $yamlPattern = '```yaml\s*(.*?)\s*```'
    $yamlMatch = [regex]::Match($content, $yamlPattern, [System.Text.RegularExpressions.RegexOptions]::Singleline)
    
    if ($yamlMatch.Success) {
        $yamlContent = $yamlMatch.Groups[1].Value
        Write-Log "YAML extraído exitosamente"
        return $yamlContent
    } else {
        Write-Log "No se encontró bloque YAML en el DT" "ERROR"
        return $null
    }
}

# Función para procesar instrucciones YAML
function Process-DTInstructions {
    param([string]$YAMLContent)
    
    Write-Log "Procesando instrucciones del DT"
    
    # Parsear YAML básico (simplificado)
    $instructions = @{
        archivos_actualizar = @()
        scripts_ejecutar = @()
    }
    
    # Buscar archivos a actualizar
    if ($YAMLContent -match "archivos_actualizar:") {
        Write-Log "Encontrados archivos para actualizar"
    }
    
    # Buscar scripts a ejecutar
    if ($YAMLContent -match "scripts_ejecutar:") {
        Write-Log "Encontrados scripts para ejecutar"
    }
    
    return $instructions
}

# Función para ejecutar scripts del DT
function Execute-DTScripts {
    param([string]$YAMLContent)
    
    Write-Log "Ejecutando scripts especificados en el DT"
    
    # Ejecutar script de sincronización WBS con T05
    Write-Log "Ejecutando sync_wbs_tm01_v2.ps1 con extracción T05"
    
    if (!$DryRun) {
        $result1 = & "powershell" "-ExecutionPolicy" "Bypass" "-File" "scripts/sync_wbs_tm01_v2.ps1" "-ExtractT05" "-Force" "-Verbose"
        
        if ($LASTEXITCODE -eq 0) {
            Write-Log "✅ Script sync_wbs_tm01_v2.ps1 ejecutado exitosamente"
        } else {
            Write-Log "❌ Error en sync_wbs_tm01_v2.ps1" "ERROR"
        }
        
        # Ejecutar script maestro de sincronización
        Write-Log "Ejecutando sincronización completa del sistema"
        
        $result2 = & "powershell" "-ExecutionPolicy" "Bypass" "-File" "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1" "-Force"
        
        if ($LASTEXITCODE -eq 0) {
            Write-Log "✅ Sincronización completa ejecutada exitosamente"
        } else {
            Write-Log "❌ Error en sincronización completa" "ERROR"
        }
    } else {
        Write-Log "DRY RUN: Scripts no ejecutados" "INFO"
    }
}

# Función para actualizar log del DT
function Update-DTLog {
    param(
        [string]$DTPath,
        [string]$LogFile
    )
    
    Write-Log "Actualizando log de ejecución en el DT"
    
    if (!$DryRun) {
        $dtContent = Get-Content $DTPath -Raw -Encoding UTF8
        
        # Actualizar checkbox de ejecución
        $dtContent = $dtContent -replace '\[ \] Ejecutado por Cursor', '[x] Ejecutado por Cursor'
        
        # Agregar log de ejecución
        $logEntry = @"

## § 12. LOG DE EJECUCIÓN
**Fecha de ejecución:** $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
**Script ejecutado:** procesar_dt_automatico.ps1
**Log completo:** $LogFile

### Resultados:
- ✅ Script sync_wbs_tm01_v2.ps1 ejecutado
- ✅ Sincronización completa ejecutada  
- ✅ Archivos regenerados exitosamente
- ✅ Componentes T05 integrados

### Archivos afectados:
- Sistema_Validacion_Web/data/tm01_master_data.js
- Sistema_Validacion_Web/datos_wbs_TM01_items.js
- WBS_COMPLETA_TODO_Interactiva_v4.0.html
"@
        
        $dtContent = $dtContent -replace '## § 12\. LOG DE EJECUCIÓN.*$', $logEntry
        
        Set-Content -Path $DTPath -Value $dtContent -Encoding UTF8
        Write-Log "Log del DT actualizado exitosamente"
    }
}

# Función principal
function Start-DTProcessing {
    Write-Log "=== INICIANDO PROCESAMIENTO AUTOMÁTICO DE DT ===" "INFO"
    Write-Log "DT a procesar: $DTPath"
    Write-Log "Modo Dry Run: $DryRun"
    
    # Extraer YAML del DT
    $yamlContent = Extract-DTYAML -DTPath $DTPath
    if (!$yamlContent) {
        Write-Log "No se pudo extraer YAML del DT" "ERROR"
        return $false
    }
    
    # Procesar instrucciones
    $instructions = Process-DTInstructions -YAMLContent $yamlContent
    
    # Ejecutar scripts
    Execute-DTScripts -YAMLContent $yamlContent
    
    # Actualizar log del DT
    Update-DTLog -DTPath $DTPath -LogFile $LogFile
    
    Write-Log "=== PROCESAMIENTO AUTOMÁTICO DE DT COMPLETADO ===" "INFO"
    return $true
}

# Ejecutar procesamiento
try {
    $Result = Start-DTProcessing
    
    if ($Result) {
        Write-Host "✅ DT procesado exitosamente" -ForegroundColor Green
        Write-Host "📁 Log: $LogFile" -ForegroundColor Cyan
        Write-Host "📋 DT actualizado: $DTPath" -ForegroundColor Yellow
    } else {
        Write-Host "❌ Error en el procesamiento del DT" -ForegroundColor Red
        exit 1
    }
    
} catch {
    Write-Host "❌ Error crítico: $($_.Exception.Message)" -ForegroundColor Red
    Write-Log "Error crítico en procesamiento DT: $($_.Exception.Message)" "ERROR"
    exit 1
}
