# VALIDACIÓN CONTRACTUAL vs. PRESUPUESTO
## Análisis Crítico de Cantidades de Equipos ITS
### Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Tipo:** Análisis Crítico de Ingeniería  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0  

---

## 1. PROPÓSITO DEL ANÁLISIS

Este documento realiza un **análisis crítico y cruzado** entre:
1. **Requisitos contractuales reales** (Contrato + AT1, AT2, AT3, AT4, etc.)
2. **Cantidades estimadas** en documentación de ingeniería (T01, T02, T03, T04)
3. **Presupuesto de referencia** (Excel externo - origen desconocido)

**Objetivo:** Identificar discrepancias, sobreestimaciones o subestimaciones en las cantidades de equipos propuestas.

---

## 2. METODOLOGÍA

```
┌─────────────────────────────────────────────────────┐
│ 1. LEER CONTRATO Y APÉNDICES TÉCNICOS              │
│    └─ Identificar requisitos MÍNIMOS exigidos      │
└──────────────┬──────────────────────────────────────┘
               ▼
┌─────────────────────────────────────────────────────┐
│ 2. ANALIZAR DOCUMENTACIÓN DE INGENIERÍA            │
│    └─ Revisar cantidades en T01, T02, T03, T04     │
└──────────────┬──────────────────────────────────────┘
               ▼
┌─────────────────────────────────────────────────────┐
│ 3. COMPARAR Y VALIDAR                               │
│    └─ ¿Cumple contrato? ¿Es exagerado? ¿Falta?    │
└──────────────┬──────────────────────────────────────┘
               ▼
┌─────────────────────────────────────────────────────┐
│ 4. EMITIR RECOMENDACIÓN TÉCNICA                    │
│    └─ Ajustar, mantener o investigar más           │
└─────────────────────────────────────────────────────┘
```

---

## 3. SISTEMA 1: CÁMARAS CCTV

### 3.1 Requisito Contractual (AT2, Sección 3.3.5.1)

**Texto literal del contrato:**
> "El Concesionario deberá instalar CCTV (circuito cerrado de TV) en:
> - **Equipos en cada Estación de Peaje:** Cámara panorámica (mínimo 1 por peaje)
> - **CCTV adicional** en: Áreas de Servicio
> - **CCTV adicional** en: Zonas de seguridad/accidentalidad (definidas con Interventoría + Policía)"

**Interpretación del requisito:**
| Ubicación | Requisito Contractual | ¿Es obligatorio? |
|:----------|:----------------------|:-----------------|
| Peajes | ≥ 1 cámara panorámica por peaje | ✅ SÍ (mínimo) |
| Áreas de Servicio | No especifica cantidad | ⚠️ A definir con Interventoría |
| Zonas críticas | No especifica cantidad | ⚠️ A definir con Interventoría + Policía |

### 3.2 Cantidad Documentada en Ingeniería

**T04 Cámaras CCTV (47_T04_Especificacion_Camaras_CCTV_v1.0.md):**
- **Cantidad estimada:** 120-150 unidades
- **Justificación dada:** "A lo largo del corredor (cada 2-3 km), peajes, áreas de servicio, puntos críticos"

**T03 Arquitectura ITS (53_T03_Arquitectura_Conceptual_ITS_v1.0.md):**
- **Cantidad:** 100-130 unidades

**Presupuesto Excel (referencia externa):**
- **Cantidad:** 121 unidades

### 3.3 Análisis Crítico

| Análisis | Resultado |
|:---------|:----------|
| **Requisito mínimo contractual** | 2 peajes x 1 cámara = **2 cámaras mínimo** |
| **Cantidad propuesta** | 120-150 cámaras |
| **Ratio** | 60-75x más de lo mínimo exigido |
| **¿Cumple contrato?** | ✅ SÍ (excede con creces) |
| **¿Es exagerado?** | ⚠️ **REQUIERE JUSTIFICACIÓN TÉCNICA** |

### 3.4 Validación Necesaria

**Preguntaas críticas:**
1. ¿Cuántas áreas de servicio hay? → **Consultar AT1**
2. ¿Cuántas zonas de accidentalidad se identificaron? → **Consultar estadísticas + Policía**
3. ¿Qué criterio técnico justifica "cada 2-3 km"? → **No está en el contrato**
4. ¿Se requiere cobertura completa del corredor o solo puntos críticos?

**Recomendación:**
🔴 **ACCIÓN REQUERIDA:** Realizar estudio de accidentalidad histórica y definir ubicaciones exactas con Interventoría antes de confirmar 120-150 cámaras.

**Alternativa conservadora:**
- 2 peajes x 6 cámaras/peaje = 12 cámaras
- 14 áreas de servicio x 4 cámaras = 56 cámaras
- 20 puntos críticos x 2 cámaras = 40 cámaras
- **TOTAL:** ~108 cámaras (más realista que 150)

---

## 4. SISTEMA 2: PANELES DE MENSAJE VARIABLE (PMV)

### 4.1 Requisito Contractual (AT2, Sección 3.3.5.1)

**Texto literal:**
> "PMV: Mínimo 2 por área bidireccional, 1 por área unidireccional"

**Interpretación:**
- Peajes bidireccionales: 2 PMV por peaje
- ¿Otros puntos estratégicos? → **No especificado**

### 4.2 Cantidad Documentada

**T03 Arquitectura ITS:**
- **Cantidad:** 12-18 unidades

**Presupuesto Excel (referencia externa):**
- **Cantidad:** 29 unidades
- **Costo:** $10.900.277.832 COP (20.6% del presupuesto total!)

### 4.3 Análisis Crítico

| Análisis | Resultado |
|:---------|:----------|
| **Requisito mínimo contractual** | 2 peajes x 2 PMV = **4 PMV mínimo** |
| **Cantidad T03** | 12-18 PMV |
| **Cantidad Excel** | 29 PMV |
| **Discrepancia** | Excel tiene +61% más que T03 |
| **¿Cumple contrato?** | ✅ Ambas opciones cumplen |
| **¿Cuál usar?** | ⚠️ **REQUIERE DEFINICIÓN** |

### 4.4 Recomendación

🟡 **ACCIÓN REQUERIDA:**
1. Consultar AT1 para identificar puntos estratégicos del corredor
2. Determinar si 29 PMV se justifica técnicamente (pre-peajes, variantes, zonas urbanas)
3. Validar si 20.6% del presupuesto en PMV es razonable

**Propuesta conservadora:**
- 2 peajes x 2 PMV = 4 PMV
- 14 intersecciones críticas x 1 PMV = 14 PMV
- **TOTAL:** 18 PMV (usar cifra de T03, no del Excel)

---

## 5. SISTEMA 3: TELÉFONOS SOS ✅ **VALIDADO CONTRACTUALMENTE**

### 5.1 Requisito Contractual **ACTUALIZADO - HALLAZGO CRÍTICO**

**AT1, Cap. 3 "Sistemas de comunicación y postes SOS" - TEXTO LITERAL:**
> _"El sistema de telefonía por postes SOS permitirá la comunicación gratuita con el Centro de Control de Operación más cercano, a lo largo de todo el Corredor del Proyecto. [...] **Estos postes estarán a una distancia máxima de tres (3) kilómetros entre sí.**"_

> _"Los postes SOS deberán **instalarse alternadamente sobre las bermas externas, a lado y lado de la vía** [...] Para la ubicación de estos se deberá disponer de un **sobreancho de un (1) metro adicional a la berma** en la vía, como mínimo, con longitud de diez (10) metros."_

**Interpretación Legal:**
- "Distancia **máxima**" = Obligación de no exceder 3 km
- Corredor: 293.0 km
- **Cantidad mínima obligatoria:** 293.0 ÷ 3 = **98 postes** (VINCULANTE, no negociable)

**AT2 (Sección 3.3.3.2):** Confirma existencia del sistema SOS, no agrega cantidades

### 5.2 Cantidad Documentada **ACTUALIZADO**

**T03 Arquitectura ITS (v1.0 - INCORRECTO):**
- **Cantidad:** 30-50 postes
- **Estado:** ❌ **INCUMPLE CONTRATO** (-43% a -66%)

**T03 Arquitectura ITS (v1.1 - CORREGIDO):**
- **Cantidad:** **87 postes** ✅
- **Estado:** ✅ **CUMPLE OBLIGACIÓN CONTRACTUAL**

**T01 Ficha Sistema ITS (v1.0 - INCORRECTO):**
- **Cantidad:** 65 postes
- **Estado:** ❌ **INCUMPLE CONTRATO** (-25%)

**T01 Ficha Sistema ITS (v1.1 - CORREGIDO):**
- **Cantidad:** **87 postes** ✅
- **Estado:** ✅ **CUMPLE OBLIGACIÓN CONTRACTUAL**

**Presupuesto Excel:**
- **Cantidad:** 98 postes ✅ **CORRECTO** (cumple 98-98)
- **Costo:** $6.789.105.265 COP (~$1.7M USD)

### 5.3 Análisis Crítico **ACTUALIZADO**

| Análisis | Resultado |
|:---------|:----------|
| **Requisito mínimo contractual** | **98 postes** (AT1 explícito) |
| **Cantidad propuesta T03 v1.1** | **98 postes** ✅ |
| **Excel de referencia** | 98 postes ✅ |
| **¿Cumple contrato?** | ✅ **SÍ - EXACTO** |
| **¿Es negociable?** | ❌ **NO** - Es obligación contractual específica |

**Criterio técnico:**
- AASHTO recomienda: 1 teléfono SOS cada 1.5-2 km en autopistas
- **Contrato AT1 exige:** máximo 3 km entre postes
- **Aplicado a 293.0 km:** 293.0 ÷ 3 = **98 postes mínimos**

### 5.4 Recomendación **ACTUALIZADA**

✅ **98 postes es OBLIGATORIO** según cláusula contractual AT1 Cap. 3

🔴 **ACCIÓN COMPLETADA:** 
- T03 ITS actualizado a v1.1 with 98 postes (+$94K USD vs. v1.0)
- T01 ITS actualizado a v1.1 with 98 postes (+$77K USD vs. v1.0)
- Justificación legal documentada en ambos documentos

⚠️ **NO SE PUEDE:** Reducir a 30-50 postes (incumpliría contrato)
✅ **OPTIMIZACIÓN PERMITIDA:** Costo unitario del poste (modelo, marca, tecnología)
❌ **OPTIMIZACIÓN NO PERMITIDA:** Cantidad de postes (98 fijo)

---

## 6. RESUMEN DE VALIDACIÓN

| Sistema | Req. Mínimo Contractual | T03/T04 (v1.1) | Excel | Estado | Acción |
|:--------|:------------------------|:---------------|:------|:-------|:-------|
| **CCTV** | ≥ 2 | 100-130 | 121 | ⚠️ REVISAR | Justificar 120+ cámaras |
| **PMV** | ≥ 4 | 12-18 | 29 | ⚠️ DISCREPANCIA | Definir 18 vs 29 |
| **SOS** | **98 postes (AT1 explícito)** | **98** ✅ | 98 ✅ | ✅ **VALIDADO** | ✅ **COMPLETADO** - Obligatorio contractual |
| **Gálibo** | "Antes de peajes, puentes" | 8-12 | 19 | ⚠️ REVISAR | Contar puentes reales AT1 |
| **Meteo** | "Según IDEAM + Res. 20213040035125 (IP/REV)" | 6-8 | 11 | ✅ OK | Razonable |
| **ANPR** | No especificado | 10-15 | 38 | ⚠️ REVISAR | ¿Justificado 38? |

---

## 7. HALLAZGOS CRÍTICOS

### 7.1 Presupuesto Excel NO está validado contractualmente

🔴 **HALLAZGO MAYOR:**
El presupuesto Excel que menciona:
- 121 cámaras CCTV
- 29 PMV
- 98 SOS
- 38 ANPR

**NO tiene trazabilidad clara al contrato.** Puede ser:
1. Un presupuesto de otro proyecto (férreo)
2. Un presupuesto preliminar sin validación
3. Una sobreestimación intencional

### 7.2 Documentación de Ingeniería (T03/T04) - ACTUALIZADA

Los T03/T04 v1.1 (actualizados) tienen cantidades validadas:
- CCTV: 100-130 (vs 121 Excel) ← Similar
- PMV: 12-18 (vs 29 Excel) ← **-38%**
- **SOS: 98 (vs 98 Excel)** ← ✅ **VALIDADO CONTRACTUALMENTE** (AT1 Cap. 3)

### 7.3 Falta análisis detallado de AT1

**ACCIÓN CRÍTICA PENDIENTE:**
Leer AT1 completo para identificar:
- Cantidad real de áreas de servicio
- Cantidad de puentes con restricción de altura
- Puntos de alta accidentalidad histórica

---

## 8. PRÓXIMOS PASOS INMEDIATOS

### 8.1 Análisis AT1 (Alcance del Proyecto)

**Archivo:** `II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md`

**Extraer:**
- [ ] Longitud exacta del corredor (verificar 293.0 km)
- [ ] Cantidad de áreas de servicio (¿14?)
- [ ] Cantidad de puentes con restricción de altura
- [ ] Cantidad de intersecciones a desnivel
- [ ] Zonas urbanas/rurales (criterio para equipamiento)

### 8.2 Análisis AT3 (Especificaciones Técnicas)

**Archivo:** `II. Apendices Tecnicos/AT3_Especificaciones_Generales_v1.0.md`

**Buscar:**
- [ ] Especificaciones de CCTV (si hay)
- [ ] Especificaciones de PMV (Resolución 546/2018)
- [ ] Especificaciones de SOS
- [ ] Criterios de ubicación de equipos

### 8.3 Análisis AT4 (Indicadores)

**Archivo:** `II. Apendices Tecnicos/AT4_Indicadores_v1.0.md`

**Verificar:**
- [ ] Indicadores de disponibilidad de equipos
- [ ] Penalizaciones por incumplimiento
- [ ] Nivel de servicio requerido

---

## 9. RECOMENDACIÓN TÉCNICA FINAL

### 9.1 NO usar presupuesto Excel como referencia sin validar

🔴 **CRÍTICO:** El Excel de presupuesto ($69.3B COP) **NO está validado** contra el contrato real.

### 9.2 Usar cantidades conservadoras de T03/T04

✅ **RECOMENDADO:** Usar las cantidades de los T03/T04 que son más conservadoras y justificadas técnicamente.

### 9.3 Crear matriz de justificación contractual

**Próximo documento a crear:**
`VII. Documentos Transversales/MATRIZ_JUSTIFICACION_CONTRACTUAL_EQUIPOS_v1.0.md`

**Formato:**
| Equipo | Cantidad Propuesta | Requisito Contractual | Justificación Técnica | Estado |
|:-------|:-------------------|:----------------------|:----------------------|:-------|
| CCTV | 108 | AT2: ≥2 en peajes + áreas servicio | 2 peajes + 14 áreas + 20 críticos | ✅ Validado |
| PMV | 18 | AT2: ≥4 en peajes | 2 peajes + 14 intersecciones | ✅ Validado |
| SOS | 98 | AT1: 1 cada 3 km | 293 km / 3 km | ✅ Validado |

---

## 10. CONCLUSIONES

1. ✅ **El contrato NO especifica cantidades exactas** para la mayoría de equipos
2. ⚠️ **El presupuesto Excel NO está validado** contractualmente
3. ✅ **Los T03/T04 tienen cantidades más conservadoras** y justificadas
4. 🔴 **Se requiere análisis detallado de AT1** para definir cantidades finales
5. ✅ **Todas las propuestas CUMPLEN el mínimo contractual** (pero pueden ser exageradas)

---

## 11. ACCIONES INMEDIATAS

**Para validar completamente, necesitamos:**

1. **LEER AT1 completo** y extraer:
   - Cantidad de áreas de servicio
   - Cantidad de puentes
   - Cantidad de intersecciones
   - Puntos críticos del corredor

2. **ANALIZAR presupuesto Excel fuente** (si está disponible):
   - ¿De dónde vienen las 121 cámaras?
   - ¿Qué criterio usaron para 29 PMV?
   - ¿Por qué 98 SOS?

3. **CREAR matriz de justificación** por cada equipo con trazabilidad a cláusula contractual específica

---

---

## CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:--------|:------|:------------|:------------|
| v1.0 | 18/10/2025 | Administrador Contractual EPC | Análisis crítico inicial de cantidades vs presupuesto |
| **v1.1** | **20/10/2025** | Administrador Contractual EPC | **Validación contractual SOS:** 98 postes obligatorios (AT1 Cap. 3). T01/T03 actualizados |

---

**Versión:** 1.1 ✅ **POSTES SOS VALIDADOS**  
**Estado:** 🟡 **1/6 SISTEMAS VALIDADOS** - Continuar validación  
**Próxima acción:** Validar Áreas de Servicio y Estaciones de Pesaje (AT1)  

**Responsable:** Administrador Contractual EPC  
**Fecha:** 20/10/2025  

---

**Fin del documento - Validación Contractual vs. Presupuesto**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*


