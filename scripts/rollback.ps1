#requires -Version 5.1
[CmdletBinding(SupportsShouldProcess)]
param(
    [switch]$ListSnapshots,
    [string]$SnapshotId,
    [switch]$ToLatest
)

$ErrorActionPreference = 'Stop'

$modulesPath = Join-Path -Path (Split-Path -Parent $PSCommandPath) -ChildPath 'modules'
$logger      = Join-Path $modulesPath 'Logger.psm1'
$snapshotter = Join-Path $modulesPath 'Snapshotter.psm1'
if (Test-Path $logger)      { Import-Module $logger -Force; Initialize-Logger -LogPrefix 'rollback' }
if (Test-Path $snapshotter) { Import-Module $snapshotter -Force }

$snapshotDir = "Sistema_Validacion_Web/data/snapshots"
$masterFile  = "Sistema_Validacion_Web/data/tm01_master_data.js"

if ($ListSnapshots) {
    if (-not (Test-Path -LiteralPath $snapshotDir)) {
        Write-Host "No hay carpeta de snapshots aún." -ForegroundColor Yellow
        exit 0
    }
    $snapshots = Get-ChildItem -LiteralPath $snapshotDir -Filter "tm01_master_data_*.json" |
                 Sort-Object LastWriteTime -Descending
    if (-not $snapshots) { Write-Host "No hay snapshots disponibles." -ForegroundColor Yellow; exit 0 }
    $i = 1
    foreach ($s in $snapshots) {
        Write-Host ("{0}. {1} ({2})" -f $i,$s.BaseName,$s.LastWriteTime.ToString('yyyy-MM-dd HH:mm:ss')) -ForegroundColor Cyan
        $i++
    }
    exit 0
}

if ($ToLatest) {
    $latest = Get-LatestSnapshot -BaseName "tm01_master_data" -SnapshotDir $snapshotDir
    if (-not $latest) { Write-Error "No se encontraron snapshots"; exit 1 }
    $SnapshotId = [System.IO.Path]::GetFileNameWithoutExtension($latest)
}

if (-not $SnapshotId) {
    Write-Host "Uso:" -ForegroundColor Yellow
    Write-Host "  .\scripts\rollback.ps1 -ListSnapshots" -ForegroundColor Yellow
    Write-Host "  .\scripts\rollback.ps1 -ToLatest" -ForegroundColor Yellow
    Write-Host "  .\scripts\rollback.ps1 -SnapshotId <nombre_archivo_sin_extension>" -ForegroundColor Yellow
    exit 1
}

$snapshotPath = Join-Path $snapshotDir ("{0}.json" -f $SnapshotId)
if (-not (Test-Path -LiteralPath $snapshotPath)) { Write-Error "Snapshot no encontrado: $snapshotPath"; exit 1 }

Write-Host "Esta operación restaurará: $masterFile" -ForegroundColor Yellow
Write-Host "Desde snapshot: $SnapshotId" -ForegroundColor Yellow
$confirm = Read-Host "¿Continuar? (yes/no)"
if ($confirm -ne 'yes') { Write-Host "Cancelado" -ForegroundColor Red; exit 0 }

if ($PSCmdlet.ShouldProcess($masterFile, "Restore from snapshot")) {
    $ok = Restore-FromSnapshot -SnapshotFile $snapshotPath -DestinationFile $masterFile -CreateBackup
    if ($ok) {
        Write-LogEntry -Level 'INFO' -Message 'Rollback exitoso' -Context @{ Snapshot = $SnapshotId; Target = $masterFile }
        Write-Host "Rollback completado." -ForegroundColor Green
        Write-Host "Ejecuta sincronización para propagar cambios:" -ForegroundColor Cyan
        Write-Host ".\scripts\sincronizar_SISTEMA_TM01_COMPLETO.ps1" -ForegroundColor White
        exit 0
    } else {
        Write-LogEntry -Level 'ERROR' -Message 'Rollback falló' -Context @{ Snapshot = $SnapshotId; Target = $masterFile }
        Write-Error "Rollback falló"; exit 1
    }
}


