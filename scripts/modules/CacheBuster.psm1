function Add-CacheBusting {
    [CmdletBinding()] param(
        [Parameter(Mandatory)] [string]$HtmlFile,
        [string]$Version = $(Get-Date).ToUniversalTime().ToString('yyyyMMddHHmmss')
    )
    if (-not (Test-Path -LiteralPath $HtmlFile)) { throw "HTML no encontrado: $HtmlFile" }
    $content = Get-Content -LiteralPath $HtmlFile -Raw -Encoding UTF8
    # Agregar ?v= si no existe query; si existe, actualizar v=
    $content = $content -replace '(src="[^"]+\.js)(\?[^\"]*)?"', ("`$1?v={0}" -f $Version) + '"'
    $content = $content -replace '(href="[^"]+\.css)(\?[^\"]*)?"', ("`$1?v={0}" -f $Version) + '"'
    Set-Content -LiteralPath $HtmlFile -Value $content -Encoding UTF8
}

Export-ModuleMember -Function Add-CacheBusting


