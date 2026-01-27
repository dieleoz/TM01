$ErrorActionPreference = "Stop"

Write-Host "=== DIAGNOSTICO DE AMBIENTE PLAYWRIGHT ===" -ForegroundColor Cyan
Write-Host "USERPROFILE: $env:USERPROFILE"

if (-not $env:HOME) {
    Write-Host "⚠️  Variable 'HOME' no detectada." -ForegroundColor Yellow
    Write-Host "🛠️  Configurando HOME = USERPROFILE..." -ForegroundColor Green
    
    # Set for current session
    $env:HOME = $env:USERPROFILE
    
    # Set permanently for User
    [System.Environment]::SetEnvironmentVariable('HOME', $env:USERPROFILE, [System.EnvironmentVariableTarget]::User)
    
    Write-Host "✅ Variable HOME configurada correctamente: $env:HOME" -ForegroundColor Green
}
else {
    Write-Host "✅ Variable HOME ya existe: $env:HOME" -ForegroundColor Green
}

Write-Host "`n=== INSTALANDO DEPENDENCIAS PLAYWRIGHT ===" -ForegroundColor Cyan
try {
    # Check if npx is available
    if (Get-Command "npx" -ErrorAction SilentlyContinue) {
        Write-Host "Ejecutando: npx playwright install..."
        npx playwright install
        Write-Host "✅ Instalación completada exitosamente." -ForegroundColor Green
    }
    else {
        Write-Warning "npx no encontrado. Asegúrese de tener Node.js instalado."
    }
}
catch {
    Write-Error "❌ Error instalando Playwright: $_"
}
