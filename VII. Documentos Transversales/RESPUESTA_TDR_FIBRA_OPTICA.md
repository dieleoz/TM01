# 📋 RESPUESTA AL TDR FIBRA ÓPTICA Y DATOS - OBSERVACIONES Y CORRECCIONES

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def FO y Datos AMM.md` (TDR Asesor Externo)  
**Fecha:** 13 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría  
**Metodología:** Contract-First Architecture + Auditoría Forense

---

## 📌 RESUMEN EJECUTIVO

Se han identificado **errores técnicos críticos** y sobre-especificaciones de nivel Data-Center en el TDR de Telecomunicaciones. El error más grave es la confusión entre fibras Monomodo y Multimodo en las tablas de accesorios, lo cual invalidaría cualquier proceso de compra. Asimismo, se detecta una capacidad de conmutación en el CORE que excede en un 500% las necesidades reales del proyecto.

### Categorías de Observaciones:

| Categoría | Severidad | Impacto |
|:----------|:---------:|:--------|
| **Error Metodológico** | 🔴 Crítica | Confusión 9µm (SM) vs 50µm (MM) en Pigtails |
| **Sobre-especificación** | 🟡 Media | Core Switch de 1.4 Tbps (Innecesario) |
| **Normas no aplicables** | 🔵 Baja | Persistencia de normas UNE (España) |
| **Consistencia RFQ** | 🟡 Media | Discrepancia Fibra Tradicional vs Soplada |

---

## 🔍 ANÁLISIS DE DISCREPANCIAS Y OPTIMIZACIÓN (GAP ANALYSIS)

| # | Punto de Control | TDR Asesor (Actual) | Especificación Correcta | Observación del Estratega (Ahorro/Blindaje) |
|:--|:-----------------|:--------------------|:------------------------|:---------------------------------------------|
| 1 | **Tipo de Fibra** | Pigtails de 50 µm | **Monomodo 9/125 µm** | 🔴 **CRÍTICO:** El TDR pide fibra Monomodo (SM) pero especifica un núcleo de 50µm (Multimode). Si se compra así, los equipos no linkean. **ERROR DE COPY-PASTE.** |
| 2 | **Capacidad CORE** | 1.4 Tbit/s / 2880 Mpps | **~400 Gbps / 300 Mpps** | 💰 **Smart CAPEX:** Un switch de 1.4 Tbps es para un ISP o Data Center. Para 150 nodos ITS, un switch de gama media-alta es suficiente y ahorra ~USD 15,000 por nodo. |
| 3 | **Normatividad** | UNE 20-324, UNE 20-501 | **IEC 60529 / NTC 2050** | 🎩 **Auditor:** Eliminar normas españolas. Usar estándar internacional IEC o nacional NTC. |
| 4 | **Instalación** | "Microfibra" (Soplada) | **Definir estándar** | ⚠️ **Riesgo:** El RFQ actual pide fibra tradicional. La microfibra requiere microductos y máquinas de soplado costosas. Se debe unificar el criterio. |
| 5 | **Firewall** | 2 Gbit/s | **Mantener** | ✅ Correcto. Es un dimensionamiento adecuado para el tráfico de video y datos esperado. |

---

## 🛠️ OBSERVACIONES DETALLADAS

### 1️⃣ CORRECCIÓN TÉCNICA OBLIGATORIA: DIÁMETRO DE NÚCLEO

**Observación (Línea 3744):** La tabla de Pigtails indica un diámetro de núcleo de **50 ± 0.4 µm**.  
**Corrección:** Los sistemas de larga distancia (Backbone) de la Troncal Magdalena 1 deben ser **Monomodo (G.652D)** con diámetro de núcleo de **9 µm**. El uso de accesorios de 50 µm provocará una atenuación masiva e inmediata que impedirá la comunicación.

---

### 2️⃣ OPTIMIZACIÓN DEL CORE NETWORK

**Observación (Línea 2355):** Se exige un Switch Core con capacidad de **1.4 Tbit/s**.  
**Análisis:** 
- El proyecto tiene ~150 switches de acceso.
- Asumiendo que cada switch de acceso entrega 1 Gbps (escenario máximo poco probable), el tráfico total hacia el core sería de 150 Gbps.
- Un switch de 1.4 Tbps está sobredimensionado en un **800%**.  

**Recomendación:** Ajustar a un switch con capacidad de **480 Gbps** con puertos de 10GbE y 40GbE. Esto permite usar equipos estándar de mercado (Cisco 9300/9500 o Huawei S6730) reduciendo costos de mantenimiento y repuestos.

---

### 3️⃣ DEPURACIÓN NORMATIVA (REEMPLAZO DE NORMAS UNE)

Se deben sustituir las siguientes referencias españolas por sus equivalentes internacionales aceptados en Colombia:
- **UNE 20-324** → Reemplazar por **IEC 60529** (Grados de protección IP).
- **UNE 20-501** → Reemplazar por **IEC 60068** (Pruebas ambientales y vibraciones).
- **UNE 4826** (Niebla Salina) → No aplicable para equipos de interior.

---

### 4️⃣ GABINETES Y DISTRIBUCIÓN

**Observación:** Se pide IP40 para el CCO (Interior) y IP54 para Nodos (Exterior/Semi-exterior).  
**Mejora:** 
- En el CCO, si no hay control de polvo estricto, se recomienda **IP52** con filtros de aire.
- Para los Nodos de red en el Magdalena Medio (alta temperatura y humedad), se debe exigir **Acondicionador de Aire (Mini-Split o Peltier)** en lugar de "ventilación forzada" (Línea 2947), ya que ventilación forzada en esa zona solo inyecta humedad y aire caliente al switch, reduciendo su vida útil.

---

### 5️⃣ SEGURIDAD (FIREWALL)

**Observación:** El requerimiento de Firewall de Nueva Generación (NGFW) es adecuado.  
**Sugerencia:** Asegurar que las licencias de servicios (IPS, Antivirus, Filtrado URL) sean por un periodo mínimo de **3 a 5 años** para garantizar la operación inicial sin sobrecostos de renovación inmediatos.

---

## ✅ RECOMENDACIONES FINALES PARA EL ASESOR

1. **Unificar método de tendido:** Confirmar si el diseño es Fibra Óptica Tradicional (Pulling) o Microfibra (Blown). Las canalizaciones y cajas de empalme cambian radicalmente entre ambos sistemas.
2. **Corregir Tablas de Accesorios:** Revisar diámetros de núcleo y tipos de conectores (LC/APC vs LC/UPC).
3. **Sincronizar con RETIE 2024:** El TDR menciona correctamente la actualización de 2024, pero debe detallar el requisito de Certificación Plena para los tableros eléctricos internos de los Nodos.

---
**Preparado por:** Ingeniería TM01  
**Metodología:** Punto 42 v3.0  
**Estado:** ✅ DOCUMENTO GENERADO PARA REVISIÓN
