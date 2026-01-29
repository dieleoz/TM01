<#
.SYNOPSIS
    Generates HTML Technical Specs from Markdown files and creates a JS mapping file.
    Phase 7 Automation: Layer 3 -> Layer 4.
#>

$sourceDir = "IV. Ingenieria Basica"
$destDir = "docs/specs"
$mapFile = "docs/data/technical_specs_map.js"

# Ensure directories exist
if (!(Test-Path $destDir)) { New-Item -ItemType Directory -Force -Path $destDir | Out-Null }
if (!(Test-Path "docs/data")) { New-Item -ItemType Directory -Force -Path "docs/data" | Out-Null }

$specsMap = @{}

Write-Host "Starting Technical Specs Generation..."

# Functions to manipulate text safely
function Convert-MDtoHTML {
    param ($mdContent)
    
    # Use .NET Regex for robust replacement
    $html = $mdContent

    # 1. Remove Frontmatter check (simple check for --- block at start)
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '(?s)^---.*?---', '')

    # 2. Headers
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '(?m)^# (.*)', '<div class="doc-header"><h1>$1</h1></div>')
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '(?m)^## (.*)', '<h2>$1</h2>')
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '(?m)^### (.*)', '<h3>$1</h3>')

    # 3. Bold
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '\*\*(.*?)\*\*', '<strong>$1</strong>')

    # 4. Tables (Basic Support)
    # Wrap lines starting with | in table rows
    # This is a heuristic: If line starts and ends with |, treat as row.
    # We replace | with </td><td> and wrap.
    
    # We need to process line by line for tables to be safe with this simple logic? 
    # Or just use the pipe replacements knowing structure is simple.
    
    # Replace separator line |---|---|
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '(?m)^\|[\-:| ]+\|$', '')
    
    # Replace start of row
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '(?m)^\|', '<tr><td>')
    # Replace end of row
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '(?m)\|$', '</td></tr>')
    # Replace internal pipes
    $html = [System.Text.RegularExpressions.Regex]::Replace($html, '\|', '</td><td>')
    
    # Wrap loose TRs in Table (Best effort via regex is hard, we will wrap purely with CSS on generated HTML or just leave as rows?
    # Browsers render loose TRs poorly. Let's wrap the whole content in a table if we detect it? 
    # No, let's just create a table tag at start/end of consecutive rows? Too complex for regex script.
    # ALTERNATIVE: Just output the rows. We will style "tr" display block if needed? No, tables need <table>.
    # HACK: Replace the first instance of a row with <table><tr>... and last with ...</tr></table>?
    # Let's assume the user format is standard and just output rows. We will wrap the output div in a table style.
    
    # Better: Replace the specific MD Table syntax with a Div-based Grid if we can't do full table parsing.
    # Or simply:
    $html = $html -replace '(?m)^<tr>', '<div class="row">' -replace '(?m)</tr>$', '</div>' -replace '</td><td>', '</div><div class="col">' -replace '<td>', '<div class="col">'
    # This converts to Divs. 
    
    # 5. Newlines to <br> for non-tag lines?
    # $html = $html -replace '(?m)^(?!<).*$', '$0<br>'
    
    return $html
}

$template = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>T04 Spec</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; padding: 40px; background: #f8fafc; color: #333; }
        .container { max-width: 800px; margin: 0 auto; background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        h1 { color: #1e3a8a; border-bottom: 2px solid #f59e0b; padding-bottom: 10px; }
        h2 { color: #1e40af; margin-top: 30px; border-left: 4px solid #f59e0b; padding-left: 10px; }
        .row { display: grid; grid-template-columns: 1fr 2fr; gap: 10px; border-bottom: 1px solid #e2e8f0; padding: 8px 0; }
        .row:nth-child(even) { background: #f8fafc; }
        .col:first-child { font-weight: bold; color: #475569; }
        .status-badge { float: right; background: #dcfce7; color: #166534; padding: 4px 12px; border-radius: 99px; font-size: 0.8em; font-weight: bold; }
    </style>
</head>
<body>
    <div class="container">
        <span class="status-badge">DOCUMENTACIÓN DE INGENIERÍA</span>
        {{CONTENT}}
    </div>
</body>
</html>
"@

# Process Files
$files = Get-ChildItem -Path $sourceDir -Filter "T04_SPEC_*.md"

foreach ($file in $files) {
    Write-Host "Procesando: $($file.Name)"
    $rawContent = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    
    $htmlContent = Convert-MDtoHTML $rawContent
    $finalHtml = $template.Replace("{{CONTENT}}", $htmlContent)
    
    # File Naming: T04_SPEC_CCTV_PTZ_v1.0.md -> T04_CCTV.html
    if ($file.BaseName -match "T04_SPEC_([^_]+)") {
        $sysName = $matches[1]
        $outName = "T04_" + $sysName + ".html"
        $outPath = Join-Path $destDir $outName
        
        [System.IO.File]::WriteAllText($outPath, $finalHtml, [System.Text.Encoding]::UTF8)
        
        # Add to Map
        $specsMap[$sysName] = "specs/$outName"
    }
}

# Generate JS Map with Metadata
$specsMap["_metadata"] = @{
    "generatedAt"  = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
    "agentVersion" = "Phase 7.0"
}

$json = $specsMap | ConvertTo-Json
$jsContent = "const TECHNICAL_SPECS_MAP = $json;"
Set-Content -Path $mapFile -Value $jsContent -Encoding UTF8

Write-Host "Generación completada. Mapa actualizado en $mapFile"
