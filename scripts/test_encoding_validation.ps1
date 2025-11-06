# Test script para validación de encoding HTML
Import-Module .\scripts\modules\EncodingValidator.psm1 -Force

Write-Host "`n=== Validación de Encoding HTML ===" -ForegroundColor Cyan
$result = Test-AllHtmlEncoding

Write-Host "`nResultado:" -ForegroundColor Yellow
Write-Host "  Total archivos: $($result.Total)"
Write-Host "  Válidos: $($result.Valid)" -ForegroundColor Green
Write-Host "  Inválidos: $($result.Invalid)" -ForegroundColor $(if ($result.Invalid -gt 0) { 'Red' } else { 'Green' })

if ($result.Invalid -gt 0) {
    Write-Host "`nArchivos con problemas de encoding:" -ForegroundColor Red
    foreach ($issue in $result.Issues) {
        Write-Host "  - $($issue.File)" -ForegroundColor Yellow
        Write-Host "    Patrón: $($issue.Pattern)" -ForegroundColor Gray
        Write-Host "    Línea: $($issue.Line)" -ForegroundColor Gray
    }
} else {
    Write-Host "`n✅ Todos los archivos HTML tienen encoding UTF-8 correcto" -ForegroundColor Green
}

