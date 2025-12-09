$content = Get-Content "docs/datos_wbs_TM01_items.js" -Raw
# Strip the JS variable assignment to get pure JSON
$jsonString = $content -replace "^window\.wbsDataGlobal = window\.datos_wbs = ", "" -replace ";\s*$", ""
$data = $jsonString | ConvertFrom-Json

# Filter for PMV items (System "PMV")
$items = $data.items | Where-Object { $_.sistema -eq "PMV" }

$totalUSD = 0

foreach ($item in $items) {
    if ($item.total) {
        # Convert total string (with commas?) to double
        # Assuming format is simple number or string with dot decimal
        $val = $item.total -replace ",", "" 
        $totalUSD += [double]$val
    }
}

Write-Host "Found $($items.Count) items for PMV."
Write-Host "Total USD: $([string]::Format('{0:N2}', $totalUSD))"
