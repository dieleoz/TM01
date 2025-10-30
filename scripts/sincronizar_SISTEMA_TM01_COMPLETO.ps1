#requires -Version 5.1
param(
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Write-Log([string]$msg){
    $ts = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    Write-Host "[$ts] $msg"
}

function Get-FiberQuantities {
    param(
        [string]$CsvPath = "X. Entregables Consolidados/RFQ-001_ANEXO_J_CANTIDADES_PRESUPUESTO.csv"
    )
    if (Test-Path -LiteralPath $CsvPath) {
        Write-Log "Leyendo cantidades FO desde CSV: $CsvPath"
        $rows = Import-Csv -LiteralPath $CsvPath
        return $rows | ForEach-Object {
            [PSCustomObject]@{
                ID       = $_.ID
                Nombre   = $_.Nombre
                Und      = $_.Und
                Cantidad = [int64]$_.Cantidad
            }
        }
    }
    Write-Log "CSV no encontrado. Usando respaldo embebido."
    @(
        @{ID='1021';Nombre='Cable fibra óptica 48h';Und='m';Cantidad=314824}
        @{ID='1022';Nombre='Cable fibra óptica 12h';Und='m';Cantidad=10856}
        @{ID='1024';Nombre='Cajas empalme 80×80';Und='und';Cantidad=65}
        @{ID='1025';Nombre='Cajas empalme 60×60';Und='und';Cantidad=1192}
        @{ID='1026';Nombre='Cruces especiales puentes';Und='m';Cantidad=4132}
        @{ID='1027';Nombre='Cruces especiales muros';Und='m';Cantidad=236}
        @{ID='1028';Nombre='Cruces especiales box culvert';Und='m';Cantidad=6732}
        @{ID='1029';Nombre='Cruces especiales alcantarillas';Und='m';Cantidad=2006}
        @{ID='10210';Nombre='Empalmes y conectores globales';Und='glb';Cantidad=1}
        @{ID='1031';Nombre='Excavación asfalto + tritubo';Und='m';Cantidad=27140}
        @{ID='1032';Nombre='Excavación andén + tritubo';Und='m';Cantidad=13570}
        @{ID='1033';Nombre='Excavación blanda + tritubo';Und='m';Cantidad=238560}
        @{ID='1034';Nombre='Instalación cruces especiales';Und='m';Cantidad=13920}
        @{ID='1035';Nombre='Instalación cajas empalme';Und='und';Cantidad=1257}
        @{ID='1041';Nombre='Halado fibra óptica 48h';Und='m';Cantidad=293190}
        @{ID='1042';Nombre='Instalación fibra óptica 12h (altura/piso)';Und='m';Cantidad=9440}
        @{ID='1043';Nombre='Trabajos instalación especializada';Und='glb';Cantidad=1}
    ) | ForEach-Object { [PSCustomObject]$_ }
}

function Render-MarkdownTable {
    param([object[]]$Items)
    $header = "| ID   | Nombre                                       | Und | Cantidad | Precio Unit. USD | Precio Unit. COP | Total USD | Total COP |"
    $sep    = "|------|----------------------------------------------|-----|----------|------------------|------------------|-----------|-----------|"
    $lines = @($header, $sep)
    foreach($r in $Items){
        $lines += "| $($r.ID) | $($r.Nombre) | $($r.Und) | $($r.Cantidad) |  |  |  |  |"
    }
    return ($lines -join "`n")
}

function Update-RFQFiberTable {
    param(
        [string]$RfqPath = "X. Entregables Consolidados/RFQ_001_FIBRA_OPTICA_v1.0.md"
    )
    if (-not (Test-Path -LiteralPath $RfqPath)) { throw "No existe RFQ: $RfqPath" }
    $content = Get-Content -LiteralPath $RfqPath -Raw -Encoding UTF8
    $startTag = '<!-- AUTOGEN:FO_TABLE_START -->'
    $endTag   = '<!-- AUTOGEN:FO_TABLE_END -->'
    $start = $content.IndexOf($startTag)
    $end   = $content.IndexOf($endTag)
    if ($start -lt 0 -or $end -lt 0 -or $end -le $start) { throw "Marcadores AUTOGEN no encontrados en $RfqPath" }

    $before = $content.Substring(0, $start + $startTag.Length)
    $after  = $content.Substring($end)

    $rows   = Get-FiberQuantities
    $table  = Render-MarkdownTable -Items $rows
    $note   = "`n> Última sincronización: " + (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + "`n`n"

    $newContent = $before + "`n" + $note + $table + "`n" + $after
    Set-Content -LiteralPath $RfqPath -Value $newContent -Encoding UTF8
    Write-Log "Tabla AUTOGEN actualizada en: $RfqPath"
}

try{
    Write-Log "Sincronización TM01 iniciada"
    Update-RFQFiberTable
    Write-Log "Sincronización TM01 finalizada OK"
}catch{
    Write-Error $_
    exit 1
}
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