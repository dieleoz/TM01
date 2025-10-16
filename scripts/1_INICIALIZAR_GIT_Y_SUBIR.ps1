# ==========================================
# SCRIPT: Inicializar Git y Subir a GitHub
# Proyecto: APP Puerto Salgar - Barrancabermeja
# ==========================================

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "INICIALIZAR GIT Y SUBIR A GITHUB" -ForegroundColor Cyan
Write-Host "Proyecto APP Puerto Salgar - Barrancabermeja" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Verificar que estamos en la raíz del proyecto
$raiz = "D:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA"
if ((Get-Location).Path -ne $raiz) {
    Write-Host "⚠️  Cambiando a raíz del proyecto..." -ForegroundColor Yellow
    Set-Location $raiz
}

# PASO 1: Inicializar Git (si no existe)
Write-Host "📦 PASO 1: Inicializar repositorio Git..." -ForegroundColor Green
if (-Not (Test-Path ".git")) {
    git init
    Write-Host "✅ Repositorio Git inicializado" -ForegroundColor Green
} else {
    Write-Host "ℹ️  Repositorio Git ya existe" -ForegroundColor Yellow
}
Write-Host ""

# PASO 2: Configurar remoto
Write-Host "🔗 PASO 2: Configurar repositorio remoto..." -ForegroundColor Green
$remoteUrl = "https://github.com/dieleoz/TM01.git"
$remoteExists = git remote | Select-String "origin"

if ($remoteExists) {
    Write-Host "ℹ️  Remoto 'origin' ya existe. Actualizando URL..." -ForegroundColor Yellow
    git remote set-url origin $remoteUrl
} else {
    git remote add origin $remoteUrl
}
Write-Host "✅ Remoto configurado: $remoteUrl" -ForegroundColor Green
Write-Host ""

# PASO 3: Agregar archivos
Write-Host "📄 PASO 3: Agregar archivos al staging..." -ForegroundColor Green
git add .
Write-Host "✅ Archivos agregados" -ForegroundColor Green
Write-Host ""

# PASO 4: Ver estado
Write-Host "📊 PASO 4: Estado actual del repositorio:" -ForegroundColor Green
git status --short
Write-Host ""

# PASO 5: Crear commit inicial
Write-Host "💾 PASO 5: Crear commit inicial..." -ForegroundColor Green
$commitMessage = @"
feat: Inicialización proyecto APP Puerto Salgar-Barrancabermeja v1.0

- Estructura base de carpetas
- README y ROADMAP completos
- Guía de replicación vehicular v1.0
- 15 contratos base en formato .txt
- Scripts de inicialización
- .gitignore configurado

Proyecto base: APP La Dorada-Chiriguaná (Férreo) v14.7.6
Metodología: Punto 42 + Marco PMI
Estado: Fase 0 - Preparación
"@

git commit -m $commitMessage
Write-Host "✅ Commit creado" -ForegroundColor Green
Write-Host ""

# PASO 6: Subir a GitHub
Write-Host "🚀 PASO 6: Subir a GitHub..." -ForegroundColor Green
Write-Host "⚠️  Si es la primera vez, se te pedirán credenciales" -ForegroundColor Yellow
Write-Host ""

# Verificar rama principal
$ramaPrincipal = git branch --show-current
if ($ramaPrincipal -ne "main") {
    Write-Host "🔄 Cambiando nombre de rama a 'main'..." -ForegroundColor Yellow
    git branch -M main
}

# Push con configuración de upstream
git push -u origin main

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "✅ PROCESO COMPLETADO" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "🎯 Repositorio en GitHub:" -ForegroundColor Green
Write-Host "   https://github.com/dieleoz/TM01" -ForegroundColor White
Write-Host ""
Write-Host "📋 Próximos pasos (ver ROADMAP.md):" -ForegroundColor Yellow
Write-Host "   1. Convertir contratos .txt a .md" -ForegroundColor White
Write-Host "   2. Crear estructura completa de carpetas" -ForegroundColor White
Write-Host "   3. Identificar sistemas vehiculares" -ForegroundColor White
Write-Host ""

