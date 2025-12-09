$wbsPath = "docs\datos_wbs_TM01_items.js"
$content = Get-Content $wbsPath -Raw -Encoding UTF8

# Extract items for PMV
# We look for lines like: { item: '4.1.x', ..., total: '1234.56' },
$pattern = "\{ item: '4\.1\.\d+', .*? total: '([0-9.]+)' \},"
$matches = [regex]::Matches($content, $pattern)

$total = 0
$count = 0

foreach ($match in $matches) {
    $val = [double]$match.Groups[1].Value
    $total += $val
    $count++
}

Write-Host "Found $count PMV items."
Write-Host "Total Calculated: $total"
$expected = 4187284.64
$diff = $total - $expected

if ([Math]::Abs($diff) -lt 0.01) {
    Write-Host "✅ VERIFICATION SUCCESSFUL: Matches $expected" -ForegroundColor Green
}
else {
    Write-Host "❌ VERIFICATION FAILED: Expected $expected, Got $total (Diff: $diff)" -ForegroundColor Red
}
