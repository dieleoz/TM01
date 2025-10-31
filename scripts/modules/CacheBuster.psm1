function Add-CacheBusting {
    [CmdletBinding()] param(
        [Parameter(Mandatory)] [string]$HtmlFile,
        [string]$Version = $(Get-Date).ToUniversalTime().ToString('yyyyMMddHHmmss')
    )
    if (-not (Test-Path -LiteralPath $HtmlFile)) { throw "HTML no encontrado: $HtmlFile" }
    
    # Leer con encoding UTF-8 explícito (preserva emojis y caracteres especiales)
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    $content = [System.IO.File]::ReadAllText((Resolve-Path $HtmlFile), $utf8NoBom)
    
    # Agregar ?v= si no existe query; si existe, actualizar v=
    $content = $content -replace '(src="[^"]+\.js)(\?[^\"]*)?"', ("`$1?v={0}" -f $Version) + '"'
    $content = $content -replace '(href="[^"]+\.css)(\?[^\"]*)?"', ("`$1?v={0}" -f $Version) + '"'
    
    # Escribir con UTF-8 sin BOM (preserva encoding original del HTML)
    # HTML5 no requiere BOM y es más compatible con navegadores
    [System.IO.File]::WriteAllText((Resolve-Path $HtmlFile), $content, $utf8NoBom)
}

Export-ModuleMember -Function Add-CacheBusting


