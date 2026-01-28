<#
.SYNOPSIS
    Genera los Reportes Ejecutivos HTML a partir de los Markdowns de Sistemas, usando Pandoc.
    Esta es la CAPA 4 (Visualización) de la metodología Punto 42.
#>

$ErrorActionPreference = "Stop"

$scriptPath = $PSScriptRoot
$proyectRoot = Split-Path -Parent $scriptPath
$sourceDir = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS\7_SISTEMAS_EJECUTIVOS"
$outputDir = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML"

Write-Host "Source: $sourceDir"
Write-Host "Output: $outputDir"

# Crear directorio de salida si no existe
if (-not (Test-Path -LiteralPath $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
    Write-Host "📂 Directorio creado: $outputDir" -ForegroundColor Cyan
}

# Estilos CSS Corporativos (Clean & Professional)
$cssContent = @"
<style>
    body { font-family: 'Segoe UI', sans-serif; line-height: 1.6; color: #333; max-width: 800px; margin: 0 auto; padding: 40px; background-color: #f9f9f9; border: 1px solid #ddd; }
    h1 { color: #004085; border-bottom: 2px solid #004085; padding-bottom: 10px; margin-top: 0; }
    h2 { color: #0056b3; margin-top: 30px; border-bottom: 1px solid #ddd; }
    table { width: 100%; border-collapse: collapse; margin: 20px 0; background-color: white; }
    th, td { padding: 12px; border-bottom: 1px solid #dee2e6; text-align: left; }
    th { background-color: #e9ecef; }
    blockquote { background-color: #e8f4fd; border-left: 5px solid #007bff; padding: 15px; margin: 20px 0; }
    .footer { margin-top: 50px; padding-top: 20px; border-top: 1px solid #ccc; font-size: 12px; color: #666; text-align: center; }
    .timestamp { color: #28a745; font-weight: bold; }
</style>
"@

$cssFile = Join-Path $scriptPath "temp_style.css"
$cssContent | Set-Content -LiteralPath $cssFile -Encoding UTF8

$files = Get-ChildItem -LiteralPath $sourceDir -Filter "*.md"

Write-Host "🧑‍🍳 INICIANDO 'COCINADO' DE EJECUTIVOS (v3.0)..." -ForegroundColor Yellow

foreach ($file in $files) {
    $inputPath = $file.FullName
    $baseName = $file.BaseName
    $outputPath = Join-Path $outputDir "$baseName.html"
    
    $date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    
    $footerContent = @"
<div class='footer'>
    <p>Documento generado automáticamente por <strong>Metodologia Punto 42 v3.0</strong></p>
    <p>Fuente de Verdad: <strong>T05 (Ingeniería de Detalle)</strong> | Validación: <span class='timestamp'>$date</span></p>
    <p>APP Puerto Salgar - Barrancabermeja | TM01</p>
</div>
"@
    $footerFile = Join-Path $scriptPath "temp_footer.html"
    $footerContent | Set-Content -LiteralPath $footerFile -Encoding UTF8

    Write-Host "🍳 Cocinando: $baseName.html..." -NoNewline

    try {
        $pandocArgs = @(
            $inputPath,
            "-o", $outputPath,
            "-s",
            "--metadata", "title=$baseName",
            "-H", $cssFile,
            "-A", $footerFile
        )
        
        $process = Start-Process -FilePath "pandoc" -ArgumentList $pandocArgs -PassThru -Wait -NoNewWindow
        
        if ($process.ExitCode -eq 0) {
            Write-Host " [OK] ✅" -ForegroundColor Green
        }
        else {
            Write-Host " [FAIL] ❌ (Exit Code: $($process.ExitCode))" -ForegroundColor Red
        }
    }
    catch {
        Write-Host " [ERROR] ❌ $_" -ForegroundColor Red
    }
}

Remove-Item -LiteralPath $cssFile -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $footerFile -ErrorAction SilentlyContinue

Write-Host "DONE."
