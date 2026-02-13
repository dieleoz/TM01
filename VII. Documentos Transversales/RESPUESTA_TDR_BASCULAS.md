# 📋 RESPUESTA AL TDR BÁSCULAS - OBSERVACIONES Y CORRECCIONES

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def de basculas.md` (TDR Asesor Externo)  
**Fecha:** 13 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría  
**Metodología:** Contract-First Architecture + Auditoría Forense

---

## 📌 RESUMEN EJECUTIVO

Se han identificado **observaciones críticas** en el TDR de Básculas (WIM/Estáticas) que requieren corrección antes de proceder a licitación. Al igual que en los subsistemas de CCTV y PMV, se detectan "normas parásito" (UNE españolas) y sobre-especificaciones de infraestructura que no agregan valor metrológico pero sí costo excesivo.

### Categorías de Observaciones:

| Categoría | Cantidad | Impacto |
|:----------|:---------|:--------|
| **Normatividad Metrológica** | 3 | Ajuste a SIMEL, OIML R76 y R134 |
| **Integridad del Pavimento (WIM)** | 1 | Requisito crítico ASTM E1318 para precisión |
| **Normas no aplicables** | 6 | Normas UNE (España) y NTCs no pertinentes |
| **Infraestructura y Gabinetes** | 4 | Sobre-especificación de carga y estanqueidad |
| **Integración SICC/PECSO** | 2 | Clarificación de fronteras de software |

### Impacto Económico y de Calidad:
- **Aseguramiento Metrológico:** Evita rechazos de la OAVM/SIC por documentación incorrecta.
- **Riesgo Técnico:** La precisión del WIM depende un 90% del pavimento; el TDR debe blindar este requisito.
- **Optimización:** Reducción de costos en gabinetes y postes de semaforización obsoletos.

---

## 🔍 ANÁLISIS DE DISCREPANCIAS Y OPTIMIZACIÓN (GAP ANALYSIS)

| # | Punto de Control | TDR Asesor (Actual) | Especificación Correcta | Observación del Estratega (Ahorro/Blindaje) |
|:--|:-----------------|:--------------------|:------------------------|:---------------------------------------------|
| 1 | **Normas Metrológicas** | ISO, ITU, DIN, UNE | **OIML R76 / OIML R134** | 🎩 **Auditor:** Las básculas dinámicas se rigen por OIML R134. La R76 es para estáticas. No cite normas de telecomunicaciones (ITU) para pesaje. |
| 2 | **Pavimento WIM** | No menciona requisitos | **ASTM E1318 (Type III/IV)** | ⚠️ **Crítico:** Si el pavimento no cumple planicidad y deflexión (ASTM E1318), el WIM no dará precisión del 5-10%. El proveedor debe validar el sitio antes de instalar. |
| 3 | **Gabinetes Carga** | 400 Kg de carga estática | **Carga real de equipos** | 👷 **Ingeniero:** Un gabinete de báscula no soporta 400kg. Es un error de copy-paste de subestaciones eléctricas. |
| 4 | **Semaforización** | Postes de 6m tipo bandera | **Semáforos de carril (Lanza)** | 👷 **Ingeniero:** En pesaje estático se usan semáforos de visualización cercana. Un poste de 6m es innecesario y encarece la obra civil. |
| 5 | **Certificación** | "Bajo cuenta y riesgo" | **Protocolo de Pruebas ONAC** | 🎩 **Auditor:** La certificación legal (SIMEL) depende del estado inicial. Se requiere definir quién paga las masas patrón para la calibración inicial. |

---

## 🛠️ OBSERVACIONES DETALLADAS

### 1️⃣ DEPURACIÓN NORMATIVA (ELIMINACIÓN DE "NORMAS PARÁSITO")

Se han detectado múltiples referencias a normas españolas (UNE) que no son exigibles en Colombia y que segmentan artificialmente el mercado.

**Normas a ELIMINAR del TDR:**
- **UNE 4826:** Niebla salina 500h (No es zona costera).
- **UNE-EN 2409:** Adherencia de pintura.
- **UNE 20-501:** Vibraciones (Innecesario para equipos fijos de báscula).
- **UNE 20-550:** Protección contra choques (Cubierto por RETIE).
- **UNE 20460:** Toma de tierra (Cubierto por RETIE 2024).

**Normas a MANTENER y REFORZAR:**
- **NTC 2031 (OIML R76):** Para básculas de funcionamiento no automático (Estáticas).
- **OIML R134:** Para básculas de funcionamiento automático (Dinámicas/WIM).
- **Resolución 77506/2016 (SIC):** Reglamento metrológico de pesaje en Colombia.
- **ASTM E1318-09:** Estándar para sistemas WIM (Obligatorio para garantizar precisión).

---

### 2️⃣ BLINDAJE TÉCNICO: EL PAVIMENTO ES PARTE DEL INSTRUMENTO

**Observación:** El TDR no especifica los requisitos de obra civil para la zona de aproximación al WIM.
**Riesgo:** Si el pavimento tiene baches o ahuellamientos (>3mm bajo regla de 3m), el vehículo "salta" y la pesada dinámica es errónea, invalidando la multa.

**Sugerencia de texto para el TDR:**
> "El proponente de la solución WIM deberá realizar una auditoría de planicidad y rugosidad en la zona de pesaje dinámica (75m antes y 25m después del sensor) bajo norma ASTM E1318 antes de la instalación. Cualquier desviación en el pavimento que comprometa la precisión del pesaje deberá ser notificada para corrección por parte del contratista de obra civil (EPC)."

---

### 3️⃣ INFRAESTRUCTURA Y GABINETES

**Observación:** El TDR pide gabinetes con resistencia de 400 Kg y RAL 7035.
**Corrección:** 
- El RAL estándar para ITS en este proyecto es **Naranja RAL 2004** o **Gris/Beige neutro** según el componente.
- La carga estática debe ser acorde a los equipos (UPS, controlador, switch), típicamente **<80 Kg**.
- Se debe exigir **NEMA 4X / IP66** para exteriores dada la alta humedad y pluviosidad del Magdalena Medio.

---

### 4️⃣ INTEGRACIÓN SICC / PECSO / SIMEL

**Observación:** El TDR pide "integración total" pero no define los protocolos.
**Corrección:** El sistema debe obligatoriamente:
- Sincronizar con el **SICC** (Sistema de Información de la Concesión) vía API REST o Web Service.
- Reportar automáticamente a **PECSO** (Supertransporte) según los formatos XML/JSON vigentes.
- Registrar cada instrumento en **SIMEL** (SIC) con su respectivo NII.

---

### 5️⃣ SEGURIDAD VIAL Y PROTECCIÓN

**Observación:** Se menciona señalización genérica.
**Corrección:** Dado el alto riesgo de colisión en estaciones de pesaje, se debe exigir:
- **Cinta Retrorreflectiva Grado Diamante (Tipo XI)** en todos los postes y barreras.
- **Amortiguadores de impacto** o defensas metálicas certificadas protegiendo los gabinetes y sensores fotoeléctricos (evita pérdida total por choque).

---

## ✅ RECOMENDACIONES FINALES

1. **Ajustar el presupuesto:** Segregar los costos de "Aseguramiento Metrológico" (calibraciones iniciales) de los costos de suministro.
2. **Definir Responsabilidad de Masas:** Aclarar que el proveedor debe suministrar el camión de pesas para la calibración inicial recibida por Interventoría.
3. **Mantenimiento:** Exigir un tiempo de respuesta (SLA) de máximo 4 horas para fallas críticas en básculas dinámicas, para evitar la evasión de pesaje.
4. **Semaforización:** Reemplazar los postes bandera de 6m por postes tipo "L" de 3-4m para mejor visibilidad del conductor en el punto de pesaje estático.

---
**Preparado por:** Ingeniería TM01  
**Metodología:** Punto 42 v3.0  
**Estado:** ✅ DOCUMENTO GENERADO PARA REVISIÓN
