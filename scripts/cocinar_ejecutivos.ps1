<#
.SYNOPSIS
    Genera Reportes Ejecutivos HTML Profesionales (Recipe TM01 v1.0)
    Esta es la CAPA 5 (Servicios) de la metodología Punto 42 v3.0
.DESCRIPTION
    Transforma los Markdowns de sistemas en HTMLs branded con:
    - Diseño profesional TM01
    - Métricas destacadas
    - Certificación Punto 42
    - Responsive & Print-friendly
#>

$ErrorActionPreference = "Stop"

$scriptPath = $PSScriptRoot
$proyectRoot = Split-Path -Parent $scriptPath
$sourceDir = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS\7_SISTEMAS_EJECUTIVOS"
$outputDir = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML"
$cssTemplate = Join-Path $proyectRoot "templates\tm01_executive.css"

Write-Host "🧑‍🍳 INICIANDO 'COCINADO' DE EJECUTIVOS (Recipe TM01 v1.0)..." -ForegroundColor Yellow
Write-Host "Source: $sourceDir" -ForegroundColor Cyan
Write-Host "Output: $outputDir" -ForegroundColor Cyan

# Crear directorio de salida si no existe
if (-not (Test-Path -LiteralPath $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
    Write-Host "📂 Directorio creado: $outputDir" -ForegroundColor Green
}

# Verificar que existe el CSS template
if (-not (Test-Path -LiteralPath $cssTemplate)) {
    Write-Host "❌ ERROR: No se encontró el template CSS en: $cssTemplate" -ForegroundColor Red
    exit 1
}

# Leer CSS template
$cssContent = Get-Content -LiteralPath $cssTemplate -Raw -Encoding UTF8

# Obtener archivos Markdown
$files = Get-ChildItem -LiteralPath $sourceDir -Filter "*.md"

if ($files.Count -eq 0) {
    Write-Host "⚠️  No se encontraron archivos .md en $sourceDir" -ForegroundColor Yellow
    exit 0
}

Write-Host "📄 Archivos a procesar: $($files.Count)" -ForegroundColor Cyan
Write-Host ""

foreach ($file in $files) {
    $inputPath = $file.FullName
    $baseName = $file.BaseName
    $outputPath = Join-Path $outputDir "$baseName.html"
    
    Write-Host "🍳 Cocinando: $baseName.html..." -NoNewline
    
    try {
        # Leer contenido Markdown
        $markdownContent = Get-Content -LiteralPath $inputPath -Raw -Encoding UTF8
        
        # Extraer metadatos del Markdown (primera línea con #)
        $systemName = "Sistema TM01"
        if ($markdownContent -match '^#\s+(.+)') {
            $systemName = $matches[1]
        }
        
        # Determinar ID del sistema
        $systemId = "SISTEMA XX"
        if ($baseName -match 'SISTEMA_(\d+)') {
            $systemId = "SISTEMA $($matches[1])"
        }
        
        # Generar timestamp
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        
        # Convertir Markdown a HTML (solo body) usando Pandoc
        $tempMd = Join-Path $env:TEMP "temp_$baseName.md"
        $markdownContent | Set-Content -LiteralPath $tempMd -Encoding UTF8
        
        $htmlBody = & pandoc $tempMd -t html --no-highlight 2>&1
        
        if ($LASTEXITCODE -ne 0) {
            throw "Pandoc falló: $htmlBody"
        }
        
        Remove-Item -LiteralPath $tempMd -ErrorAction SilentlyContinue
        
        # Construir HTML completo con template
        $htmlOutput = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Metodología Punto 42 v3.0">
    <meta name="author" content="TM01 Troncal Magdalena">
    <title>$systemName - TM01 Executive Report</title>
    <style>
$cssContent
    </style>
</head>
<body>
    <!-- Header -->
    <header class="report-header">
        <div class="brand">🛣️ TM01 | Troncal Magdalena</div>
        <div class="system-badge">$systemId</div>
    </header>

    <!-- Metrics Bar -->
    <div class="metrics-bar">
        <div class="metric">
            <span class="label">Estado</span>
            <span class="value success">✅ CERTIFICADO</span>
        </div>
        <div class="metric">
            <span class="label">Versión</span>
            <span class="value">3.0</span>
        </div>
        <div class="metric">
            <span class="label">Metodología</span>
            <span class="value">Punto 42</span>
        </div>
        <div class="metric">
            <span class="label">Fuente</span>
            <span class="value">T05</span>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <div class="content">
$htmlBody
        </div>
    </div>

    <!-- Footer / Certification -->
    <footer class="certification">
        <div class="seal">
            <p><strong>🔒 CERTIFICACIÓN PUNTO 42 v3.0</strong></p>
            <p>Documento generado automáticamente desde Ingeniería de Detalle (T05)</p>
        </div>
        <p style="margin-top: 1.5rem;">Validación: <span class="timestamp">$timestamp</span></p>
        <p>APP Puerto Salgar - Barrancabermeja | Gerencia Técnica TM01</p>
    </footer>
</body>
</html>
"@
        
        # Escribir HTML final
        $htmlOutput | Set-Content -LiteralPath $outputPath -Encoding UTF8
        
        Write-Host " [OK] ✅" -ForegroundColor Green
        
    }
    catch {
        Write-Host " [ERROR] ❌" -ForegroundColor Red
        Write-Host "  Detalle: $_" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "✅ COCINADO COMPLETADO" -ForegroundColor Green
Write-Host "📁 Reportes disponibles en: $outputDir" -ForegroundColor Cyan
