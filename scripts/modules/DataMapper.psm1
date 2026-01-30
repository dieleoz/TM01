# DataMapper.psm1 - Orquestador de sincronización bidireccional Docs ↔ Data
# Integra MergeEngine en el flujo maestro de sincronización

Import-Module (Join-Path $PSScriptRoot 'Logger.psm1') -Force
Import-Module (Join-Path $PSScriptRoot 'MergeEngine.psm1') -Force
Import-Module (Join-Path $PSScriptRoot 'Snapshotter.psm1') -Force

$script:MasterFile = "docs/data/tm01_master_data.js"
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
    
    # Intentos de extracción del objeto de datos
    $rxOpts = [System.Text.RegularExpressions.RegexOptions]::Singleline -bor [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
    # 1) this.data = { ... }
    $dataMatch = [regex]::Match($content, 'this\.data\s*=\s*(\{[\s\S]*?\})', $rxOpts)
    # 2) window.TM01_MASTER_DATA = { ... }
    if (-not $dataMatch.Success) {
        $dataMatch = [regex]::Match($content, '(?:window\.)?TM01_MASTER_DATA\s*=\s*(\{[\s\S]*?\})', $rxOpts)
    }
    # 3) const tm01Data = { ... }
    if (-not $dataMatch.Success) {
        $dataMatch = [regex]::Match($content, 'const\s+tm01Data\s*=\s*(\{[\s\S]*?\})', $rxOpts)
    }
    
    if (-not $dataMatch.Success) {
        Write-LogEntry -Level 'WARN' -Message 'No se pudo extraer data object del master' -Context @{ File = $FilePath }
        return $null
    }
    
    try {
        # Convertir JSON-like a PSCustomObject
        $jsonStr = $dataMatch.Groups[1].Value
        # Normalizar: remover comentarios, trailing commas
        $jsonStr = $jsonStr -replace '//.*$', ''
        $jsonStr = $jsonStr -replace '/\*[\s\S]*?\*/', ''
        $jsonStr = $jsonStr -replace ',(\s*[}\]])', '$1'
        $obj = $jsonStr | ConvertFrom-Json -ErrorAction Stop
        return $obj
    }
    catch {
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
        [switch]$DryRun,
        [switch]$Force
    )
    
    Write-LogEntry -Level 'INFO' -Message 'Iniciando sincronización bidireccional' -Context @{ SnapshotId = $SnapshotId; DryRun = $DryRun.IsPresent }
    
    # 0. Verificar conflictos pendientes
    $conflictsFile = "docs/data/tm01_master_data.conflicts.json"
    if ((Test-Path -LiteralPath $conflictsFile) -and -not $Force) {
        Write-LogEntry -Level 'ERROR' -Message 'Conflictos pendientes de resolución' -Context @{ File = $conflictsFile }
        Write-Host "`n❌ ERROR: Hay conflictos pendientes sin resolver" -ForegroundColor Red
        Write-Host "Archivo: $conflictsFile" -ForegroundColor Yellow
        Write-Host "Opciones: 1) Resolver y eliminar archivo  2) -Force para sobrescribir  3) usar rollback.ps1" -ForegroundColor Gray
        return $false
    }

    # 1. Cargar BASE (snapshot)
    $baseData = $null
    if ($SnapshotId) {
        $snapshot = Get-Snapshot -SnapshotId $SnapshotId
        if ($snapshot) {
            $baseFile = $snapshot.FilePath
            $baseData = Get-MasterDataContent -FilePath $baseFile
        }
    }
    else {
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
    
    # 4. Ejecutar merge 3-vías (con defaults seguros si hay nulls)
    if ($null -eq $baseData) { $baseData = @{} }
    if ($null -eq $sourceData) { $sourceData = @{} }
    if ($null -eq $currentData) { $currentData = @{} }
    $mergeResult = Merge-ThreeWay -Base $baseData -Source $sourceData -Current $currentData
    
    # 5. Aplicar cambios (si no es DryRun)
    if (-not $DryRun -and $PSCmdlet.ShouldProcess($script:MasterFile, 'Aplicar merge 3-vías')) {
        if ($mergeResult.Conflicts.Count -gt 0) {
            # Guardar reporte de conflictos en ruta contractual y bloquear
            if (Get-Command Save-ConflictReport -ErrorAction SilentlyContinue) {
                Save-ConflictReport -Conflicts $mergeResult.Conflicts -OutputFile $conflictsFile | Out-Null
            }
            else {
                # Fallback mínimo
                $report = @{ timestamp = (Get-Date).ToUniversalTime().ToString('o'); conflictCount = $mergeResult.Conflicts.Count; conflicts = $mergeResult.Conflicts }
                $report | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $conflictsFile -Encoding UTF8
            }
            Write-LogEntry -Level 'ERROR' -Message 'Conflictos detectados, merge detenido' -Context @{ File = $conflictsFile; Count = $mergeResult.Conflicts.Count }
            return $false
        }

        # Escribir merged data a tm01_master_data.js
        Write-LogEntry -Level 'INFO' -Message 'Merge sin conflictos, aplicando cambios'

        $mergedJson = $mergeResult.Merged | ConvertTo-Json -Depth 100
        $timestamp = (Get-Date).ToUniversalTime().ToString('yyyy-MM-dd HH:mm:ss UTC')
        $jsContent = @"
// TM01 Master Data - Generado automáticamente
// Última sincronización: $timestamp
// Merge 3-vías completado sin conflictos

const tm01Data = $mergedJson;

function parseNumeric(value) {
    if (typeof value === 'number') return value;
    if (typeof value === 'string') return parseFloat(value.replace(/,/g, ''));
    return 0;
}

function normalizeWbsNumerics(data) {
    const TASA_COP_USD = 4400;
    if (data.wbs?.items) {
        data.wbs.items = data.wbs.items.map(item => ({
            ...item,
            cantidad: parseNumeric(item.cantidad),
            vu: parseNumeric(item.vu ?? item.valorUnitario),
            total: parseNumeric(item.total ?? item.subtotal),
            totalCOP: parseNumeric(item.totalCOP ?? 0)
        }));
    }
    if (data.presupuesto?.items) {
        data.presupuesto.items = data.presupuesto.items.map(item => ({
            ...item,
            cantidad: parseNumeric(item.cantidad),
            vu: parseNumeric(item.vu ?? item.valorUnitario),
            subtotal: parseNumeric(item.subtotal ?? (parseNumeric(item.cantidad) * parseNumeric(item.vu))),
            totalUSD: parseNumeric(item.totalUSD ?? item.total),
            totalCOP: parseNumeric(item.totalCOP ?? (parseNumeric(item.totalUSD ?? 0) * TASA_COP_USD))
        }));
    }
    return data;
}

const normalizedData = normalizeWbsNumerics(tm01Data);
if (typeof module !== 'undefined' && module.exports) {
    module.exports = normalizedData;
} else {
    window.TM01_MASTER_DATA = normalizedData;
}
// Compatibilidad con lectores que buscan this.data
this.data = normalizedData;
"@
        Set-Content -LiteralPath $script:MasterFile -Value $jsContent -Encoding UTF8
        Write-LogEntry -Level 'INFO' -Message 'tm01_master_data.js actualizado exitosamente' -Context @{ FilePath = $script:MasterFile; FieldsModified = $mergeResult.Stats.FieldsModified; Timestamp = $timestamp }
    }

    return $true
}

Set-Alias -Name Sync-MasterFromT05 -Value Invoke-BidirectionalSync

Export-ModuleMember -Function Get-MasterDataContent, Get-T05SourceData, Invoke-BidirectionalSync -Alias Sync-MasterFromT05
