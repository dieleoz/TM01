$wbsPath = "docs\datos_wbs_TM01_items.js"
$content = Get-Content $wbsPath -Raw -Encoding UTF8

# Extract items for WIM (System 7)
# Pattern: { item: '7.1.x', ... sistema: 'WIM', ... total: '1234.56' }
# Note: allowing optional comma at the end for the last item
$pattern = "\{ item: '7\.1\.\d+', .*? sistema: 'WIM', .*? total: '([0-9.]+)' \},?"
$matches = [regex]::Matches($content, $pattern)

$total = 0
$count = 0

foreach ($match in $matches) {
    if ($match.Groups[1].Value -match "[0-9.]+") {
        $val = [double]$match.Groups[1].Value
        $total += $val
        $count++
    }
}

Write-Host "Found $count WIM items."
Write-Host "Total Calculated: $total"

# Expected roughly 523,538.79
$expectedLow = 523400
$expectedHigh = 523700

if ($total -gt $expectedLow -and $total -lt $expectedHigh) {
    Write-Host "✅ VERIFICATION SUCCESSFUL: Total is within range (~$total)" -ForegroundColor Green
}
else {
    Write-Host "❌ VERIFICATION FAILED: Total $total out of expected range ($expectedLow - $expectedHigh)" -ForegroundColor Red
}
