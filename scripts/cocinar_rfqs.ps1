
# SCRIPT DE COCINA DE RFQs - VERSION LIMPIA
# FECHA: 27 de Enero 2026
# PROPÓSITO: Sincronizar T05 con RFQs (Rol de Compras)

param(
    [switch]$Simulate = $false
)

$BasePath = ".\"
$T04Path = Join-Path $BasePath "IV. Ingenieria Basica"
$T05Path = Join-Path $BasePath "V. Ingenieria de Detalle"
$DictamenPath = Join-Path $BasePath "VII. Documentos Transversales"
$RFQPath = Join-Path $BasePath "X_ENTREGABLES_CONSOLIDADOS"

# Helper: Extraer seccion de un Markdown por encabezado
# Ahora es mas flexible: busca coincidencias parciales ignorando emojis y numeros
function Get-MarkdownSection($Path, $HeaderRegex) {
    if (-not (Test-Path $Path)) { return "" }
    $Content = Get-Content $Path -Raw -Encoding UTF8
    $Lines = $Content -split "\r?\n"
    $Section = @()
    $InHeader = $false
    foreach ($L in $Lines) {
        # Match flexible: busca la palabra clave en lineas que empiezan con #
        if ($L -match "^#+\s+.*$HeaderRegex") { 
            $InHeader = $true 
            continue 
        }
        # Si ya estamos en la seccion y encontramos otro encabezado del mismo nivel o mayor, salimos
        if ($InHeader -and $L -match "^#+\s+") { 
            break 
        }
        if ($InHeader) { $Section += $L }
    }
    return $Section -join "`r`n"
}

# Mapeo de Ingredientes (T05, T04, Dictamen) a Platos (RFQs)
$RecipeBook = @(
    @{ 
        T05        = "05_T05_Ingenieria_Detalle_CCTV_v1.0.md"; 
        T04        = "T04_SPEC_CCTV_PTZ_v1.0.md";
        Dictamen   = "DICTAMEN_JURIDICO_CCTV_v1.0.md";
        Dishes     = @("RFQ_003_CCTV_v2.0.md"); 
        SystemName = "CCTV" 
    },
    @{ 
        T05        = "04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"; 
        T04        = "T04_SPEC_SOS_v1.0.md";
        Dictamen   = "DICTAMEN_JURIDICO_SOS_v1.0.md";
        Dishes     = @("RFQ_002_SOS_Postes_v2.0.md"); 
        SystemName = "SOS" 
    },
    @{ 
        T05        = "06_T05_Ingenieria_Detalle_PMV_v1.0.md"; 
        T04        = "T04_SPEC_PMV_VMS_v1.0.md";
        Dictamen   = "DICTAMEN_JURIDICO_PMV_v1.0.md";
        Dishes     = @("RFQ_008_PMV_v1.0.md"); 
        SystemName = "PMV" 
    },
    @{ 
        T05        = "07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md"; 
        T04        = "T04_SPEC_RADAR_v1.0.md";
        Dictamen   = "DICTAMEN_JURIDICO_ETD_v1.0.md";
        Dishes     = @("RFQ_006_ETD_v1.0.md", "RFQ_007_RADARES_SANCIONATORIOS_v2.1.md", "RFQ_007_MONITORES_VELOCIDAD_INFORMATIVOS_v2.1.md"); 
        SystemName = "ETD" 
    },
    @{ 
        T05        = "01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md"; 
        T04        = "T04_SPEC_TELECOM_v1.0.md";
        Dictamen   = "DICTAMEN_JURIDICO_FIBRA_v1.0.md";
        Dishes     = @("RFQ_001_FIBRA_OPTICA_v2.0.md"); 
        SystemName = "FIBRA" 
    }
)

Write-Host "[START] Iniciando Cocina de Entregables..." -ForegroundColor Cyan

foreach ($Recipe in $RecipeBook) {
    $T05File = Join-Path $T05Path $Recipe.T05
    if (-not (Test-Path $T05File)) { continue }
    
    Write-Host "[PROC] Procesando $($Recipe.SystemName)" -ForegroundColor Green
    
    # 1. Extraer Cantidades T05
    $T05Content = Get-Content $T05File -Raw -Encoding UTF8
    $T05Lines = $T05Content -split "`n"
    $TableLines = @()
    foreach ($L in $T05Lines) {
        if ($L -match "^\|.*\|.*\|" -and $L -notmatch "Componente" -and $L -notmatch "^\|[-: ]+\|") {
            $TableLines += $L
        }
    }
    
    # 2. Extraer T04 (Matriz de Cumplimiento)
    $T04File = Join-Path $T04Path $Recipe.T04
    $T04Sec = Get-MarkdownSection $T04File "MATRIZ DE CUMPLIMIENTO"
    
    # 3. Extraer Dictamen (Resumen Ejecutivo)
    $DictFile = Join-Path $DictamenPath $Recipe.Dictamen
    $DictSec = Get-MarkdownSection $DictFile "RESUMEN EJECUTIVO PARA EL ABOGADO"
    
    if ($TableLines.Count -eq 0) { continue }
    
    foreach ($Dish in $Recipe.Dishes) {
        $DishFile = Join-Path $RFQPath $Dish
        if (-not (Test-Path $DishFile)) { continue }
        
        $DContent = Get-Content $DishFile -Raw -Encoding UTF8
        $AutoHeader = "<!-- BLOQUE AUTOMATICO INICIO: $($Recipe.SystemName) -->"
        $AutoFooter = "<!-- BLOQUE AUTOMATICO FIN -->"
        $TableBlock = $TableLines -join "`n"
        
        $NewBlock = @"
$AutoHeader
### CANTIDADES Y ESPECIFICACIONES (CERTIFICADO v3.1)

#### Resumen Tecnico (T05)
$TableBlock

#### Matriz de Cumplimiento (T04)
$T04Sec

#### Soporte Juridico (Dictamen)
$DictSec

> **Actualizado:** $(Get-Date -Format 'yyyy-MM-dd HH:mm')
$AutoFooter
"@
        
        if ($DContent -match "(?s)$AutoHeader.*?$AutoFooter") {
            $DContent = [regex]::Replace($DContent, "(?s)$AutoHeader.*?$AutoFooter", $NewBlock)
            Write-Host "  Actualizado $Dish"
        }
        else {
            $DContent += "`r`n`r`n$NewBlock"
            Write-Host "  Anadido a $Dish"
        }
        
        $Cert = "`r`n`r`n---`r`n> **CERTIFICACION AGENTE 3 v3.1**`r`n> Este documento ha sido sincronizado automaticamente. Las cantidades, especificaciones tecnicas y fundamentos juridicos reflejan la ultima version certificada de la Ingenieria de Detalle."
        if ($DContent -notmatch "CERTIFICACION AGENTE 3") { $DContent += $Cert }
        
        if (-not $Simulate) { 
            # Guardamos con UTF8 sin BOM para compatibilidad
            [System.IO.File]::WriteAllText($DishFile, $DContent, [System.Text.UTF8Encoding]::new($false))
        }
    }
}
Write-Host "[OK] Fin de la Cocina." -ForegroundColor Cyan
