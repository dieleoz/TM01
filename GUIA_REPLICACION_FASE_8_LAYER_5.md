# FASE 8: LAYER 5 - AUTOMATIZACIÓN DE ENTREGABLES

### Duración: 2-3 días

### PASO 8.1: Configurar Scripts de Cocina

Esta fase implementa la **Capa 5 (Servicios)** de la Metodología Punto 42 v3.0, que automatiza la generación de documentos finales listos para cliente y proveedores.

#### **¿Qué es Layer 5?**

Layer 5 transforma los documentos de ingeniería (T01, T05) en entregables finales:
- **RFQs (Solicitudes de Cotización)** con cantidades actualizadas desde T05
- **Resúmenes Ejecutivos** en HTML listos para presentación
- **Certificación automática** de coherencia Ingeniería → Compras

#### **Componentes de Layer 5:**

```
scripts/
├── cocinar_ejecutivos.ps1  → Genera HTMLs ejecutivos desde T01
└── cocinar_rfqs.ps1         → Actualiza RFQs con datos de T05

X_ENTREGABLES_CONSOLIDADOS/
├── 7_SISTEMAS_EJECUTIVOS/   → Resúmenes Markdown
├── 8_DOCUMENTOS_SERVIDOS/   → HTMLs generados
└── RFQ_*.md                 → RFQs con bloques automáticos
```

---

### PASO 8.2: Crear Script cocinar_rfqs.ps1

**Ubicación:** `scripts/cocinar_rfqs.ps1`

**Propósito:** Sincronizar cantidades y precios desde T05 hacia RFQs de compras.

**Código base:**

```powershell
# SCRIPT DE COCINA DE RFQs
# Sincroniza T05 (Ingeniería) con RFQs (Compras)

param([switch]$Simulate = $false)

$BasePath = ".\"
$T05Path = Join-Path $BasePath "V. Ingenieria de Detalle"
$RFQPath = Join-Path $BasePath "X_ENTREGABLES_CONSOLIDADOS"

# Mapeo T05 → RFQ
$RecipeBook = @(
    @{ Ingredient="05_T05_Ingenieria_Detalle_CCTV_v1.0.md"; Dishes=@("RFQ_003_CCTV_v2.0.md"); SystemName="CCTV" },
    @{ Ingredient="04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md"; Dishes=@("RFQ_002_SOS_Postes_v2.0.md"); SystemName="SOS" },
    @{ Ingredient="06_T05_Ingenieria_Detalle_PMV_v1.0.md"; Dishes=@("RFQ_008_PMV_v1.0.md"); SystemName="PMV" }
)

Write-Host "Iniciando Cocina..." -ForegroundColor Cyan

foreach ($Recipe in $RecipeBook) {
    $IngFile = Join-Path $T05Path $Recipe.Ingredient
    if (-not (Test-Path $IngFile)) { continue }
    
    Write-Host "Procesando $($Recipe.SystemName)" -ForegroundColor Green
    
    $Content = Get-Content $IngFile -Raw -Encoding UTF8
    $Lines = $Content -split "`n"
    
    # Extraer tablas de T05
    $TableLines = @()
    foreach ($L in $Lines) {
        if ($L -match "^\|.*\|.*\|" -and $L -notmatch "Componente" -and $L -notmatch "^\|[-: ]+\|") {
            $TableLines += $L
        }
    }
    
    if ($TableLines.Count -eq 0) { continue }
    
    # Inyectar en RFQs
    foreach ($Dish in $Recipe.Dishes) {
        $DishFile = Join-Path $RFQPath $Dish
        if (-not (Test-Path $DishFile)) { continue }
        
        $DContent = Get-Content $DishFile -Raw -Encoding UTF8
        $AutoHeader = "<!-- BLOQUE AUTOMATICO INICIO: $($Recipe.SystemName) -->"
        $AutoFooter = "<!-- BLOQUE AUTOMATICO FIN -->"
        $TableBlock = $TableLines -join "`n"
        $NewBlock = "$AutoHeader`r`n### Cantidades Validadas (T05)`r`n$TableBlock`r`n> Actualizado: $(Get-Date -Format 'yyyy-MM-dd')`r`n$AutoFooter"
        
        if ($DContent -match "$AutoHeader(.|\n)*$AutoFooter") {
            $DContent = $DContent -replace "$AutoHeader(.|\n)*$AutoFooter", $NewBlock
            Write-Host "  Actualizado $Dish"
        } else {
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
```

---

### PASO 8.3: Crear Script cocinar_ejecutivos.ps1

**Ubicación:** `scripts/cocinar_ejecutivos.ps1`

**Propósito:** Generar HTMLs ejecutivos desde resúmenes T01.

**Código base:**

```powershell
# SCRIPT DE COCINA DE EJECUTIVOS
# Genera HTMLs desde Markdown T01

param([switch]$Simulate = $false)

$BasePath = ".\"
$T01Path = Join-Path $BasePath "III. Ingenieria Conceptual"
$OutputPath = Join-Path $BasePath "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML"

if (-not (Test-Path $OutputPath)) {
    New-Item -ItemType Directory -Path $OutputPath -Force | Out-Null
}

# Buscar archivos T01
$T01Files = Get-ChildItem -Path $T01Path -Filter "*T01*.md"

foreach ($File in $T01Files) {
    $MdContent = Get-Content $File.FullName -Raw -Encoding UTF8
    $HtmlFile = Join-Path $OutputPath ($File.BaseName + ".html")
    
    # Convertir Markdown a HTML (requiere pandoc)
    if (Get-Command pandoc -ErrorAction SilentlyContinue) {
        pandoc $File.FullName -o $HtmlFile --standalone --css=style.css
        Write-Host "Generado: $($File.BaseName).html" -ForegroundColor Green
    } else {
        Write-Warning "Pandoc no instalado. Instalar con: choco install pandoc"
    }
}

Write-Host "Ejecutivos generados en: $OutputPath" -ForegroundColor Cyan
```

---

### PASO 8.4: Crear README en X_ENTREGABLES_CONSOLIDADOS

**Ubicación:** `X_ENTREGABLES_CONSOLIDADOS/README.md`

**Contenido:**

```markdown
# README - ENTREGABLES CONSOLIDADOS (LAYER 5)

## 🤖 REGENERACIÓN AUTOMÁTICA

### IMPORTANTE: Estos documentos NO se editan manualmente.

Si necesitas actualizar cantidades, precios o especificaciones:

### Paso 1: Editar la Fuente de Verdad (T05)
Ubicación: `V. Ingenieria de Detalle/`

### Paso 2: Ejecutar el Script de Cocina
```powershell
# Regenerar RFQs (sincroniza T05 → RFQs)
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_rfqs.ps1"

# Regenerar Ejecutivos (sincroniza T01 → HTMLs)
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_ejecutivos.ps1"
```

### Paso 3: Verificar los Cambios
Los archivos RFQ ahora tendrán un bloque automático al final con datos actualizados.

## 🛡️ CERTIFICACIÓN DE COMPRAS

Todos los RFQs incluyen un sello de certificación que garantiza alineación con ingeniería.
```

---

### PASO 8.5: Ejecutar Scripts por Primera Vez

```powershell
# Desde la raíz del proyecto

# 1. Generar RFQs
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_rfqs.ps1"

# 2. Generar Ejecutivos
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_ejecutivos.ps1"

# 3. Verificar resultados
# Abrir: X_ENTREGABLES_CONSOLIDADOS/RFQ_003_CCTV_v2.0.md
# Buscar: <!-- BLOQUE AUTOMATICO INICIO -->
```

---

### PASO 8.6: Integrar en Workflow de Cambios

Cada vez que actualices un T05, ejecuta los scripts:

```bash
# Workflow completo
1. Editar: V. Ingenieria de Detalle/XX_T05_[SISTEMA]_v1.0.md
2. Ejecutar: scripts/sync_wbs_tm01.ps1 (actualiza web)
3. Ejecutar: scripts/cocinar_rfqs.ps1 (actualiza RFQs)
4. Ejecutar: scripts/cocinar_ejecutivos.ps1 (actualiza HTMLs)
5. Verificar: X_ENTREGABLES_CONSOLIDADOS/
6. Commit: git add -A && git commit -m "feat: update [SISTEMA]"
```

---

### CHECKLIST FASE 8:

- [ ] ✅ Script `cocinar_rfqs.ps1` creado
- [ ] ✅ Script `cocinar_ejecutivos.ps1` creado
- [ ] ✅ README creado en `X_ENTREGABLES_CONSOLIDADOS/`
- [ ] ✅ Scripts ejecutados por primera vez
- [ ] ✅ RFQs verificados (bloques automáticos presentes)
- [ ] ✅ Ejecutivos HTML generados
- [ ] ✅ Workflow documentado en README del proyecto

---

**Resultado:** Entregables finales se generan automáticamente en ~6 segundos, garantizando coherencia total entre Ingeniería → Compras → Cliente.
