# SOLICITUD DE COTIZACIÓN (RFQ-006)
## SISTEMA ETD (ESTACIONES DE TOMA DE DATOS) – MONITOREO NO INTRUSIVO

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**RFQ No.:** RFQ-006-ETD  
**Fecha de emisión:** 04 de noviembre de 2025  
**Versión:** 2.1 (Audit .42 Final)  
**Emitido por:** Administrador Contractual EPC

---

## 📋 INFORMACIÓN DEL PROYECTO

| Campo | Valor |
|:------|:------|
| **Longitud corredor** | 293 km |
| **Unidades Funcionales (UF)** | 13 UFs (cada una requiere medición de velocidad promedio) |
| **Tipo de proyecto** | Concesión vial 4G |
| **Cliente final** | ANI |

---

## 🎯 OBJETIVO DE LA COTIZACIÓN

Solicitar oferta integral para el suministro, instalación, configuración, integración al CCO y puesta en marcha del **Sistema de Estaciones de Toma de Datos (ETD) Duales**, conforme a T04/T05. El sistema debe entregar **velocidad promedio por Unidad Funcional** y **fotos de matrícula de los vehículos** según lo exigido por el AT2 del contrato.

---

## 📦 ALCANCE DE LA COTIZACIÓN

El oferente deberá cotizar el paquete completo, incluyendo al menos:

### 1) Equipos principales (por punto ETD)
- Sensor de detección no intrusivo (radar Doppler o microondas) multipista
- Unidad de control y procesamiento con almacenamiento local
- Gabinete exterior IP65 con DPS y protección eléctrica
- Sistema de respaldo energético (UPS ≥4 horas)
- Accesorios de montaje y cableado

### 2) Integraciones y comunicaciones
- Integración con CCO/SCADA: transmisión de datos en tiempo real
- Integración con sistema SICC (ANI): reporte de indicadores de desempeño
- Conectividad por fibra óptica (derivación desde troncal) o medio equivalente
- Protocolos abiertos: SNMP v3, API REST, MQTT

### 3) Instalación y obras
- Obras y soportes para fijación en pórtico, poste o estructura existente
- Canalización local FO/energía (30 m promedio) y caja de derivación FO
- Configuración, pruebas FAT/SAT y comisionamiento

### 4) Energía
- Conexión a red eléctrica 120 VAC donde exista disponibilidad  
- Sistema de respaldo UPS ≥4 horas (incluido en gabinete)

---

## 📊 CANTIDADES A COTIZAR

- **ETD de monitoreo (Lote 1): 14 unidades**  
  - **13 Unidades de Proyecto** (Una por cada UF1-UF13).
  - **1 Unidad de Repuesto (Spare)** para redundancia operativa.
  Referencia: `IV. Ingenieria Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v2.1.md`.

> **IMPORTANTE:** Los ETD son equipos de **monitoreo estadístico NO sancionatorios**. **NO requieren cámara ANPR** ni certificación ONAC. Solo sensores de medición automática que entreguen velocidad promedio, volumen y clasificación vehicular.

> **NOTA:** Los **radares sancionatorios (SAST)** son un sistema separado y se cotizan mediante el **RFQ-007 (Radares Sancionatorios)**. Los radares sancionatorios requieren cámara ANPR, certificación ONAC y habilitación ante MinTransporte conforme Resolución 718/2018.

> Si el oferente propone ajustes de cantidades, deberá anexar cómputo métrico y memoria de cálculo. La evaluación se basará principalmente en precios unitarios.

---

## 📍 UBICACIONES ESPECÍFICAS (PKD/PKR)

Las 14 unidades ETD se ubicarán en los siguientes puntos kilométricos (PKD = Punto Kilométrico de Diseño, PKR = Punto Kilométrico Real):

### **ETD Puras (3 unidades explícitas):**

| # | PKR | Ruta | PKD | UF | Ubicación Física | Tipo | Observaciones |
|:--|:----|:-----|:----|:---|:-----------------|:-----|:--------------|
| 1 | 85+370 | RN 4510 | 197+730 | UF-1 | Separador | ETD pura | Integrada en poste CCTV |
| 2 | 106+580 | RN 4511 | 43+920 | UF-8 | Izquierda | ETD pura | Integrada en pórtico PMV |
| 3 | 126+580 | RN 4511 | 23+920 | UF-10 | Izquierda | ETD pura | Integrada en pórtico PMV |

### **ETD Integradas en CCTV/PMV (11 unidades adicionales):**

Las 11 unidades restantes se integrarán en postes CCTV o pórticos PMV existentes, distribuidas estratégicamente a lo largo de las 13 Unidades Funcionales (UFs) para garantizar medición de velocidad promedio por UF según lo exigido por el pliego contractual.

**Referencia:** `VII. Documentos Transversales/43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md`

> **Nota:** El PKD (Punto Kilométrico de Diseño) es la distancia lineal en el anillo de fibra óptica desde el CCO (PKD 0+000). El PKR (Punto Kilométrico Real) es la progresiva kilométrica según los planos oficiales de la vía. Las ETD integradas comparten switch L2 con CCTV/PMV para optimizar infraestructura.

---

## 📐 ESPECIFICACIONES TÉCNICAS MÍNIMAS

Basadas en T04/T05 y validación contractual (AT3 Cap. IV, AT4 Indicadores):

### Sensor de detección no intrusivo
- **Tecnología:** Radar Doppler o microondas (no intrusivo)  
- **Cobertura:** Multipista (≥3 carriles simultáneos)  
- **Rango de detección:** ≥150 m  
- **Precisión velocidad:** ±3 km/h  
- **Rango de velocidad:** 10-200 km/h  
- **Frecuencia de actualización:** ≤1 segundo  
- **Clasificación vehicular:** Livianos vs Pesados (por longitud) con ≥90% acierto

### Variables medidas (obligatorias)
- **Volumen:** Cantidad de vehículos (veh/hora) con precisión ±2%  
- **Velocidad instantánea:** Velocidad de cada vehículo (km/h) con precisión ±3 km/h  
- **Velocidad promedio:** Promedio del período (km/h) con precisión ±2 km/h (**requisito contractual principal**)  
- **Ocupación:** % tiempo con vehículos (%) con precisión ±5%  
- **Clasificación:** Livianos vs Pesados con ≥90% acierto  
- **Tiempo entre vehículos:** Intervalo promedio (segundos) con precisión ±1 seg

### Unidad de control y procesamiento
- **Procesador:** ARM Cortex-A9 o superior, ≥1.5 GHz  
- **Memoria RAM:** ≥2 GB  
- **Almacenamiento:** ≥32 GB flash (datos históricos 90 días mínimo)  
- **Sistema operativo:** Linux embebido o equivalente  
- **Interfaz de red:** Ethernet 1 Gbps  
- **Protocolos:** TCP/IP, SNMP v3, API REST, MQTT  
- **Sincronización horaria:** NTP o GPS (precisión <1 segundo)

### Integración CCO/SCADA y SICC
- **Transmisión en tiempo real:** Datos de tráfico al CCO  
- **Reporte SICC:** Velocidad promedio por UF para indicadores de desempeño (ANI)  
- **Protocolos:** SNMP v3, API REST, MQTT  
- **Disponibilidad:** ≥99% anual  
- **Latencia máxima:** <100 ms

### Normativa de referencia
- **AT2 §3.3.4.5** Sistemas de monitoreo y control de tráfico  
- **AT4 Indicadores** Velocidad promedio por UF (medición obligatoria)  
- **AT3 Cap. IV** Especificaciones técnicas sistemas ITS  
- **ISO TC-204** Intelligent Transport Systems  
- **IEC 60529** Grados de protección IP (IP65 mínimo)  
- **RETIE** Instalaciones eléctricas

---

## 🧩 ESTRUCTURA DE COTIZACIÓN (FORMULARIO)

| Código | Descripción | Cantidad | Unidad | Precio Unit. COP | Total COP | Precio Unit. USD | Total USD |
|:-------|:------------|:---------|:-------|:-----------------|:-----------|:------------------|:-----------|
| **ETD-001** | ETD Dual (Radar+Cámara LPR+Control+Gabinete+UPS) | 14 | UND | | | | |
| **ETD-002** | Integración CCO/SCADA (transmisión datos tiempo real) | 14 | UND | | | | |
| **ETD-003** | Integración SICC (reporte indicadores ANI) | 14 | UND | | | | |
| **ETD-004** | Canalización FO/energía + caja derivación FO | 14 | UND | | | | |
| **ETD-005** | Obras civiles y herrajes de montaje | 14 | UND | | | | |
| **ETD-006** | Configuración, pruebas FAT/SAT y comisionamiento | 14 | UND | | | | |
| **ETD-007** | Capacitación y documentación As-Built | 1 | LOT | | | | |
| **ETD-008** | Garantía de equipos (24 meses) e instalación (12 meses) | 1 | LOT | | | | |
| **TOTAL** | SISTEMA ETD – MONITOREO NO INTRUSIVO | | | | | | |

Notas de diligenciamiento:
- Mantener las cantidades indicadas; diligenciar precios unitarios en **USD y COP**.  
- Incluir marcas/modelos propuestos y fichas técnicas.  
- Tasa de referencia para evaluación: **4,400 COP/USD**.

---

## 🔧 PRUEBAS, COMISIONAMIENTO Y ACEPTACIÓN

### FAT (fábrica)
- Prueba de detección: ≥150 m, 3 carriles simultáneos  
- Prueba de precisión: ±3 km/h con patrón calibrado  
- Prueba de clasificación: ≥90% acierto livianos/pesados  
- Prueba de comunicación: API funcional, latencia <100 ms

### SAT (sitio)
- Calibración con patrón certificado: precisión ±3 km/h verificada  
- Prueba de detección real: tráfico real del corredor, 100% detección  
- Integración CCO: datos visibles en tiempo real  
- Integración SICC: reporte velocidad promedio por UF funcionando  
- Prueba de disponibilidad: ≥99% durante 30 días piloto

### Criterios de aceptación
- 100% puntos operativos; velocidad promedio calculada correctamente  
- Integración CCO y SICC funcional; disponibilidad ≥99%  
- Entregables As-Built completos (planos, protocolos, listados de variables).

---

## 📅 CRONOGRAMA DE LICITACIÓN

| Fecha | Actividad |
|:------|:----------|
| 04-Nov-2025 | Emisión RFQ |
| 11-Nov-2025 | Límite consultas |
| 14-Nov-2025 | Respuesta a consultas |
| 21-Nov-2025 | Cierre ofertas (12:00) |
| 24-29 Nov-2025 | Evaluación |
| 02-Dec-2025 | Adjudicación |

---

## 📄 DOCUMENTOS A PRESENTAR

1) Documentos administrativos y legales (registro, RUT, estados financieros)  
2) Experiencia específica en sistemas ETD/ITS no intrusivos (últimos 5 años, mínimo 3 proyectos similares)  
3) Propuesta técnica: metodología de instalación, integración CCO/SICC y plan de pruebas  
4) Datasheets y certificaciones (ISO TC-204, CE, FCC, IP65) de sensores y unidades de control  
5) APUs principales y formulario de precios diligenciado  
6) Cronograma de ejecución (máx. 12 semanas para 14 puntos)  
7) Garantías ofrecidas y pólizas

---

## 🧪 CRITERIOS DE EVALUACIÓN

| Criterio | Ponderación | Descripción |
|:---------|:-----------:|:------------|
| **Precio** | **40%** | Competitividad (precios unitarios) |
| **Calidad técnica** | **25%** | Cumplimiento T04/T05 + certificaciones ISO TC-204 |
| **Experiencia** | **20%** | Proyectos ITS/ETD similares (medición velocidad promedio) |
| **Programa** | **10%** | Plazo y coherencia de ejecución |
| **Garantías** | **5%** | Cobertura/equipos e instalación |

Requisitos Pasa/No Pasa: certificación ISO TC-204, cumplimiento de specs mínimas (velocidad promedio ±2 km/h), plan de pruebas, validez oferta ≥90 días.

---

## 📍 CONDICIONES DEL SITIO Y COORDENADAS

Las ubicaciones específicas serán confirmadas con base en `T05 ETD` y la `Tabla Maestra Layout`. El oferente debe prever trabajo en altura, PMT y restricciones de vía en operación. Las ETD se instalarán preferiblemente en pórticos existentes (PMV) o estructuras compartidas.

---

## 📎 ANEXOS Y REFERENCIAS

- `IV. Ingenieria Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md`  
- `V. Ingenieria de Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`  
- `VII. Documentos Transversales/35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md`

---

## 📞 CONTACTO Y ENTREGA

**Envío de ofertas:** licitaciones@proyecto.com  
**Asunto:** "OFERTA RFQ-006 ETD – [EMPRESA]"  
**Formato:** PDF firmado + Excel de precios  
**Plazo de validez:** ≥90 días  

---

**Fin del documento – RFQ-006 ETD v2.1**



<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades (
.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades (
.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades (
.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **<!-- BLOQUE AUTOMATICO INICIO: ETD/RADAR -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 16 equipos base | Ing. ITS |
| 1.1 | 31/10/2025 | Revisión con información oficial: 15 equipos (13 ETD + 2 SAST) | Ing. ITS |
| 1.2 | 15/01/2026 | Inclusión de Radares Pedagógicos (2) según AT2. Total: 17 operativos. | Adm. Contractual EPC |
| 1.5 | 20/01/2026 | Reconciliación: 18 unidades ($1.7M) | Adm. Contractual EPC |
| **2.0** | **27/01/2026** | **OPTIMIZACIÓN CERO ALCANCE (AUDIT 6.0):** Se elimina el 100% del CAPEX ITS. Funcionalidades cubiertas por Peaje (Conteo) y Dotación Policial (SAST). Radares fijos diferidos a O&M (Puntos Críticos). | **Adm. Contractual EPC** |
| Parámetro | Valor | Referencia |
| **Cantidad ETD (ITS Fijo)** | **0** | Cubierto por Peaje / Diferido |
| **Cantidad SAST (ITS Fijo)** | **0** | Dotación Policial (Suministros) |
| **Cantidad Pedagógicos**| **0** | Diferido a O&M |
| **Total equipos Proyecto** | **0** | Estrategia Hard Deck |
| **CAPEX Total ITS** | **$0 USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN --> USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN --> USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-02-02
<!-- BLOQUE AUTOMATICO FIN --> USD** | DT-TM01-ETD-001 |
> Actualizado: 2026-02-02
<!-- BLOQUE AUTOMATICO FIN -->

---
> CERTIFICACION DE COMPRAS: Sincronizado con T05. Cantidades oficiales.



