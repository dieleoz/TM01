
$content = Get-Content "docs/datos_wbs_TM01_items.js" -Raw -Encoding UTF8
$match = [regex]::Match($content, 'items": \[\s*([\s\S]*?)\s*\]', [System.Text.RegularExpressions.RegexOptions]::Singleline)
if ($match.Success) {
    $jsonItems = $match.Groups[1].Value 
    $lines = $jsonItems -split "},"
    $totalUSD = 0
    $count = 0
    
    foreach ($line in $lines) {
        if ($line -match "sistema:\s*'Estaciones Meteorológicas'" -and $line -match "tipo:\s*'item'") {
            $totalMatch = [regex]::Match($line, "total:\s*'([\d\.]+)'")
            if ($totalMatch.Success) {
                $val = [double]$totalMatch.Groups[1].Value
                $totalUSD += $val
                $count++
            }
        }
    }
    
    Write-Host "Found $count items for Weather Stations."
    Write-Host "Total USD: $($totalUSD.ToString('N2'))"
}
