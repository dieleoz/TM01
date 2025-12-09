
$content = Get-Content "docs/datos_wbs_TM01_items.js" -Raw -Encoding UTF8
# Extract content inside items: [...]
$match = [regex]::Match($content, 'items": \[\s*([\s\S]*?)\s*\]', [System.Text.RegularExpressions.RegexOptions]::Singleline)
if ($match.Success) {
    $jsonItems = $match.Groups[1].Value 
    # This is not valid JSON because keys are not quoted sometimes.
    # regex parse lines
    $lines = $jsonItems -split "},"
    $totalUSD = 0
    $totalCOP = 0
    $count = 0
    
    foreach ($line in $lines) {
        if ($line -match "sistema:\s*'CCTV'" -and $line -match "tipo:\s*'item'") {
            $totalMatch = [regex]::Match($line, "total:\s*'([\d\.]+)'")
            if ($totalMatch.Success) {
                $val = [double]$totalMatch.Groups[1].Value
                $totalUSD += $val
                $count++
            }
        }
    }
    
    Write-Host "Found $count items."
    Write-Host "Total USD: $($totalUSD.ToString('N0'))"
} else {
    Write-Error "Could not parse items"
}
