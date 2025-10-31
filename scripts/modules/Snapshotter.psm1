# Snapshotter.psm1 - snapshots simples de archivos de datos

function New-DataSnapshot {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)] [string]$SourceFile,
        [string]$SnapshotDir = "Sistema_Validacion_Web/data/snapshots",
        [string]$Description = "Auto snapshot"
    )
    if (-not (Test-Path -LiteralPath $SourceFile)) {
        Write-Error "SourceFile no existe: $SourceFile"
        return $null
    }
    if (-not (Test-Path -LiteralPath $SnapshotDir)) {
        New-Item -ItemType Directory -Path $SnapshotDir -Force | Out-Null
    }
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $hash = (Get-FileHash -LiteralPath $SourceFile -Algorithm SHA256).Hash.Substring(0,8)
    $base = [System.IO.Path]::GetFileNameWithoutExtension($SourceFile)
    $snapPath = Join-Path $SnapshotDir ("{0}_{1}_{2}.json" -f $base,$timestamp,$hash)

    Copy-Item -LiteralPath $SourceFile -Destination $snapPath -Force

    $meta = @{
        timestamp = (Get-Date).ToUniversalTime().ToString('o')
        sourceFile = $SourceFile
        snapshotFile = $snapPath
        hash = $hash
        description = $Description
        size = (Get-Item -LiteralPath $SourceFile).Length
    }
    ($meta | ConvertTo-Json -Depth 5) | Set-Content -LiteralPath ($snapPath + '.meta') -Encoding UTF8
    Write-Host "Snapshot creado: $snapPath" -ForegroundColor Green
    return $snapPath
}

function Get-LatestSnapshot {
    [CmdletBinding()] param(
        [Parameter(Mandatory)] [string]$BaseName,
        [string]$SnapshotDir = "Sistema_Validacion_Web/data/snapshots"
    )
    $pattern = "{0}_*.json" -f $BaseName
    $files = Get-ChildItem -LiteralPath $SnapshotDir -Filter $pattern -ErrorAction SilentlyContinue |
             Sort-Object LastWriteTime -Descending
    if ($files) { return $files[0].FullName }
    return $null
}

function Restore-FromSnapshot {
    [CmdletBinding(SupportsShouldProcess)] param(
        [Parameter(Mandatory)] [string]$SnapshotFile,
        [Parameter(Mandatory)] [string]$DestinationFile,
        [switch]$CreateBackup
    )
    if (-not (Test-Path -LiteralPath $SnapshotFile)) { Write-Error "Snapshot no existe: $SnapshotFile"; return $false }
    if ($CreateBackup -and (Test-Path -LiteralPath $DestinationFile)) {
        $backup = "$DestinationFile.backup_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
        Copy-Item -LiteralPath $DestinationFile -Destination $backup -Force
        Write-Host "Backup: $backup" -ForegroundColor Cyan
    }
    if ($PSCmdlet.ShouldProcess($DestinationFile, "Restore from snapshot")) {
        Copy-Item -LiteralPath $SnapshotFile -Destination $DestinationFile -Force
        Write-Host "Restaurado desde snapshot" -ForegroundColor Green
        return $true
    }
    return $false
}

function Remove-OldSnapshots {
    [CmdletBinding()] param(
        [string]$SnapshotDir = "Sistema_Validacion_Web/data/snapshots",
        [int]$KeepLast = 20
    )
    if (-not (Test-Path -LiteralPath $SnapshotDir)) { return }
    $files = Get-ChildItem -LiteralPath $SnapshotDir -Filter "*.json" -ErrorAction SilentlyContinue |
             Sort-Object LastWriteTime -Descending
    $toDelete = $files | Select-Object -Skip $KeepLast
    foreach ($f in $toDelete) {
        Remove-Item -LiteralPath $f.FullName -Force -ErrorAction SilentlyContinue
        $meta = $f.FullName + '.meta'
        if (Test-Path -LiteralPath $meta) { Remove-Item -LiteralPath $meta -Force -ErrorAction SilentlyContinue }
        Write-Host "Snapshot eliminado: $($f.Name)" -ForegroundColor DarkGray
    }
}

Export-ModuleMember -Function New-DataSnapshot, Get-LatestSnapshot, Restore-FromSnapshot, Remove-OldSnapshots


