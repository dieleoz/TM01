# DataMapper.psm1 - Orquestador de sincronización bidireccional Docs ↔ Data
# Integra MergeEngine en el flujo maestro de sincronización

Import-Module (Join-Path $PSScriptRoot 'Logger.psm1') -Force
Import-Module (Join-Path $PSScriptRoot 'MergeEngine.psm1') -Force
Import-Module (Join-Path $PSScriptRoot 'Snapshotter.psm1') -Force

$script:MasterFile = "Sistema_Validacion_Web/data/tm01_master_data.js"
$script:SnapshotsDir = "logs/snapshots"

function Get-MasterDataContent {
    <#
    .SYNOPSIS
    Extrae el objeto data de tm01_master_data.js (this.data = {...}).
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$FilePath
    )
    
    if (-not (Test-Path -LiteralPath $FilePath)) {
        Write-LogEntry -Level 'ERROR' -Message 'Master file no encontrado' -Context @{ File = $FilePath }
        return $null
    }
    
    $content = Get-Content -LiteralPath $FilePath -Raw -Encoding UTF8
    
    # Extraer this.data = { ... }
    $dataMatch = [regex]::Match($content, 'this\.data\s*=\s*(\{[^\}]*\})', [System.Text.RegularExpressions.RegexOptions]::Singleline -bor [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    
    if (-not $dataMatch.Success) {
        # Intentar formato alternativo: window.TM01MasterData = { data: {...} }
        $dataMatch = [regex]::Match($content, '(?:window\.)?TM01MasterData\s*=\s*\{[^}]*data\s*:\s*(\{[^\}]*\})', [System.Text.RegularExpressions.RegexOptions]::Singleline -bor [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    }
    
    if (-not $dataMatch.Success) {
        Write-LogEntry -Level 'WARN' -Message 'No se pudo extraer data object del master' -Context @{ File = $FilePath }
        return $null
    }
    
    try {
        # Convertir JSON-like a PSCustomObject
        $jsonStr = $dataMatch.Groups[1].Value
        # Normalizar: remover comentarios, trailing commas
        $jsonStr = $jsonStr -replace '//.*$', '' -replace ',(\s*[}\]])', '$1'
        $obj = $jsonStr | ConvertFrom-Json -ErrorAction Stop
        return $obj
    } catch {
        Write-LogEntry -Level 'ERROR' -Message 'Error parseando data object' -Context @{ File = $FilePath; Error = $_.Exception.Message }
        return $null
    }
}

function Get-T05SourceData {
    <#
    .SYNOPSIS
    Carga datos desde documentos T05 (source) usando T05Parser.
    #>
    [CmdletBinding()]
    param()
    
    $t05Parser = Join-Path $PSScriptRoot 'T05Parser.psm1'
    if (-not (Test-Path -LiteralPath $t05Parser)) {
        Write-LogEntry -Level 'WARN' -Message 'T05Parser no encontrado, usando datos vacíos' -Context @{ Parser = $t05Parser }
        return @{}
    }
    
    Import-Module $t05Parser -Force
    $sourceData = @{}
    
    # Intentar obtener datos de T05
    if (Get-Command Get-T05L3Summary -ErrorAction SilentlyContinue) {
        $l3 = Get-T05L3Summary
        if ($l3) {
            $sourceData['CAPEX_L3_USD'] = $l3.CAPEXTotalL3USD
            $sourceData['TOTAL_SWITCHES_L3'] = $l3.TotalSwitchesL3
        }
    }
    
    # TODO: Extender con más parsers T05 (FO, L2, SOS, etc.)
    
    Write-LogEntry -Level 'INFO' -Message 'Datos T05 cargados' -Context @{ Fields = $sourceData.Keys.Count }
    return $sourceData
}

function Invoke-BidirectionalSync {
    <#
    .SYNOPSIS
    Ejecuta sincronización bidireccional: BASE (snapshot) vs SOURCE (T05) vs CURRENT (master).
    
    .PARAMETER SnapshotId
    ID del snapshot a usar como BASE. Si no se especifica, usa el último snapshot.
    
    .PARAMETER DryRun
    Solo calcular merge sin aplicar cambios.
    
    .OUTPUTS
    [PSCustomObject] Resultado del merge con conflicts y stats.
    #>
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter()][string]$SnapshotId = $null,
        [switch]$DryRun
    )
    
    Write-LogEntry -Level 'INFO' -Message 'Iniciando sincronización bidireccional' -Context @{ SnapshotId = $SnapshotId; DryRun = $DryRun.IsPresent }
    
    # 1. Cargar BASE (snapshot)
    $baseData = $null
    if ($SnapshotId) {
        $snapshot = Get-Snapshot -SnapshotId $SnapshotId
        if ($snapshot) {
            $baseFile = $snapshot.FilePath
            $baseData = Get-MasterDataContent -FilePath $baseFile
        }
    } else {
        # Usar último snapshot
        $snapshots = Get-ChildItem (Join-Path $script:SnapshotsDir '*.json') -ErrorAction SilentlyContinue | 
            Sort-Object LastWriteTime -Descending | Select-Object -First 1
        if ($snapshots) {
            $snapJson = Get-Content -LiteralPath $snapshots.FullName -Raw | ConvertFrom-Json
            if ($snapJson.sourceFile -and (Test-Path -LiteralPath $snapJson.sourceFile)) {
                $baseData = Get-MasterDataContent -FilePath $snapJson.sourceFile
            }
        }
    }
    
    if ($null -eq $baseData) {
        Write-LogEntry -Level 'WARN' -Message 'No se encontró snapshot BASE, usando CURRENT como BASE' -Context @{ Master = $script:MasterFile }
        $baseData = Get-MasterDataContent -FilePath $script:MasterFile
    }
    
    # 2. Cargar SOURCE (T05)
    $sourceData = Get-T05SourceData
    
    # 3. Cargar CURRENT (master actual)
    $currentData = Get-MasterDataContent -FilePath $script:MasterFile
    
    if ($null -eq $currentData) {
        Write-LogEntry -Level 'ERROR' -Message 'No se pudo cargar CURRENT, abortando' -Context @{ Master = $script:MasterFile }
        return $null
    }
    
    # 4. Ejecutar merge 3-vías
    $mergeResult = Merge-ThreeWay -Base $baseData -Source $sourceData -Current $currentData
    
    # 5. Aplicar cambios (si no es DryRun)
    if (-not $DryRun -and $PSCmdlet.ShouldProcess($script:MasterFile, 'Aplicar merge 3-vías')) {
        # TODO: Escribir merged data de vuelta a tm01_master_data.js
        # Por ahora, solo loguear
        Write-LogEntry -Level 'INFO' -Message 'Merge calculado (aplicación pendiente)' -Context @{
            Stats = $mergeResult.Stats
            Conflicts = $mergeResult.Conflicts.Count
        }
    }
    
    # 6. Reportar conflictos
    if ($mergeResult.Conflicts.Count -gt 0) {
        $conflictFile = "logs/merge_conflicts_$(Get-Date -Format 'yyyyMMdd_HHmmss').json"
        $mergeResult.Conflicts | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $conflictFile -Encoding UTF8
        Write-LogEntry -Level 'WARN' -Message 'Conflictos detectados, guardados en archivo' -Context @{ File = $conflictFile; Count = $mergeResult.Conflicts.Count }
    }
    
    return $mergeResult
}

Export-ModuleMember -Function Get-MasterDataContent, Get-T05SourceData, Invoke-BidirectionalSync
