function Get-T05L3Summary {
    param(
        [string]$Path = 'V. Ingenieria de Detalle/03_T05_Ingenieria_Detalle_Equipos_L3_v1.0.md'
    )
    if (-not (Test-Path -LiteralPath $Path)) { return $null }
    $txt = Get-Content -LiteralPath $Path -Raw -Encoding UTF8
    $result = @{}
    if ($txt -match 'Total Switches L3\s*\|\s*(?<num>\d+)') { $result.TotalSwitchesL3 = [int]$Matches['num'] }
    if ($txt -match 'CAPEX Total L3\s*\|\s*\*\*\$(?<capex>[0-9,\.]+)') { $result.CAPEXTotalL3USD = $Matches['capex'] }
    return [PSCustomObject]$result
}

function Get-T05FiberQuantitiesFromRFQCsv {
    param(
        [string]$CsvPath = 'X. Entregables Consolidados/RFQ-001_ANEXO_J_CANTIDADES_PRESUPUESTO.csv'
    )
    if (-not (Test-Path -LiteralPath $CsvPath)) { return @() }
    $rows = Import-Csv -LiteralPath $CsvPath
    return $rows | ForEach-Object {
        [PSCustomObject]@{ ID=$_.ID; Nombre=$_.Nombre; Und=$_.Und; Cantidad=[int64]$_.Cantidad }
    }
}

Export-ModuleMember -Function Get-T05L3Summary,Get-T05FiberQuantitiesFromRFQCsv
