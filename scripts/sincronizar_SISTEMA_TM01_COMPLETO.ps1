# SCRIPT MAESTRO DE SINCRONIZACIÓN TM01 COMPLETO
# Proyecto: TM01 Troncal Magdalena
# Versión: 1.0 | Fecha: 23 de Octubre de 2025
# Descripción: Ejecuta todos los scripts de sincronización del sistema TM01

param(
    [switch]$Verbose,
    [switch]$DryRun,
    [switch]$WBSOnly,
    [switch]$LayoutOnly,
    [switch]$PresupuestoOnly,
    [string]$LogFile = "logs\sync_completo_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
)

# Configuración
$ErrorActionPreference = "Continue"
$ProgressPreference = "SilentlyContinue"

# Rutas del proyecto
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$ScriptsDir = Join-Path $ProjectRoot "scripts"
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
    
    # Escribir a consola
    Write-Host $LogEntry
    
    # Escribir a archivo de log
    Add-Content -Path $LogFile -Value $LogEntry -Encoding UTF8
}

# Función para ejecutar script
function Invoke-SyncScript {
    param(
        [string]$ScriptName,
        [string]$ScriptPath,
        [string]$Description
    )
    
    Write-Log "=== EJECUTANDO: $Description ===" "INFO"
    Write-Log "Script: $ScriptName"
    Write-Log "Ruta: $ScriptPath"
    
    try {
        # Verificar que el script existe
        if (-not (Test-Path $ScriptPath)) {
            throw "Script no encontrado: $ScriptPath"
        }
        
        # Preparar parámetros
        $Params = @()
        if ($Verbose) { $Params += "-Verbose" }
        if ($DryRun) { $Params += "-DryRun" }
        
        # Ejecutar script
        $Result = & $ScriptPath @Params
        
        if ($LASTEXITCODE -eq 0) {
            Write-Log "✅ $Description completado exitosamente" "SUCCESS"
            return $true
        } else {
            Write-Log "❌ Error en $Description (Exit Code: $LASTEXITCODE)" "ERROR"
            return $false
        }
    }
    catch {
        Write-Log "❌ Excepción en $Description`: $($_.Exception.Message)" "ERROR"
        return $false
    }
}

# Función principal
function Start-CompleteSync {
    Write-Log "=== INICIANDO SINCRONIZACIÓN COMPLETA TM01 ===" "INFO"
    Write-Log "Proyecto: TM01 Troncal Magdalena"
    Write-Log "Script: sincronizar_SISTEMA_TM01_COMPLETO.ps1 v1.0"
    Write-Log "Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    Write-Log "Modo Dry-Run: $DryRun"
    Write-Log "Modo Verbose: $Verbose"
    
    $Results = @{}
    $StartTime = Get-Date
    
    try {
        # Determinar qué scripts ejecutar
        $ScriptsToRun = @()
        
        if ($WBSOnly) {
            $ScriptsToRun += @{
                Name = "sync_wbs_tm01.ps1"
                Path = Join-Path $ScriptsDir "sync_wbs_tm01.ps1"
                Description = "Sincronización WBS"
            }
        }
        elseif ($LayoutOnly) {
            $ScriptsToRun += @{
                Name = "sincronizar_layout.ps1"
                Path = Join-Path $ScriptsDir "sincronizar_layout.ps1"
                Description = "Sincronización Layout"
            }
        }
        elseif ($PresupuestoOnly) {
            $ScriptsToRun += @{
                Name = "sincronizar_presupuesto.ps1"
                Path = Join-Path $ScriptsDir "sincronizar_presupuesto.ps1"
                Description = "Sincronización Presupuesto"
            }
        }
        else {
            # Ejecutar todos los scripts
            $ScriptsToRun = @(
                @{
                    Name = "sync_wbs_tm01.ps1"
                    Path = Join-Path $ScriptsDir "sync_wbs_tm01.ps1"
                    Description = "Sincronización WBS"
                },
                @{
                    Name = "sincronizar_layout.ps1"
                    Path = Join-Path $ScriptsDir "sincronizar_layout.ps1"
                    Description = "Sincronización Layout"
                },
                @{
                    Name = "sincronizar_presupuesto.ps1"
                    Path = Join-Path $ScriptsDir "sincronizar_presupuesto.ps1"
                    Description = "Sincronización Presupuesto"
                }
            )
        }
        
        # Ejecutar scripts
        foreach ($Script in $ScriptsToRun) {
            $Success = Invoke-SyncScript -ScriptName $Script.Name -ScriptPath $Script.Path -Description $Script.Description
            $Results[$Script.Name] = $Success
            
            if (-not $Success) {
                Write-Log "⚠️ Script $($Script.Name) falló, continuando con siguiente..." "WARN"
            }
        }
        
        # Calcular tiempo total
        $EndTime = Get-Date
        $Duration = $EndTime - $StartTime
        
        # Generar reporte final
        Write-Log "=== REPORTE FINAL DE SINCRONIZACIÓN ===" "INFO"
        Write-Log "Tiempo total: $($Duration.TotalSeconds.ToString('F2')) segundos"
        Write-Log "Scripts ejecutados: $($ScriptsToRun.Count)"
        
        $SuccessCount = ($Results.Values | Where-Object { $_ -eq $true }).Count
        $FailureCount = ($Results.Values | Where-Object { $_ -eq $false }).Count
        
        Write-Log "Scripts exitosos: $SuccessCount"
        Write-Log "Scripts fallidos: $FailureCount"
        
        Write-Log "Detalle por script:" "INFO"
        foreach ($Script in $ScriptsToRun) {
            $Status = if ($Results[$Script.Name]) { "✅ EXITOSO" } else { "❌ FALLIDO" }
            Write-Log "  $($Script.Name): $Status"
        }
        
        if ($FailureCount -eq 0) {
            Write-Log "=== SINCRONIZACIÓN COMPLETA EXITOSA ===" "SUCCESS"
            Write-Host "`n🎉 ¡SINCRONIZACIÓN COMPLETA EXITOSA!" -ForegroundColor Green
            Write-Host "Todos los scripts se ejecutaron correctamente" -ForegroundColor Green
            Write-Host "Tiempo total: $($Duration.TotalSeconds.ToString('F2')) segundos" -ForegroundColor Green
            Write-Host "Log guardado en: $LogFile" -ForegroundColor Cyan
            return $true
        } else {
            Write-Log "=== SINCRONIZACIÓN COMPLETA CON ERRORES ===" "WARN"
            Write-Host "`n⚠️ SINCRONIZACIÓN COMPLETADA CON ERRORES" -ForegroundColor Yellow
            Write-Host "Scripts exitosos: $SuccessCount" -ForegroundColor Green
            Write-Host "Scripts fallidos: $FailureCount" -ForegroundColor Red
            Write-Host "Tiempo total: $($Duration.TotalSeconds.ToString('F2')) segundos" -ForegroundColor Yellow
            Write-Host "Log guardado en: $LogFile" -ForegroundColor Cyan
            return $false
        }
    }
    catch {
        Write-Log "=== ERROR CRÍTICO EN SINCRONIZACIÓN COMPLETA ===" "ERROR"
        Write-Log "Error: $($_.Exception.Message)" "ERROR"
        Write-Host "`n❌ ERROR CRÍTICO EN SINCRONIZACIÓN" -ForegroundColor Red
        Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
        Write-Host "Log guardado en: $LogFile" -ForegroundColor Cyan
        return $false
    }
}

# Mostrar ayuda si no se especifican parámetros
if ($args.Count -eq 0 -and -not $WBSOnly -and -not $LayoutOnly -and -not $PresupuestoOnly) {
    Write-Host "`n🚀 SCRIPT MAESTRO DE SINCRONIZACIÓN TM01" -ForegroundColor Cyan
    Write-Host "=========================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Uso:" -ForegroundColor Yellow
    Write-Host "  .\sincronizar_SISTEMA_TM01_COMPLETO.ps1 [opciones]"
    Write-Host ""
    Write-Host "Opciones:" -ForegroundColor Yellow
    Write-Host "  -Verbose          Mostrar información detallada"
    Write-Host "  -DryRun           Simular ejecución sin modificar archivos"
    Write-Host "  -WBSOnly          Ejecutar solo sincronización WBS"
    Write-Host "  -LayoutOnly       Ejecutar solo sincronización Layout"
    Write-Host "  -PresupuestoOnly  Ejecutar solo sincronización Presupuesto"
    Write-Host ""
    Write-Host "Ejemplos:" -ForegroundColor Yellow
    Write-Host "  .\sincronizar_SISTEMA_TM01_COMPLETO.ps1 -Verbose"
    Write-Host "  .\sincronizar_SISTEMA_TM01_COMPLETO.ps1 -DryRun"
    Write-Host "  .\sincronizar_SISTEMA_TM01_COMPLETO.ps1 -WBSOnly -Verbose"
    Write-Host ""
    Write-Host "Sin parámetros ejecuta todos los scripts de sincronización" -ForegroundColor Green
    Write-Host ""
}

# Ejecutar sincronización completa
$Success = Start-CompleteSync

if ($Success) {
    exit 0
} else {
    exit 1
}
