
# SCRIPT DE COCINA DE RFQs - VERSION LIMPIA
# FECHA: 27 de Enero 2026
# PROPÓSITO: Sincronizar T05 con RFQs (Rol de Compras)

param(
    [switch]$Simulate = $false
)

$BasePath = ".\"
$T05Path = Join-Path $BasePath "V. Ingenieria de Detalle"
$RFQPath = Join-Path $BasePath "X_ENTREGABLES_CONSOLIDADOS"

# Mapeo de Ingredientes (T05) a Platos (RFQs)
$RecipeBook = @(
    @{ Ingredient = "05_T05_Ingenieria_Detalle_CCTV_v1.0.md"; Dishes = @("RFQ_003_CCTV_v2.0.md"); SystemName = "CCTV" },
    @{ Ingredient = "04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"; Dishes = @("RFQ_002_SOS_Postes_v2.0.md"); SystemName = "SOS" },
    @{ Ingredient = "06_T05_Ingenieria_Detalle_PMV_v1.0.md"; Dishes = @("RFQ_008_PMV_v1.0.md"); SystemName = "PMV" },
    @{ Ingredient = "07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md"; Dishes = @("RFQ_006_ETD_v1.0.md", "RFQ_007_RADARES_SANCIONATORIOS_v2.1.md", "RFQ_007_MONITORES_VELOCIDAD_INFORMATIVOS_v2.1.md"); SystemName = "ETD/RADAR" },
    @{ Ingredient = "01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md"; Dishes = @("RFQ_001_FIBRA_OPTICA_v2.0.md", "SOLICITUD_COMPRA_EQUIPOS_L2_v1.0.md", "SOLICITUD_COMPRA_EQUIPOS_L3_v1.0.md"); SystemName = "Telecomunicaciones" }
)

Write-Host "Iniciando Cocina..." -ForegroundColor Cyan

foreach ($Recipe in $RecipeBook) {
    $IngFile = Join-Path $T05Path $Recipe.Ingredient
    if (-not (Test-Path $IngFile)) { continue }
    
    Write-Host "Procesando $($Recipe.SystemName)" -ForegroundColor Green
    
    $Content = Get-Content $IngFile -Raw -Encoding UTF8
    $Lines = $Content -split "`n"
    
    $TableLines = @()
    foreach ($L in $Lines) {
        # Filtrar lineas de tabla validas (ignorando headers y separadores)
        if ($L -match "^\|.*\|.*\|" -and $L -notmatch "Componente" -and $L -notmatch "^\|[-: ]+\|") {
            $TableLines += $L
        }
    }
    
    if ($TableLines.Count -eq 0) { continue }
    
    foreach ($Dish in $Recipe.Dishes) {
        $DishFile = Join-Path $RFQPath $Dish
        if (-not (Test-Path $DishFile)) { continue }
        
        $DContent = Get-Content $DishFile -Raw -Encoding UTF8
        $AutoHeader = "<!-- BLOQUE AUTOMATICO INICIO: $($Recipe.SystemName) -->"
        $AutoFooter = "<!-- BLOQUE AUTOMATICO FIN -->"
        $TableBlock = $TableLines -join "`n"
        $NewBlock = "$AutoHeader`r`n### Cantidades Validadas (T05)`r`n$TableBlock`r`n> Actualizado: $(Get-Date -Format 'yyyy-MM-dd')`r`n$AutoFooter"
        
        # Regex multiline para reemplazar bloque existente
        if ($DContent -match "$AutoHeader(.|\n)*$AutoFooter") {
            $DContent = $DContent -replace "$AutoHeader(.|\n)*$AutoFooter", $NewBlock
            Write-Host "  Actualizado $Dish"
        }
        else {
            $DContent += "`r`n`r`n$NewBlock"
            Write-Host "  Anadido a $Dish"
        }
        
        $Cert = "`r`n`r`n---`r`n> CERTIFICACION DE COMPRAS: Sincronizado con T05. Cantidades oficiales."
        if ($DContent -notmatch "CERTIFICACION DE COMPRAS") { $DContent += $Cert }
        
        if (-not $Simulate) { 
            $DContent | Set-Content -LiteralPath $DishFile -Encoding UTF8 
        }
    }
}
Write-Host "Fin." -ForegroundColor Cyan
