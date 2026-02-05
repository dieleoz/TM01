<#
.SYNOPSIS
    Genera Reportes Ejecutivos HTML Profesionales (Recipe TM01 v1.0)
.DESCRIPTION
    Transforma los Markdowns de sistemas en HTMLs branded.
#>

$ErrorActionPreference = "Stop"

$scriptPath = $PSScriptRoot
$proyectRoot = Split-Path -Parent $scriptPath
$sourceDir = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS\7_SISTEMAS_EJECUTIVOS"
$outputDir = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML"
$cssTemplate = Join-Path $proyectRoot "templates\tm01_executive.css"

Write-Host "[START] COCINANDO EJECUTIVOS Y RFQS (Recipe TM01 v1.0)..." -ForegroundColor Yellow

if (-not (Test-Path -LiteralPath $outputDir)) {
    $null = New-Item -ItemType Directory -Path $outputDir -Force
}

if (-not (Test-Path -LiteralPath $cssTemplate)) {
    Write-Host "ERROR: No se encontro template CSS: $cssTemplate" -ForegroundColor Red
    exit 1
}

$cssContent = Get-Content -LiteralPath $cssTemplate -Raw -Encoding UTF8

# Obtener Markdowns de Sistemas y RFQs
$systemFiles = Get-ChildItem -LiteralPath $sourceDir -Filter "*.md"
$rfqSource = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS"
$rfqFiles = Get-ChildItem -LiteralPath $rfqSource -Filter "RFQ_*.md"
$files = $systemFiles + $rfqFiles

if ($files.Count -eq 0) {
    Write-Host "No se encontraron Markdowns para procesar." -ForegroundColor Yellow
    exit 0
}

Write-Host "Proyectando $($systemFiles.Count) Sistemas y $($rfqFiles.Count) RFQs..." -ForegroundColor Cyan

foreach ($file in $files) {
    $inputPath = $file.FullName
    $baseName = $file.BaseName
    $outputPath = Join-Path $outputDir "$baseName.html"
    
    Write-Host "Cocinando: $baseName.html..." -NoNewline
    
    try {
        $markdownContent = Get-Content -LiteralPath $inputPath -Raw -Encoding UTF8
        
        $systemName = "Sistema TM01"
        if ($markdownContent -match '^#\s+(.+)') { $systemName = $matches[1] }
        
        $systemId = "SISTEMA XX"
        if ($baseName -match 'SISTEMA_(\d+)') { $systemId = "SISTEMA $($matches[1])" }
        elseif ($baseName -match 'RFQ_(\d+)') { $systemId = "RFQ $($matches[1])" }
        
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        
        # Pandoc via STDIN
        $stdin = [System.Text.Encoding]::UTF8.GetBytes($markdownContent)
        $psi = New-Object System.Diagnostics.ProcessStartInfo
        $psi.FileName = "pandoc"
        $psi.Arguments = "-f markdown-yaml_metadata_block+emoji -t html --syntax-highlighting=none"
        $psi.RedirectStandardInput = $true; $psi.RedirectStandardOutput = $true; $psi.RedirectStandardError = $true; $psi.UseShellExecute = $false
        $psi.StandardOutputEncoding = [System.Text.Encoding]::UTF8; $psi.StandardErrorEncoding = [System.Text.Encoding]::UTF8; $psi.CreateNoWindow = $true
        
        $process = New-Object System.Diagnostics.Process
        $process.StartInfo = $psi
        $process.Start() | Out-Null
        $process.StandardInput.BaseStream.Write($stdin, 0, $stdin.Length)
        $process.StandardInput.Close()
        
        $htmlBody = $process.StandardOutput.ReadToEnd()
        $errorOutput = $process.StandardError.ReadToEnd()
        $process.WaitForExit()
        
        if ($process.ExitCode -ne 0) { throw "Pandoc fallo: $errorOutput" }
        
        $htmlOutput = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$systemName - TM01 Executive Report</title>
    <style>
$cssContent
    </style>
</head>
<body>
    <header class="report-header">
        <div class="brand">TM01 | Troncal Magdalena</div>
        <div class="system-badge">$systemId</div>
    </header>
    <div class="metrics-bar">
        <div class="metric"><span class="label">Estado</span><span class="value success">CERTIFICADO</span></div>
        <div class="metric"><span class="label">Version</span><span class="value">3.0</span></div>
        <div class="metric"><span class="label">Metodologia</span><span class="value">Punto 42</span></div>
        <div class="metric"><span class="label">Fuente</span><span class="value">T05</span></div>
    </div>
    <div class="container"><div class="content">$htmlBody</div></div>
    <footer class="certification">
        <div class="seal">
            <p><strong>CERTIFICACION PUNTO 42 v3.1</strong></p>
            <p>Documento generado automaticamente desde Ingenieria de Detalle (T05)</p>
        </div>
        <p style="margin-top: 1.5rem;">Validacion: <span class="timestamp">$timestamp</span></p>
        <p>APP Puerto Salgar - Barrancabermeja | Gerencia Tecnica TM01</p>
    </footer>
</body>
</html>
"@
        [System.IO.File]::WriteAllText($outputPath, $htmlOutput, [System.Text.UTF8Encoding]::new($false))
        Write-Host " [OK]" -ForegroundColor Green
    }
    catch {
        Write-Host " [ERROR]" -ForegroundColor Red
        Write-Host "  Detalle: $_" -ForegroundColor Red
    }
}

Write-Host "COCINADO COMPLETADO" -ForegroundColor Green
