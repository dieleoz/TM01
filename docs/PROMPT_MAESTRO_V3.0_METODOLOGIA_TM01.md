# 🎩👷 PROMPT MAESTRO V3.0 - METODOLOGÍA TM01
## ESTRATEGA DE INGENIERÍA ITS PARA PROYECTOS CON DOCUMENTOS DISPERSOS

**Versión:** 3.0 - Adaptado a Arquitectura Contract-First  
**Proyecto:** Concesiones Viales 4G/5G  
**Metodología:** Doble Sombrero (Auditor + Ingeniero)  
**Fecha:** 27 de Enero 2026

---

## 📌 CONTEXTO DEL PROYECTO

**REALIDAD:** Tienes **cientos de documentos dispersos** en múltiples carpetas (I-X), sin conexión clara entre ellos, y necesitas:
1. ✅ Identificar obligaciones contractuales exactas
2. ✅ Evitar glosas y multas
3. ✅ Optimizar costos sin violar el contrato
4. ✅ Generar documentos para diferentes roles (Interventoría, Cliente, Proveedores)
5. ✅ Alimentar el sistema web (frontend) con datos validados

**PROBLEMA:** Sin metodología, es imposible saber:
- ¿Qué documento tiene la verdad?
- ¿Qué cantidad es la correcta?
- ¿Qué normativa aplica?
- ¿Qué archivo debo editar?
- ¿Cómo se conecta todo?

---

## 🎯 OBJETIVO DEL PROMPT MAESTRO V3.0

**Convertir el caos de documentos dispersos en:**
1. **Obligaciones contractuales claras** (¿Qué debo hacer?)
2. **Soluciones técnicas optimizadas** (¿Cómo lo hago gastando menos?)
3. **Documentos trazables** (¿Cómo lo justifico?)
4. **Datos validados para el frontend** (¿Cómo lo muestro?)

---

## ═══════════════════════════════════════════════════════════════════
## 📚 JERARQUÍA DE FUENTES DE VERDAD (Contract-First Architecture)
## ═══════════════════════════════════════════════════════════════════

### **NIVEL 1: DOCUMENTOS CONTRACTUALES (Inmutables)**

**Ubicación:** `II. Apendices Tecnicos/`

| Documento | Propósito | ¿Qué buscar aquí? |
|:----------|:----------|:------------------|
| **AT1_Alcance_Proyecto_v1.0.md** | Cantidades contractuales | Cantidad mínima de equipos, ubicaciones obligatorias |
| **AT2_Operacion_Mantenimiento_v1.0.md** | Requisitos operativos | Especificaciones de peajes, pesajes, CCO |
| **AT3_Especificaciones_Generales_v1.0.md** | Normativas aplicables | Normas técnicas citadas (pueden estar derogadas) |
| **AT4_Indicadores_v1.0.md** | Indicadores de pago | Riesgo de glosa, disponibilidad, tiempos de respuesta |

**Regla de Oro:**
```
SI HAY CONFLICTO ENTRE AT1 Y T05:
  → AT1 GANA (cantidades)
  → T05 define precios
```

---

### **NIVEL 2: INGENIERÍA DE DETALLE (T05) - Fuente de Precios**

**Ubicación:** `V. Ingenieria de Detalle/`

| Documento | Propósito | ¿Qué buscar aquí? |
|:----------|:----------|:------------------|
| **XX_T05_Ingenieria_Detalle_[SISTEMA]_v1.0.md** | Precios unitarios y totales | Tablas de componentes, CAPEX, OPEX |

**Regla de Oro:**
```
T05 DEBE COINCIDIR CON AT1 EN CANTIDADES
SI NO COINCIDE → CORREGIR T05 (NO AT1)
```

---

### **NIVEL 3: DATOS MAESTROS (JavaScript)**

**Ubicación:** `docs/data/tm01_master_data.js`

| Objeto | Propósito | ¿Qué buscar aquí? |
|:-------|:----------|:------------------|
| `pmvSummary`, `sosSummary`, etc. | Cantidades y CAPEX consolidados | Datos que alimentan el frontend |

**Regla de Oro:**
```
DESPUÉS DE EDITAR tm01_master_data.js:
  → EJECUTAR sync_wbs_tm01.ps1
  → NUNCA editar datos_wbs_TM01_items.js manualmente
```

---

### **NIVEL 4: DOCUMENTOS TRANSVERSALES (Justificación)**

**Ubicación:** `VII. Documentos Transversales/`

| Tipo | Propósito | ¿Quién lo lee? |
|:-----|:----------|:---------------|
| **Validaciones Contractuales** | Demostrar cumplimiento de AT1-AT4 | Interventoría, Auditorías |
| **Análisis Técnicos** | Justificar decisiones técnicas | Equipo técnico, Cliente |
| **Decisiones Técnicas (DTs)** | Historial inmutable de cambios | Trazabilidad, Auditorías |

**Regla de Oro:**
```
ESTOS DOCUMENTOS NO ALIMENTAN EL FRONTEND
PERO SON CRÍTICOS PARA DEFENSA TÉCNICA
```

---

### **NIVEL 5: ENTREGABLES CONSOLIDADOS (Para Entregar)**

**Ubicación:** `X_ENTREGABLES_CONSOLIDADOS/`

| Tipo | Propósito | ¿Quién lo recibe? |
|:-----|:----------|:------------------|
| **Presupuestos Consolidados** | Resumen ejecutivo del presupuesto | Cliente, Gerencia |
| **RFQs (Request for Quotation)** | Solicitar cotizaciones | Proveedores |
| **Solicitudes de Compra** | Órdenes de compra | Departamento de compras |

**Regla de Oro:**
```
ESTOS DOCUMENTOS SE GENERAN DESDE T05
NO LOS EDITES MANUALMENTE
```

---

## ═══════════════════════════════════════════════════════════════════
## 🔍 PROTOCOLO DE EJECUCIÓN (BARRIDO PROFUNDO)
## ═══════════════════════════════════════════════════════════════════

### **PASO 1: BARRIDO CONTRACTUAL (AT1, AT2, AT4)**

**Objetivo:** Identificar obligaciones contractuales exactas

**Checklist:**
```
[ ] Buscar el equipo en AT1 (Alcance)
    → ¿Dice "mínimo X unidades"?
    → ¿Especifica ubicaciones (peajes, pesajes, vía)?
    → ¿Define interdistancia máxima?

[ ] Buscar el equipo en AT2 (Operación)
    → ¿Dice "al menos X por cada área de peaje"?
    → ¿Especifica requisitos técnicos?
    → ¿Menciona integración con CCO?

[ ] Buscar el equipo en AT4 (Indicadores)
    → ¿Qué indicador afecta? (O1-O6, E1-E22)
    → ¿Cuál es el Valor de Aceptación?
    → ¿Cuál es el Tiempo Máximo de Corrección?
    → ¿Es medición binaria o proporcional?
```

**⚠️ REGLA DE ORO (Exclusión por Silencio Positivo):**
```
SI EL NUMERAL DE UN SITIO (ej: Pesajes) NO LISTA EL EQUIPO:
  → DECLÁRALO COMO "NO EXIGIDO"
  → NO COMPRES EQUIPOS NO CONTRACTUALES
```

---

### **PASO 2: BLINDAJE NORMATIVO (AT3 + Web)**

**Objetivo:** Identificar normativa vigente (no derogada)

**Checklist:**
```
[ ] Extraer la norma citada en AT3
    → Ejemplo: "Resolución 546/2018"

[ ] Contrastar con normativa VIGENTE en Colombia 2024/2025
    → Buscar en web: "Resolución 546/2018 derogada"
    → Identificar norma que la reemplaza

[ ] Definir especificación técnica que satisface norma ACTUAL
    → Ejemplo: Manual de Señalización 2024 (reemplaza Res. 546/2018)
    → Ejemplo: RETIE 2024 (reemplaza RETIE 2013)
```

**⚠️ REGLA DE ORO (Normativa Sobreviniente):**
```
SI LA NORMA DEL CONTRATO ESTÁ DEROGADA:
  → APLICAR LA NORMA VIGENTE (obligatorio)
  → DOCUMENTAR EN DT (Decisión Técnica)
  → JUSTIFICAR CON CLÁUSULA DE ACTUALIZACIÓN NORMATIVA
```

---

### **PASO 3: INGENIERÍA DE VALOR (Conocimiento de Mercado)**

**Objetivo:** Optimizar costos sin violar contrato

**Checklist:**
```
[ ] Identificar solución de mercado óptima
    → Marca/Modelo referencial
    → Precio de mercado actual
    → Disponibilidad en Colombia

[ ] Argumentar por qué esa solución es mejor/más barata
    → Disponibilidad (99.8% vs. 95%)
    → Mantenimiento ($800/año vs. $2,500/año)
    → CAPEX ($3,000 vs. $18,000)

[ ] Calcular ahorro total
    → Ejemplo: Grid vs. Solar = $375k USD ahorro
```

**⚠️ REGLA DE ORO (Cumplimiento + Ahorro):**
```
LA SOLUCIÓN DEBE:
  ✅ Cumplir AT1/AT2/AT4 (obligatorio)
  ✅ Cumplir normativa vigente (obligatorio)
  ✅ Minimizar CAPEX + OPEX (deseable)
  ✅ Minimizar riesgo de glosa (crítico)
```

---

## ═══════════════════════════════════════════════════════════════════
## 📝 ESTRUCTURA DE SALIDA (DOBLE SOMBRERO)
## ═══════════════════════════════════════════════════════════════════

### **DOCUMENTO 1: ANÁLISIS CONTRACTUAL (Para Interventoría)**

**Ubicación:** `docs/ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.0.md`

**Estructura:**

```markdown
# 🎩👷 ANÁLISIS [SISTEMA] - PROMPT MAESTRO V3.0

## 1️⃣ DECANTACIÓN DE OBLIGACIONES (EL "QUÉ" Y EL "DÓNDE")

| Ubicación | ¿Es Obligatorio? | Fuente Contractual | Cantidad / Detalle |
|:----------|:-----------------|:-------------------|:-------------------|
| **Vía Abierta** | ✅ SÍ / ❌ NO | AT1, Línea XXXX | "Texto exacto del contrato" |
| **Peajes** | ✅ SÍ / ❌ NO | AT2, Línea XXXX | "Texto exacto del contrato" |
| **Pesajes** | ✅ SÍ / ❌ NO | AT2, Línea XXXX | "Texto exacto del contrato" |

**CANTIDAD TOTAL BLINDADA:** [Suma Total Racionalizada]

---

## 2️⃣ ESPECIFICACIONES: CONTRATO vs. MERCADO (EL "CÓMO")

| Componente | Lo que pide el Contrato (Literal) | Solución de Mercado (Experto) | ¿Por qué? (Ahorro/Blindaje) |
|:-----------|:-----------------------------------|:------------------------------|:----------------------------|
| **Tecnología** | [Texto AT2/AT3] | **[Marca/Modelo]** | [Justificación técnica] |
| **Energía** | [Texto AT2] | **[Grid/Solar]** | [Ahorro $XXk] |
| **Protocolo** | [Texto AT3] | **[NTCIP/DATEX II]** | [Cumple normativa vigente] |

---

## 3️⃣ ESTRATEGIA DE DEFENSA Y COMPRA

### 🎩 **AUDITOR (Argumento "No Compra" para [Ubicación]):**

> "De conformidad con el Apéndice Técnico X, Sección Y, Línea Z, el Sistema de Control de Tráfico en [Ubicación] NO incluye [Equipo] en la lista de equipos obligatorios. En aplicación del principio de EXCLUSIÓN POR SILENCIO POSITIVO, la ausencia de mención explícita implica que NO es una obligación contractual."

### 👷 **INGENIERO (Defensa Técnica del Equipo Propuesto):**

> "El equipo propuesto cumple simultáneamente con:
> 1. AT2, Línea XXX: [Requisito]
> 2. Manual [Normativa] 2024: [Especificación]
> 3. [Norma Técnica]: [Certificación]
> 
> Ventajas técnicas vs. solución alternativa:
> - Disponibilidad: XX% vs. YY%
> - Mantenimiento: $X/año vs. $Y/año
> - CAPEX: $X vs. $Y
> - Ahorro total: $XXk USD"

---

## 4️⃣ RIESGO DE GLOSA (EL "POR QUÉ")

**INDICADOR:** [ID] - [Nombre]

**Fuente:** AT4, Líneas XXXX-YYYY

**Valor de Aceptación:** ≥ XX%

**Tiempo Máximo de Corrección:** XX horas

**Consecuencia:** Glosa automática si [Condición]

**Mitigación:**
1. ✅ [Requisito técnico 1]
2. ✅ [Requisito técnico 2]
3. ✅ [Requisito técnico 3]

**Inversión en Mitigación:** $XXk USD  
**ROI:** Evitar 1 glosa mensual ($XXk) = Recuperación en X meses

---

## ⚠️ FUENTES UTILIZADAS

| Documento | Línea | Contenido Exacto |
|:----------|:------|:-----------------|
| **AT1** | XXXX | "Texto exacto" |
| **AT2** | XXXX | "Texto exacto" |
| **AT4** | XXXX | "Texto exacto" |
```

---

### **DOCUMENTO 2: NOTA TÉCNICA CONSOLIDADA (Para Cliente)**

**Ubicación:** `VII. Documentos Transversales/NOTA_TECNICA_[SISTEMA]_CONSOLIDADA.md`

**Estructura:**

```markdown
# 📘 NOTA TÉCNICA CONSOLIDADA: [SISTEMA]

## RESUMEN EJECUTIVO

**Especificación para RFQ:**
> "Suministro de [Sistema] para vía de XXX km/h, cumpliendo [Normativa]. Tecnología [Tipo]. Certificación [Norma]. Incluye [Componentes]."

---

## JUSTIFICACIÓN CONTRACTUAL

### Base Legal
- AT1, Línea XXX: [Texto]
- AT2, Línea XXX: [Texto]
- [Normativa Sobreviniente]: [Texto]

---

## ESPECIFICACIONES TÉCNICAS DETALLADAS

### Hardware
| Parámetro | Especificación Mínima | Cumplimiento |
|:----------|:---------------------|:-------------|
| **Dimensiones** | [Valor] | [Modelo] |
| **Tecnología** | [Valor] | [Modelo] |
| **Protección** | [Valor] | [Norma] |

---

## REQUISITOS DOCUMENTALES

**Para Interventoría:**
1. ✅ Certificado de conformidad [Norma]
2. ✅ Memorias de cálculo estructural
3. ✅ Pruebas de integración
4. ✅ Certificado RETIE 2024
```

---

### **DOCUMENTO 3: GUÍA DE VALIDACIÓN (Para Equipo Técnico)**

**Ubicación:** `docs/GUIA_VALIDACION_FLUJO_[SISTEMA].md`

**Estructura:**

```markdown
# 🔍 GUÍA DE VALIDACIÓN DE FLUJO - [SISTEMA]

## PASO 1: VALIDAR CONTRATO (AT1/AT2)

**Comando PowerShell:**
```powershell
Select-String -Path "II. Apendices Tecnicos\*.md" -Pattern "[SISTEMA]" -CaseInsensitive
```

**Checklist:**
- [ ] Cantidad mínima: XX unidades (AT1, Línea XXXX)
- [ ] Ubicaciones: [Lista] (AT2, Línea XXXX)
- [ ] Disponibilidad: ≥XX% (AT4, Línea XXXX)

---

## PASO 2: VALIDAR T05 (Ingeniería de Detalle)

**Archivo:** `V. Ingenieria de Detalle/XX_T05_Ingenieria_Detalle_[SISTEMA]_v1.0.md`

**Checklist:**
- [ ] Cantidad total coincide con AT1: ✅ / ❌
- [ ] CAPEX total: $XXX,XXX USD
- [ ] Componentes detallados con precios

---

## PASO 3: VALIDAR DATOS MAESTROS

**Archivo:** `docs/data/tm01_master_data.js`

**Comando PowerShell:**
```powershell
Select-String -Path "docs\data\tm01_master_data.js" -Pattern "[sistema]Summary"
```

**Checklist:**
- [ ] cantidad: XX
- [ ] capexUSD: XXXXXX
- [ ] capexUnitarioUSD: XXXXX

---

## PASO 4: SINCRONIZAR WBS

**Comando PowerShell:**
```powershell
powershell -ExecutionPolicy Bypass -File "scripts\sync_wbs_tm01.ps1"
```

**Verificación:**
- [ ] Script ejecutado sin errores
- [ ] `datos_wbs_TM01_items.js` actualizado
- [ ] Suma de items = Total en master_data

---

## PASO 5: VERIFICAR FRONTEND

**Archivos a revisar:**
- `docs/presupuesto.html` → Muestra XX unidades, $XXX,XXX
- `docs/wbs.html` → WBS correcto
- `docs/layout.html` → XX marcadores en mapa
```

---

### **DOCUMENTO 4: RFQ (Para Proveedores)**

**Ubicación:** `X_ENTREGABLES_CONSOLIDADOS/RFQ_XXX_[SISTEMA]_v1.0.md`

**Estructura:**

```markdown
# RFQ-XXX: [SISTEMA]

## ESPECIFICACIONES TÉCNICAS

| Ítem | Descripción | Cantidad | Unidad | Precio Unit. | Total |
|:-----|:------------|:---------|:-------|:-------------|:------|
| **[SISTEMA]-001** | [Descripción] | XX | UND | | |
| **[SISTEMA]-002** | [Descripción] | XX | UND | | |

## REQUISITOS DE CERTIFICACIÓN

1. ✅ Certificado de conformidad [Norma]
2. ✅ Memorias de cálculo estructural
3. ✅ Certificado RETIE 2024

## PLAZO DE ENTREGA

XX días calendario desde orden de compra
```

---

## ═══════════════════════════════════════════════════════════════════
## 🔄 FLUJO DE TRABAJO COMPLETO (Del Contrato al Frontend)
## ═══════════════════════════════════════════════════════════════════

```
┌─────────────────────────────────────────────────────────────┐
│  PASO 1: BARRIDO CONTRACTUAL (AT1/AT2/AT4)                  │
│  🎩 AUDITOR: Identificar obligaciones exactas                │
│  ─────────────────────────────────────────────────────────  │
│  Output: ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.0.md          │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  PASO 2: INGENIERÍA DE VALOR (Mercado)                      │
│  👷 INGENIERO: Optimizar costos sin violar contrato          │
│  ─────────────────────────────────────────────────────────  │
│  Output: NOTA_TECNICA_[SISTEMA]_CONSOLIDADA.md              │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  PASO 3: ACTUALIZAR T05 (Ingeniería de Detalle)             │
│  Editar: V. Ingenieria de Detalle/XX_T05_*.md               │
│  ─────────────────────────────────────────────────────────  │
│  Validar: Cantidades coinciden con AT1 ✅                    │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  PASO 4: ACTUALIZAR DATOS MAESTROS                          │
│  Editar: docs/data/tm01_master_data.js                      │
│  ─────────────────────────────────────────────────────────  │
│  Actualizar: [sistema]Summary { cantidad, capexUSD }        │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  PASO 5: SINCRONIZAR WBS                                    │
│  Ejecutar: powershell sync_wbs_tm01.ps1                     │
│  ─────────────────────────────────────────────────────────  │
│  Output: datos_wbs_TM01_items.js (GENERADO)                 │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  PASO 6: VERIFICAR FRONTEND                                 │
│  Revisar: presupuesto.html, wbs.html, layout.html           │
│  ─────────────────────────────────────────────────────────  │
│  Validar: Datos correctos en dashboards ✅                   │
└────────────────────────┬────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────┐
│  PASO 7: GENERAR ENTREGABLES                                │
│  Crear: RFQ, Validaciones Contractuales, Guías              │
│  ─────────────────────────────────────────────────────────  │
│  Output: Documentos para Cliente/Proveedores/Interventoría  │
└─────────────────────────────────────────────────────────────┘
```

---

## ═══════════════════════════════════════════════════════════════════
## 🎯 ROLES Y DOCUMENTOS (¿Quién lee qué?)
## ═══════════════════════════════════════════════════════════════════

| Rol | Documentos que lee | Propósito |
|:----|:-------------------|:----------|
| **Interventoría** | ANALISIS_[SISTEMA]_PROMPT_MAESTRO_V3.0.md | Validar cumplimiento contractual |
| **Interventoría** | VALIDACION_CONTRACTUAL_[SISTEMA]_v1.0.md | Verificar que cumple AT1-AT4 |
| **Cliente** | NOTA_TECNICA_[SISTEMA]_CONSOLIDADA.md | Entender especificaciones técnicas |
| **Cliente** | PRESUPUESTO_ITS_PURO_v2.0.md | Aprobar presupuesto consolidado |
| **Proveedores** | RFQ_XXX_[SISTEMA]_v1.0.md | Cotizar equipos |
| **Equipo Técnico** | GUIA_VALIDACION_FLUJO_[SISTEMA].md | Validar datos paso a paso |
| **Equipo Técnico** | T04_Especificaciones_Tecnicas_[SISTEMA]_v1.0.md | Diseñar solución técnica |
| **Equipo Técnico** | T05_Ingenieria_Detalle_[SISTEMA]_v1.0.md | Definir precios y componentes |
| **Gerencia** | presupuesto.html (Frontend) | Visualizar presupuesto consolidado |
| **Gerencia** | wbs.html (Frontend) | Visualizar WBS del proyecto |
| **Auditorías** | DTs/ (Decisiones Técnicas) | Trazabilidad de cambios |

---

## ═══════════════════════════════════════════════════════════════════
## ⚠️ ERRORES COMUNES Y CÓMO EVITARLOS
## ═══════════════════════════════════════════════════════════════════

### **Error 1: Violar cantidades contractuales**

❌ **INCORRECTO:**
```markdown
<!-- En T05 -->
| Postes SOS | 100 | $25,000 | $2,500,000 |  # ❌ AT1 dice 88
```

✅ **CORRECTO:**
```markdown
<!-- En T05 -->
| Postes SOS | 88 | $25,000 | $2,200,000 |  # ✅ Coincide con AT1
```

---

### **Error 2: No ejecutar sync_wbs_tm01.ps1**

❌ **INCORRECTO:**
```javascript
// Editar tm01_master_data.js
pmvSummary: { capexUSD: 2070000 }
// Pero NO ejecutar sync_wbs_tm01.ps1  // ❌ ERROR
```

✅ **CORRECTO:**
```powershell
# Después de editar tm01_master_data.js
powershell -ExecutionPolicy Bypass -File "scripts/sync_wbs_tm01.ps1"
```

---

### **Error 3: Aplicar normativa derogada**

❌ **INCORRECTO:**
```markdown
<!-- En T04 -->
Norma aplicable: Resolución 546/2018  # ❌ DEROGADA
```

✅ **CORRECTO:**
```markdown
<!-- En T04 -->
Norma aplicable: Manual de Señalización 2024  # ✅ VIGENTE
Justificación: Res. 546/2018 fue derogada. Manual 2024 es la norma actual.
```

---

### **Error 4: Ignorar riesgo de glosa**

❌ **INCORRECTO:**
```markdown
<!-- En T05 -->
Energía: Solar (bajo costo inicial)
Disponibilidad esperada: 95%  # ❌ INCUMPLE AT4 (≥98%)
```

✅ **CORRECTO:**
```markdown
<!-- En T05 -->
Energía: Grid + UPS 48h
Disponibilidad esperada: 99.8%  # ✅ CUMPLE AT4 (≥98%)
Justificación: Evita glosa O6 (medición binaria)
```

---

## ═══════════════════════════════════════════════════════════════════
## 📊 RESUMEN EJECUTIVO
## ═══════════════════════════════════════════════════════════════════

### **¿Cuándo usar este PROMPT MAESTRO V3.0?**

✅ **Cuando necesites:**
1. Analizar un nuevo sistema ITS (PMV, SOS, CCTV, etc.)
2. Resolver contradicciones entre documentos
3. Identificar obligaciones contractuales exactas
4. Optimizar costos sin violar el contrato
5. Generar documentos para diferentes roles
6. Validar datos antes de actualizar el frontend

---

### **Flujo de Trabajo Resumido:**

```
1. 🎩 AUDITOR: Barrido contractual (AT1/AT2/AT4)
   ↓
2. 👷 INGENIERO: Optimización de costos (Mercado)
   ↓
3. 📝 DOCUMENTAR: Crear análisis, notas técnicas, guías
   ↓
4. 🔄 ACTUALIZAR: T05 → tm01_master_data.js → sync_wbs_tm01.ps1
   ↓
5. ✅ VERIFICAR: Frontend (presupuesto.html, wbs.html)
   ↓
6. 📤 ENTREGAR: RFQs, validaciones, certificaciones
```

---

### **Documentos Generados por Sistema:**

| Sistema | Análisis | Nota Técnica | Guía Validación | RFQ | Validación Contractual |
|:--------|:---------|:-------------|:----------------|:----|:-----------------------|
| **PMV** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **SOS** | ⏳ | ⏳ | ⏳ | ⏳ | ⏳ |
| **CCTV** | ⏳ | ⏳ | ⏳ | ⏳ | ⏳ |
| **ETD/Radar** | ⏳ | ⏳ | ⏳ | ⏳ | ⏳ |
| **WIM** | ⏳ | ⏳ | ⏳ | ⏳ | ⏳ |
| **Peajes** | ⏳ | ⏳ | ⏳ | ⏳ | ⏳ |

---

**Última actualización:** 27 de Enero 2026  
**Versión:** 3.0 - Adaptado a Arquitectura Contract-First  
**Estado:** ✅ METODOLOGÍA VALIDADA CON CASO PMV
