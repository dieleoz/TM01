#requires -Version 5.1
<#
.SYNOPSIS
Valida encoding UTF-8 en archivos HTML y detecta caracteres mal codificados.

.DESCRIPTION
Este módulo valida que los archivos HTML tengan encoding UTF-8 correcto
y detecta patrones comunes de mojibake (caracteres mal codificados).

.NOTES
Creado para proteger archivos HTML durante sincronizaciones automáticas.
#>

function Test-HtmlEncoding {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$HtmlFile
    )
    
    if (-not (Test-Path -LiteralPath $HtmlFile)) {
        return @{
            IsValid = $false
            Error = "Archivo no encontrado: $HtmlFile"
        }
    }
    
    try {
        # Leer archivo con UTF-8 sin BOM
        $utf8NoBom = New-Object System.Text.UTF8Encoding $false
        $content = [System.IO.File]::ReadAllText((Resolve-Path $HtmlFile), $utf8NoBom)
        
        # Patrones comunes de mojibake (caracteres mal codificados)
        $mojibakePatterns = @(
            'CÃ¡lculos',      # Cálculos mal codificado
            'exportaciÃ³n',   # exportación mal codificado
            'MenÃº',          # Menú mal codificado
            'capÃ­tulos',     # capítulos mal codificado
            'automÃ¡ticos',   # automáticos mal codificado
            'anÃ¡lisis',      # análisis mal codificado
            'Ã­tem',          # ítem mal codificado
            'DescripciÃ³n',   # Descripción mal codificado
            'â†',            # flecha izquierda mal codificada
            'ðŸ',            # emoji mal codificado (inicio de bytes)
            'Ã',             # caracteres que empiezan con Ã (UTF-8 corrupto)
            'â',             # caracteres que empiezan con â (UTF-8 corrupto)
            'ð'              # caracteres que empiezan con ð (emojis corruptos)
        )
        
        $issues = @()
        foreach ($pattern in $mojibakePatterns) {
            $patternMatches = [regex]::Matches($content, [regex]::Escape($pattern))
            if ($patternMatches.Count -gt 0) {
                foreach ($match in $patternMatches) {
                    $lineNum = ($content.Substring(0, $match.Index) -split "`n").Count
                    $issues += @{
                        Pattern = $pattern
                        Line = $lineNum
                        Position = $match.Index
                    }
                }
            }
        }
        
        if ($issues.Count -gt 0) {
            return @{
                IsValid = $false
                Issues = $issues
                File = $HtmlFile
                Message = "Se detectaron $($issues.Count) problemas de encoding en $HtmlFile"
            }
        }
        
        return @{
            IsValid = $true
            File = $HtmlFile
        }
    }
    catch {
        return @{
            IsValid = $false
            Error = $_.Exception.Message
            File = $HtmlFile
        }
    }
}

function Test-AllHtmlEncoding {
    [CmdletBinding()]
    param(
        [string[]]$Directories = @('docs', 'Sistema_Validacion_Web')
    )
    
    $htmlFiles = @()
    foreach ($dir in $Directories) {
        if (Test-Path -LiteralPath $dir) {
            $htmlFiles += Get-ChildItem -Path $dir -Filter '*.html' -Recurse -ErrorAction SilentlyContinue
        }
    }
    
    $results = @()
    foreach ($file in $htmlFiles) {
        $result = Test-HtmlEncoding -HtmlFile $file.FullName
        $results += $result
    }
    
    $invalid = $results | Where-Object { -not $_.IsValid }
    
    return @{
        Total = $results.Count
        Valid = ($results | Where-Object { $_.IsValid }).Count
        Invalid = $invalid.Count
        Results = $results
        Issues = $invalid
    }
}

Export-ModuleMember -Function Test-HtmlEncoding, Test-AllHtmlEncoding
