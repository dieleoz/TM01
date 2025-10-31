#requires -Version 5.1
[CmdletBinding()]
param(
    [int]$MaxDTs = 10,
    [switch]$ContinueOnError
)

$modulesPath = Join-Path -Path $PSScriptRoot -ChildPath 'modules'
Import-Module (Join-Path $modulesPath 'Logger.psm1') -Force
Import-Module (Join-Path $modulesPath 'DTProcessor.psm1') -Force

Initialize-Logger -LogPrefix 'dt_processing'

Write-Host "`n🔄 PROCESADOR DE COLA DE DTs" -ForegroundColor Cyan
Write-Host ('=' * 80) -ForegroundColor Gray

Initialize-DTQueue
$summary = Start-DTBatchProcessing -MaxDTs $MaxDTs -ContinueOnError:$ContinueOnError

Write-Host "`n📊 RESUMEN:" -ForegroundColor Cyan
Write-Host ("   Procesadas: {0}" -f $summary.Processed) -ForegroundColor White
Write-Host ("   Exitosas:  {0}" -f $summary.Succeeded) -ForegroundColor Green
Write-Host ("   Fallidas:  {0}" -f $summary.Failed) -ForegroundColor ($(if($summary.Failed -gt 0){'Red'} else {'Gray'}))

if ($summary.Failed -gt 0) {
    Write-Host "`n⚠️  Revisar DTs fallidas en: VII. Documentos Transversales/DTs/failed/" -ForegroundColor Yellow
}


