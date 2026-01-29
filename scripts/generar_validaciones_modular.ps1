<#
.SYNOPSIS
    Genera archivos de validación modulares (v2.0) - Un archivo JS por subsistema

.DESCRIPTION
    Lee archivos DICTAMEN_JURIDICO_[SISTEMA]_v1.0.md y genera:
    1. Un archivo JS por subsistema en docs/data/validaciones/
    2. Un archivo HTML standalone por subsistema en docs/dictamenes/

.EXAMPLE
    .\scripts\generar_validaciones_modular.ps1
#>

param(
    [string]$InputPath = "VII. Documentos Transversales",
    [string]$OutputJsPath = "docs\data\validaciones",
    [string]$OutputHtmlPath = "docs\dictamenes",
    [string]$TemplatePath = "scripts\templates\dictamen_template.html"
)

Write-Host "🔄 Generando validaciones modulares (v2.0)..." -ForegroundColor Cyan

# Función para extraer sección entre marcadores
function Get-SeccionPorMarcador {
    param(
        [string]$Contenido,
        [string]$Marcador
    )
    
    $patron = "(?s)<!-- SECCIÓN: $Marcador -->(.+?)(?=<!-- SECCIÓN:|---\s*\*\*Documento preparado|$)"
    if ($Contenido -match $patron) {
        $seccion = $matches[1].Trim()
        # Escapar para JavaScript
        $seccion = $seccion -replace "'", "\'" -replace "`r`n", "\n" -replace "`n", "\\n"
        return $seccion
    }
    return ""
}

# Función para convertir Markdown a HTML básico
function ConvertTo-HtmlBasic {
    param([string]$Markdown)
    
    # Conversión básica de Markdown a HTML
    $html = $Markdown
    
    # Headers
    $html = $html -replace '(?m)^### (.+)$', '<h3>$1</h3>'
    $html = $html -replace '(?m)^## (.+)$', '<h2>$1</h2>'
    $html = $html -replace '(?m)^# (.+)$', '<h1>$1</h1>'
    
    # Bold y cursiva
    $html = $html -replace '\*\*(.+?)\*\*', '<strong>$1</strong>'
    $html = $html -replace '\*(.+?)\*', '<em>$1</em>'
    
    # Listas
    $html = $html -replace '(?m)^- (.+)$', '<li>$1</li>'
    $html = $html -replace '(<li>.*</li>)', '<ul>$1</ul>'
    
    # Tablas (básico)
    $html = $html -replace '\|', '</td><td>'
    
    # Párrafos
    $html = $html -replace '(?m)^(?!<[hul]|$)(.+)$', '<p>$1</p>'
    
    return $html
}

# Crear directorios si no existen
@($OutputJsPath, $OutputHtmlPath) | ForEach-Object {
    if (-not (Test-Path $_)) {
        New-Item -ItemType Directory -Path $_ -Force | Out-Null
        Write-Host "  📁 Creado directorio: $_" -ForegroundColor Green
    }
}

# Leer todos los dictámenes
$dictamenes = Get-ChildItem -Path $InputPath -Filter "DICTAMEN_JURIDICO_*.md" -ErrorAction SilentlyContinue

if ($dictamenes.Count -eq 0) {
    Write-Host "⚠️  No se encontraron dictámenes en $InputPath" -ForegroundColor Yellow
    exit 1
}

Write-Host "📄 Encontrados $($dictamenes.Count) dictámenes" -ForegroundColor Green

foreach ($dictamen in $dictamenes) {
    # Extraer nombre del sistema
    $sistema = $dictamen.BaseName -replace 'DICTAMEN_JURIDICO_', '' -replace '_v\d+\.\d+', ''
    
    Write-Host "  📋 Procesando $sistema..." -ForegroundColor Gray
    
    $contenido = Get-Content $dictamen.FullName -Raw -Encoding UTF8
    
    # ========================================
    # 1. GENERAR ARCHIVO JS MODULAR
    # ========================================
    
    $full = Get-SeccionPorMarcador $contenido "full"
    $contractual = Get-SeccionPorMarcador $contenido "contractual"
    $technical = Get-SeccionPorMarcador $contenido "technical"
    $financial = Get-SeccionPorMarcador $contenido "financial"
    $risks = Get-SeccionPorMarcador $contenido "risks"
    
    $jsContent = @"
// AUTO-GENERADO por scripts/generar_validaciones_modular.ps1
// NO EDITAR MANUALMENTE - Regenerar con el script
// Sistema: $sistema
// Fecha de generación: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")

var validaciones_$sistema = {
  full: '$full',
  contractual: '$contractual',
  technical: '$technical',
  financial: '$financial',
  risks: '$risks'
};

// Exportar para uso en módulos
if (typeof module !== 'undefined' && module.exports) {
  module.exports = validaciones_$sistema;
}

// Exponer al objeto window para uso en navegador
if (typeof window !== 'undefined') {
  window.validaciones_$sistema = validaciones_$sistema;
}
"@
    
    $jsFile = Join-Path $OutputJsPath "validaciones_$sistema.js"
    Set-Content -Path $jsFile -Value $jsContent -Encoding UTF8
    Write-Host "    ✅ Generado: validaciones_$sistema.js ($([math]::Round((Get-Item $jsFile).Length / 1KB, 2)) KB)" -ForegroundColor Green
    
    # ========================================
    # 2. GENERAR HTML STANDALONE
    # ========================================
    
    # Convertir Markdown completo a HTML
    $htmlBody = ConvertTo-HtmlBasic $contenido
    
    # Plantilla HTML
    $htmlContent = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dictamen Jurídico-Técnico: Sistema $sistema</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background: #f5f5f5;
            padding: 20px;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            padding: 40px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        header {
            border-bottom: 3px solid #2c3e50;
            padding-bottom: 20px;
            margin-bottom: 30px;
        }
        h1 {
            color: #2c3e50;
            font-size: 2em;
            margin-bottom: 10px;
        }
        h2 {
            color: #34495e;
            font-size: 1.5em;
            margin-top: 30px;
            margin-bottom: 15px;
            border-left: 4px solid #3498db;
            padding-left: 15px;
        }
        h3 {
            color: #555;
            font-size: 1.2em;
            margin-top: 20px;
            margin-bottom: 10px;
        }
        p {
            margin-bottom: 15px;
            text-align: justify;
        }
        ul, ol {
            margin-left: 30px;
            margin-bottom: 15px;
        }
        li {
            margin-bottom: 8px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #34495e;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        blockquote {
            border-left: 4px solid #e74c3c;
            padding-left: 20px;
            margin: 20px 0;
            font-style: italic;
            color: #555;
            background: #fef5f5;
            padding: 15px 20px;
        }
        strong {
            color: #2c3e50;
        }
        .subtitle {
            color: #7f8c8d;
            font-size: 1.1em;
        }
        footer {
            margin-top: 40px;
            padding-top: 20px;
            border-top: 2px solid #ecf0f1;
            color: #7f8c8d;
            font-size: 0.9em;
        }
        .status-badge {
            display: inline-block;
            padding: 5px 15px;
            background: #27ae60;
            color: white;
            border-radius: 20px;
            font-size: 0.9em;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>DICTAMEN JURÍDICO-TÉCNICO: SISTEMA $sistema</h1>
            <p class="subtitle">Proyecto TM01 Troncal Magdalena</p>
            <span class="status-badge">✅ CERTIFICADO PARA DEFENSA CONTRACTUAL</span>
        </header>
        
        <main>
            $htmlBody
        </main>
        
        <footer>
            <p><strong>Documento generado automáticamente desde:</strong> DICTAMEN_JURIDICO_${sistema}_v1.0.md</p>
            <p><strong>Fecha de generación:</strong> $(Get-Date -Format "dd 'de' MMMM 'de' yyyy HH:mm:ss")</p>
            <p><strong>Metodología:</strong> Punto 42 v3.0 (Contract-First Architecture)</p>
        </footer>
    </div>
</body>
</html>
"@
    
    $htmlFile = Join-Path $OutputHtmlPath "DICTAMEN_JURIDICO_$sistema.html"
    Set-Content -Path $htmlFile -Value $htmlContent -Encoding UTF8
    Write-Host "    ✅ Generado: DICTAMEN_JURIDICO_$sistema.html ($([math]::Round((Get-Item $htmlFile).Length / 1KB, 2)) KB)" -ForegroundColor Green
}

Write-Host ""
Write-Host "✅ Proceso completado" -ForegroundColor Green
Write-Host "📊 Archivos JS generados: $($dictamenes.Count) en $OutputJsPath" -ForegroundColor Cyan
Write-Host "📊 Archivos HTML generados: $($dictamenes.Count) en $OutputHtmlPath" -ForegroundColor Cyan
