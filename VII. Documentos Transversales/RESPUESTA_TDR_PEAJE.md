# 📋 RESPUESTA AL TDR PEAJES - OBSERVACIONES Y OPTIMIZACIONES

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def peaje.md` (TDR Asesor Externo)  
**Fecha:** 13 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría  
**Metodología:** Contract-First Architecture + Auditoría Forense

---

## 📌 RESUMEN EJECUTIVO

Se han identificado observaciones críticas en los Términos de Referencia (TDR) de Peajes que impactan directamente el CAPEX y el riesgo operativo del proyecto. Los puntos principales se centran en la eliminación de normas no aplicables (UNE), la corrección de sobre-especificaciones de infraestructura y la mitigación de riesgos asociados al traslado de los peajes Zambito y Aguas Negras.

### Hallazgos de Alto Impacto:

| Categoría | Observación | Impacto |
|:----------|:------------|:--------|
| **Normatividad** | Presencia de 6+ normas UNE (España) no exigibles en Colombia | 🟡 Segmentación de mercado |
| **Infraestructura** | Carga estática de 400kg en gabinetes (sobredimensionado) | 💰 Costo innecesario |
| **Pesaje (WIM)** | Exigencia de WIM en **todos** los carriles de peaje | 🔴 CAPEX Elevado / Complejidad |
| **Riesgo Traslado** | Transferencia total de riesgo de licenciamiento al contratista | ⚠️ Riesgo Contractual |
| **Sincronización** | Ambigüedad en integración SICC/ANI/ANISCOPIO | 🟡 Riesgo Operativo |

---

## 🔍 ANÁLISIS DE DISCREPANCIAS Y SMART CAPEX

| # | Punto de Control | TDR Asesor (Actual) | Especificación Correcta | Comentario del Estratega |
|:--|:-----------------|:--------------------|:------------------------|:-------------------------|
| 1 | **Normas Gabinetes** | UNE 4826, UNE-EN 2409, UNE 20-501 | **NTC 2050 / RETIE 2024** | 🎩 **Legal:** Las normas UNE no son vinculantes en Colombia. Deben sustituirse por el nuevo RETIE 2024 para evitar rechazos de Interventoría. |
| 2 | **Carga Estática** | 400 Kg para gabinetes SE/Nodos | **< 100 Kg (Carga Real)** | 💰 **Ahorro:** Un gabinete de peaje solo soporta electrónica liviana y UPS pequeñas. 400kg es un requisito para subestaciones de potencia. |
| 3 | **Pesaje Carril** | WIM en 100% de los carriles | **Verificación vs AT2** | ⚠️ **Crítico:** Instalar 14 básculas dinámicas (7 por peaje) es una inversión masiva. Se debe validar si el AT2 permite carriles de pesaje selectivos o pesaje post-peaje. |
| 4 | **Cámaras LPR** | 75 FPS (mencionado en specs transversales) | **30-50 FPS (Velocidad Peaje)** | 💰 **Optimización:** En peaje manual/semiautomático el vehículo se detiene o pasa a <20km/h. 75 FPS es excesivo para estas condiciones. |
| 5 | **Traslado Equipos** | Responsabilidad 100% Contratista | **Inventario de Estado Inicial** | ⚠️ **Riesgo:** El contratista no puede garantizar licencias de software de terceros (U-Toll) si el fabricante original no coopera. Se requiere acta de estado técnico. |

---

## 🛠️ OBSERVACIONES DETALLADAS

### 1️⃣ DEPURACIÓN NORMATIVA (ELIMINACIÓN DE "NORMAS PARÁSITO")

Se solicita eliminar las siguientes referencias a normas españolas que encarecen la oferta sin beneficio técnico:
- **UNE 4826 & UNE-EN 2409:** (Corrosión/Pintura). Sustituir por estándares de pintura electrostática para clima tropical.
- **UNE 20-501:** (Vibraciones). No aplica a equipos fijos en cabinas de peaje.
- **UNE 20-550 & UNE 20460:** (Choques/Tierras). Sustituir por **RETIE 2024**, el cual es ley en Colombia.

### 2️⃣ PESAJE DINÁMICO EN CARRIL (WIM)

**Observación (L500):** El TDR cita el Apéndice 2, numeral 3.3.4.2 para exigir WIM en todos los carriles.  
**Análisis Forense:** El costo de mantenimiento de 14 sensores piezoeléctricos o celdas de carga en carriles de alto tráfico es extremo.  
**Sugerencia:** Se recomienda proponer un sistema de pesaje dinámico solo en los carriles IP/REV (Telepeaje) y uno de respaldo, optimizando el CAPEX en los carriles manuales donde el pesaje puede ser verificado visualmente o por sensores de ejes estándar.

### 3️⃣ RIESGOS EN EL TRASLADO (ZAMBITO / AGUAS NEGRAS)

**Observación (L258/L264):** El TDR indica que si se pierden licencias durante el traslado, el costo es del contratista.  
**Riesgo Contractual:** Si el sistema actual tiene licencias atadas a un hardware específico que se dañe en el traslado, el costo de "licencias vitalicias" (L266) para 7 carriles nuevos puede ser una contingencia oculta de varios miles de dólares.  
**Recomendación:** Exigir un **Acta de Entrega de Software** por parte de la Concesionaria actual antes de iniciar el traslado, definiendo claramente qué versiones y llaves de activación se entregan.

### 4️⃣ INFRAESTRUCTURA Y GABINETES

**Observación (L535):** Carga de 400kg.  
**Corrección:** Los gabinetes de carril deben ser **NEMA 4X / IP66** en acero inoxidable o poliéster reforzado debido a la alta humedad y vapores de combustible en las plazas de peaje. La carga debe ser ajustada a la realidad del equipo (Switch PoE, PLC, Media Converter).

---

## ✅ RECOMENDACIONES FINALES

1. **Estandarización IP/REV:** Asegurar que las antenas RFID cumplan estrictamente con la **ISO 18000-63** para interoperabilidad total.
2. **Plano de Carriles:** Definir si los 7 carriles por peaje incluyen los carriles de carga extradimensionada (carril 1 generalmente) con galas de altura.
3. **Mantenimiento:** Exigir un stock de repuestos crítico (Barreras, Sensores de ejes) en sitio, dado que la disponibilidad exigida es del **99% anual**.
4. **Alimentación Eléctrica:** Validar que el traslado incluye la certificación **RETIE de las nuevas instalaciones** (PK 81+850) por un organismo acreditado.

---
**Preparado por:** Ingeniería TM01  
**Metodología:** Punto 42 v3.0  
**Estado:** ✅ DOCUMENTO GENERADO PARA REVISIÓN
