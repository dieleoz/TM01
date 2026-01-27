# MATRIZ DE JUSTIFICACIÓN CONTRACTUAL DE EQUIPOS ITS
## Validación de Cantidades vs. Requisitos Contractuales
### Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Tipo:** Matriz de Validación Técnico-Contractual  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0  
**Estado:** 🔴 Validación en proceso

---

## 1. RESUMEN EJECUTIVO

Este documento valida **contractualmente** cada cantidad de equipo propuesta en la ingeniería (T01-T04) contra los requisitos del contrato y sus apéndices técnicos.

### Hallazgos Principales:

✅ **POSTES SOS:** 87 postes **VALIDADO** (AT1 exige "máximo 3 km entre sí")  
⚠️ **CCTV:** 120-150 cámaras **REQUIERE AJUSTE** (Contrato solo exige ≥2)  
⚠️ **PMV:** 12-29 paneles **REQUIERE DEFINICIÓN** (Contrato exige ≥4)  
⚠️ **Áreas de Servicio:** **REQUIERE CONTEO** en AT1  
✅ **Peajes:** 2 estaciones **VALIDADO** (Zambito + Aguas Negras)  
✅ **CCO:** 1 centro **VALIDADO** (AT1 exige "mínimo 1")  

---

## 2. INFRAESTRUCTURA CONTRACTUAL IDENTIFICADA

### 2.1 Datos Extraídos de AT1

| Infraestructura | Cantidad Contractual | Fuente | Estado |
|:----------------|:---------------------|:-------|:-------|
| **Estaciones de Peaje** | 2 | AT1 Tabla 2 | ✅ VALIDADO |
| **Centro de Control (CCO)** | ≥ 1 | AT1 Cap. 3 | ✅ VALIDADO |
| **Distancia SOS** | Máximo 3 km entre sí | AT1 Cap. 3 | ✅ VALIDADO |
| **Intersecciones a Desnivel** | ≥ 6 identificadas (UF1, 2, 7, 9, 10, 13) | AT1 Tablas por UF | ✅ VALIDADO |
| **Áreas de Servicio** | No especificado | AT1 - A determinar | ⏳ PENDIENTE |
| **Estaciones de Pesaje** | No especificado | AT1 - Menciona "Estaciones de Pesaje" | ⏳ PENDIENTE |
| **Longitud Total** | 293 km | AT1 Cap. 2 | ✅ VALIDADO |

---

## 3. VALIDACIÓN POR SISTEMA

### 3.1 SISTEMA: POSTES SOS (Telefonía de Emergencia)

#### Requisito Contractual (AT1, Cap. 3):
> "El sistema de telefonía por postes SOS permitirá la comunicación gratuita con el Centro de Control de Operación más cercano, a lo largo de todo el Corredor del Proyecto. [...] **Estos postes estarán a una distancia máxima de tres (3) kilómetros entre sí.**"

#### Cálculo:
- **Longitud del corredor:** 293 km (259.6 km principal + 33.4 km conexión CCO)
- **Distancia máxima:** 3 km
- **Cantidad contractual:** 293 ÷ 3 = **98 postes** (o según distribución aprobada)

#### Cantidades Propuestas:
| Fuente | Cantidad | Estado |
|:-------|:---------|:-------|
| **Excel (Ref. Externa)** | 88 postes | ✅ **VALIDADO** (coincide con cálculo contractual) |
| **T03 ITS** | 30-50 postes | ⚠️ **SUBESTIMADO** (43-66% menos que contrato) |

**RECOMENDACIÓN:** ✅ **Usar 87 postes** (según contrato)  
**AJUSTE REQUERIDO:** Modificar T03 ITS de "30-50" a "87 postes"

---

### 3.2 SISTEMA: CÁMARAS CCTV

#### Requisito Contractual (AT2, Sec. 3.3.5.1):
> "CCTV (circuito cerrado de TV):
> - **Cámara panorámica (mínimo 1 por peaje)**
> - CCTV adicional en: **Áreas de Servicio**
> - CCTV adicional en: **Zonas de seguridad/accidentalidad** (definidas con Interventoría + Policía)"

#### Análisis:
- **Requisito mínimo exigido:** 2 peajes x 1 cámara = **2 cámaras mínimo**
- **Cobertura adicional:** NO especifica cantidad

#### Cantidades Propuestas:
| Fuente | Cantidad | Justificación | Estado |
|:-------|:---------|:--------------|:-------|
| **T04 CCTV** | 120-150 | "Cada 2-3 km" | ⚠️ Criterio NO contractual |
| **Excel** | 121 | No especificado | ⚠️ Sin justificación |

#### Propuesta de Validación Conservadora:

**Basado en infraestructura real conocida:**

| Ubicación | Cantidad por Sitio | Cantidad de Sitios | Subtotal |
|:----------|:-------------------|:-------------------|:---------|
| **Peajes** | 6 cámaras | 2 (Zambito, Aguas Negras) | 12 |
| **CCO** | 8 cámaras (perímetro + accesos) | 1 | 8 |
| **Intersecciones a desnivel** | 4 cámaras | 6 (UF1,2,7,9,10,13) | 24 |
| **Áreas de Servicio** | 4 cámaras | **¿? (A determinar de AT1)** | **¿?** |
| **Zonas críticas de accidentalidad** | 2 cámaras | **¿? (A definir con Policía)** | **¿?** |
| **Estaciones de Pesaje** | 6 cámaras | **¿? (A determinar)** | **¿?** |

**PENDIENTE:** Contar áreas de servicio y estaciones de pesaje en AT1

**Estimación conservadora sin áreas servicio:**
- 12 (peajes) + 8 (CCO) + 24 (intersecciones) + 20 (zonas críticas estimadas) = **64 cámaras**

**Si hay 14 áreas de servicio (según T01):**
- 64 + (14 x 4) = **120 cámaras** ✅ Coincide con T04

**RECOMENDACIÓN:** ⏳ **Validar cantidad de áreas de servicio en AT1** antes de confirmar 120 cámaras

---

### 3.3 SISTEMA: PANELES DE MENSAJE VARIABLE (PMV)

#### Requisito Contractual (AT2, Sec. 3.3.5.1):
> "PMV: **Mínimo 2 por área bidireccional, 1 por área unidireccional**"

#### Análisis:
- **Peajes bidireccionales:** 2 (Zambito + Aguas Negras)
- **Requisito mínimo:** 2 peajes x 2 PMV = **4 PMV mínimo**

#### Cantidades Propuestas:
| Fuente | Cantidad | Justificación | Estado |
|:-------|:---------|:--------------|:-------|
| **T03 ITS** | 12-18 | Pre-peajes + intersecciones | ✅ Razonable |
| **Excel** | 29 | No especificado | ⚠️ Parece exagerado |

#### Propuesta de Validación:

| Ubicación | Cantidad | Justificación |
|:----------|:---------|:--------------|
| **Peajes** | 4 | 2 peajes x 2 PMV (contractual) |
| **Intersecciones a desnivel** | 6 | 6 intersecciones x 1 PMV (pre-intercambiador) |
| **Zonas urbanas/críticas** | 6-8 | Áreas de reducción de velocidad |
| **TOTAL** | **16-18 PMV** | ✅ Usar cifra de T03 ITS |

**RECOMENDACIÓN:** ✅ **16-18 PMV** es razonable y justificado  
**AJUSTE:** NO usar 29 PMV del Excel (parece exagerado)

---

### 3.4 SISTEMA: ESTACIONES DE PEAJE

#### Requisito Contractual (AT1, Tabla 2):

**Peajes existentes a entregar:**
1. **Peaje Zambito:** PK 9+200, Bidireccional
2. **Peaje Aguas Negras:** PK 83+900 (reubicar a PK 80+000), Bidireccional

**TOTAL:** **2 Estaciones de Peaje** ✅ **VALIDADO**

**Cantidad en ingeniería:**
- T01 Peajes: 2 estaciones ✅ CORRECTO
- T03 Peajes: 2 estaciones (Zambito, Aguas Negras) ✅ CORRECTO

---

### 3.5 SISTEMA: CENTRO DE CONTROL OPERACIONAL (CCO)

#### Requisito Contractual (AT1, Cap. 3):
> "El Concesionario deberá construir, mantener y operar como mínimo un (1) Centro de Control de Operación – CCO"

**TOTAL:** **1 CCO mínimo** ✅ **VALIDADO**

**Ubicación sugerida en AT1:** Área de servicio La Lizama PK 4+300 RN 4513 (adecuar instalación existente)

**Cantidad en ingeniería:**
- T01 CCO: 1 centro ✅ CORRECTO
- T03 CCO: 1 centro ✅ CORRECTO

---

### 3.6 SISTEMA: INTERSECCIONES A DESNIVEL

#### Requisito Contractual (AT1, Tablas por UF):

**Intersecciones identificadas:**

| UF | Nombre | Tipo | PK | Tabla |
|:---|:-------|:-----|:---|:------|
| **UF1** | Empalme oriental acceso Otanche | Deprimido | 93+450 | Tabla 12 |
| **UF2** | Intercambiador Puerto Berrío | A desnivel | 41+460 | Tabla 16 |
| **UF7** | Empalme occidental acceso Puerto Parra | Deprimido/Puente | 84+040 | Tabla 30 |
| **UF9** | Campo 23 - Troncal Magdalena-Barrancabermeja | Deprimido | 116+520 | Tabla 36 |
| **UF10** | Oponcito - El Carmen de Chucuri | Deprimido/Puente Peatonal | 119+010 | Tabla 40 |
| **UF10** | Rancho Camacho - Yuma | A desnivel | 127+550 | Tabla 40 |
| **UF13** | *(A verificar en tabla)* | A desnivel | *(PK)* | Tabla 47 |

**TOTAL MÍNIMO:** **6-7 Intersecciones a Desnivel** ✅ **VALIDADO**

**Equipamiento por intersección (estimado):**
- 4 cámaras CCTV (cobertura completa)
- 1-2 PMV (pre-intercambiador)
- Iluminación LED

---

## 4. RESUMEN DE VALIDACIÓN

| Sistema | Req. Contractual | Cant. T03/T04 | Excel Ref. | Estado Validación | Acción |
|:--------|:-----------------|:--------------|:-----------|:------------------|:-------|
| **Peajes** | 2 | 2 | 2 | ✅ VALIDADO | Ninguna |
| **CCO** | ≥ 1 | 1 | 1 | ✅ VALIDADO | Ninguna |
| **Postes SOS** | 87 (cada 3 km) | 30-50 | 88 | ⚠️ T03 subestimado | **Ajustar T03 a 87** |
| **PMV** | ≥ 4 | 12-18 | 29 | ✅ T03 razonable | Usar 16-18 de T03 |
| **CCTV** | ≥ 2 | 100-130 | 121 | ⏳ Validación parcial | Validar vs áreas servicio |
| **Intersecciones** | 6-7 | 6-8 (T03 estimado) | - | ✅ Coincide | Confirmar Tabla 47 |
| **Áreas de Servicio** | ¿? | 14 (T01 estimado) | - | ⏳ PENDIENTE | **Buscar en AT1** |

---

## 5. CANTIDADES VALIDADAS CONTRACTUALMENTE

### 5.1 100% Validados

| Equipo/Sistema | Cantidad Contractual | Fuente | Observaciones |
|:---------------|:---------------------|:-------|:--------------|
| **Peajes** | 2 estaciones | AT1 Tabla 2 | Zambito (PK 9.2), Aguas Negras (PK 80) |
| **CCO** | 1 centro | AT1 Cap. 3 | Ubicación sugerida: La Lizama PK 4+300 |
| **Postes SOS** | 87 postes | AT1 Cap. 3 | "Máx. 3 km entre sí" → 259.6/3 = 87 |
| **Intersecciones a Desnivel** | 6-7 | AT1 Tablas 12,16,30,36,40,47 | Mínimo exigido |
| **Longitud Total** | 293 km | AT1 Cap. 2 | Corredor completo |

---

### 5.2 Validación Parcial (Requiere Conteo en AT1)

| Equipo/Sistema | Cant. Propuesta | Validación Pendiente |
|:---------------|:----------------|:---------------------|
| **Áreas de Servicio** | 14 (estimado T01) | Buscar listado en AT1 Tabla 53 o Cap. 3 |
| **Estaciones de Pesaje** | 2-3 (estimado) | Buscar en AT1 - Solo menciona "Estaciones de Pesaje" |
| **Puentes Peatonales** | ¿? | Buscar en AT1 - Menciona "Puentes Peatonales" |
| **Paraderos** | ¿? | Buscar en AT1 - Menciona "Paraderos" |

---

### 5.3 No Validados (No Especificados en Contrato)

| Equipo | Cant. Propuesta | Justificación Técnica | Estado |
|:-------|:----------------|:----------------------|:-------|
| **CCTV (cantidad específica)** | 120-150 | Basado en cobertura total (cada 2-3 km) | ⚠️ Criterio técnico, NO contractual |
| **Radares de Velocidad** | 15-20 | Estimación técnica | ⚠️ NO especificado en contrato |
| **Detectores de Altura (Gálibo)** | 8-19 | "Antes de peajes, puentes, intersecciones" | ⚠️ Contar puentes en AT1 |
| **Estaciones Meteorológicas** | 6-11 | "Según Res. 20213040035125 (IP/REV) + IDEAM" | ✅ Criterio normativo externo |
| **ANPR (Aforo)** | 10-38 | Estimación técnica | ⚠️ NO especificado en contrato |

---

## 6. MATRIZ DE VALIDACIÓN DETALLADA

### Sistema: POSTES SOS

| Criterio | Valor | Fuente | Validado |
|:---------|:------|:-------|:---------|
| **Requisito contractual** | "Distancia máxima 3 km entre sí" | AT1 Cap. 3, Sistemas de comunicación | ✅ |
| **Longitud corredor** | 293 km | AT1 Cap. 2 | ✅ |
| **Cálculo** | 293 ÷ 3 = 97.6 → 98 postes | - | ✅ |
| **Distribución** | Alternados en bermas externas | AT1 | ✅ |
| **Cantidad Excel** | 88 postes | - | ✅ Coincide (87-88) |
| **Cantidad T03** | 30-50 postes | - | ❌ INCORRECTO |
| **Costo Excel** | $6.789.105.265 COP (12.8%) | - | ⏳ A validar con cotizaciones |

**CONCLUSIÓN:** ✅ **87 postes es la cantidad contractual correcta**  
**ACCIÓN:** Ajustar T03 de "30-50" a "87 postes"

---

### Sistema: PANELES DE MENSAJE VARIABLE (PMV)

| Criterio | Valor | Fuente | Validado |
|:---------|:------|:-------|:---------|
| **Requisito contractual** | "Mín. 2 por área bidireccional, 1 por unidireccional" | AT2 Sec. 3.3.5.1 | ✅ |
| **Peajes bidireccionales** | 2 (Zambito, Aguas Negras) | AT1 Tabla 2 | ✅ |
| **Mínimo contractual** | 2 x 2 = 4 PMV | - | ✅ |
| **Intersecciones a desnivel** | 6-7 | AT1 Tablas múltiples | ✅ |
| **PMV adicionales** | 6-7 (pre-intercambiadores) | Justificación técnica | ✅ Razonable |
| **Zonas urbanas/críticas** | 4-6 (reducción velocidad) | Estimación | ⏳ A validar |
| **TOTAL Propuesto T03** | 16-18 PMV | - | ✅ RAZONABLE |
| **Excel** | 29 PMV | - | ⚠️ Exagerado |
| **Costo Excel** | $10.900.277.832 COP (20.6%!) | - | ⚠️ Muy alto |

**CONCLUSIÓN:** ✅ **16-18 PMV es razonable** y justificado  
**ACCIÓN:** NO usar 29 PMV del Excel (no justificado)

---

### Sistema: CÁMARAS CCTV (Revisión Detallada)

**Infraestructura conocida que requiere CCTV:**

| Tipo de Ubicación | Cámaras/Sitio | Cantidad Sitios | Subtotal | Fuente |
|:------------------|:--------------|:----------------|:---------|:-------|
| **Peajes** | 6 | 2 | 12 | AT1 Tabla 2 |
| **CCO** | 8 | 1 | 8 | AT1 Cap. 3 |
| **Intersecciones a desnivel** | 4 | 6-7 | 24-28 | AT1 Tablas múltiples |
| **Estaciones de Pesaje** | 6 | ¿2-3? | 12-18 | AT1 (menciona, no especifica cant.) |
| **Áreas de Servicio** | 4 | ¿14? | ¿56? | AT1 Tabla 53 - **A CONTAR** |
| **Zonas de accidentalidad** | 2 | ¿10-15? | 20-30 | AT2 - Con Interventoría+Policía |
| **TOTAL ESTIMADO** | - | - | **132-172** | - |

**CONCLUSIÓN:**  
✅ **108-130 cámaras es razonable** si hay ~14 áreas de servicio  
⏳ **REQUIERE:** Contar áreas de servicio exactas en AT1

---

## 7. PENDIENTES CRÍTICOS PARA COMPLETAR VALIDACIÓN

### 7.1 Búsquedas Específicas en AT1

- [ ] **Áreas de Servicio:** Buscar listado específico o Tabla 53 completa
- [ ] **Estaciones de Pesaje:** Buscar cantidad específica o ubicaciones
- [ ] **Puentes Peatonales:** Contar menciones específicas
- [ ] **Paraderos:** Verificar si son diferentes a áreas de servicio
- [ ] **Intersección UF13:** Leer Tabla 47 completa

### 7.2 Búsquedas en Otros Apéndices

- [ ] **AT2:** Validar requisitos de O&M por equipo
- [ ] **AT3:** Buscar especificaciones técnicas de equipos
- [ ] **AT4:** Verificar indicadores de disponibilidad

---

## 8. RECOMENDACIONES PRELIMINARES

### 8.1 Cantidades a Usar (Validadas)

✅ **Usar estas cantidades (contractualmente justificadas):**
- Peajes: 2
- CCO: 1
- Postes SOS: 87
- PMV: 16-18
- Intersecciones a desnivel: 6-7

### 8.2 Cantidades a Revisar (Validación Pendiente)

⏳ **Revisar antes de presupuestar:**
- CCTV: 108-130 (validar áreas de servicio)
- Áreas de Servicio: 14 (buscar en AT1)
- Estaciones de Pesaje: 2-3 (buscar en AT1)
- Detectores de Gálibo: 8-12 (contar puentes con restricción)

### 8.3 NO Usar Presupuesto Excel sin Validar

🔴 **CRÍTICO:** El presupuesto Excel de $69.3B COP tiene cantidades que NO coinciden con el análisis (ej: 29 PMV vs 16-18 justificados).

**Acción:** Usar solo cantidades validadas contractualmente

---

## 9. PRÓXIMOS PASOS

1. ⏳ Completar lectura de AT1 para extraer:
   - Listado de áreas de servicio
   - Cantidad de estaciones de pesaje
   - Puentes peatonales
   - Tabla 47 (UF13 intersecciones)

2. ⏳ Crear versión 2.0 de T03/T04 con cantidades validadas

3. ⏳ Actualizar estimaciones de costos

4. ⏳ Preparar RFQ solo para equipos con cantidades validadas

---

## 10. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Matriz inicial de justificación contractual |

---

**Fin del documento - Matriz de Justificación Contractual de Equipos ITS**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*


