# 📋 RESPUESTA AL TDR SCADA & ITS - VALIDACIÓN Y OBSERVACIONES FORENSES

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def scada.md` (TDR Asesor Externo)  
**Fecha:** 13 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Metodología:** Contract-First Architecture + Auditoría Forense V3.1

---

## 📌 RESUMEN DE VALIDACIÓN

Se ha auditado el TDR de SCADA e ITS de campo (`def scada.md`). El documento es técnicamente exhaustivo pero presenta **dependencias normativas parásitas** y errores de consistencia en infraestructura que impactan el presupuesto sin mejorar el nivel de servicio.

| Estado de Validación | Categoría | Hallazgo Forense |
|:---------------------|:----------|:-----------------|
| ❌ **RECHAZADO** | Normatividad | Referencias a normas UNE (España) en gabinetes y RETIE. |
| ⚠️ **OBSERVADO** | Infraestructura | Error de 400kg de carga estática en gabinetes ITS (L1822, L2098, L2447). |
| ✅ **VALIDADO** | Software | Arquitectura de virtualización (3 servidores) y protocolos (OPC UA, MQTT). |
| 💡 **OPTIMIZADO** | Smart CAPEX | Integración de alimentación Radar ANPR con PMV para ahorro solar. |

---

## 🔍 EVIDENCIAS Y DISCREPANCIAS DETECTADAS

### 1. Error de "Carga Fantasma" en Gabinetes (L1822, L2098, L2447)
- **Hallazgo:** El TDR exige que los gabinetes de Nodos y SE soporten una carga estática de **400 Kg**.
- **Impacto:** Esto no corresponde a la realidad de equipos ITS (~30kg). Obliga a usar postes y cimentaciones de mayor calibre (encarecimiento de obra civil).
- **Corrección:** Ajustar a carga real de diseño + 20% de reserva.

### 2. Normatividad Española No Aplicable (L1812, L1820, L2437)
- **Hallazgo:** Se citan normas **UNE 4826**, **UNE 2409**, **UNE 20-501**.
- **Impacto:** Estas normas son del Reino de España. Exigirlas en Colombia encarece el producto o bloquea proveedores locales que cumplen con **NTC 2050** y **RETIE**.
- **Corrección:** Sustituir por NTC 2050 (2da act.) y RETIE 2024.

### 3. Sobre-especificación en CCO (L1628, L1636)
- **Hallazgo:** Se exige impresora con ciclo de 75,000 páginas/mes y procesadores de KVM obsoletos (512MB).
- **Impacto:** Gasto innecesario en periféricos.
- **Corrección:** Equipos multifuncionales estándar y KVM de alto desempeño (4K).

---

## 🛠️ COMPLIANCE MATRIX (VALIDACIÓN TÉCNICA)

| Ítem | Requisito TDR | Validación TM01 | Observación del Estratega |
|:-----|:--------------|:----------------|:--------------------------|
| **Radar ANPR** | Precisión 98% (L1865) | ✅ Aceptable | Valor estándar para detección de alta gama. |
| **Gálibo** | Respuesta < 0.5s (L2195) | ✅ Crítico | Esencial para evitar choques en puentes. Validado. |
| **SCADA** | Protocolo Abierto (L1088) | ✅ Validado | Se exige Modbus TCP, OPC UA y MQTT. Blindaje contra Vendor Lock-in. |
| **Seguridad** | RETIE 2024 (L1834) | ✅ Validado | Correctamente citado según la resolución 40117. |

---

## 💰 ESTRATEGIA SMART CAPEX (RECOMENDACIÓN)

**Unificación de Alimentación ETD/PMV:**
En la Tabla 5 (L2055), se observa que los Radares ANPR se instalan en los mismos sitios que los PMV. 
- **Propuesta:** No contratar 12 sistemas solares independientes para los radares. Alimentarlos desde el gabinete principal del PMV.
- **Ahorro Estimado:** 15% en el CAPEX total de instrumentación de campo.

---

## 📝 CONCLUSIÓN Y DICTAMEN

**ESTADO: VALIDADO CON OBSERVACIONES OBLIGATORIAS.**

El TDR es apto para licitación **ÚNICAMENTE** si se realizan los siguientes cambios:
1. Eliminar normas UNE y reemplazarlas por NTC/RETIE.
2. Corregir el peso de carga de gabinetes de 400kg a un valor real de ingeniería.
3. Actualizar la referencia del Manual de Señalización Vial a la versión **2024** (Contrato Principal).

**Aprobado por:** Ingeniería TM01 (EPC)  
**Fecha de Validación:** 13 de Febrero de 2026
