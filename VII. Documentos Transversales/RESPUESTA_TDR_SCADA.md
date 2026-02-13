# 📋 RESPUESTA AL TDR SCADA & ITS - OBSERVACIONES Y CORRECCIONES

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def scada.md` (TDR Asesor Externo)  
**Fecha:** 13 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría  
**Metodología:** Contract-First Architecture + Auditoría Forense

---

## 📌 RESUMEN EJECUTIVO

Se ha realizado la revisión técnica y contractual del TDR para el sistema SCADA, Radares ANPR (ETD), Control de Gálibo y Meteorología. Se han detectado discrepancias normativas significativas (referencias a normas españolas UNE en lugar de colombianas), sobre-especificaciones de infraestructura física y oportunidades de optimización en los sistemas de alimentación eléctrica.

### Categorías de Observaciones:

| Categoría | Cantidad | Impacto |
|:----------|:---------|:--------|
| **Normatividad y RETIE** | 8 | Error en citas de normas UNE; falta ajuste a RETIE 2024 |
| **Infraestructura (Gabinetes)** | 5 | Sobre-especificación de carga (400Kg) y estanqueidad |
| **Optimización Energética** | 3 | Duplicidad de sistemas solares en sitios con PMV |
| **Software y Simulación** | 2 | Clarificación de recursos para entorno de entrenamiento |
| **Señalización Vial** | 2 | Referencia a Manual 2015 vs. Manual 2024 (Contrato) |

### Impacto Económico y de Calidad:
- **Smart CAPEX:** Eliminación de redundancias en postes y sistemas solares para Radares ANPR al integrarlos con PMV.
- **Riesgo Contractual:** La referencia al Manual de Señalización 2015 genera un conflicto con la obligación contractual de usar la versión 2024.
- **Estandarización:** Sustitución de 5+ normas UNE por NTC 2050 y RETIE 2024 para evitar sobrecostos por certificaciones extranjeras.

---

## 🔍 ANÁLISIS DE DISCREPANCIAS Y OPTIMIZACIÓN (GAP ANALYSIS)

| # | Punto de Control | TDR Asesor (Actual) | Especificación Correcta | Observación del Estratega (Ahorro/Blindaje) |
|:--|:-----------------|:--------------------|:------------------------|:---------------------------------------------|
| 1 | **Normas de Gabinetes** | UNE 4826, UNE-EN 2409, UNE 20-501 | **NTC 2050 / RETIE 2024** | 🎩 **Auditor:** No se deben exigir normas UNE de España en territorio colombiano. Encacece el producto sin beneficio técnico adicional. |
| 2 | **Carga de Gabinetes** | Carga estática 400 Kg | **Carga real de equipos (~20-40 Kg)** | 👷 **Ingeniero:** Error de copy-paste. Un nodo ITS no soporta 400kg. Esto obliga a herrajes y postes innecesariamente pesados. |
| 3 | **Alimentación Radar/ETD** | Sistema Solar Independiente | **Compartir sistema con PMV** | 💰 **CAPEX:** El TDR indica que los Radares se instalan en los PMV. No se requiere un segundo sistema solar/baterías si el PMV ya tiene respaldo. |
| 4 | **Manual Señalización** | Manual 2015 | **Manual 2024** | ⚠️ **Crítico:** El contrato principal exige cumplimiento del Manual 2024. Usar 2015 en Gálibos genera inconsistencias legales. |
| 5 | **Capacidad de Impresión** | 75,000 páginas/mes | **Impresora estándar de oficina** | 💡 **Optimización:** Es un CCO, no una litografía. Se puede reducir la especificación de la impresora a una multifuncional estándar. |
| 6 | **Protocolos SCADA** | "Otros calificados positivamente" | **Protocolos Abiertos (Protocol-First)** | 🛡️ **Seguridad:** Se debe limitar a protocolos estándar (OPC UA, MQTT, SNMP) para evitar que proveedores ofrezcan protocolos propietarios "mejor calificados". |

---

## 🛠️ ACCIONES RECOMENDADAS

### 1. Actualización Normativa (Obligatorio)
Eliminar toda referencia a normas **UNE** (España) en las secciones de gabinetes y canalizaciones. Sustituir por:
- **RETIE 2024** (Resolución 40117 del 2 de abril de 2024).
- **NTC 2050 Segunda Actualización**.
- **IEC 60529** para grados de protección IP (en lugar de referencias UNE).

### 2. Optimización de Infraestructura
- **Radares ANPR:** Eliminar el requerimiento de alimentación fotovoltaica independiente en los sitios donde el ETD está montado sobre la estructura del PMV. Centralizar la alimentación en el gabinete del PMV para reducir puntos de falla y costos de baterías.
- **Grado IP:** Ajustar gabinetes de CCO (Interior) a IP20/IP30 y gabinetes de campo a IP65. Se detectaron inconsistencias donde se pedía IP30 para nodos externos.

### 3. Ajuste en Control de Gálibo
- **Lógica de Activación:** Validar que el PLC de Gálibo sea de arquitectura abierta. 
- **Señal Oculta:** Confirmar que estas señales cumplen con los pictogramas del **Manual de Señalización 2024**.

---

## 📝 CONCLUSIÓN

El TDR del SCADA e ITS de campo es funcionalmente robusto pero requiere una "limpieza forense" de normas españolas obsoletas y un ajuste en la infraestructura física para no sobredimensionar postes y soportes debido al error de los 400kg de carga estática. La integración de la alimentación de los Radares con los PMV representa un ahorro directo en el CAPEX de sistemas solares.

**Aprobado para envío tras ajustes:** 
- [ ] Corrección de Normas UNE a RETIE/NTC.
- [ ] Ajuste de carga estática de gabinetes.
- [ ] Unificación de alimentación Radar-PMV.
