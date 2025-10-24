# SCRIPT MAESTRO DE SINCRONIZACION TM01 - TRONCAL MAGDALENA
# Archivo: scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1
# Proposito: Ejecutar todos los scripts de sincronizacion en secuencia
# Fecha: 24 de octubre de 2025
# Version: 1.0

param(
    [string]$SourcePath = "Sistema_Validacion_Web/data/tm01_master_data.js",
    [switch]$Verbose = $false,
    [switch]$DryRun = $false,
    [switch]$Force = $false
)

# Configuracion de logging
$LogFile = "logs/sync_completo_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

# Crear directorio de logs si no existe
if (!(Test-Path "logs")) {
    New-Item -ItemType Directory -Path "logs" -Force | Out-Null
}

# Funcion de logging
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

# Funcion para ejecutar script de sincronizacion
function Invoke-SyncScript {
    param(
        [string]$ScriptPath,
        [string]$ScriptName
    )
    
    try {
        Write-Log "=== EJECUTANDO $ScriptName ===" "INFO"
        
        $Command = "powershell -ExecutionPolicy Bypass -File `"$ScriptPath`""
        
        if ($Verbose) {
            $Command += " -Verbose"
        }
        
        if ($DryRun) {
            $Command += " -DryRun"
        }
        
        Write-Log "Comando: $Command" "INFO"
        
        $Result = Invoke-Expression $Command
        
        if ($LASTEXITCODE -eq 0) {
            Write-Log "$ScriptName ejecutado exitosamente" "INFO"
            return $true
        } else {
            Write-Log "$ScriptName fallo con codigo: $LASTEXITCODE" "ERROR"
            return $false
        }
        
    } catch {
        Write-Log "Error al ejecutar $ScriptName`: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Funcion principal
function Start-CompleteSync {
    Write-Log "=== INICIANDO SINCRONIZACION COMPLETA TM01 ===" "INFO"
    Write-Log "Archivo fuente: $SourcePath"
    Write-Log "Modo Dry Run: $DryRun"
    
    # Validar archivo fuente
    if (!(Test-Path $SourcePath)) {
        Write-Log "No se puede continuar sin el archivo fuente" "ERROR"
        return $false
    }
    
    # Definir scripts a ejecutar
    $Scripts = @(
        @{ Name = "Sync WBS"; Path = "scripts/sync_wbs_tm01.ps1" },
        @{ Name = "Sync Layout"; Path = "scripts/sincronizar_layout.ps1" },
        @{ Name = "Sync Presupuesto"; Path = "scripts/sincronizar_presupuesto.ps1" }
    )
    
    # Ejecutar scripts en secuencia
    $Results = @{}
    $StartTime = Get-Date
    
    foreach ($Script in $Scripts) {
        $ScriptName = $Script.Name
        $ScriptPath = $Script.Path
        
        Write-Log "Iniciando ejecucion de $ScriptName" "INFO"
        
        # Ejecutar script
        $Success = Invoke-SyncScript -ScriptPath $ScriptPath -ScriptName $ScriptName
        
        $Results[$ScriptName] = $Success
        
        if (!$Success) {
            Write-Log "Error en $ScriptName. Continuando con siguiente script..." "WARNING"
        }
        
        # Pausa entre scripts
        Start-Sleep -Seconds 1
    }
    
    $EndTime = Get-Date
    $Duration = $EndTime - $StartTime
    
    Write-Log "Sincronizacion completada en $($Duration.TotalSeconds) segundos" "INFO"
    
    # Validar archivos generados
    $GeneratedFiles = @(
        "Sistema_Validacion_Web/datos_wbs_TM01_items.js",
        "Sistema_Validacion_Web/layout_datos.js",
        "Sistema_Validacion_Web/presupuesto_datos.js"
    )
    
    $FilesValid = $true
    foreach ($File in $GeneratedFiles) {
        if (Test-Path $File) {
            $Size = (Get-Item $File).Length
            Write-Log "Archivo generado: $File ($Size bytes)" "INFO"
        } else {
            Write-Log "Archivo no encontrado: $File" "ERROR"
            $FilesValid = $false
        }
    }
    
    # Determinar estado final
    $AllSuccessful = ($Results.Values | Where-Object { $_ -eq $false }).Count -eq 0
    
    if ($AllSuccessful -and $FilesValid) {
        Write-Log "=== SINCRONIZACION COMPLETA TM01 COMPLETADA EXITOSAMENTE ===" "INFO"
        return $true
    } else {
        Write-Log "=== SINCRONIZACION COMPLETA TM01 COMPLETADA CON ERRORES ===" "ERROR"
        return $false
    }
}

# Ejecutar sincronizacion completa
try {
    $Result = Start-CompleteSync
    
    if ($Result) {
        Write-Host "Sincronizacion Completa TM01 completada exitosamente" -ForegroundColor Green
        Write-Host "Archivos generados en Sistema_Validacion_Web/" -ForegroundColor Cyan
        Write-Host "Log: $LogFile" -ForegroundColor Yellow
        Write-Host "Proximo paso: Implementar archivo .cursorrules" -ForegroundColor Blue
    } else {
        Write-Host "Error en la sincronizacion completa TM01" -ForegroundColor Red
        Write-Host "Revisar logs para detalles: $LogFile" -ForegroundColor Yellow
        exit 1
    }
    
} catch {
    Write-Host "Error critico: $($_.Exception.Message)" -ForegroundColor Red
    Write-Log "Error critico en sincronizacion completa: $($_.Exception.Message)" "ERROR"
    exit 1
}