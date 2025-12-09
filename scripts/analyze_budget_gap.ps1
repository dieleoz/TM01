
# Script to analyze Budget (Master) vs Detail (T05) Discrepancies
$wbsPath = "docs/datos_wbs_TM01_items.js"
$masterPath = "docs/data/tm01_master_data.js"

# 1. Parse Detailed Items from WBS File
$wbsContent = Get-Content $wbsPath -Raw -Encoding UTF8
$itemsMatch = [regex]::Match($wbsContent, 'items": \[\s*([\s\S]*?)\s*\]', [System.Text.RegularExpressions.RegexOptions]::Singleline)
$detailedSums = @{}

if ($itemsMatch.Success) {
    $rows = $itemsMatch.Groups[1].Value -split "},"
    foreach ($r in $rows) {
        if ($r -match "tipo:\s*'item'") {
            # Parse System
            $sysMatch = [regex]::Match($r, "sistema:\s*'([^']+)'")
            $totalMatch = [regex]::Match($r, "total:\s*'([\d\.]+)'")
            
            if ($sysMatch.Success -and $totalMatch.Success) {
                $sys = $sysMatch.Groups[1].Value
                $val = [double]$totalMatch.Groups[1].Value
                
                if (-not $detailedSums.ContainsKey($sys)) { $detailedSums[$sys] = 0 }
                $detailedSums[$sys] += $val
            }
        }
    }
}

# 2. Parse Executive Budget from Master Data
# The Master Data currently might have been overwritten by my previous rebuild script with old values?
# Or does it have the high values?
# Let's read the Resumen Logic directly or hardcode the known Executive values for comparison if file parsing fails.
# The user mentioned $1.89M for CCTV.
# I will try to parse tm01_master_data.js 'capexUSD' values.

$masterContent = Get-Content $masterPath -Raw -Encoding UTF8
$sysBlockMatch = [regex]::Match($masterContent, 'this\.data\.sistemas\s*=\s*\[([\s\S]*?)\];', [System.Text.RegularExpressions.RegexOptions]::Singleline)
$executiveSums = @{}

if ($sysBlockMatch.Success) {
    $blocks = $sysBlockMatch.Groups[1].Value -split "},"
    foreach ($b in $blocks) {
        $sysMatch = [regex]::Match($b, "sistema:\s*'([^']+)'")
        $capexMatch = [regex]::Match($b, "capexUSD:\s*([\d\.]+)")
        
        if ($sysMatch.Success -and $capexMatch.Success) {
            $sys = $sysMatch.Groups[1].Value
            $val = [double]$capexMatch.Groups[1].Value
            $executiveSums[$sys] = $val
        }
    }
}

# 3. Report
Write-Host "Reconciliación de Presupuesto (USD)" -ForegroundColor Cyan
Write-Host "---------------------------------------------------------------------------------"
Write-Host ("{0,-25} | {1,15} | {2,15} | {3,15}" -f "SISTEMA","EJECUTIVO (Master)","DETALLE (T05)","DIFERENCIA/AHORRO")
Write-Host "---------------------------------------------------------------------------------"

$totalExec = 0
$totalDetail = 0

foreach ($sys in $executiveSums.Keys) {
    $exec = $executiveSums[$sys]
    $det = if ($detailedSums.ContainsKey($sys)) { $detailedSums[$sys] } else { 0 }
    $diff = $exec - $det
    
    $totalExec += $exec
    $totalDetail += $det
    
    Write-Host ("{0,-25} | {1,15:N2} | {2,15:N2} | {3,15:N2}" -f $sys, $exec, $det, $diff)
}

Write-Host "---------------------------------------------------------------------------------"
Write-Host ("{0,-25} | {1,15:N2} | {2,15:N2} | {3,15:N2}" -f "TOTAL", $totalExec, $totalDetail, ($totalExec - $totalDetail))
Write-Host "---------------------------------------------------------------------------------"
