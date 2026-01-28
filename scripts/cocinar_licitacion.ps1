
# Script para generar Paquete de Licitación (ZIP)
# Autor: Agente AI
# Fecha: 28-Ene-2026

Write-Host "🍳 COCINANDO PAQUETE DE LICITACIÓN..." -ForegroundColor Cyan

# Definir Rutas
$root = Get-Location
$outputDir = Join-Path $root "X_ENTREGABLES_CONSOLIDADOS\9_PAQUETE_LICITACION"
$docsServidos = Join-Path $root "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS"
$webDocs = Join-Path $root "docs"

$date = Get-Date -Format "yyyyMMdd"
$zipName = "TM01_Licitacion_Entregables_$date.zip"
$zipPath = Join-Path $outputDir $zipName

# 1. Preparar Directorio de Salida
if (!(Test-Path $outputDir)) { 
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
    Write-Host "📂 Directorio creado: $outputDir" -ForegroundColor Gray
}
if (Test-Path $zipPath) { 
    Remove-Item $zipPath -Force 
    Write-Host "🗑️  Zip anterior eliminado" -ForegroundColor Gray
}

# 2. Crear Área de Staging (Temporal)
$stageDir = Join-Path $outputDir "temp_stage"
if (Test-Path $stageDir) { Remove-Item $stageDir -Recurse -Force }
New-Item -ItemType Directory -Path $stageDir -Force | Out-Null

# 3. Copiar Plataforma Web (Dashboards + Assets)
Write-Host "🕸️  Copiando Plataforma Web..." -ForegroundColor Yellow
$webStage = Join-Path $stageDir "01_PLATAFORMA_WEB"
New-Item -ItemType Directory -Path $webStage -Force | Out-Null
Copy-Item -Path "$webDocs\*" -Destination $webStage -Recurse -Force

# Copiar index.html raíz también para punto de entrada
Copy-Item -Path "$root\index.html" -Destination $stageDir -Force

# 4. Copiar Documentación Técnica (Word/HTML Generados)
Write-Host "📄 Copiando Documentos Contractuales/Técnicos..." -ForegroundColor Yellow
$docsStage = Join-Path $stageDir "02_DOCUMENTACION_TECNICA"
New-Item -ItemType Directory -Path $docsStage -Force | Out-Null

if (Test-Path $docsServidos) {
    Copy-Item -Path "$docsServidos\*" -Destination $docsStage -Recurse -Force
}
else {
    Write-Warning "⚠️ No se encontró la carpeta de documentos servidos ($docsServidos). Se omitirá este paso."
    # Crear nota de advertencia en el zip
    "Falta ejecutar scripts/servir.ps1 para generar los documentos." | Out-File (Join-Path $docsStage "LEEME_FALTAN_DOCS.txt")
}

# 5. README del Paquete
$readmeContent = @"
PAQUETE DE LICITACIÓN - PROYECTO TM01
Fecha Generación: $(Get-Date)

CONTENIDO:
1. 01_PLATAFORMA_WEB:
   - Dashboards interactivos por rol (index.html -> docs/)
   - WBS, Presupuesto y Layouts

2. 02_DOCUMENTACION_TECNICA:
   - Documentos contractuales en Word y HTML
   - Decisiones Técnicas aplicadas

INSTRUCCIONES:
- Abra 'index.html' para iniciar la navegación.
- Consulte '02_DOCUMENTACION_TECNICA' para los archivos editables.
"@
$readmeContent | Out-File (Join-Path $stageDir "LEEME_LICITACION.txt") -Encoding UTF8

# 6. Generar ZIP
Write-Host "📦 Comprimiendo todo en ZIP..." -ForegroundColor Cyan
Compress-Archive -Path "$stageDir\*" -DestinationPath $zipPath -Force

# 7. Limpieza
Remove-Item $stageDir -Recurse -Force

Write-Host "✅ PAQUETE GENERADO EXITOSAMENTE:" -ForegroundColor Green
Write-Host "   📂 $zipPath" -ForegroundColor White
