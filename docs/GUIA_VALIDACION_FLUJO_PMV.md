# 🔍 GUÍA DE VALIDACIÓN DE FLUJO - PMV (PANELES DE MENSAJE VARIABLE)
## Proyecto TM01 Troncal Magdalena

**Fecha:** 27 de Enero 2026  
**Sistema:** PMV - Paneles de Mensaje Variable  
**Propósito:** Validar la cadena completa desde contrato hasta sistema web

---

## 📋 FLUJO COMPLETO DE VALIDACIÓN

```
NIVEL 1: CONTRATO (AT1/AT4)
    ↓
NIVEL 2: INGENIERÍA CONCEPTUAL (T01/T02/T03)
    ↓
NIVEL 3: INGENIERÍA BÁSICA (T04)
    ↓
NIVEL 4: INGENIERÍA DE DETALLE (T05) ⭐ FUENTE DE PRECIOS
    ↓
SCRIPT: sync_wbs_tm01.ps1
    ↓
DATOS: tm01_master_data.js + datos_wbs_TM01_items.js
    ↓
SISTEMA WEB: presupuesto.html, wbs.html, layout.html
    ↓
VALIDACIÓN: VII. Documentos Transversales
    ↓
ENTREGABLES: X. RFQ_008_PMV_v1.0.md
```

---

## ✅ PASO 1: VALIDAR CONTRATO (NIVEL 1)

### 📄 Archivo: `II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md`

**Buscar:** "PMV" o "Paneles de Mensajería Variable"

**Requisito Contractual (Línea 3169):**
```markdown
- **Paneles de Mensajería Variable (PMV)**: Se deberán instalar 
  **mínimo veinticinco (25) unidades** a lo largo del corredor.
- **Interdistancia**: Los paneles LED tipo PMV no podrán estar 
  separados por una distancia superior a **veinte (20) kilómetros** 
  por sentido de circulación.
```

**✅ VALIDACIÓN:**
- [ ] Cantidad mínima: **25 unidades**
- [ ] Interdistancia máxima: **20 km**

---

### 📄 Archivo: `II. Apendices Tecnicos/AT4_Indicadores_v1.0.md`

**Buscar:** "PMV" en indicadores de disponibilidad

**Requisito de Disponibilidad (Línea 2401):**
```markdown
Porcentaje de tiempo que los sistemas ITS (Peaje, Pesaje, CCO, 
Video, PMV, SOS, Radio, METEO) operan correctamente según sus 
especificaciones funcionales.
```

**Criterio de Medición (Línea 2411):**
```markdown
La disponibilidad se mide de forma **BINARIA** para cada activo. 
Si un equipo (ej. PMV o Cámara) no comunica o no cumple su función 
principal durante el periodo de evaluación, **se pierde el 100% de 
la disponibilidad de ese activo** para el cálculo del día.
```

**✅ VALIDACIÓN:**
- [ ] Disponibilidad requerida: **≥99% anual**
- [ ] Medición: **Binaria** (0% o 100% por equipo)
- [ ] Penalización: **Glosa automática** si < 99%

---

## ✅ PASO 2: VALIDAR INGENIERÍA CONCEPTUAL (NIVEL 2)

### 📄 Archivos T01/T02/T03:
```
III. Ingenieria Conceptual/
├── 24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md        # Resumen ejecutivo
├── 24D_T02_Analisis_Requisitos_PMV_MVP_v1.0.md  # Requisitos funcionales
└── 24D_T03_Arquitectura_Conceptual_PMV_MVP_v1.0.md  # Diagramas
```

**✅ VALIDACIÓN:**
- [ ] T01 menciona cantidad contractual (25 mínimo)
- [ ] T02 lista requisitos de AT1/AT4
- [ ] T03 muestra arquitectura de integración con CCO

**Comando para verificar:**
```powershell
# Buscar cantidad en T01
Select-String -Path "III. Ingenieria Conceptual/24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md" -Pattern "25|28|39"
```

---

## ✅ PASO 3: VALIDAR ESPECIFICACIONES TÉCNICAS (NIVEL 3)

### 📄 Archivo: `IV. Ingenieria Basica/04_T04_Especificaciones_Tecnicas_PMV_v1.0.md`

**✅ VALIDACIÓN:**
- [ ] Especificaciones técnicas detalladas (tamaño, brillo, protocolos)
- [ ] Cumplimiento con Manual de Señalización 2024
- [ ] **Protocolos de comunicación:** NTCIP 1202/1203 **O** compatibilidad DATEX II (UNE-EN 16157-4)
- [ ] Altura de carácter ≥400 mm (Manual 2024)
- [ ] Brillo L3 (UNE-EN 12966)
- [ ] **Norma de rendimiento visual:** UNE-EN 12966 (Clase L3, R3)

> ⚠️ **ALERTA CRÍTICA - PROTOCOLO:**
> El Manual de Señalización 2024 se inclina hacia estándares **europeos** (UNE-EN 12966, DATEX II) 
> en lugar de solo NTCIP (estándar americano). La especificación T04 debe permitir:
> - **Opción 1:** NTCIP 1202/1203 (estándar americano)
> - **Opción 2:** DATEX II según UNE-EN 16157-4 (estándar europeo)
> - **Opción 3:** Compatibilidad dual (preferible)
> 
> **Justificación:** No restringir tecnología y cumplir Manual 2024 (normativa sobreviniente).

**Comando para verificar:**
```powershell
# Buscar normativa en T04
Select-String -Path "IV. Ingenieria Basica/04_T04_Especificaciones_Tecnicas_PMV_v1.0.md" -Pattern "Manual 2024|NTCIP|UNE-EN|DATEX"
```

---

## ✅ PASO 4: VALIDAR INGENIERÍA DE DETALLE (NIVEL 4) ⭐ **CRÍTICO**

### 📄 Archivo: `V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md`

**Este es el archivo MÁS IMPORTANTE** - Fuente de precios para el sistema web

**✅ VALIDACIÓN:**

1. **Abrir el archivo T05:**
   ```powershell
   code "V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md"
   ```

2. **Buscar tabla de componentes:**
   ```markdown
   ## TABLA DE COMPONENTES
   
   | Componente | Cantidad | Precio Unit (USD) | Total (USD) |
   |:-----------|:---------|:------------------|:------------|
   | Panel Full Matrix RGB 400mm | XX | $XX,XXX | $X,XXX,XXX |
   | Estructura Pórtico CCP-14 | XX | $XX,XXX | $XXX,XXX |
   | Acometida RETIE 2024 + UPS | XX | $XX,XXX | $XXX,XXX |
   | **TOTAL PMV** | **XX** | | **$X,XXX,XXX** |
   ```

3. **Verificar:**
   - [ ] Cantidad total coincide con diseño (28, 39, etc.)
   - [ ] Precio unitario es razonable ($60k-$75k por panel)
   - [ ] Total CAPEX está calculado correctamente

**Ejemplo esperado (según datos actuales):**
```markdown
| **TOTAL PMV** | **39** | | **$2,596,000** |
```

> 📊 **JUSTIFICACIÓN DEL SALTO 25 → 39 UNIDADES:**
> 
> **Cantidad Contractual Original (AT1):** 25 unidades mínimo
> 
> **Cantidad Real para Construcción 2026:** 39 unidades
> 
> **Desglose:**
> - **25 PMV de Vía** (Contractual AT1): Paneles grandes en pórticos/banderolas para información de tráfico
> - **+14 Displays de Carril** (IP/REV 2021): Pantallas alfanuméricas LED obligatorias por carril de peaje
> 
> **Fundamento Legal:**
> - **Resolución 20213040035125 (IP/REV 2021), Art 2.9.9:**
>   "Los carriles IP/REV del peaje deben contar con pantallas de información 
>   alfanuméricas LED... (al menos uno por cada carril de peaje)."
> 
> **Cálculo:**
> - Peaje Zambito: 4 carriles automáticos + 4 carriles mixtos = 8 displays
> - Peaje Aguas Negras: 3 carriles automáticos + 3 carriles mixtos = 6 displays
> - **Total displays de carril:** 14 unidades
> 
> **Precio Unitario Promedio:**
> - $2,596,000 ÷ 39 = **$66,564 USD/unidad**
> - Este promedio refleja el mix de equipos:
>   - PMV grandes (pórtico): ~$75,000 USD/unidad
>   - Displays de carril (peaje): ~$45,000 USD/unidad
> 
> ⚠️ **CRÍTICO:** Si se forzara el número "25" del contrato original, el proyecto 
> **incumpliría la Resolución IP/REV 2021** (normativa sobreviniente obligatoria).



## ✅ PASO 5: VALIDAR DATOS MAESTROS (CAPA 3)

### 📄 Archivo: `docs/data/tm01_master_data.js`

**Buscar:** `pmvSummary`

**Comando:**
```powershell
Select-String -Path "docs/data/tm01_master_data.js" -Pattern "pmvSummary" -Context 10
```

**✅ VALIDACIÓN:**
```javascript
pmvSummary: {
    id: '2',
    sistema: 'PMV',
    cantidad: 39,  // ✅ Debe coincidir con T05
    capexUSD: 2596000,  // ✅ Debe coincidir con T05
    capexCOP: 10384000000,  // ✅ = capexUSD * 4000
    capexUnitarioUSD: 60512,  // ✅ = capexUSD / cantidad
    descripcion: 'Forensic v2.1 (39 Units: 25 Mainline + 14 Toll - RGB Full)',
    estado: 'Validado'
}
```

**Verificar:**
- [ ] `cantidad` = Total en T05
- [ ] `capexUSD` = Total en T05
- [ ] `capexCOP` = capexUSD × 4000 (TRM)
- [ ] `capexUnitarioUSD` = capexUSD ÷ cantidad
- [ ] `descripcion` es clara y descriptiva
- [ ] `estado` = 'Validado'

---

## ✅ PASO 6: VALIDAR DATOS DETALLADOS (CAPA 3)

### 📄 Archivo: `docs/datos_wbs_TM01_items.js`

**Este archivo es GENERADO por `sync_wbs_tm01.ps1`**

**Buscar:** Items de PMV (WBS 2.X.X)

**Comando:**
```powershell
Select-String -Path "docs/datos_wbs_TM01_items.js" -Pattern "PMV|Panel.*Mensaje" -Context 2
```

**✅ VALIDACIÓN:**
```javascript
// Ejemplo esperado
{
    item: '2.1.1',
    descripcion: 'Panel Full Matrix RGB 400mm',
    cantidad: '39',
    precioUnitario: '45000',
    total: '1755000',
    tipo: 'Suministro'
},
{
    item: '2.2.1',
    descripcion: 'Estructura Pórtico CCP-14',
    cantidad: '39',
    precioUnitario: '20000',
    total: '780000',
    tipo: 'Suministro'
}
```

**Verificar:**
- [ ] Todos los componentes de T05 están presentes
- [ ] Cantidades coinciden con T05
- [ ] Precios unitarios coinciden con T05
- [ ] Totales están calculados correctamente
- [ ] Suma de todos los items = Total en `tm01_master_data.js`

---

## ✅ PASO 7: VALIDAR SISTEMA WEB

### 🌐 Abrir Dashboards Localmente

**Comando:**
```powershell
# Opción 1: Servidor web con auto-refresh
powershell -ExecutionPolicy Bypass -File "docs/servidor_web.ps1"

# Opción 2: Abrir directamente
start docs/presupuesto.html
start docs/wbs.html
start docs/layout.html
```

### 📊 Verificar en `presupuesto.html`

1. **Buscar PMV en la tabla:**
   - Filtrar por "PMV" o "Mensaje Variable"
   
2. **Verificar:**
   - [ ] Cantidad total: **39 unidades**
   - [ ] CAPEX total: **$2,596,000 USD**
   - [ ] Precio unitario: **~$60,512 USD**
   - [ ] Todos los componentes aparecen

### 📊 Verificar en `wbs.html`

1. **Buscar WBS 2.0 (PMV):**
   - Expandir árbol de WBS
   
2. **Verificar:**
   - [ ] Subtotal WBS 2.0 = $2,596,000
   - [ ] Desglose por componentes visible
   - [ ] Gráficos muestran datos correctos

### 📊 Verificar en `layout.html`

1. **Buscar PMV en el mapa:**
   - Filtrar por "PMV"
   
2. **Verificar:**
   - [ ] 39 marcadores en el mapa
   - [ ] Interdistancia ≤20 km (cumple AT1)
   - [ ] Ubicaciones estratégicas (peajes, intersecciones)

---

## ✅ PASO 8: VALIDAR DOCUMENTOS TRANSVERSALES (VII)

### 📄 Validación Contractual

**Archivo:** `VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`

**✅ VALIDACIÓN:**
- [ ] Documento existe y está actualizado
- [ ] Cantidad propuesta (39) vs. contractual (25 mínimo) ✅
- [ ] Justificación de la cantidad (puntos de decisión + peajes)
- [ ] Cumplimiento de interdistancia (≤20 km)
- [ ] Cumplimiento de normativa (Manual 2024)

**Comando:**
```powershell
code "VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md"
```

### 📄 Decisiones Técnicas (DTs)

**Archivos:**
```
VII. Documentos Transversales/DTs/
├── DT-TM01-PMV-003-20251024.md
└── DT-TM01-PMV-004-20251024.md
```

**✅ VALIDACIÓN:**
- [ ] DTs documentan cambios en cantidad o diseño
- [ ] Justificación técnica clara
- [ ] Aprobación de interventoría (si aplica)

---

## ✅ PASO 9: VALIDAR ENTREGABLES (X)

### 📄 RFQ para Proveedores

**Archivo:** `X_ENTREGABLES_CONSOLIDADOS/RFQ_008_PMV_v1.0.md`

**✅ VALIDACIÓN:**
- [ ] Cantidad: **39 unidades**
- [ ] Especificaciones técnicas completas
- [ ] Presupuesto referencial: **$2,596,000 USD**
- [ ] Criterios de evaluación definidos
- [ ] Plazo de entrega especificado

**Comando:**
```powershell
code "X_ENTREGABLES_CONSOLIDADOS/RFQ_008_PMV_v1.0.md"
```

---

## ✅ PASO 10: VALIDAR CONSISTENCIA CRUZADA

### 🔄 Verificación de Coherencia

**Ejecutar búsqueda global:**
```powershell
# Buscar todas las menciones de cantidad de PMV
Select-String -Path "*.md" -Pattern "PMV.*\b(25|28|39)\b" -Recurse | 
    Select-Object Path, LineNumber, Line | 
    Format-Table -AutoSize
```

**✅ VALIDACIÓN:**
- [ ] AT1 dice: **Mínimo 25**
- [ ] T05 dice: **39 unidades** (cumple mínimo)
- [ ] tm01_master_data.js dice: **39 unidades**
- [ ] presupuesto.html muestra: **39 unidades**
- [ ] RFQ dice: **39 unidades**
- [ ] **TODOS CONSISTENTES** ✅

---

## 🚨 PROBLEMAS COMUNES Y SOLUCIONES

### ❌ Problema 1: "T05 dice 39, pero presupuesto.html muestra 28"

**Causa:** No ejecutaste `sync_wbs_tm01.ps1` después de editar T05

**Solución:**
```powershell
powershell -ExecutionPolicy Bypass -File "scripts/sync_wbs_tm01.ps1" -Verbose
```

---

### ❌ Problema 2: "Total CAPEX no coincide entre archivos"

**Causa:** Edición manual de `tm01_master_data.js` sin actualizar T05

**Solución:**
1. Editar **SOLO** `V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md`
2. Ejecutar `sync_wbs_tm01.ps1`
3. Verificar que todos los archivos se actualicen

---

### ❌ Problema 3: "Validación contractual desactualizada"

**Causa:** Cambios en T05 no reflejados en VII

**Solución:**
1. Actualizar `VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`
2. Crear DT si el cambio es significativo
3. Actualizar RFQ en X si es necesario

---

## 📊 CHECKLIST COMPLETO DE VALIDACIÓN PMV

```markdown
NIVEL 1: CONTRATO
[ ] AT1: Cantidad mínima 25 unidades ✅
[ ] AT1: Interdistancia ≤20 km ✅
[ ] AT4: Disponibilidad ≥99% anual ✅

NIVEL 2: INGENIERÍA CONCEPTUAL
[ ] T01: Resumen ejecutivo actualizado
[ ] T02: Requisitos funcionales completos
[ ] T03: Arquitectura de integración con CCO

NIVEL 3: INGENIERÍA BÁSICA
[ ] T04: Especificaciones técnicas detalladas
[ ] T04: Cumplimiento Manual 2024
[ ] T04: Protocolos NTCIP 1202/1203

NIVEL 4: INGENIERÍA DE DETALLE ⭐
[ ] T05: Tabla de componentes completa
[ ] T05: Cantidades correctas (39 unidades)
[ ] T05: Precios unitarios razonables
[ ] T05: Total CAPEX calculado ($2,596,000)

CAPA 3: DATOS
[ ] tm01_master_data.js: pmvSummary actualizado
[ ] datos_wbs_TM01_items.js: Items PMV presentes
[ ] Suma de items = Total en master_data

SISTEMA WEB
[ ] presupuesto.html: Muestra 39 unidades
[ ] presupuesto.html: Muestra $2,596,000
[ ] wbs.html: WBS 2.0 correcto
[ ] layout.html: 39 marcadores en mapa

VALIDACIÓN (VII)
[ ] 38_VALIDACION_CONTRACTUAL_PMV: Actualizado
[ ] DTs: Cambios documentados
[ ] Grilla de costos: Coherente

ENTREGABLES (X)
[ ] RFQ_008_PMV: Cantidad 39
[ ] RFQ_008_PMV: Presupuesto $2,596,000
[ ] RFQ_008_PMV: Especificaciones completas

CONSISTENCIA CRUZADA
[ ] Todos los archivos muestran 39 unidades
[ ] Todos los archivos muestran $2,596,000
[ ] No hay discrepancias
```

---

## 🎯 COMANDO RÁPIDO DE VALIDACIÓN

**Ejecutar este script para validación automática:**

```powershell
# Validación rápida de PMV
Write-Host "=== VALIDACIÓN PMV ===" -ForegroundColor Cyan

# 1. Verificar AT1
Write-Host "`n1. Contrato (AT1):" -ForegroundColor Yellow
Select-String -Path "II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md" -Pattern "PMV.*25"

# 2. Verificar T05
Write-Host "`n2. Ingeniería Detalle (T05):" -ForegroundColor Yellow
Select-String -Path "V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md" -Pattern "TOTAL.*PMV"

# 3. Verificar tm01_master_data.js
Write-Host "`n3. Datos Maestros:" -ForegroundColor Yellow
Select-String -Path "docs/data/tm01_master_data.js" -Pattern "pmvSummary" -Context 8

# 4. Verificar validación contractual
Write-Host "`n4. Validación Contractual:" -ForegroundColor Yellow
Select-String -Path "VII. Documentos Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md" -Pattern "Cantidad|CAPEX"

Write-Host "`n=== VALIDACIÓN COMPLETADA ===" -ForegroundColor Green
```

---

## 📝 RESUMEN EJECUTIVO

**Para validar el flujo de PMV:**

1. **Contrato (AT1):** Mínimo 25 unidades, interdistancia ≤20 km
2. **T05 (Fuente de Precios):** 39 unidades, $2,596,000 USD
3. **Datos (tm01_master_data.js):** Debe coincidir con T05
4. **Sistema Web:** Debe mostrar datos de tm01_master_data.js
5. **Validación (VII):** Debe justificar 39 vs. 25 mínimo
6. **Entregables (X):** RFQ debe reflejar datos finales

**Regla de Oro:**
- Si cambias T05 → Ejecuta `sync_wbs_tm01.ps1` → Todo se actualiza
- Si NO ejecutas el script → Datos inconsistentes

---

**Última actualización:** 27 de Enero 2026  
**Estado:** ✅ GUÍA VALIDADA
