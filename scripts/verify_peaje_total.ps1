$wbsPath = "docs\datos_wbs_TM01_items.js"
$content = Get-Content $wbsPath -Raw -Encoding UTF8

# Extract items for Peaje (System 8)
# Pattern: { item: '8.1.x', ... sistema: 'Peaje', ... total: '1234.56' }
$pattern = "\{ item: '8\.1\.\d+', .*? sistema: 'Peaje', .*? total: '([0-9.]+)' \},?"
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

Write-Host "Found $count Peaje items."
Write-Host "Total Calculated: $total"

# Expected 1,806,218.94
$expectedLow = 1806000
$expectedHigh = 1807000

if ($total -gt $expectedLow -and $total -lt $expectedHigh) {
    Write-Host "✅ VERIFICATION SUCCESSFUL: Total is within range (~$total)" -ForegroundColor Green
}
else {
    Write-Host "❌ VERIFICATION FAILED: Total $total out of expected range ($expectedLow - $expectedHigh)" -ForegroundColor Red
}
