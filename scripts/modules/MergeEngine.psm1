# MergeEngine.psm1 - Motor de merge 3-vías para sincronización bidireccional
# Resuelve DT-ARQUITECTURA-021: preservación de cambios manuales vs. datos de documentación

Import-Module (Join-Path $PSScriptRoot 'Logger.psm1') -Force

function ConvertTo-Hashtable {
    [CmdletBinding()]
    param([AllowNull()]$InputObject)
    if ($null -eq $InputObject) { return $null }
    if ($InputObject -is [System.Collections.IDictionary]) {
        $ht = @{}
        foreach ($key in $InputObject.Keys) { $ht[$key] = ConvertTo-Hashtable -InputObject $InputObject[$key] }
        return $ht
    }
    if ($InputObject -is [pscustomobject]) {
        $ht = @{}
        foreach ($prop in $InputObject.PSObject.Properties) { $ht[$prop.Name] = ConvertTo-Hashtable -InputObject $prop.Value }
        return $ht
    }
    if ($InputObject -is [System.Collections.IEnumerable] -and -not ($InputObject -is [string])) {
        $arr = @()
        foreach ($item in $InputObject) { $arr += ,(ConvertTo-Hashtable -InputObject $item) }
        return $arr
    }
    return $InputObject
}

function Compare-ObjectDiff {
    <#
    .SYNOPSIS
    Calcula diferencias entre dos objetos (campos añadidos/modificados/eliminados).
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][object]$Base,
        [Parameter(Mandatory)][object]$Modified
    )
    
    $diff = @{
        Added = @{}
        Modified = @{}
        Removed = @{}
    }
    
    if ($null -eq $Base) { $Base = @{} }
    if ($null -eq $Modified) { $Modified = @{} }
    
    if ($Base -is [PSCustomObject] -or $Base -is [System.Collections.IEnumerable]) { $Base = ConvertTo-Hashtable -InputObject $Base }
    if ($Modified -is [PSCustomObject] -or $Modified -is [System.Collections.IEnumerable]) { $Modified = ConvertTo-Hashtable -InputObject $Modified }
    
    # Campos nuevos o modificados
    foreach ($key in $Modified.Keys) {
        if (-not $Base.ContainsKey($key)) {
            $diff.Added[$key] = $Modified[$key]
        } elseif ($Base[$key] -ne $Modified[$key]) {
            $diff.Modified[$key] = @{
                Old = $Base[$key]
                New = $Modified[$key]
            }
        }
    }
    
    # Campos eliminados
    foreach ($key in $Base.Keys) {
        if (-not $Modified.ContainsKey($key)) {
            $diff.Removed[$key] = $Base[$key]
        }
    }
    
    return $diff
}

function Resolve-Conflict {
    <#
    .SYNOPSIS
    Resuelve conflictos según reglas predefinidas (contractual vs. UI).
    
    Reglas:
    - Campos contractuales (cantidad, vu, total, totalCOP) → Prioridad SOURCE (T05)
    - Campos UI (descripcion, observaciones, notas) → Prioridad CURRENT (manual)
    - Arrays (wbs, layout, presupuesto) → Merge inteligente por ID/código
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$Field,
        [Parameter(Mandatory)][object]$BaseValue,
        [Parameter(Mandatory)][object]$SourceValue,
        [Parameter(Mandatory)][object]$CurrentValue
    )
    
    # Campos contractuales (prioridad SOURCE)
    $contractualFields = @('cantidad', 'vu', 'total', 'totalCOP', 'codigo', 'pk', 'wbs', 'capitulo')
    if ($contractualFields -contains $Field.ToLower()) {
        if ($SourceValue -ne $BaseValue) {
            Write-LogEntry -Level 'INFO' -Message 'Resolución contractual: SOURCE' -Context @{ Field = $Field; Source = $SourceValue; Current = $CurrentValue }
            return @{ Value = $SourceValue; Reason = 'Contractual (T05 tiene prioridad)' }
        }
    }
    
    # Campos UI (prioridad CURRENT)
    $uiFields = @('descripcion', 'observaciones', 'notas', 'comentarios', 'estado')
    if ($uiFields -contains $Field.ToLower()) {
        if ($CurrentValue -ne $BaseValue) {
            Write-LogEntry -Level 'INFO' -Message 'Resolución UI: CURRENT' -Context @{ Field = $Field; Current = $CurrentValue; Source = $SourceValue }
            return @{ Value = $CurrentValue; Reason = 'UI (cambios manuales preservados)' }
        }
    }
    
    # Sin cambio desde base → mantener base
    if ($SourceValue -eq $BaseValue -and $CurrentValue -eq $BaseValue) {
        return @{ Value = $BaseValue; Reason = 'Sin cambios' }
    }
    
    # Por defecto: preferir CURRENT si ambos difieren de base
    if ($CurrentValue -ne $BaseValue) {
        Write-LogEntry -Level 'WARN' -Message 'Resolución por defecto: CURRENT' -Context @{ Field = $Field; Current = $CurrentValue; Source = $SourceValue }
        return @{ Value = $CurrentValue; Reason = 'Default (preservar cambios manuales)' }
    }
    
    return @{ Value = $SourceValue; Reason = 'Default (aplicar cambios T05)' }
}

function Merge-ThreeWay {
    <#
    .SYNOPSIS
    Realiza merge 3-vías: BASE vs SOURCE (T05) vs CURRENT (master).
    
    .OUTPUTS
    [PSCustomObject] @{
        Merged = objeto resultado del merge
        Conflicts = array de conflictos no resueltos automáticamente
        Stats = estadísticas del merge
    }
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][object]$Base,
        [Parameter(Mandatory)][object]$Source,
        [Parameter(Mandatory)][object]$Current
    )
    
    Write-LogEntry -Level 'INFO' -Message 'Iniciando merge 3-vías' -Context @{ BaseType = $Base.GetType().Name; SourceType = $Source.GetType().Name; CurrentType = $Current.GetType().Name }
    
    $conflicts = @()
    $stats = @{
        FieldsAdded = 0
        FieldsModified = 0
        FieldsRemoved = 0
        ConflictsResolved = 0
        ConflictsUnresolved = 0
    }
    
    # Convertir a hashtables si es necesario
    if ($Base -is [PSCustomObject] -or $Base -is [System.Collections.IEnumerable]) { $Base = ConvertTo-Hashtable -InputObject $Base }
    if ($Source -is [PSCustomObject] -or $Source -is [System.Collections.IEnumerable]) { $Source = ConvertTo-Hashtable -InputObject $Source }
    if ($Current -is [PSCustomObject] -or $Current -is [System.Collections.IEnumerable]) { $Current = ConvertTo-Hashtable -InputObject $Current }
    
    $merged = @{}
    $allKeys = @()
    $allKeys += $Base.Keys
    $allKeys += $Source.Keys
    $allKeys += $Current.Keys
    $allKeys = $allKeys | Select-Object -Unique
    
    foreach ($key in $allKeys) {
        $baseVal = if ($Base.ContainsKey($key)) { $Base[$key] } else { $null }
        $sourceVal = if ($Source.ContainsKey($key)) { $Source[$key] } else { $null }
        $currentVal = if ($Current.ContainsKey($key)) { $Current[$key] } else { $null }
        
        # Sin cambios
        if ($sourceVal -eq $baseVal -and $currentVal -eq $baseVal) {
            $merged[$key] = $baseVal
            continue
        }
        
        # Arrays: merge inteligente por ID/código
        if ($sourceVal -is [Array] -or $currentVal -is [Array]) {
            $arrayMerge = Merge-ArrayField -Key $key -Base $baseVal -Source $sourceVal -Current $currentVal
            $merged[$key] = $arrayMerge.Value
            if ($arrayMerge.Conflicts) { $conflicts += $arrayMerge.Conflicts }
            $stats.FieldsModified++
            continue
        }
        
        # Campos simples: resolución por reglas
        $resolution = Resolve-Conflict -Field $key -BaseValue $baseVal -SourceValue $sourceVal -CurrentValue $currentVal
        $merged[$key] = $resolution.Value
        
        if ($resolution.Value -ne $baseVal) {
            $stats.FieldsModified++
            $stats.ConflictsResolved++
        }
        
        # Conflictos que requieren atención manual
        if ($sourceVal -ne $baseVal -and $currentVal -ne $baseVal -and $sourceVal -ne $currentVal) {
            $conflicts += @{
                Field = $key
                Base = $baseVal
                Source = $sourceVal
                Current = $currentVal
                Resolved = $resolution.Value
                Reason = $resolution.Reason
            }
        }
    }
    
    $stats.ConflictsUnresolved = $conflicts.Count
    
    Write-LogEntry -Level 'INFO' -Message 'Merge 3-vías completado' -Context $stats
    
    return [PSCustomObject]@{
        Merged = $merged
        Conflicts = $conflicts
        Stats = $stats
    }
}

function Merge-ArrayField {
    <#
    .SYNOPSIS
    Merge inteligente de arrays (WBS, layout, presupuesto) por ID/código único.
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][string]$Key,
        [Parameter()][array]$Base,
        [Parameter()][array]$Source,
        [Parameter()][array]$Current
    )
    
    if ($null -eq $Base) { $Base = @() }
    if ($null -eq $Source) { $Source = @() }
    if ($null -eq $Current) { $Current = @() }
    
    $merged = @()
    $conflicts = @()
    $allIds = @{}
    
    # Índice por ID/código
    foreach ($item in $Base) {
        $id = if ($item.id) { $item.id } elseif ($item.codigo) { $item.codigo } elseif ($item.wbs) { $item.wbs } else { $null }
        if ($id) { $allIds[$id] = @{ Base = $item } }
    }
    foreach ($item in $Source) {
        $id = if ($item.id) { $item.id } elseif ($item.codigo) { $item.codigo } elseif ($item.wbs) { $item.wbs } else { $null }
        if ($id) {
            if (-not $allIds.ContainsKey($id)) { $allIds[$id] = @{} }
            $allIds[$id].Source = $item
        }
    }
    foreach ($item in $Current) {
        $id = if ($item.id) { $item.id } elseif ($item.codigo) { $item.codigo } elseif ($item.wbs) { $item.wbs } else { $null }
        if ($id) {
            if (-not $allIds.ContainsKey($id)) { $allIds[$id] = @{} }
            $allIds[$id].Current = $item
        }
    }
    
    # Merge por ID
    foreach ($id in $allIds.Keys) {
        $baseItem = $allIds[$id].Base
        $sourceItem = $allIds[$id].Source
        $currentItem = $allIds[$id].Current
        
        # Nuevo en SOURCE o CURRENT
        if ($null -eq $baseItem) {
            $merged += if ($sourceItem) { $sourceItem } else { $currentItem }
            continue
        }
        
        # Solo en BASE → eliminar si no está en SOURCE ni CURRENT
        if ($null -eq $sourceItem -and $null -eq $currentItem) {
            continue
        }
        
        # Merge del item
        $itemMerge = Merge-ThreeWay -Base $baseItem -Source $sourceItem -Current $currentItem
        $merged += $itemMerge.Merged
        if ($itemMerge.Conflicts) { $conflicts += $itemMerge.Conflicts | ForEach-Object { @{ Field = "$key[$id].$($_.Field)"; Conflicts = $_ } } }
    }
    
    return @{
        Value = $merged
        Conflicts = $conflicts
    }
}

function Save-ConflictReport {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)][array]$Conflicts,
        [string]$OutputFile = 'Sistema_Validacion_Web/data/tm01_master_data.conflicts.json'
    )
    $outputDir = Split-Path -Parent $OutputFile
    if (-not (Test-Path -LiteralPath $outputDir)) { New-Item -ItemType Directory -Path $outputDir -Force | Out-Null }
    $report = @{
        timestamp = (Get-Date).ToUniversalTime().ToString('o')
        conflictCount = $Conflicts.Count
        status = 'MANUAL_RESOLUTION_REQUIRED'
        conflicts = $Conflicts
        resolutionSteps = @(
            '1. Revisar cada conflicto en la lista',
            '2. Decidir valor a conservar (SOURCE vs CURRENT)',
            '3. Editar tm01_master_data.js según resolución',
            '4. Eliminar archivo .conflicts.json',
            '5. Reintentar sincronización'
        )
    }
    $report | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $OutputFile -Encoding UTF8
    $logCopy = "logs/merge_conflicts_$(Get-Date -Format 'yyyyMMdd_HHmmss').json"
    try { Copy-Item -LiteralPath $OutputFile -Destination $logCopy -Force } catch { }
    Write-LogEntry -Level 'WARN' -Message 'Reporte de conflictos generado' -Context @{ File = $OutputFile; Count = $Conflicts.Count }
    return $OutputFile
}

# Aliases de compatibilidad con documentación
Set-Alias -Name Get-ObjectDiff -Value Compare-ObjectDiff
Set-Alias -Name Invoke-ThreeWayMerge -Value Merge-ThreeWay

Export-ModuleMember -Function Compare-ObjectDiff, Resolve-Conflict, Merge-ThreeWay, Merge-ArrayField, Save-ConflictReport -Alias Get-ObjectDiff, Invoke-ThreeWayMerge
