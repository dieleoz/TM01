# Servidor web con sincronización automática para TM01
# Uso: .\servidor_web.ps1
# Sincroniza automáticamente antes de servir

param(
    [switch]$SkipSync  # Omitir sincronización (solo para desarrollo)
)

$PORT = 8000
$BASE_DIR = $PSScriptRoot
$REPO_ROOT = Split-Path -Parent $BASE_DIR

Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  🚀 SERVIDOR WEB TM01 CON SINCRONIZACIÓN AUTOMÁTICA" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

# PASO 1: Reconstrucción automática desde fuente única
if (-not $SkipSync) {
    Write-Host "📊 PASO 1/3: Reconstruyendo datos desde FUENTE ÚNICA..." -ForegroundColor Yellow
    Write-Host ""
    
    # Ejecutar script de reconstrucción desde RESUMEN_EJECUTIVO
    $rebuildScript = Join-Path $REPO_ROOT "scripts\rebuild_masterdata_from_resumen.ps1"
    
    if (Test-Path $rebuildScript) {
        try {
            Write-Host "  ⏳ Leyendo RESUMEN_EJECUTIVO_PROYECTO_COMPLETADO.md..." -ForegroundColor Gray
            & $rebuildScript -ErrorAction Stop
            Write-Host ""
            Write-Host "  ✅ Reconstrucción completada exitosamente" -ForegroundColor Green
        } catch {
            Write-Host ""
            Write-Host "  ⚠️  Error en reconstrucción: $($_.Exception.Message)" -ForegroundColor Yellow
            Write-Host "  ℹ️  Continuando con datos existentes..." -ForegroundColor Gray
        }
    } else {
        Write-Host "  ⚠️  Script de reconstrucción no encontrado" -ForegroundColor Yellow
        Write-Host "  ℹ️  Continuando con datos existentes..." -ForegroundColor Gray
    }
    Write-Host ""
} else {
    Write-Host "⏭️  Reconstrucción omitida (modo desarrollo)" -ForegroundColor Yellow
    Write-Host ""
}

# PASO 2: Verificar archivos de datos
Write-Host "📂 PASO 2/3: Verificando archivos de datos..." -ForegroundColor Yellow
$masterData = Join-Path $BASE_DIR "data\tm01_master_data.js"
if (Test-Path $masterData) {
    $fileInfo = Get-Item $masterData
    Write-Host "  ✅ tm01_master_data.js encontrado" -ForegroundColor Green
    Write-Host "     Última modificación: $($fileInfo.LastWriteTime)" -ForegroundColor Gray
} else {
    Write-Host "  ⚠️  tm01_master_data.js no encontrado" -ForegroundColor Red
}
Write-Host ""

# PASO 3: Iniciar servidor
Write-Host "🌐 PASO 3/3: Iniciando servidor web..." -ForegroundColor Yellow
Write-Host "  📂 Directorio: $BASE_DIR" -ForegroundColor Cyan
Write-Host "  🔗 URL: http://localhost:$PORT" -ForegroundColor Cyan
Write-Host "  📄 Punto de entrada: http://localhost:$PORT/WBS_Menu_Principal.html" -ForegroundColor Green
Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  ✅ SISTEMA LISTO - Todas las interfaces sincronizadas" -ForegroundColor Green
Write-Host "═══════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

# Verificar si Python está disponible
$python = Get-Command python -ErrorAction SilentlyContinue
if ($python) {
    Write-Host "✅ Usando Python HTTP Server" -ForegroundColor Green
    Set-Location $BASE_DIR
    python -m http.server $PORT --bind localhost
} else {
    # Intentar con PowerShell
    Write-Host "⚠️  Python no encontrado, intentando con PowerShell..." -ForegroundColor Yellow
    
    # Crear listener HTTP simple
    $listener = New-Object System.Net.HttpListener
    $listener.Prefixes.Add("http://localhost:$PORT/")
    $listener.Start()
    
    Write-Host "✅ Servidor iniciado en http://localhost:$PORT" -ForegroundColor Green
    Write-Host "⚠️  Presiona Ctrl+C para detener" -ForegroundColor Yellow
    Write-Host ""
    
    # Abrir navegador
    Start-Process "http://localhost:$PORT/mapa_troncal_tm01.html"
    
    try {
        while ($listener.IsListening) {
            $context = $listener.GetContext()
            $request = $context.Request
            $response = $context.Response
            
            $localPath = $request.Url.LocalPath
            if ($localPath -eq "/") {
                $localPath = "/mapa_troncal_tm01.html"
            }
            
            $filePath = Join-Path $BASE_DIR $localPath.TrimStart('/')
            
            if (Test-Path $filePath) {
                $content = Get-Content $filePath -Raw -Encoding UTF8
                $buffer = [System.Text.Encoding]::UTF8.GetBytes($content)
                
                $response.ContentLength64 = $buffer.Length
                $response.ContentType = "text/html; charset=utf-8"
                $response.AddHeader("Access-Control-Allow-Origin", "*")
                $response.OutputStream.Write($buffer, 0, $buffer.Length)
            } else {
                $response.StatusCode = 404
                $buffer = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
                $response.OutputStream.Write($buffer, 0, $buffer.Length)
            }
            
            $response.Close()
        }
    } finally {
        $listener.Stop()
    }
}

