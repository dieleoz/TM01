<#
.SYNOPSIS
    Script Maestro de Entrega (Layer 5) - TM01
.DESCRIPTION
    Orquestador que ejecuta el pipeline completo:
    1. Sincronización T04/T05/Dictamen -> RFQs
    2. Generación de Reportes Ejecutivos (HTML)
    3. Generación de Índice Maestro (HTML)
    4. Indexación de Metadatos (JS)
#>

$scriptPath = $PSScriptRoot
$proyectRoot = Split-Path -Parent $scriptPath
$rfqPath = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS"
$htmlPath = Join-Path $rfqPath "8_DOCUMENTOS_SERVIDOS/HTML"
$docxPath = Join-Path $rfqPath "8_DOCUMENTOS_SERVIDOS/WORD"
$dataOutputFile = Join-Path $proyectRoot "docs/data/v5_servidos.js"
$indexOutputFile = Join-Path $htmlPath "INDICE_Documentos_Servidos.html"

Write-Host "[START] INICIANDO PIPELINE DE ENTREGA (CAPA 5)..." -ForegroundColor Cyan

# 1. Ejecutar Cocina de RFQs
Write-Host "`n1. [SYNC] Sincronizando RFQs..." -ForegroundColor Yellow
powershell -ExecutionPolicy Bypass -File (Join-Path $scriptPath "cocinar_rfqs.ps1")

# 2. Ejecutar Cocina de Ejecutivos
Write-Host "`n2. [HTML] Generando Ejecutivos HTML..." -ForegroundColor Yellow
powershell -ExecutionPolicy Bypass -File (Join-Path $scriptPath "cocinar_ejecutivos.ps1")

# 3. Generar Índice Maestro (HTML)
Write-Host "`n3. [INDEX] Generando Indice Maestro HTML..." -ForegroundColor Yellow

$now = Get-Date -Format "dd/MM/yyyy HH:mm"

# Obtener listas de archivos para las secciones
$dictamenes = Get-ChildItem -Path (Join-Path $proyectRoot "docs/dictamenes") -Filter "*.html" | Select-Object Name, BaseName
$specs = Get-ChildItem -Path (Join-Path $proyectRoot "docs/specs") -Filter "*.html" | Select-Object Name, BaseName
$ejecutivos = Get-ChildItem -Path $htmlPath -Filter "SISTEMA_*.html" | Select-Object Name, BaseName
$rfqs = Get-ChildItem -Path $htmlPath -Filter "RFQ_*.html" | Select-Object Name, BaseName

function Generate-ListHtml($Files, $RelPath, $DocxSubDir = "") {
    $html = ""
    $proyectRoot = Split-Path -Parent $PSScriptRoot
    $rfqPath = Join-Path $proyectRoot "X_ENTREGABLES_CONSOLIDADOS"
    $wordBase = Join-Path $rfqPath "8_DOCUMENTOS_SERVIDOS/WORD"

    foreach ($f in $Files) {
        $name = $f.BaseName
        $url = "$RelPath/$($f.Name)"
        
        # Intentar encontrar el DOCX correspondiente
        $docxRelPath = ""
        $possibleDocx = if ($DocxSubDir) { Join-Path (Join-Path $wordBase $DocxSubDir) "$($f.BaseName).docx" } else { Join-Path $wordBase "$($f.BaseName).docx" }
        
        if (Test-Path $possibleDocx) {
            $docxUrl = if ($DocxSubDir) { "../../WORD/$DocxSubDir/$($f.BaseName).docx" } else { "../../WORD/$($f.BaseName).docx" }
            $docxRelPath = "<a href='$docxUrl' class='btn-word' title='Descargar Word'>DOCX</a>"
        }
        
        $html += "<li><a href='$url' target='_blank'>$name</a> $docxRelPath</li>`n"
    }
    return $html
}

$htmlTemplate = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portafolio de Ingenieria Punto 42 - TM01</title>
    <style>
        :root {
            --bg-color: #f3f4f6;
            --text-color: #1f2937;
            --accent-legal: #475569;
            --accent-specs: #2563eb;
            --accent-exec: #059669;
            --accent-rfq: #d97706;
        }
        body { font-family: 'Segoe UI', system-ui, sans-serif; margin: 0; padding: 40px; background: var(--bg-color); color: var(--text-color); }
        .container { max-width: 1400px; margin: 0 auto; }
        header { text-align: center; margin-bottom: 50px; }
        h1 { font-size: 2.5rem; margin: 0; color: #111827; display: flex; align-items: center; justify-content: center; gap: 15px; }
        .subtitle { font-size: 1.1rem; color: #6b7280; margin-top: 10px; max-width: 800px; margin-left: auto; margin-right: auto; }
        .dashboard-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 25px; align-items: start; }
        .card { background: white; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1); transition: transform 0.2s; border-top: 5px solid #ccc; }
        .card:hover { transform: translateY(-5px); box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1); }
        .card-header { padding: 20px; background: #fff; border-bottom: 1px solid #e5e7eb; }
        .card-header h2 { margin: 0; font-size: 1.25rem; display: flex; align-items: center; gap: 10px; }
        .card-desc { font-size: 0.9rem; color: #6b7280; margin-top: 5px; line-height: 1.4; }
        .card-legal { border-color: var(--accent-legal); } .card-legal h2 { color: var(--accent-legal); }
        .card-specs { border-color: var(--accent-specs); } .card-specs h2 { color: var(--accent-specs); }
        .card-exec { border-color: var(--accent-exec); } .card-exec h2 { color: var(--accent-exec); }
        .card-rfq { border-color: var(--accent-rfq); } .card-rfq h2 { color: var(--accent-rfq); }
        ul { list-style: none; padding: 0; margin: 0; max-height: 500px; overflow-y: auto; }
        li { border-bottom: 1px solid #f3f4f6; padding: 12px 20px; display: flex; justify-content: space-between; align-items: center; font-size: 0.95rem; }
        li:hover { background-color: #f9fafb; }
        a { text-decoration: none; color: #374151; font-weight: 500; }
        a:hover { color: #000; }
        .btn-word { font-size: 0.75rem; padding: 3px 8px; background: #ecfdf5; color: #047857; border-radius: 4px; border: 1px solid #a7f3d0; margin-left: 10px; }
        .footer { text-align: center; margin-top: 50px; font-size: 0.85rem; color: #9ca3af; border-top: 1px solid #e5e7eb; padding-top: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Portafolio de Ingenieria (TM01)</h1>
            <p class="subtitle">Repositorio centralizado de entregables consolidados. Organizado por capas de validacion v3.1</p>
        </header>
        <div class="dashboard-grid">
            <section class="card card-legal">
                <div class="card-header">
                    <h2>I. Capa Legal (Blindaje)</h2>
                    <p class="card-desc">Dictamenes Juridico-Tecnicos para soporte contractual.</p>
                </div>
                <ul> $(Generate-ListHtml $dictamenes "../../../docs/dictamenes" "DICTAMENES") </ul>
            </section>
            <section class="card card-specs">
                <div class="card-header">
                    <h2>II. Capa Basica (Specs T04)</h2>
                    <p class="card-desc">Fichas Tecnicas y estandares de calidad.</p>
                </div>
                <ul> $(Generate-ListHtml $specs "../../../docs/specs" "SPECS") </ul>
            </section>
            <section class="card card-exec">
                <div class="card-header">
                    <h2>III. Capa Detalle (Informes)</h2>
                    <p class="card-desc">Informes Ejecutivos y Memorias de Calculo.</p>
                </div>
                <ul> $(Generate-ListHtml $ejecutivos "." "") </ul>
            </section>
            <section class="card card-rfq">
                <div class="card-header">
                    <h2>IV. Capa Comercial (RFQs)</h2>
                    <p class="card-desc">Pliegos de peticion de oferta para licitacion.</p>
                </div>
                <ul> $(Generate-ListHtml $rfqs "." "") </ul>
            </section>
        </div>
        <div class="footer">
            Version: <strong>Audit 6.0</strong> | Generado: $now
        </div>
    </div>
</body>
</html>
"@

[System.IO.File]::WriteAllText($indexOutputFile, $htmlTemplate, [System.Text.UTF8Encoding]::new($false))

# 4. Generar Índice de Metadatos JS
Write-Host "`n4. [DATA] Generando Indice de Metadatos..." -ForegroundColor Yellow

$entregables = @()
$rfqFiles = Get-ChildItem -LiteralPath $rfqPath -Filter "RFQ_*.md"
foreach ($f in $rfqFiles) {
    $item = @{
        nombre  = $f.Name
        tipo    = "RFQ"
        ext     = "Markdown"
        ruta    = "X_ENTREGABLES_CONSOLIDADOS/$($f.Name)"
        fecha   = $f.LastWriteTime.ToString("yyyy-MM-dd HH:mm")
        sistema = ($f.Name -split "_")[2]
    }
    $entregables += $item
}

if (Test-Path $htmlPath) {
    $htmlFiles = Get-ChildItem -LiteralPath $htmlPath -Filter "*.html" | Where-Object { $_.Name -ne "INDICE_Documentos_Servidos.html" }
    foreach ($f in $htmlFiles) {
        $tipo = if ($f.Name -match "EJECUTIVO") { "EJECUTIVO" } else { "RFQ_HTML" }
        $item = @{
            nombre  = $f.Name
            tipo    = $tipo
            ext     = "HTML"
            ruta    = "X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/HTML/$($f.Name)"
            fecha   = $f.LastWriteTime.ToString("yyyy-MM-dd HH:mm")
            sistema = ($f.Name -replace 'SISTEMA_\d+_', '' -replace 'RFQ_\d+_', '' -replace '\.html', '')
        }
        $entregables += $item
    }
}

$json = $entregables | ConvertTo-Json -Depth 5
$jsContent = "const V5_ENTREGABLES = $json;"
[System.IO.File]::WriteAllText($dataOutputFile, $jsContent, [System.Text.UTF8Encoding]::new($false))

Write-Host "`n[OK] PIPELINE COMPLETADO." -ForegroundColor Green
Write-Host "[INFO] Indice generado en: $indexOutputFile" -ForegroundColor Cyan
