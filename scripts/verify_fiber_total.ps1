$wbsPath = "docs\datos_wbs_TM01_items.js"
$content = Get-Content $wbsPath -Raw -Encoding UTF8

# Extract items for Telecomunicaciones (System 6)
# Pattern: { item: '6.1.x', ... sistema: 'Telecomunicaciones', ... total: '1234.56' }
$pattern = "\{ item: '6\.1\.\d+', .*? sistema: 'Telecomunicaciones', .*? total: '([0-9.]+)' \},"
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

Write-Host "Found $count Fiber items."
Write-Host "Total Calculated: $total"

# Expected roughly 7.66 million
$expectedLow = 7500000
$expectedHigh = 7700000

if ($total -gt $expectedLow -and $total -lt $expectedHigh) {
    Write-Host "✅ VERIFICATION SUCCESSFUL: Total is within range (~$total)" -ForegroundColor Green
}
else {
    Write-Host "❌ VERIFICATION FAILED: Total $total out of expected range ($expectedLow - $expectedHigh)" -ForegroundColor Red
}
