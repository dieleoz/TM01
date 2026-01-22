#requires -Version 5.1
param(
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Importar módulos
$modulesPath = Join-Path -Path (Split-Path -Parent $PSCommandPath) -ChildPath 'modules'
$logger = Join-Path $modulesPath 'Logger.psm1'
$snapshotter = Join-Path $modulesPath 'Snapshotter.psm1'
$cachebuster = Join-Path $modulesPath 'CacheBuster.psm1'
$validator = Join-Path $modulesPath 'ValidadorContractual.psm1'
$t05parser = Join-Path $modulesPath 'T05Parser.psm1'
$rfqUpdater = Join-Path $modulesPath 'RFQUpdater.psm1'
$dataMapper = Join-Path $modulesPath 'DataMapper.psm1'
$encValidator = Join-Path $modulesPath 'EncodingValidator.psm1'
if (Test-Path $logger) { Import-Module $logger -Force; Initialize-Logger -LogPrefix 'sincronizacion' }
if (Test-Path $snapshotter) { Import-Module $snapshotter -Force }
if (Test-Path $cachebuster) { Import-Module $cachebuster -Force }
if (Test-Path $validator) { Import-Module $validator -Force }
if (Test-Path $t05parser) { Import-Module $t05parser -Force }
if (Test-Path $rfqUpdater) { Import-Module $rfqUpdater -Force }
if (Test-Path $dataMapper) { Import-Module $dataMapper -Force }
if (Test-Path $encValidator) { Import-Module $encValidator -Force }

function Write-Log([string]$msg) {
    $ts = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    Write-Host "[$ts] $msg"
}

# Lockfile helpers (en la raíz del repo junto al directorio scripts)
$repoRoot = Split-Path -Parent $PSCommandPath
$lockPath = Join-Path $repoRoot '.sync.lock'
function Test-SyncLock { return (Test-Path -LiteralPath $lockPath) }
function New-SyncLock {
    if (Test-SyncLock) { return $false }
    try {
        $fs = [System.IO.File]::Open($lockPath, [System.IO.FileMode]::CreateNew, [System.IO.FileAccess]::Write, [System.IO.FileShare]::None)
        $bytes = [System.Text.Encoding]::UTF8.GetBytes((Get-Date).ToUniversalTime().ToString('o'))
        $fs.Write($bytes, 0, $bytes.Length)
        $fs.Flush(); $fs.Close()
        return $true
    }
    catch [System.IO.IOException] {
        return $false
    }
    catch {
        return $false
    }
}
function Remove-SyncLock { if (Test-Path -LiteralPath $lockPath) { Remove-Item -LiteralPath $lockPath -Force -ErrorAction SilentlyContinue } }

# Validación contrato-first (bloqueante)
$incongruencias = @()
if (Get-Command Test-ContractCompliance -ErrorAction SilentlyContinue) {
    $val = Test-ContractCompliance
    if (-not $val.IsValid) {
        $incongruencias += $val.Issues
        $repoRoot = Split-Path -Parent $PSCommandPath
        $logsDir = Join-Path $repoRoot 'logs'
        if (-not (Test-Path -LiteralPath $logsDir)) { New-Item -ItemType Directory -Path $logsDir -Force | Out-Null }
        $logJson = Join-Path $logsDir ("incongruencias_{0}.jsonl" -f (Get-Date -Format 'yyyyMMdd'))
        if (Get-Command Write-JsonLog -ErrorAction SilentlyContinue) {
            foreach ($i in $val.Issues) { Write-JsonLog -Path $logJson -Message 'ValidacionContrato' -Level 'ERROR' -Data @{ issue = $i } }
        }
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
            Write-LogEntry -Level 'ERROR' -Message 'Validación contractual falló' -Context @{ Issues = $incongruencias; LogFile = $logJson }
        }
        Write-Error "Validación contractual falló. Ver logs en $logJson"
        exit 1
    }
    if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
        Write-LogEntry -Level 'INFO' -Message 'Validación contractual OK'
    }
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
        @{ID = '1021'; Nombre = 'Cable fibra óptica 48h'; Und = 'm'; Cantidad = 314824 }
        @{ID = '1022'; Nombre = 'Cable fibra óptica 12h'; Und = 'm'; Cantidad = 10856 }
        @{ID = '1024'; Nombre = 'Cajas empalme 80×80'; Und = 'und'; Cantidad = 65 }
        @{ID = '1025'; Nombre = 'Cajas empalme 60×60'; Und = 'und'; Cantidad = 1192 }
        @{ID = '1026'; Nombre = 'Cruces especiales puentes'; Und = 'm'; Cantidad = 4132 }
        @{ID = '1027'; Nombre = 'Cruces especiales muros'; Und = 'm'; Cantidad = 236 }
        @{ID = '1028'; Nombre = 'Cruces especiales box culvert'; Und = 'm'; Cantidad = 6732 }
        @{ID = '1029'; Nombre = 'Cruces especiales alcantarillas'; Und = 'm'; Cantidad = 2006 }
        @{ID = '10210'; Nombre = 'Empalmes y conectores globales'; Und = 'glb'; Cantidad = 1 }
        @{ID = '1031'; Nombre = 'Excavación asfalto + tritubo'; Und = 'm'; Cantidad = 27140 }
        @{ID = '1032'; Nombre = 'Excavación andén + tritubo'; Und = 'm'; Cantidad = 13570 }
        @{ID = '1033'; Nombre = 'Excavación blanda + tritubo'; Und = 'm'; Cantidad = 238560 }
        @{ID = '1034'; Nombre = 'Instalación cruces especiales'; Und = 'm'; Cantidad = 13920 }
        @{ID = '1035'; Nombre = 'Instalación cajas empalme'; Und = 'und'; Cantidad = 1257 }
        @{ID = '1041'; Nombre = 'Halado fibra óptica 48h'; Und = 'm'; Cantidad = 293190 }
        @{ID = '1042'; Nombre = 'Instalación fibra óptica 12h (altura/piso)'; Und = 'm'; Cantidad = 9440 }
        @{ID = '1043'; Nombre = 'Trabajos instalación especializada'; Und = 'glb'; Cantidad = 1 }
    ) | ForEach-Object { [PSCustomObject]$_ }
}

function Render-MarkdownTable {
    param([object[]]$Items)
    $header = "| ID   | Nombre                                       | Und | Cantidad | Precio Unit. USD | Precio Unit. COP | Total USD | Total COP |"
    $sep = "|------|----------------------------------------------|-----|----------|------------------|------------------|-----------|-----------|"
    $lines = @($header, $sep)
    foreach ($r in $Items) {
        $lines += "| $($r.ID) | $($r.Nombre) | $($r.Und) | $($r.Cantidad) |  |  |  |  |"
    }
    return ($lines -join "`n")
}

function Update-RFQFiberTable_Inline {
    param([string]$RfqPath = "X. Entregables Consolidados/RFQ_001_FIBRA_OPTICA_v1.0.md", [object[]]$Items)
    if (-not (Test-Path -LiteralPath $RfqPath)) { throw "No existe RFQ: $RfqPath" }
    $content = Get-Content -LiteralPath $RfqPath -Raw -Encoding UTF8
    $startTag = '<!-- AUTOGEN:FO_TABLE_START -->'
    $endTag = '<!-- AUTOGEN:FO_TABLE_END -->'
    $start = $content.IndexOf($startTag)
    $end = $content.IndexOf($endTag)
    if ($start -lt 0 -or $end -lt 0 -or $end -le $start) { throw "Marcadores AUTOGEN no encontrados en $RfqPath" }
    $before = $content.Substring(0, $start + $startTag.Length)
    $after = $content.Substring($end)
    $table = Render-MarkdownTable -Items $Items
    $note = "`n> Última sincronización: " + (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') + "`n`n"
    $newContent = $before + "`n" + $note + $table + "`n" + $after
    Set-Content -LiteralPath $RfqPath -Value $newContent -Encoding UTF8
}

try {
    # Acquire lock
    if (-not (New-SyncLock)) {
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'WARN' -Message 'Sincronizacion bloqueada por lockfile' -Context @{ Lock = $lockPath } }
        Write-Error "Sincronizacion en curso (lock: $lockPath)"; exit 1
    }
    Write-Log "Sincronizacion TM01 iniciada"
    if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'INFO' -Message 'Sincronizacion iniciada' }
    # Snapshot pre-sincronización
    $masterFile = "docs/data/tm01_master_data.js"
    if ((Test-Path -LiteralPath $masterFile) -and (Get-Command New-DataSnapshot -ErrorAction SilentlyContinue)) {
        Write-LogEntry -Level 'INFO' -Message 'Creando snapshot pre-sync' -Context @{ File = $masterFile }
        New-DataSnapshot -SourceFile $masterFile -Description "Pre-sync $(Get-Date -Format 'yyyy-MM-dd HH:mm')" | Out-Null
    }
    
    # 1) Sincronización bidireccional: BASE (snapshot) vs SOURCE (T05) vs CURRENT (master)
    if (Get-Command Invoke-BidirectionalSync -ErrorAction SilentlyContinue) {
        Write-Log "Ejecutando merge bidireccional..."
        $syncResult = Invoke-BidirectionalSync -Force:$Force
        if (-not $syncResult) {
            if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'ERROR' -Message 'Sincronizacion bidireccional fallo (conflictos o error)' }
            Write-Host "`nSINCRONIZACION DETENIDA POR CONFLICTOS" -ForegroundColor Red
            Write-Host "Ver: docs/data/tm01_master_data.conflicts.json" -ForegroundColor Yellow
            exit 1
        }
        if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'INFO' -Message 'Sincronizacion bidireccional completada exitosamente' }
    }
    else {
        # Fallback: sync T05 tradicional (solo si DataMapper no está disponible)
        Write-Log "DataMapper no disponible, usando sync T05 tradicional"
        $syncT05 = Join-Path -Path (Split-Path -Parent $PSCommandPath) -ChildPath 'sync_master_from_T05.ps1'
        if (Test-Path $syncT05) { powershell -ExecutionPolicy Bypass -File $syncT05 }
    }

    # 2) RFQ FO AUTOGEN
    $foItems = if (Get-Command Get-T05FiberQuantitiesFromRFQCsv -ErrorAction SilentlyContinue) { Get-T05FiberQuantitiesFromRFQCsv } else { Get-FiberQuantities }
    if (Get-Command Update-RFQFiberTable -ErrorAction SilentlyContinue) {
        Update-RFQFiberTable -Items $foItems
    }
    else {
        Update-RFQFiberTable_Inline -Items $foItems
    }
    # Validacion declarativa por reglas YAML
    if (Get-Command Invoke-DeclarativeValidation -ErrorAction SilentlyContinue) {
        $masterDataObj = (Get-Content -LiteralPath $masterFile -Raw -Encoding UTF8)
        $dataMatch = [regex]::Match($masterDataObj, 'this\.data\s*=\s*(\{[\s\S]*?\})', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        if ($dataMatch.Success) {
            try {
                $jsonStr = $dataMatch.Groups[1].Value -replace '//.*$', '' -replace ',(\s*[}\]])', '$1'
                $obj = $jsonStr | ConvertFrom-Json
                $decl = Invoke-DeclarativeValidation -MasterData $obj
                if (-not $decl.IsValid) {
                    if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'ERROR' -Message 'Validacion declarativa fallo' -Context @{ Issues = $decl.Issues } }
                    throw ("Validacion declarativa fallo: " + ($decl.Issues -join '; '))
                }
                else {
                    if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'INFO' -Message 'Validacion declarativa OK' }
                }
            }
            catch {
                throw $_
            }
        }
    }

    Write-Log 'Sincronizacion TM01 finalizada OK'
    # Limpieza de snapshots antiguos
    if (Get-Command Remove-OldSnapshots -ErrorAction SilentlyContinue) {
        Remove-OldSnapshots -KeepLast 20
    }
    # Cache-busting en HTMLs de docs y Sistema_Validacion_Web
    if (Get-Command Add-CacheBusting -ErrorAction SilentlyContinue) {
        $version = (Get-Date).ToUniversalTime().ToString('yyyyMMddHHmmss')
        $htmlTargets = @()
        if (Test-Path -LiteralPath 'docs') { $htmlTargets += Get-ChildItem 'docs' -Filter '*.html' -Recurse -ErrorAction SilentlyContinue }
        if (Test-Path -LiteralPath 'docs') { $htmlTargets += Get-ChildItem 'docs' -Filter '*.html' -Recurse -ErrorAction SilentlyContinue }
        foreach ($f in $htmlTargets) {
            try { Add-CacheBusting -HtmlFile $f.FullName -Version $version } catch { 
                if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'WARN' -Message "Cache-busting fallo para $($f.Name)" }
            }
        }
    }
    
    # Validación post-sync: verificar que no se haya corrompido el encoding de HTMLs
    # Excluir carpetas old, backup y temp que contienen archivos legacy
    # if (Get-Command Test-AllHtmlEncoding -ErrorAction SilentlyContinue) {
    #     $encodingCheck = Test-AllHtmlEncoding -Directories @('docs', 'Sistema_Validacion_Web') -ExcludePatterns @('*\old\*', '*\backup*', '*\temp*')
    #     if ($encodingCheck.Invalid -gt 0) {
    #         $errorMsg = "VALIDACION ENCODING FALLO: $($encodingCheck.Invalid) archivos HTML activos tienen problemas de encoding"
    #         if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
    #             Write-LogEntry -Level 'ERROR' -Message $errorMsg -Context @{ Issues = $encodingCheck.Issues }
    #         }
    #         Write-Host "`n❌ $errorMsg" -ForegroundColor Red
    #         foreach ($issue in $encodingCheck.Issues) {
    #             Write-Host "  - $($issue.File): $($issue.Message)" -ForegroundColor Yellow
    #         }
    #         # Write-Error $errorMsg
    #         # exit 1
    #     } else {
    #         if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
    #             Write-LogEntry -Level 'INFO' -Message "Validacion encoding OK: $($encodingCheck.Valid) archivos HTML activos validados (excluidos: old, backup, temp)"
    #         }
    #     }
    # }
    
    if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) { Write-LogEntry -Level 'INFO' -Message 'Sincronizacion finalizada OK' }
}
catch {
    $errorMsg = $_ | Out-String
    if (Get-Command Write-LogEntry -ErrorAction SilentlyContinue) {
        try { Write-LogEntry -Level 'ERROR' -Message 'Sincronizacion fallo' -Context @{ error = $errorMsg } } catch { }
    }
    Write-Error $errorMsg
    exit 1
}
finally {
    Remove-SyncLock
}
# SCRIPT MAESTRO ...