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
    
    $lines = $mdContent -split "`r`n|`n"
    $htmlLines = @()
    $inTable = $false
    
    foreach ($line in $lines) {
        $l = $line.Trim()
        
        # Skip Frontmatter delimiters (simple check)
        if ($l -eq "---" -or $l -match "^schema:") { continue }
        
        # TABLE LOGIC
        if ($l.StartsWith("|")) {
            if (-not $inTable) {
                # Start of a new table
                $htmlLines += "<div class='table-responsive'><table class='spec-table'>"
                $htmlLines += "<thead>"
                $inTable = $true
            }
            
            # Check for separator line |---|
            if ($l -match "^\|[\s\-:|]+$") {
                # End of header, start of body
                $htmlLines += "</thead><tbody>"
                continue
            }
            
            # Process Row
            $cleanRow = $l.Trim("|")
            $cells = $cleanRow -split "\|"
            
            $htmlLines += "<tr>"
            foreach ($cell in $cells) {
                $cellContent = $cell.Trim()
                # Process Bold inside cells
                $cellContent = [System.Text.RegularExpressions.Regex]::Replace($cellContent, '\*\*(.*?)\*\*', '<strong>$1</strong>')
                $htmlLines += "<td>$cellContent</td>"
            }
            $htmlLines += "</tr>"
            continue
        }
        else {
            # Not a table line
            if ($inTable) {
                # Close table if we were in one
                $htmlLines += "</tbody></table></div>"
                $inTable = $false
            }
        }
        
        # HEADERS
        if ($l -match "^# (.*)") { 
            $htmlLines += "<div class='doc-header'><h1>$($matches[1])</h1></div>"
            continue 
        }
        if ($l -match "^## (.*)") { 
            $htmlLines += "<h2>$($matches[1])</h2>"
            continue 
        }
        if ($l -match "^### (.*)") { 
            $htmlLines += "<h3>$($matches[1])</h3>"
            continue 
        }
        
        # Horizontal Rules
        if ($l -match "^---") {
            $htmlLines += "<hr>"
            continue
        }
        
        # Bold (Inline for non-table lines)
        $l = [System.Text.RegularExpressions.Regex]::Replace($l, '\*\*(.*?)\*\*', '<strong>$1</strong>')
        
        # Lists (Basic)
        if ($l -match "^- (.*)") {
            $l = "<li>$($matches[1])</li>"
        }
        
        # Paragraphs / Empty lines
        if ($l -eq "") {
            $htmlLines += "<br>"
        }
        else {
            $htmlLines += "$l"
        }
    }
    
    # Close table if file ends with table
    if ($inTable) {
        $htmlLines += "</tbody></table></div>"
    }
    
    return $htmlLines -join "`n"
}

$template = @"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>T04 Spec</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; padding: 40px; background: #f8fafc; color: #333; line-height: 1.6; }
        .container { max-width: 900px; margin: 0 auto; background: white; padding: 50px; border-radius: 12px; box-shadow: 0 4px 20px rgba(0,0,0,0.08); }
        
        /* Headers */
        h1 { color: #0f172a; margin: 0 0 20px 0; font-size: 24px; border-bottom: 2px solid #f59e0b; padding-bottom: 15px; }
        h2 { color: #1e40af; margin-top: 40px; margin-bottom: 20px; font-size: 18px; border-left: 5px solid #f59e0b; padding-left: 15px; background: #f8fafc; padding-top: 5px; padding-bottom: 5px; }
        h3 { color: #334155; margin-top: 20px; font-size: 16px; font-weight: 700; }
        
        /* Tables */
        .table-responsive { overflow-x: auto; margin-bottom: 20px; }
        .spec-table { width: 100%; border-collapse: collapse; margin-top: 10px; font-size: 14px; }
        .spec-table th, .spec-table td { padding: 12px; border: 1px solid #e2e8f0; text-align: left; vertical-align: top; }
        .spec-table thead tr { background: #f1f5f9; color: #334155; font-weight: bold; }
        .spec-table tbody tr:nth-child(even) { background: #f8fafc; }
        .spec-table tbody tr:hover { background: #f1f5f9; }
        /* First column styling for parameters */
        .spec-table td:first-child { font-weight: 600; color: #475569; width: 25%; }
        
        /* Badge */
        .status-badge { float: right; background: #dcfce7; color: #166534; padding: 6px 16px; border-radius: 99px; font-size: 0.75em; font-weight: 800; letter-spacing: 0.5px; }
        .doc-header { margin-bottom: 30px; }
        
        /* Text */
        li { margin-bottom: 5px; }
        hr { border: 0; border-top: 1px solid #e2e8f0; margin: 30px 0; }
    </style>
</head>
<body>
    <div class="container">
        <span class="status-badge">DOCUMENTACIÓN DE INGENIERÍA</span>
        {{CONTENT}}
        
        <div style="margin-top: 50px; padding-top: 20px; border-top: 1px dashed #cbd5e1; font-size: 0.85rem; color: #94a3b8; text-align: center;">
            Documento generado automáticamente por Sistema de Gestión TM01. <br>
            Fase 7 - Ingeniería de Detalle.
        </div>
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
$jsContent = "window.TECHNICAL_SPECS_MAP = $json;"
Set-Content -Path $mapFile -Value $jsContent -Encoding UTF8

Write-Host "Generación completada. Mapa actualizado en $mapFile"
