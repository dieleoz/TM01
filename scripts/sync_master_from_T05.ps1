param(
    [switch]$DryRun
)
$ErrorActionPreference = 'Stop'

$modulesPath = Join-Path -Path (Split-Path -Parent $PSCommandPath) -ChildPath 'modules'
$t05parser  = Join-Path $modulesPath 'T05Parser.psm1'
$updater    = Join-Path $modulesPath 'MasterUpdater.psm1'
if (Test-Path $t05parser) { Import-Module $t05parser -Force }
if (Test-Path $updater)   { Import-Module $updater -Force }

function Write-Log([string]$msg){ $ts=(Get-Date).ToString('yyyy-MM-dd HH:mm:ss'); Write-Host "[$ts] $msg" }

Write-Log 'Sincronizando master desde T05...'
$updates = @{}

# L3 summary
$l3 = $null
if (Get-Command Get-T05L3Summary -ErrorAction SilentlyContinue) { $l3 = Get-T05L3Summary }
if ($l3 -and $l3.CAPEXTotalL3USD) { $updates['CAPEX_L3_USD'] = $l3.CAPEXTotalL3USD }
if ($l3 -and $l3.TotalSwitchesL3) { $updates['TOTAL_SWITCHES_L3'] = [string]$l3.TotalSwitchesL3 }

# FO quantities note (solo log por ahora)
$foCsv = 'X. Entregables Consolidados/RFQ-001_ANEXO_J_CANTIDADES_PRESUPUESTO.csv'
if (Test-Path -LiteralPath $foCsv) { $updates['FO_CSV_SYNCED'] = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss') }

if ($updates.Count -gt 0) {
    Update-TM01MasterData -Updates $updates -DryRun:$DryRun
    Write-Log "Actualización planificada en master: $($updates.Keys -join ', ')"
}else{
    Write-Log 'No se detectaron updates de T05.'
}

Write-Log 'Sync master desde T05 finalizado.'
