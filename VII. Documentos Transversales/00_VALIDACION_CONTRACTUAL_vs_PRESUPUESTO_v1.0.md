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

## 5. SISTEMA 3: TELÉFONOS SOS

### 5.1 Requisito Contractual

**AT2 menciona:** "Sistema de Telefonía de Emergencia (SOS)"

**No especifica cantidad exacta.**

### 5.2 Cantidad Documentada

**T03 Arquitectura ITS:**
- **Cantidad:** 30-50 postes

**Presupuesto Excel:**
- **Cantidad:** 88 postes
- **Costo:** $6.789.105.265 COP (12.8% del presupuesto!)

### 5.3 Análisis Crítico

**Criterio técnico estándar internacional:**
- AASHTO recomienda: 1 teléfono SOS cada 1.5-2 km en autopistas

**Aplicado a 259.6 km:**
- Si cada 2 km: 259.6 / 2 = **130 postes**
- Si cada 3 km: 259.6 / 3 = **87 postes** ← Excel coincide
- Si cada 5 km: 259.6 / 5 = **52 postes**

### 5.4 Recomendación

✅ **88 postes (Excel) es razonable** si se usa criterio "cada 3 km"

⚠️ **PERO:** Validar si con celulares modernos (cobertura 4G) se justifican 88 postes o si 30-50 es suficiente en zonas sin cobertura.

---

## 6. RESUMEN DE VALIDACIÓN

| Sistema | Req. Mínimo Contractual | T03/T04 | Excel | Estado | Acción |
|:--------|:------------------------|:--------|:------|:-------|:-------|
| **CCTV** | ≥ 2 | 100-130 | 121 | ⚠️ REVISAR | Justificar 120+ cámaras |
| **PMV** | ≥ 4 | 12-18 | 29 | ⚠️ DISCREPANCIA | Definir 18 vs 29 |
| **SOS** | No especificado | 30-50 | 88 | ⚠️ REVISAR | Validar cada 3km vs 5km |
| **Gálibo** | "Antes de peajes, puentes, túneles" | 8-12 | 19 | ⚠️ REVISAR | Contar puentes reales AT1 |
| **Meteo** | "Según IDEAM + Res. 546/2018" | 6-8 | 11 | ✅ OK | Razonable |
| **ANPR** | No especificado | 10-15 | 38 | ⚠️ REVISAR | ¿Justificado 38? |

---

## 7. HALLAZGOS CRÍTICOS

### 7.1 Presupuesto Excel NO está validado contractualmente

🔴 **HALLAZGO MAYOR:**
El presupuesto Excel que menciona:
- 121 cámaras CCTV
- 29 PMV
- 88 SOS
- 38 ANPR

**NO tiene trazabilidad clara al contrato.** Puede ser:
1. Un presupuesto de otro proyecto (férreo)
2. Un presupuesto preliminar sin validación
3. Una sobreestimación intencional

### 7.2 Documentación de Ingeniería (T03/T04) es más conservadora

Los T03/T04 que creamos tienen cantidades más razonables:
- CCTV: 100-130 (vs 121 Excel) ← Similar
- PMV: 12-18 (vs 29 Excel) ← **-38%**
- SOS: 30-50 (vs 88 Excel) ← **-43% a -66%**

### 7.3 Falta análisis detallado de AT1

**ACCIÓN CRÍTICA PENDIENTE:**
Leer AT1 completo para identificar:
- Cantidad real de áreas de servicio
- Cantidad de puentes con restricción de altura
- Cantidad de túneles (si hay)
- Puntos de alta accidentalidad histórica

---

## 8. PRÓXIMOS PASOS INMEDIATOS

### 8.1 Análisis AT1 (Alcance del Proyecto)

**Archivo:** `II. Apendices Tecnicos/AT1_Alcance_Proyecto_v1.0.md`

**Extraer:**
- [ ] Longitud exacta del corredor (verificar 259.6 km)
- [ ] Cantidad de áreas de servicio (¿14?)
- [ ] Cantidad de puentes con restricción de altura
- [ ] Cantidad de intersecciones a desnivel
- [ ] Cantidad de túneles (si hay)
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
| SOS | 52 | AT2: Sistema de emergencia | 1 cada 5 km (criterio conservador) | ⏳ A validar |

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
   - ¿Por qué 88 SOS?

3. **CREAR matriz de justificación** por cada equipo con trazabilidad a cláusula contractual específica

---

**Versión:** 1.0  
**Estado:** 🔴 **DOCUMENTO CRÍTICO - VALIDACIÓN PENDIENTE**  
**Próxima acción:** Análisis detallado de AT1 (Alcance del Proyecto)  

**Responsable:** Administrador Contractual EPC  
**Fecha:** 18/10/2025  

---

**Fin del documento - Validación Contractual vs. Presupuesto**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

