# 📋 RESPUESTA AL TDR BÁSCULAS - OBSERVACIONES Y CORRECCIONES ANALÍTICAS

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def de basculas.md` (TDR Asesor Externo)  
**Fecha:** 13 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría  
**Metodología:** Contract-First Architecture + Auditoría Forense V3.1

---

## 📌 RESUMEN EJECUTIVO (AUDITORÍA)

Tras una revisión exhaustiva de los TDR del sistema de Básculas (Dinámica y Estática), se han detectado **inconsistencias técnicas críticas** y sobre-especificaciones de infraestructura que elevan el CAPEX sin aportar precisión metrológica. Se resalta la contradicción en tecnologías de visualización (RGB vs Ámbar) y el uso recurrente de normas españolas (UNE) no aplicables en Colombia.

### Hallazgos Principales:

| Hallazgo | Severidad | Impacto |
|:---------|:---------:|:--------|
| **Contradicción Técnica** | 🔴 Crítica | Display exige RGB y Ámbar simultáneamente |
| **Normatividad "Parásita"** | 🟡 Media | 10+ referencias a normas UNE (España) |
| **Sobre-especificación Obra Civil** | 🟡 Media | Postes bandera de 6m y carga de 400kg |
| **Riesgo Metrológico** | 🔴 Crítica | Indefinición de responsabilidad en Pavimento ASTM |
| **Inconsistencias LPR** | 🔵 Baja | Requerimiento de 75 FPS para pesaje estático/lento |

---

## 🔍 GAP ANALYSIS & OPTIMIZACIÓN FINANCIERA

| # | Punto de Control | Especificación TDR (Actual) | Especificación Correcta | Comentario del Estratega (Smart CAPEX) |
|:--|:-----------------|:---------------------------|:------------------------|:---------------------------------------|
| 1 | **Tecnología LEDs** | "LEDs Ámbar" (L488) + "Full Matriz, RGB" (L498) | **Matriz Monocromática (Ámbar/Rojo)** | 💰 **Ahorro:** Un display RGB es innecesario para informar pesos. Se debe uniformar a un color (Ámbar) para mayor visibilidad al sol y menor costo (30-40% menos). |
| 2 | **Semaforización** | Poste bandera de 6 metros | **Poste Pedestal 3-4 metros** | 👷 **Ingeniería:** En una estación de pesaje, el conductor debe ver el semáforo a corta distancia. Un poste de 6m es para intersecciones urbanas, no para básculas. |
| 3 | **Carga Gabinetes** | Mínima carga estática de 400 Kg | **Carga según peso de UPS (~60-80kg)** | ⚠️ **Refuerzo:** Es un error de copy-paste. Ningún rack de báscula soporta 400kg de equipos. Sobredimensiona la placa base y el costo del gabinete. |
| 4 | **Cámaras LPR** | 75 Cuadros por segundo (FPS) | **30-60 FPS Estándar** | 💰 **Smart CAPEX:** Para vehículos en báscula (0-5 km/h), 75 FPS es un desperdicio de procesamiento y almacenamiento. 30 FPS es suficiente. |
| 5 | **Normas UNE** | UNE 4826, 20-501, 20-550, 20460 | **NTC 2050 / IEC 60529** | 🎩 **Legal:** Las normas UNE no tienen validez legal automática en Colombia ante la SIC. Deben sustituirse por estándares locales o internacionales (ISO/IEC). |

---

## 🛠️ OBSERVACIONES TÉCNICAS DETALLADAS

### 1️⃣ BLINDAJE METROLÓGICO (OIML VS NTC)

**Observación:** El TDR menciona NTC 2031 (R76).  
**Precisión:** La NTC 2031 aplica para básculas **Estáticas**. Para las básculas **Dinámicas (WIM)**, el documento debe citar obligatoriamente la **OIML R134**.  
**Riesgo:** Si el proponente entrega certificados bajo R76 para un WIM, la Interventoría o la SIC pueden rechazar el sistema al entrar en operación por no cumplir el reglamento específico de pesaje dinámico.

---

### 2️⃣ INFRAESTRUCTURA DE PAVIMENTO: EL "SILENCIO" CONTRACTUAL

**Observación:** El TDR no especifica la responsabilidad sobre la planicidad del pavimento en la zona WIM.  
**Correcion Contractual:** Se debe añadir la siguiente cláusula de blindaje:
> "El contratista de la báscula dinámica deberá certificar mediante perfilografía láser que el pavimento cumple con la norma **ASTM E1318 (Type III)** antes de instalar los sensores. En caso de no cumplimiento por parte de la Obra Civil (EPC), el proveedor de la báscula queda exento de multas por falta de precisión metrológica."

---

### 3️⃣ SEÑALIZACIÓN Y SEGURIDAD VIAL

**Observación:** Se menciona el uso de talanqueras y semáforos.  
**Mejora:** El clima del Magdalena Medio (alta pluviosidad) requiere que los semáforos sean **IP66** y tengan **viseras extendidas** para evitar falsas lecturas por reflejos solares. Además, se debe exigir que las barreras tengan **brazos articulados con iluminación LED** para evitar que vehículos de carga que no hayan frenado a tiempo causen daños totales al motor de la barrera.

---

### 4️⃣ INTEGRACIÓN SICC / PECSO / SIMEL

**Observación:** El TDR pide "integración por web service".  
**Correcion:** Se debe especificar que el software debe ser capaz de reportar fallas de celdas de carga en tiempo real (Smart Diagnostics) para evitar que la estación opere con pesos erróneos durante días, lo cual generaría reclamos legales masivos de transportadores.

---

## ✅ RECOMENDACIONES DE CIERRE PARA EL ASESOR

1. **Unificar Display:** Definir si es Ámbar o RGB. Se recomienda **Ámbar Full Matriz** por costo/beneficio.
2. **Eliminar UNE:** Reemplazar sistemáticamente todas las referencias a normas españolas por NTC 2050 (Colombia) o IEC.
3. **Ajustar Postes:** Reducir la altura de los postes de semaforización a 4m máximo.
4. **Masas Patrón:** Aclarar que el proveedor debe suministrar las masas patrón (pesetas) para la certificación inicial ante ONAC, no el Concesionario.

---
**Preparado por:** Ingeniería TM01  
**Estado:** ✅ REVISIÓN REFINADA Y VALIDADA
