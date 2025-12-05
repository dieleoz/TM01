# Servidor web simple para el mapa TM01
# Uso: .\servidor_web.ps1

$PORT = 8000
$BASE_DIR = $PSScriptRoot

Write-Host "🚀 Iniciando servidor web en http://localhost:$PORT" -ForegroundColor Green
Write-Host "📂 Directorio: $BASE_DIR" -ForegroundColor Cyan
Write-Host "🌐 Abriendo: http://localhost:$PORT/mapa_troncal_tm01.html" -ForegroundColor Yellow
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

