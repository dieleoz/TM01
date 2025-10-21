# ANÁLISIS DE ALTERNATIVAS - FIBRA ÓPTICA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 22/10/2025  
**Documento:** Análisis de Alternativas Técnico-Económicas  
**Sistema:** Telecomunicaciones - Fibra Óptica  
**Responsable:** Ing. Telecomunicaciones / Ingeniería de Costos  
**Versión:** 1.0  
**Estado:** 🟡 **PARA EVALUACIÓN FUTURA (Case IF)**  

---

## 1. PROPÓSITO DEL DOCUMENTO

Este documento presenta **alternativas técnicas y económicas** para la instalación de fibra óptica en el proyecto, identificadas durante la fase de presupuestación inicial.

**Objetivo:** Documentar opciones de optimización de costos sin modificar el presupuesto base actual, para evaluación en fases posteriores (licitación, value engineering, negociación con contratistas).

---

## 2. CONFIGURACIÓN ACTUAL (BASELINE)

### 2.1 Especificación Técnica Actual

| Parámetro | Especificación |
|:----------|:---------------|
| **Cable Fibra Óptica** | LPOC52120484ZC |
| **Descripción** | 48 fibras monomodo G.652D, tubo gel, chaqueta PE, cinta acero corrugado |
| **Instalación** | **Subterránea en ductos (Tritubo)** |
| **Longitud Cable 48h** | 273,760 ML |
| **Longitud Cable 12h** | 9,440 ML |
| **Longitud Tritubo** | 259,600 ML |

#### **Criterio de Cajas (Instalación en Tritubo):**
| Tipo de Caja | Ubicación | Cantidad | Especificación |
|:-------------|:----------|:---------|:---------------|
| **Cajas de Paso** | Cada 300 metros | ~866 cajas | 80x80x80 cm (dimensiones internas) |
| **Cajas Empalme ITS** | En cada punto ITS | ~227 cajas | Según tipo de equipo |
| **Cajas Especiales** | Puentes y estructuras especiales | Variable | 2 cajas de 80x80 por cruce |
| **TOTAL CAJAS** | - | **1,093 UND** | Incluido en presupuesto |

### 2.2 Costos Actuales (Baseline)

#### **MATERIALES:**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:-------------------|:------------|
| **Fibra 48 hilos** | 273,760 ML | $1.65 | $451,704 |
| **Fibra 12 hilos** | 9,440 ML | $1.65 | $15,576 |
| **Tubería Tritubo** | 259,600 ML | $4.125 | $1,070,850 |
| **Cajas Empalme** | 1,093 UND | $487 | $532,291 |
| **Empalmes/Conectores** | 1 GLB | - | $320,000 |
| **SUBTOTAL MATERIALES** | | | **$2,390,421** |

#### **INSTALACIÓN:**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:-------------------|:------------|
| **Instalación Fibra** | 269,040 ML | $1.31 | $352,442 |
| **Excavación Asfalto** | 23,600 ML | $19.98 | $471,528 |
| **Excavación Andén** | 11,800 ML | $19.98 | $235,764 |
| **Excavación Blanda** | 207,444 ML | $11.42 | $2,369,010 |
| **Cruces Especiales** | 12,103 ML | $50.00 | $605,150 |
| **Instalación Switches** | 1 GLB | - | $37,800 |
| **SUBTOTAL INSTALACIÓN** | | | **$4,071,694** |

#### **ADMINISTRACIÓN + AIU:**
| Concepto | % | Base | Total (USD) |
|:---------|:--|:-----|:------------|
| **Administración** | 8% | $6,462,115 | $516,969 |
| **Imprevistos** | 5% | $6,462,115 | $323,106 |
| **Utilidad** | 3% | $6,462,115 | $193,863 |
| **IVA** | 16% | $193,863 | $31,018 |
| **SUBTOTAL AIU** | | | **$1,064,996** |

#### **TOTAL BASELINE:**
```
📦 Materiales:              $2,390,421 USD (31%)
🔨 Instalación:             $4,071,694 USD (52%)
📊 Administración + AIU:    $1,064,996 USD (14%)
────────────────────────────────────────────────
   TOTAL FIBRA ÓPTICA:      $7,527,111 USD (100%)
```

---

## 3. ALTERNATIVAS PROPUESTAS (CASE IF)

### 3.1 ALTERNATIVA A: Cable Doble Chaqueta (Sin Tritubo)

### 3.1 Especificación Técnica Alternativa

| Parámetro | Especificación |
|:----------|:---------------|
| **Cable Fibra Óptica** | **LPOC03120484ZC** |
| **Descripción** | **48 fibras monomodo G.652D, tubo gel, DOBLE CHAQUETA (HDPE + MDPE), cinta acero corrugado** |
| **Instalación** | **Subterránea DIRECTA ENTERRADA (SIN Tritubo)** |
| **Longitud Cable 48h** | 273,760 ML |
| **Longitud Cable 12h** | 9,440 ML |
| **Longitud Tritubo** | **0 ML** ✅ |

### 3.2 Ventajas Técnicas

#### **✅ PROTECCIÓN MEJORADA:**
- **Doble chaqueta:** HDPE (interna) + MDPE (externa)
- **Mayor resistencia:** Contra humedad, roedores, esfuerzos mecánicos
- **Cinta de acero corrugado:** Protección contra impactos

#### **✅ CUMPLIMIENTO NORMATIVO Y CONTRACTUAL:**
- **Norma:** G.652D (mismo que baseline)
- **Tipo:** Monomodo OS2 (mismo que baseline)
- **Atenuación:** ≤0.35 dB/km @ 1310 nm (cumple)
- **Dispersión:** ≤18 ps/(nm·km) (cumple)
- **✅ CUMPLE AT3 DEL CONTRATO** (validado por Ingeniería)

#### **✅ INSTALACIÓN:**
- **Método:** Directa enterrada (sin ductos)
- **Profundidad:** 0.8-1.0 m (misma que baseline)
- **Protección:** Cama de arena + cinta señalizadora
- **Ventaja:** Instalación más rápida
- **⚠️ CAJAS DE PASO:** No requiere cajas cada 300m (a diferencia de Tritubo)

#### **⚠️ Criterio de Cajas (Instalación Directa):**
| Tipo de Caja | Ubicación | Cantidad | Especificación |
|:-------------|:----------|:---------|:---------------|
| **~~Cajas de Paso~~** | ~~Cada 300 metros~~ | **0 cajas** ✅ | **NO REQUERIDAS** |
| **Cajas Empalme ITS** | En cada punto ITS | ~227 cajas | Según tipo de equipo |
| **Cajas Especiales** | Puentes y estructuras especiales | Variable | 2 cajas de 80x80 por cruce |
| **TOTAL CAJAS** | - | **~227 UND** | **-866 cajas vs Baseline** ✅ |

**💰 Ahorro adicional en cajas de paso:**
- Baseline: 866 cajas × $487 USD = **$421,642 USD**
- Alternativa: 0 cajas × $487 USD = **$0 USD**
- **AHORRO ADICIONAL: $421,642 USD** ✅

### 3.3 Costos Estimados (Alternativa)

#### **MATERIALES:**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Δ vs Baseline |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **Fibra 48h doble chaqueta** | 273,760 ML | $1.07 | $292,923 | **-$158,781** ✅ |
| **Fibra 12 hilos** | 9,440 ML | $1.65 | $15,576 | $0 |
| **~~Tubería Tritubo~~** | ~~259,600 ML~~ | ~~$4.125~~ | **$0** | **-$1,070,850** ✅ |
| **Importación (estimado 30%)** | 1 GLB | - | $92,650 | **+$92,650** ❌ |
| **Cajas Empalme (solo ITS)** | 227 UND | $487 | $110,549 | **-$421,742** ✅ |
| **Empalmes/Conectores** | 1 GLB | - | $320,000 | $0 |
| **SUBTOTAL MATERIALES** | | | **$831,698** | **-$1,558,723** ✅ |

#### **INSTALACIÓN:**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Δ vs Baseline |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **Instalación Fibra directa** | 269,040 ML | $1.31 | $352,442 | $0 |
| **Excavación Asfalto** | 23,600 ML | $19.98 | $471,528 | $0 |
| **Excavación Andén** | 11,800 ML | $19.98 | $235,764 | $0 |
| **Excavación Blanda** | 207,444 ML | $11.42 | $2,369,010 | $0 |
| **Cruces Especiales** | 12,103 ML | $50.00 | $605,150 | $0 |
| **Instalación Switches** | 1 GLB | - | $37,800 | $0 |
| **SUBTOTAL INSTALACIÓN** | | | **$4,071,694** | $0 |

**Nota:** Los costos de excavación son los mismos porque la profundidad y ancho de zanja son idénticos. La diferencia es que NO se instala el ducto Tritubo.

#### **ADMINISTRACIÓN + AIU:**
| Concepto | % | Base | Total (USD) | Δ vs Baseline |
|:---------|:--|:-----|:------------|:--------------|
| **Administración** | 8% | $5,325,134 | $426,011 | **-$90,958** ✅ |
| **Imprevistos** | 5% | $5,325,134 | $266,257 | **-$56,849** ✅ |
| **Utilidad** | 3% | $5,325,134 | $159,754 | **-$34,109** ✅ |
| **IVA** | 16% | $159,754 | $25,561 | **-$5,457** ✅ |
| **SUBTOTAL AIU** | | | **$877,583** | **-$187,413** ✅ |

#### **TOTAL ALTERNATIVA:**
```
📦 Materiales:              $1,253,440 USD (23%) ⬇️
🔨 Instalación:             $4,071,694 USD (75%)
📊 Administración + AIU:    $  877,583 USD (16%) ⬇️
────────────────────────────────────────────────
   TOTAL FIBRA ÓPTICA:      $6,202,717 USD (100%)
```

### 3.3 ALTERNATIVA C: Microfibra + Microducto (Sin L2/L3)

#### **3.3.1 Especificación Técnica Alternativa C**

| Parámetro | Especificación |
|:----------|:---------------|
| **Cable Fibra Óptica** | **Micro cable de fibra óptica monomodo, de 48 hilos** |
| **Instalación** | **Microducto de 10/8mm en micro zanjado** |
| **Longitud Cable 48h** | 291,122 ML |
| **Longitud Microducto** | 280,724 ML |
| **Equipos L2/L3** | **NO INCLUIDOS** (arquitectura simplificada) |

#### **3.3.2 Ventajas Técnicas Alternativa C**

#### **✅ INSTALACIÓN SIMPLIFICADA:**
- **Microducto:** Diámetro reducido (10/8mm vs 40mm Tritubo)
- **Micro zanjado:** Excavación menor profundidad/ancho
- **Menos obra civil:** Reducción significativa en excavación
- **Instalación más rápida:** Menor tiempo de obra

#### **✅ ARQUITECTURA SIMPLIFICADA:**
- **Sin equipos L2/L3:** Elimina complejidad de red
- **Menos puntos de falla:** Reducción de equipos activos
- **Menor mantenimiento:** Solo infraestructura pasiva
- **Menor consumo energético:** Sin equipos de red

#### **✅ CUMPLIMIENTO NORMATIVO:**
- **Norma:** G.652D (mismo que baseline)
- **Tipo:** Monomodo OS2 (mismo que baseline)
- **✅ CUMPLE AT3 DEL CONTRATO** (validado por Ingeniería)

#### **3.3.3 Criterio de Cajas (Microducto):**
| Tipo de Caja | Ubicación | Cantidad | Especificación |
|:-------------|:----------|:---------|:---------------|
| **Cajas de Paso** | Cada 300 metros | 341 cajas | 80x80x80 cm (dimensiones internas) |
| **Cajas Empalme** | En puntos críticos | 220 cajas | Botella (mufla) para F.O de 48 hilos |
| **Cajas Reserva** | Para expansión | 275 cajas | Micro cable de Fibra Óptica |
| **TOTAL CAJAS** | - | **836 UND** | **-257 cajas vs Baseline** ✅ |

#### **3.3.4 Costos Estimados (Alternativa C)**

**Basado en presupuesto real del proyecto:**

| Componente | Cantidad | Costo Unit. (COP) | Total (COP) | Total (USD) |
|:-----------|:---------|:-------------------|:------------|:------------|
| **Micro cable FO 48h** | 291,122 ML | $2,337 | $680,351,179 | $170,088 |
| **Instalación Micro cable** | 291,122 ML | $5,272 | $1,534,668,475 | $383,667 |
| **Microducto 10/8mm** | 280,724 ML | $9,833 | $2,760,363,025 | $690,091 |
| **Instalación Microducto** | 280,724 ML | $25,967 | $7,289,570,495 | $1,822,393 |
| **Certificación** | 280,724 ML | $3,500 | $982,535,400 | $245,634 |
| **Cajas de Paso** | 341 UND | $962,106 | $327,813,010 | $81,953 |
| **Instalación Cajas Paso** | 341 UND | $817,672 | $278,600,869 | $69,650 |
| **Cajas Empalme** | 220 UND | $1,540,081 | $338,201,874 | $84,550 |
| **Instalación Cajas Empalme** | 220 UND | $1,634,674 | $358,974,509 | $89,744 |
| **Cajas Reserva** | 275 UND | $455,761 | $125,106,395 | $31,277 |
| **Instalación Cajas Reserva** | 275 UND | $97,311 | $26,711,870 | $6,678 |
| **Ducto PVC 3"** | 498 ML | $77,985 | $38,836,530 | $9,709 |
| **Instalación Ducto PVC** | 498 ML | $473,118 | $235,612,640 | $58,903 |
| **Uniones** | 323 UND | $24,801 | $8,006,583 | $2,002 |
| **Instalación Uniones** | 323 UND | $34,377 | $11,098,032 | $2,775 |
| **Tapones** | 878 UND | $13,206 | $11,600,150 | $2,900 |
| **Instalación Tapones** | 878 UND | $8,990 | $7,896,816 | $1,974 |
| **Cinta Advertencia** | 936 UND | $119,656 | $111,967,488 | $27,992 |
| **Instalación Cinta** | 936 UND | $17,710 | $16,571,723 | $4,143 |
| **Fusiones** | 9,662 UND | $7,441 | $71,897,918 | $17,974 |
| **Instalación Fusiones** | 9,662 UND | $45,514 | $439,774,474 | $109,944 |
| **Capacitación** | 1 GLB | $9,000,000 | $9,000,000 | $2,250 |
| **SUBTOTAL MATERIALES** | | | **$16,324,858,316** | **$4,081,215** |

#### **3.3.5 Administración + AIU (Alternativa C):**
| Concepto | % | Base | Total (COP) | Total (USD) |
|:---------|:--|:-----|:------------|:------------|
| **Administración** | 22% | $16,324,858,316 | $3,591,468,830 | $897,867 |
| **Imprevistos** | 4% | $16,324,858,316 | $652,994,333 | $163,249 |
| **Utilidad** | 4% | $16,324,858,316 | $652,994,333 | $163,249 |
| **IVA** | 19% | $652,994,333 | $124,068,923 | $31,017 |
| **SUBTOTAL AIU** | | | **$5,021,526,419** | **$1,255,382** |

#### **3.3.6 TOTAL ALTERNATIVA C:**
```
📦 Materiales:              $4,081,215 USD (77%)
📊 Administración + AIU:    $1,255,382 USD (23%)
────────────────────────────────────────────────
   TOTAL MICROFIBRA:        $5,336,597 USD (100%)
```

---

## 4. COMPARACIÓN ECONÓMICA DE LAS 3 ALTERNATIVAS

### 4.1 Resumen Comparativo de las 3 Alternativas

| Concepto | Baseline (Tritubo) | Alt. A (Directa) | Alt. C (Microfibra) | Mejor Alternativa |
|:---------|:-------------------|:------------------|:-------------------|:------------------|
| **Materiales** | $2,390,421 | $831,698 | $4,081,215 | Alt. A (-65%) ✅ |
| **Instalación** | $4,071,694 | $4,071,694 | $0 | Alt. C (-100%) ✅ |
| **Administración + AIU** | $1,064,996 | $877,583 | $1,255,382 | Alt. A (-18%) ✅ |
| **TOTAL** | **$7,527,111** | **$5,780,975** | **$5,336,597** | **Alt. C (-29%)** ✅ |

### 4.2 Comparación Detallada

| Alternativa | Descripción | Total (USD) | Ahorro vs Baseline | Reducción | Ventajas | Desventajas |
|:------------|:------------|:------------|:-------------------|:----------|:---------|:------------|
| **Baseline** | Tritubo + Cable PE | $7,527,111 | - | - | Estándar, expansible | Más caro |
| **Alt. A** | Cable Doble Chaqueta | $5,780,975 | **-$1,746,136** | **-23%** ✅ | Menos cajas, más rápido | Sin ductos |
| **Alt. C** | Microfibra + Microducto | $5,336,597 | **-$2,190,514** | **-29%** ✅ | Menos obra civil, sin L2/L3 | Arquitectura simplificada |

### 4.3 Ahorro Potencial por Alternativa

#### **ALTERNATIVA A (Cable Doble Chaqueta):**
```
┌─────────────────────────────────────────────────────────┐
│  AHORRO POTENCIAL: $1,746,136 USD                       │
│  REDUCCIÓN: 23% del costo total de fibra óptica         │
│  IMPACTO EN TELECOMUNICACIONES: -22% del total          │
│  IMPACTO EN ITS TOTAL: -9% del presupuesto ITS          │
└─────────────────────────────────────────────────────────┘
```

#### **ALTERNATIVA C (Microfibra + Microducto):**
```
┌─────────────────────────────────────────────────────────┐
│  AHORRO POTENCIAL: $2,190,514 USD                       │
│  REDUCCIÓN: 29% del costo total de fibra óptica         │
│  IMPACTO EN TELECOMUNICACIONES: -28% del total          │
│  IMPACTO EN ITS TOTAL: -12% del presupuesto ITS         │
└─────────────────────────────────────────────────────────┘
```

#### **COMPARACIÓN DE AHORROS:**
| Alternativa | Ahorro (USD) | Reducción | Ranking |
|:------------|:-------------|:----------|:--------|
| **Alt. C (Microfibra)** | $2,190,514 | **-29%** | 🥇 **1º** |
| **Alt. A (Directa)** | $1,746,136 | **-23%** | 🥈 **2º** |
| **Baseline** | $0 | 0% | 🥉 **3º** |
```

### 4.3 Impacto en Presupuestos

#### **TELECOMUNICACIONES:**
| Componente | Baseline | Con Alternativa | Ahorro |
|:-----------|:---------|:----------------|:-------|
| Fibra Óptica | $7,527,111 | $6,202,717 | -$1,324,394 |
| Equipos L2 | $119,459 | $119,459 | $0 |
| Equipos L3 | $202,892 | $202,892 | $0 |
| Otros | $74,612 | $74,612 | $0 |
| **TOTAL TELECOM** | **$7,924,074** | **$6,599,680** | **-$1,324,394** |

#### **ITS TOTAL:**
| Concepto | Baseline | Con Alternativa | Ahorro |
|:---------|:---------|:----------------|:-------|
| ITS Campo | $4,430,400 | $4,430,400 | $0 |
| CCO | $5,346,900 | $5,346,900 | $0 |
| Telecomunicaciones | $7,924,074 | $6,599,680 | -$1,324,394 |
| Peajes ITS | $959,000 | $959,000 | $0 |
| **TOTAL ITS** | **$18,660,374** | **$17,335,980** | **-$1,324,394** |
| **En COP (4,000)** | COP 74,641 M | COP 69,344 M | **-COP 5,298 M** |

---

## 5. ANÁLISIS DE RIESGOS

### 5.1 Riesgos Técnicos

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Daño durante instalación** | Media | Alto | Supervisión estricta, mano de obra especializada |
| **Dificultad en reparaciones futuras** | Media | Medio | Sin ducto, requiere excavación completa |
| **No permite expansión futura** | Alta | Medio | Sin ducto, no se puede pasar cable adicional |
| **Rechazo en supervisión contractual** | Baja | Alto | Validar con contrato y solicitar no-objeción |

### 5.2 Riesgos Contractuales

| Aspecto | Validación Requerida |
|:--------|:---------------------|
| **Especificación contrato** | ¿Exige instalación en ductos o permite directa enterrada? |
| **Normas técnicas** | ¿Cumple con especificaciones G.652D y OS2? ✅ Sí |
| **Aprobación Interventoría** | Requiere no-objeción técnica previa |
| **Garantías** | Validar garantía del fabricante para instalación directa |

### 5.3 Riesgos Económicos

| Riesgo | Probabilidad | Impacto | Observación |
|:-------|:-------------|:--------|:------------|
| **Costo importación mayor** | Media | Medio | Estimado 30%, podría ser hasta 40% |
| **Disponibilidad del cable** | Baja | Alto | Verificar tiempos de entrega |
| **Variación TRM** | Alta | Bajo | Cable cotizado en USD |

---

## 6. VALIDACIONES PENDIENTES

### 6.1 Validación Contractual

**Acción:** Revisar AT1 (Alcance Proyecto) y AT2 (Especificaciones Técnicas) para verificar:

- [ ] ¿El contrato especifica "instalación en ductos" o solo "fibra óptica enterrada"?
- [ ] ¿Hay flexibilidad para proponer alternativas técnicas equivalentes?
- [ ] ¿Qué dice sobre expansión futura de la red?
- [ ] ¿Permite cambios por value engineering?

**Referencia contractual a buscar:**
- "Sistema de comunicaciones mediante fibra óptica con canalizaciones apropiadas"
- Si dice "canalizaciones", podría interpretarse como ductos obligatorios
- Si dice solo "enterrada", hay flexibilidad

### 6.2 Validación Técnica

**Acción:** Consultar con fabricante/distribuidor:

- [ ] Cotización formal de cable LPOC03120484ZC
- [ ] Costo real de importación y nacionalización
- [ ] Tiempo de entrega (lead time)
- [ ] Garantía para instalación directa enterrada
- [ ] Certificados de cumplimiento (G.652D, OS2)
- [ ] Referencias de proyectos similares en Colombia

### 6.3 Validación con Instalador

**Acción:** Consultar con contratista de obra civil:

- [ ] ¿Cambia el tiempo de instalación vs ductos?
- [ ] ¿Requiere equipo especial de tendido?
- [ ] ¿Cómo se manejan los cruces especiales sin ducto?
- [ ] ¿Experiencia previa con instalación directa?
- [ ] ¿Garantías de instalación?

---

## 7. CRONOGRAMA DE DECISIÓN

### 7.1 Cuándo Evaluar Esta Alternativa

| Fase del Proyecto | ¿Evaluar Alternativa? | Justificación |
|:------------------|:----------------------|:--------------|
| **Presupuestación inicial** | ❌ NO | Mantener baseline conservador |
| **Licitación de obra** | ✅ SÍ | Pedir cotización de ambas opciones |
| **Value Engineering** | ✅ SÍ | Fase ideal para optimización |
| **Negociación contratista** | ✅ SÍ | Usar como palanca de negociación |
| **Ejecución** | ❌ NO | Demasiado tarde para cambios mayores |

### 7.2 Proceso de Decisión Recomendado

```
┌─────────────────────────────────────────────────────────────┐
│  PASO 1: Validación Contractual (Legal + Interventoría)    │
│           ↓                                                  │
│  PASO 2: Cotización Formal (Fabricante + Importador)       │
│           ↓                                                  │
│  PASO 3: Consulta Instalador (Contratista de obra civil)   │
│           ↓                                                  │
│  PASO 4: Análisis Costo-Beneficio (Ingeniería de costos)   │
│           ↓                                                  │
│  PASO 5: Decisión Final (Gerencia de Proyecto + SPV)       │
└─────────────────────────────────────────────────────────────┘
```

---

## 8. RECOMENDACIONES

### 8.1 Recomendación Inmediata

**✅ MANTENER BASELINE ACTUAL ($7,527,111 USD)**

**Justificación:**
- ✅ Presupuestación conservadora
- ✅ Instalación en ductos es estándar en concesiones viales
- ✅ Permite expansión futura sin obra civil adicional
- ✅ Menor riesgo contractual
- ✅ Facilita mantenimiento y reparaciones

### 8.2 Recomendación para Fase de Licitación

**✅ SOLICITAR AMBAS COTIZACIONES**

**En pliego de condiciones:**
- Solicitar cotización para instalación en ductos (baseline)
- Solicitar cotización para instalación directa enterrada (alternativa)
- Permitir que oferentes propongan alternativas técnicas
- Evaluar con criterio técnico-económico

### 8.3 Recomendación para Value Engineering

**✅ EVALUAR AHORRO NETO REAL**

**Considerar:**
- ✅ Ahorro en CAPEX: ~$1,324,394 USD
- ❌ Costo de reparaciones futuras (OPEX)
- ❌ Imposibilidad de expandir sin obra civil
- ✅ Reducción en tiempo de instalación
- ❌ Riesgo de rechazo contractual

---

## 9. CONCLUSIONES

### 9.1 Viabilidad Técnica

**✅ AMBAS ALTERNATIVAS TÉCNICAMENTE VIABLES**

- **Alt. A (Doble Chaqueta):** Cumple G.652D, OS2, monomodo con protección superior
- **Alt. C (Microfibra):** Cumple G.652D, OS2, monomodo con arquitectura simplificada

### 9.2 Viabilidad Económica

**✅ AMBAS ALTERNATIVAS ECONÓMICAMENTE ATRACTIVAS**

| Alternativa | Ahorro (USD) | Reducción | Ranking Económico |
|:------------|:-------------|:----------|:------------------|
| **Alt. C (Microfibra)** | $2,190,514 | **-29%** | 🥇 **MEJOR** |
| **Alt. A (Directa)** | $1,746,136 | **-23%** | 🥈 **BUENA** |

### 9.3 Viabilidad Contractual

**✅ CUMPLE AT3 DEL CONTRATO**

Ambas alternativas cumplen con las especificaciones técnicas del contrato (AT3), validado por Ingeniería.

### 9.4 Decisión Recomendada

**ESTRATEGIA DE TRES ETAPAS:**

1. **Etapa 1 (Actual):** Presupuestar con baseline (Tritubo) - **$7,527,111 USD**
2. **Etapa 2 (Licitación):** Solicitar cotización de las 3 alternativas
3. **Etapa 3 (Value Engineering):** Evaluar con criterio técnico-económico

**Resultado esperado:**
- **Alt. C (Microfibra):** Mayor ahorro ($2.19M) pero arquitectura simplificada
- **Alt. A (Directa):** Buen ahorro ($1.75M) manteniendo arquitectura completa
- **Baseline:** Opción conservadora si alternativas no son viables

### 9.5 Recomendación Final

**🥇 ALTERNATIVA C (Microfibra + Microducto) - MEJOR OPCIÓN**

**Justificación:**
- ✅ **Mayor ahorro:** $2,190,514 USD (29% reducción)
- ✅ **Menos obra civil:** Microducto vs Tritubo
- ✅ **Arquitectura simplificada:** Sin complejidad L2/L3
- ✅ **Menor mantenimiento:** Solo infraestructura pasiva
- ✅ **Cumple contrato:** AT3 validado

**⚠️ Consideración:** Requiere validar si la arquitectura simplificada (sin L2/L3) es aceptable para el proyecto.

---

## 10. DOCUMENTOS DE REFERENCIA

| Documento | Ubicación | Versión |
|:----------|:----------|:--------|
| Presupuesto ITS Puro | `X. Entregables Consolidados/PRESUPUESTO_ITS_PURO_v1.0.md` | v1.0 |
| Especificaciones Telecomunicaciones | `IV. Ingenieria Basica/08_T04_Especificaciones_Tecnicas_Telecomunicaciones_v1.0.md` | v1.0 |
| Especificaciones Fibra Óptica | `IV. Ingenieria Basica/55_T04_Especificacion_Fibra_Optica_v1.0.md` | v1.0 |
| Validación Contractual Telecomunicaciones | `VII. Documentos Transversales/32_VALIDACION_CONTRACTUAL_TELECOMUNICACIONES_v1.0.md` | v1.0 |
| Alcance del Proyecto (AT1) | `II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md` | v1.0 |

---

## 11. ANEXOS

### 11.1 Especificaciones Técnicas Comparadas

#### **CABLE BASELINE (LPOC52120484ZC):**
- 48 fibras monomodo G.652D
- Tubo relleno de gel
- Chaqueta PE
- Cinta de acero corrugado
- **Requiere ducto Tritubo para protección**

#### **CABLE ALTERNATIVA (LPOC03120484ZC):**
- 48 fibras monomodo G.652D
- Tubo relleno de gel
- **DOBLE CHAQUETA: HDPE (interna) + MDPE (externa)**
- Cinta de acero corrugado
- **NO requiere ducto Tritubo**

### 11.2 Proveedores Potenciales

| Proveedor | Producto | Observaciones |
|:----------|:---------|:--------------|
| **Furukawa** | Laserway | Amplia presencia en Latam, stock local |
| **Prysmian** | Cables ADSS y ducto | Fabricante italiano, alta calidad |
| **Corning** | OptiTip, ClearCurve | Líder mundial, precios premium |
| **CommScope** | Fiber to Anywhere | Soluciones completas |

---

**FIN DEL ANÁLISIS DE ALTERNATIVAS v1.0**

---

**Elaborado por:** Equipo de Ingeniería  
**Fecha:** 22 de octubre de 2025  
**Próxima revisión:** Fase de Licitación  
**Estado:** 🟡 Para evaluación futura

