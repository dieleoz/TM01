<#
.SYNOPSIS
    Generates modular validation files (JS + HTML) from DICTAMEN_JURIDICO markdown files.

.DESCRIPTION
    This script reads all DICTAMEN_JURIDICO_*.md files from "VII. Documentos Transversales/"
    and generates:
    - Individual JS files per subsystem in docs/data/validaciones/
    - Standalone HTML dictamenes in docs/dictamenes/

.VERSION
    2.0 - Modular Validation System

.DATE
    2026-01-28

.AUTHOR
    TM01 Validation Agent
#>

$ErrorActionPreference = "Stop"

# Configuration
$sourceDir = "VII. Documentos Transversales"
$jsOutputDir = "docs/data/validaciones"
$htmlOutputDir = "docs/dictamenes"
$dateGenerated = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Write-Host "`n🔄 Generando validaciones modulares (v2.0)..." -ForegroundColor Cyan
Write-Host "   Fecha: $dateGenerated" -ForegroundColor Gray

# Create output directories if they don't exist
if (-not (Test-Path $jsOutputDir)) {
    New-Item -ItemType Directory -Path $jsOutputDir -Force | Out-Null
    Write-Host "   📁 Creado directorio: $jsOutputDir" -ForegroundColor Yellow
}

if (-not (Test-Path $htmlOutputDir)) {
    New-Item -ItemType Directory -Path $htmlOutputDir -Force | Out-Null
    Write-Host "   📁 Creado directorio: $htmlOutputDir" -ForegroundColor Yellow
}

# Find all dictamen files
$dictamenFiles = Get-ChildItem -Path $sourceDir -Filter "DICTAMEN_JURIDICO_*.md" -ErrorAction SilentlyContinue

if ($null -eq $dictamenFiles -or $dictamenFiles.Count -eq 0) {
    Write-Host "⚠️ No se encontraron archivos DICTAMEN_JURIDICO_*.md en $sourceDir" -ForegroundColor Yellow
    Write-Host "   Buscando en subcarpetas..." -ForegroundColor Gray
    $dictamenFiles = Get-ChildItem -Path $sourceDir -Filter "DICTAMEN_JURIDICO_*.md" -Recurse -ErrorAction SilentlyContinue
}

if ($null -eq $dictamenFiles -or $dictamenFiles.Count -eq 0) {
    Write-Host "❌ No se encontraron dictámenes. Verifique que existan archivos DICTAMEN_JURIDICO_*.md" -ForegroundColor Red
    exit 1
}

Write-Host "📄 Encontrados $($dictamenFiles.Count) dictámenes" -ForegroundColor Green

$jsFilesGenerated = 0
$htmlFilesGenerated = 0

foreach ($file in $dictamenFiles) {
    # Extract system name from filename (DICTAMEN_JURIDICO_SOS_v1.0.md -> SOS)
    $fileName = $file.BaseName
    $systemName = $fileName -replace "DICTAMEN_JURIDICO_", "" -replace "_v\d+\.\d+", ""

    Write-Host "  📋 Procesando $systemName..." -ForegroundColor White

    # Read file content
    $content = Get-Content $file.FullName -Raw -Encoding UTF8

    # Extract sections using HTML markers
    $sections = @{
        full = ""
        contractual = ""
        technical = ""
        financial = ""
        risks = ""
    }

    # Define marker patterns
    $markers = @("full", "contractual", "technical", "financial", "risks")

    foreach ($marker in $markers) {
        $pattern = "<!-- SECCIÓN: $marker -->([\s\S]*?)(?=<!-- SECCIÓN:|$)"
        if ($content -match $pattern) {
            $sections[$marker] = $Matches[1].Trim()
        }
    }

    # If no markers found, use the entire content as 'full'
    if ([string]::IsNullOrWhiteSpace($sections.full) -and
        [string]::IsNullOrWhiteSpace($sections.contractual) -and
        [string]::IsNullOrWhiteSpace($sections.technical) -and
        [string]::IsNullOrWhiteSpace($sections.financial) -and
        [string]::IsNullOrWhiteSpace($sections.risks)) {
        Write-Host "    ⚠️ Sin marcadores HTML, usando contenido completo" -ForegroundColor Yellow
        $sections.full = $content
    }

    # Escape content for JavaScript
    function Escape-ForJS {
        param([string]$text)
        if ([string]::IsNullOrEmpty($text)) { return "" }
        $text = $text -replace "\\", "\\\\"
        $text = $text -replace "'", "\'"
        $text = $text -replace "`r`n", "\n"
        $text = $text -replace "`n", "\n"
        $text = $text -replace "`r", "\n"
        return $text
    }

    # Generate individual JS file
    $jsContent = @"
/**
 * Validaciones para sistema: $systemName
 * Generado automáticamente por generar_validaciones_modular.ps1
 * Fecha: $dateGenerated
 *
 * NO EDITAR MANUALMENTE - Este archivo se regenera automáticamente
 */

const validaciones_$systemName = {
  system: '$systemName',
  generatedAt: '$dateGenerated',
  sections: {
    full: '$(Escape-ForJS $sections.full)',
    contractual: '$(Escape-ForJS $sections.contractual)',
    technical: '$(Escape-ForJS $sections.technical)',
    financial: '$(Escape-ForJS $sections.financial)',
    risks: '$(Escape-ForJS $sections.risks)'
  }
};

// Exportar para módulos Node.js
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validaciones_$systemName;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validaciones_$systemName = validaciones_$systemName;
  // También agregar al objeto global de validaciones
  if (!window.validacionesModular) {
    window.validacionesModular = {};
  }
  window.validacionesModular['$systemName'] = validaciones_$systemName;
}
"@

    $jsFilePath = Join-Path $jsOutputDir "validaciones_$systemName.js"
    $jsContent | Out-File -FilePath $jsFilePath -Encoding UTF8 -Force
    $jsFileSize = [math]::Round((Get-Item $jsFilePath).Length / 1KB, 2)
    Write-Host "    ✅ Generado: validaciones_$systemName.js ($jsFileSize KB)" -ForegroundColor Green
    $jsFilesGenerated++

    # Generate standalone HTML dictamen
    $htmlContent = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dictamen Jurídico-Técnico: $systemName - TM01</title>
    <style>
        :root {
            --primary-color: #1a365d;
            --secondary-color: #2c5282;
            --accent-color: #3182ce;
            --success-color: #38a169;
            --warning-color: #dd6b20;
            --danger-color: #e53e3e;
            --text-color: #2d3748;
            --bg-color: #f7fafc;
            --border-color: #e2e8f0;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            line-height: 1.6;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 30px 40px;
        }

        header h1 {
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        header .meta {
            font-size: 0.9rem;
            opacity: 0.9;
        }

        header .badge {
            display: inline-block;
            background: var(--success-color);
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 0.8rem;
            margin-top: 10px;
        }

        .content {
            padding: 40px;
        }

        .section {
            margin-bottom: 30px;
            padding: 25px;
            background: #f8fafc;
            border-radius: 8px;
            border-left: 4px solid var(--accent-color);
        }

        .section h2 {
            color: var(--primary-color);
            font-size: 1.3rem;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid var(--border-color);
        }

        .section h3 {
            color: var(--secondary-color);
            font-size: 1.1rem;
            margin: 20px 0 10px 0;
        }

        .section p {
            margin-bottom: 15px;
        }

        .section ul, .section ol {
            margin-left: 20px;
            margin-bottom: 15px;
        }

        .section li {
            margin-bottom: 8px;
        }

        .section blockquote {
            background: #edf2f7;
            border-left: 4px solid var(--accent-color);
            padding: 15px 20px;
            margin: 15px 0;
            font-style: italic;
        }

        .section table {
            width: 100%;
            border-collapse: collapse;
            margin: 15px 0;
        }

        .section th, .section td {
            padding: 12px 15px;
            text-align: left;
            border: 1px solid var(--border-color);
        }

        .section th {
            background: var(--primary-color);
            color: white;
        }

        .section tr:nth-child(even) {
            background: #f7fafc;
        }

        .section code {
            background: #edf2f7;
            padding: 2px 6px;
            border-radius: 4px;
            font-family: 'Consolas', monospace;
        }

        .section pre {
            background: #2d3748;
            color: #e2e8f0;
            padding: 20px;
            border-radius: 8px;
            overflow-x: auto;
            margin: 15px 0;
        }

        .section pre code {
            background: none;
            color: inherit;
        }

        .section strong {
            color: var(--primary-color);
        }

        .section-contractual { border-left-color: #805ad5; }
        .section-technical { border-left-color: #38b2ac; }
        .section-financial { border-left-color: #d69e2e; }
        .section-risks { border-left-color: #e53e3e; }

        footer {
            background: var(--primary-color);
            color: white;
            padding: 20px 40px;
            text-align: center;
            font-size: 0.85rem;
        }

        footer a {
            color: #90cdf4;
        }

        .print-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--accent-color);
            color: white;
            border: none;
            padding: 15px 25px;
            border-radius: 50px;
            cursor: pointer;
            font-size: 1rem;
            box-shadow: 0 4px 15px rgba(49, 130, 206, 0.4);
            transition: all 0.3s ease;
        }

        .print-btn:hover {
            background: var(--secondary-color);
            transform: translateY(-2px);
        }

        @media print {
            .print-btn { display: none; }
            body { padding: 0; }
            .container { box-shadow: none; }
        }

        @media (max-width: 768px) {
            header, .content, footer { padding: 20px; }
            .section { padding: 15px; }
        }
    </style>
    <!-- Include marked.js for Markdown rendering -->
    <script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
</head>
<body>
    <div class="container">
        <header>
            <h1>📋 Dictamen Jurídico-Técnico: Sistema $systemName</h1>
            <div class="meta">
                <strong>Proyecto:</strong> TM01 Troncal Magdalena |
                <strong>Generado:</strong> $dateGenerated
            </div>
            <span class="badge">✅ Certificado para Defensa Contractual</span>
        </header>

        <div class="content" id="dictamen-content">
            <div class="loading">Cargando contenido...</div>
        </div>

        <footer>
            <p>Documento generado automáticamente por Sistema de Validaciones TM01 v2.0</p>
            <p>Proyecto APP Puerto Salgar - Barrancabermeja</p>
        </footer>
    </div>

    <button class="print-btn" onclick="window.print()">🖨️ Imprimir</button>

    <script>
        // Contenido del dictamen (embebido)
        const dictamenContent = {
            full: `$(($sections.full -replace '`', '``' -replace '\$', '`$') -replace '"', '\"')`,
            contractual: `$(($sections.contractual -replace '`', '``' -replace '\$', '`$') -replace '"', '\"')`,
            technical: `$(($sections.technical -replace '`', '``' -replace '\$', '`$') -replace '"', '\"')`,
            financial: `$(($sections.financial -replace '`', '``' -replace '\$', '`$') -replace '"', '\"')`,
            risks: `$(($sections.risks -replace '`', '``' -replace '\$', '`$') -replace '"', '\"')`
        };

        function renderContent() {
            const container = document.getElementById('dictamen-content');
            let html = '';

            // Section titles and CSS classes
            const sectionInfo = {
                full: { title: 'Resumen Ejecutivo', cssClass: '' },
                contractual: { title: 'Fundamento Contractual', cssClass: 'section-contractual' },
                technical: { title: 'Especificaciones Técnicas', cssClass: 'section-technical' },
                financial: { title: 'Impacto Financiero', cssClass: 'section-financial' },
                risks: { title: 'Riesgos y Mitigaciones', cssClass: 'section-risks' }
            };

            for (const [key, content] of Object.entries(dictamenContent)) {
                if (content && content.trim()) {
                    const info = sectionInfo[key];
                    const renderedContent = typeof marked !== 'undefined'
                        ? marked.parse(content)
                        : content.replace(/\n/g, '<br>');

                    html += `
                        <div class="section `${info.cssClass}`">
                            <h2>`${info.title}`</h2>
                            `${renderedContent}`
                        </div>
                    `;
                }
            }

            container.innerHTML = html || '<p>No hay contenido disponible.</p>';
        }

        // Render when DOM is ready
        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', renderContent);
        } else {
            renderContent();
        }
    </script>
</body>
</html>
"@

    $htmlFilePath = Join-Path $htmlOutputDir "DICTAMEN_JURIDICO_$systemName.html"
    $htmlContent | Out-File -FilePath $htmlFilePath -Encoding UTF8 -Force
    $htmlFileSize = [math]::Round((Get-Item $htmlFilePath).Length / 1KB, 2)
    Write-Host "    ✅ Generado: DICTAMEN_JURIDICO_$systemName.html ($htmlFileSize KB)" -ForegroundColor Green
    $htmlFilesGenerated++
}

# Generate index file for all validations
$indexContent = @"
/**
 * Índice de Validaciones Modulares - TM01
 * Generado automáticamente por generar_validaciones_modular.ps1
 * Fecha: $dateGenerated
 *
 * NO EDITAR MANUALMENTE - Este archivo se regenera automáticamente
 */

const validacionesIndex = {
  generatedAt: '$dateGenerated',
  systems: [
"@

foreach ($file in $dictamenFiles) {
    $fileName = $file.BaseName
    $systemName = $fileName -replace "DICTAMEN_JURIDICO_", "" -replace "_v\d+\.\d+", ""
    $indexContent += "    '$systemName',`n"
}

$indexContent += @"
  ],
  getSystem: function(name) {
    return window.validacionesModular ? window.validacionesModular[name] : null;
  }
};

// Exponer al objeto window
if (typeof window !== 'undefined') {
  window.validacionesIndex = validacionesIndex;
}
"@

$indexFilePath = Join-Path $jsOutputDir "validaciones_index.js"
$indexContent | Out-File -FilePath $indexFilePath -Encoding UTF8 -Force

Write-Host "`n✅ Proceso completado" -ForegroundColor Green
Write-Host "📊 Archivos JS generados: $jsFilesGenerated en $jsOutputDir" -ForegroundColor Cyan
Write-Host "📊 Archivos HTML generados: $htmlFilesGenerated en $htmlOutputDir" -ForegroundColor Cyan
Write-Host "📊 Índice generado: validaciones_index.js" -ForegroundColor Cyan
