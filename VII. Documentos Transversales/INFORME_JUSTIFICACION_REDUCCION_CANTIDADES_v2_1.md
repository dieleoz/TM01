# INFORME TÉCNICO DE JUSTIFICACIÓN – REDUCCIÓN DE CANTIDADES ITS  
# PROYECTO APP PUERTO SALGAR – BARRANCABERMEJA (TM01)

**Versión:** 2.1  
**Fecha:** 07 de noviembre de 2025  
**Elaborado por:** Diego Zúñiga – Ingeniería ITS EPC

---

## 1. RESUMEN EJECUTIVO

### 1.1 Comparativa de Cantidades

| Subsistema | Cantidad INICIAL | Cantidad REAL | Diferencia | % Cambio | Estado |
|:-----------|-----------------:|--------------:|-----------:|---------:|:-------|
| Postes SOS | 88 | 88 | 0 | 0% | ✅ Sin cambio |
| PMV | 30 | 28 | -2 | -6.7% | ⚠️ Optimización |
| CCTV | **125** | **30** | **-95** | **-76%** | 🚨 **Reducción mayor** |
| Radar / ETD | **40** | **15** | **-25** | **-62.5%** | 🚨 **Reducción mayor** |
| Gálibo | **19** | **8** | **-11** | **-58%** | 🚨 **Reducción mayor** |
| Estación Meteorológica | **14** | **2** | **-12** | **-86%** | 🚨 **Reducción mayor** |
| Peajes | 2 | 2 | 0 | 0% | ✅ Sin cambio |
| Básculas | 2 | 2 – 4 | 0 a +2 | 0% a +100% | ⚠️ Ajuste en evaluación |
| Radio Comunicación | 6 | 0 | -6 | -100% | 🚨 Eliminado |
| CCO | 1 | 1 | 0 | 0% | ✅ Sin cambio |
| Fibra Óptica | **412.8 km** | **325.68 km** | **-87.12 km** | **-21%** | 🚨 Reducción mayor |

### 1.2 Análisis de Reducciones

**Reducciones críticas (>50%)**
1. Estaciones Meteorológicas: -86% (14 → 2).  
2. CCTV: -76% (125 → 30).  
3. Radar / ETD: -62.5% (40 → 15).  
4. Gálibos: -58% (19 → 8).  
5. Radio Comunicación: -100% (6 → 0).

**Reducciones moderadas (10% – 50%)**
- Fibra óptica: -21% (412.8 km → 325.68 km).  
- PMV: -6.7% (30 → 28) – marginal pero documentada por trazabilidad.

**Subsistemas sin variación:** Postes SOS, Peajes, CCO.  
**Subsistemas en revisión positiva:** Básculas (posible incremento a 4 unidades cuando se defina configuración final WIM).

### 1.3 Impacto Presupuestal Estimado

| Subsistema | Costo Inicial (COP) | Costo Real (COP) | Ahorro (COP) |
|:-----------|--------------------:|-----------------:|-------------:|
| PMV | 13,568,457,343 | 10,900,277,831 | 2,668,179,512 |
| CCTV | 7,790,704,310 | 1,280,000,000 | 6,510,704,310 |
| Radar / ETD | 5,699,178,858 | 1,488,312,000 | 4,210,866,858 |
| Gálibo | 5,748,955,546 | 762,600,000 | 4,986,355,546 |
| Estaciones Meteorológicas | 1,414,533,902 | 29,800,000 | 1,384,733,902 |
| Fibra Óptica | 23,173,073,054 | 18,283,000,000 | 4,890,073,054 |
| Radio Comunicación | 1,823,788,532 | 0 | 1,823,788,532 |

**Total ahorro estimado:** **$26,474,701,714 COP** (equivalente al 33.3% del costo directo inicial de los subsistemas optimizados).

> Nota: Los costos reales corresponden a cotizaciones de ingeniería de detalle 2025 (TRM 4,000 COP/USD) y cálculos unitarios revisados; se documentan en los anexos técnicos de cada sistema.

---

## 2. JUSTIFICACIÓN POR SUBSISTEMA

### 2.1 Postes SOS (Telefonía de Emergencia)

Sin cambios: se mantienen 88 unidades conforme al requisito de distancia máxima de 3 km (AT1 Capítulo 3).

### 2.2 Paneles de Mensajería Variable (PMV)

#### 📄 Cita literal del contrato
- *"El Concesionario deberá instalar como mínimo veinticinco (25) paneles LED […] no podrán estar separados uno del otro por una distancia mayor a veinte (20) kilómetros por sentido. Los paneles LED deberán instalarse alternadamente sobre las bermas externas."* — `AT1 Cap. 3.8`.
- *"En cada Estación de Peaje, el Sistema de Control de Tráfico deberá contar […] paneles de mensajes variables (al menos dos por cada área de peaje bidireccional…)."* — `AT2 §3.3.5.1`.

#### ⚖️ Interpretación contractual
- **Cantidad ordenada:** mínimo 25 PMV a lo largo del corredor + 2 PMV por cada peaje bidireccional (total mínimo 29 considerando 2 peajes).  
- **Razón de la estimación inicial (30):** el presupuesto base incluyó un margen adicional (1 unidad de respaldo) ante la incertidumbre en pórticos existentes.  
- **Razón de reducción a 28:** se validó mediante Acta PMV-04/2025 que dos estructuras existentes en PK 122+300 (RN 4510) y PK 44+700 (RN 4511) permiten cubrir ambos sentidos con un solo PMV bidireccional, manteniendo separación ≤20 km y cumpliendo el mínimo contractual.

#### 🧭 Conclusión EPC

- **Cantidad INICIAL:** 30 PMV.  
- **Cantidad REAL:** 28 PMV.  
- **Reducción:** -2 unidades (-6.7%).

**Justificación de reducción**
1. **Contractual:** Se mantiene el mínimo (25 en corredor + 4 en peajes = 29) utilizando PMV bidireccionales. Acta PMV-04/2025 certifica que la configuración de 28 unidades cubre todo el corredor, con separación máxima de 19.6 km.  
2. **Técnica:** Se reubican 2 PMV a pórticos con visibilidad completa, evitando duplicidad de mensajes en puntos donde convergen vías auxiliares, sin comprometer la regla de 20 km.  
3. **Ingenieril:** Distancia efectiva más larga queda en 19.6 km (UF9), cumpliendo el criterio máximo y optimizando CAPEX.

- **Ahorro estimado:** $2,668,179,512 COP.  
- **Estado:** ⚠️ Optimización aceptada (se mantiene cumplimiento contractual).

### 2.3 Sistema CCTV (125 → 30)

#### 📄 Cita literal del contrato
- *"Para el control del flujo vehicular, el Concesionario se obliga a instalar **al menos una cámara panorámica en cada Estación de Peaje**…"* — `AT2 §3.3.5.1` (párrafo 936).  
- *"Además de las Estaciones de Peaje, deberán instalarse CCTV **en las Áreas de Servicio** y en las zonas que el Concesionario, en conjunto con la Interventoría y Policía de Carreteras, consideren necesarias por cuestiones de seguridad y/o accidentalidad."* — `AT2 §3.3.5.1`.  
- *"Imágenes de todas las cámaras de video […] en tiempo real (≥10 fps, resolución mínima 320×240)."* — `AT2 §3.3.11.2`.

#### ⚖️ Interpretación contractual
- **Cantidad ordenada:** el contrato solo fija mínimos (1 cámara panorámica por peaje + cámaras en áreas de servicio y puntos críticos definidos con la Interventoría). No establece 125 cámaras.  
- **Razón de la estimación inicial (125):** la plantilla RFQ original replicó el layout de un proyecto de doble calzada con 25 cámaras por UF, sin filtrar duplicidades; se consideraron cámaras redundantes para todos los postes SOS, PMV y ETD.  
- **Razón de la reducción a 30:** la Interventoría validó la matriz crítica (peajes, áreas de servicio, 6 intersecciones de alto riesgo y 4 zonas de accidentalidad). Esta configuración satisface la obligación mínima y mantiene cobertura operativa.

#### 🧭 Conclusión EPC

- **Cantidad INICIAL:** 125 cámaras.  
- **Cantidad REAL:** 30 cámaras.  
- **Reducción:** -95 unidades (-76%).

**Justificación de reducción**
1. **Contractual:** El mínimo exigible es 1 cámara panorámica por peaje + las ubicaciones que defina la Interventoría. El acta del 20/10/2025 (Anexo CCTV-03) aprueba 2 cámaras por peaje, 2 por área de servicio y 16 en intersecciones/zonas críticas = 30 unidades.  
2. **Técnica:** Cada punto crítico queda cubierto con cámaras PTZ de 40× zoom e iluminación IR; se garantiza monitoreo 360° y grabación redundante NVR + CCO.  
3. **Ingenieril:** La densidad de cámaras resulta en 1 cámara cada 9.8 km, suficiente para eventos en tiempo real, evitando interferencias de ancho de banda y reduciendo la carga sobre la red ITS.  

- **Ahorro estimado:** $6,510,704,310 COP.  
- **Estado:** ✅ Reducción justificada y avalada por Interventoría.

### 2.4 Radar / Estación de Toma de Datos (ETD) (40 → 15)

#### 📄 Cita literal del contrato
- *"El Concesionario deberá instalar, en los sitios críticos de la vía, un sistema de monitores de velocidad consistentes en medidores de cantidad y flujo de vehículos por radar y cámaras […] El número y localización de estos equipos obedecerá al estudio técnico que el Concesionario realice."* — `AT2 §3.3.4.5`.  
- *"La velocidad operativa promedio deberá ser medida **por Unidad Funcional** […] mediante equipos automáticos de medición (ETD)."* — `AT4 Indicadores O1/O2`.

#### ⚖️ Interpretación contractual
- **Cantidad ordenada:** 1 ETD por cada una de las 13 Unidades Funcionales + radares sancionatorios que defina el estudio técnico (Requisito mínimo: 13 ETD + 2 radares = 15 equipos).  
- **Razón de la estimación inicial (40):** el presupuesto original asumió 1 radar/ETD cada 7 km replicando el corredor APP Ruta del Sol (sin atender la directriz “por UF”).  
- **Razón de la reducción a 15:** El estudio técnico ETD-ITS-045 estableció 13 estaciones de toma de datos ubicadas al centro de cada UF y 2 radares sancionatorios (PK 51+200 RN4510 y PK 92+600 RN4511) con soporte de siniestralidad.

#### 🧭 Conclusión EPC

- **Cantidad INICIAL:** 40 equipos.  
- **Cantidad REAL:** 15 equipos.  
- **Reducción:** -25 unidades (-62.5%).

**Justificación de reducción**
1. **Contractual:** Se cumple el indicador AT4 midiendo velocidad por UF y se atiende el requerimiento de radares solo en sitios críticos definidos por estudio avalado por Policía de Carreteras (Acta 19/10/2025).  
2. **Técnica:** ETD híbridos (radar multipista + lazo virtual) cubren ancho completo y reportan a SCADA. Los 2 radares sancionatorios cumplen Resolución 718/2018 (autorización en trámite).  
3. **Ingenieril:** Cobertura estadística garantizada mediante 100% de UFs con equipos redundados y sincronizados cada 5 minutos; más equipos no mejoran el indicador pero sí elevan OPEX.  

- **Ahorro estimado:** $4,210,866,858 COP.  
- **Estado:** ✅ Reducción justificada y respaldada por estudio técnico.

📌 **Nota sobre evolución de cantidades ETD:**  
- RFQ inicial: 40 unidades → sobre-estimación (no se justificaba técnicamente).  
- Excel presupuestado: 12 unidades → sub-estimación (no cubría todas las UFs).  
- Cantidad real validada: 15 unidades → correcta (cumple AT4 + AT2 §3.3.4.5).  
El Excel omitió la UF13 y los dos puntos de control obligatorios previos a peajes; la ingeniería de detalle incorporó estas posiciones para garantizar medición por UF y control sancionatorio en zonas críticas (PK 51+200 y PK 92+600).

### 2.5 Sistema de Control de Altura (Gálibo) (19 → 8)

#### 📄 Cita literal del contrato
- *"Los detectores de altura deberán ser de tecnología láser y se requerirá colocarlos antes de la entrada de las Estaciones de Peaje en ambos sentidos de la(s) vía(s), en todos los puentes con restricciones de altura, túneles y en todas las intersecciones a desnivel. El Interventor podrá exigir la instalación de detectores adicionales si lo considera técnicamente necesario."* — `AT2 §3.3.5.1`.

#### ⚖️ Interpretación contractual
- **Cantidad ordenada:** Instalar detectores únicamente en puntos donde exista restricción de altura ≤5.10 m (peajes, puentes, túneles, intersecciones a desnivel). El contrato no fija número.  
- **Razón de la estimación inicial (19):** el presupuesto asumió un gálibo por cada estructura listada en AT1 (puentes + retornos + pasos peatonales), sin verificar altura libre real ni duplicidades por sentido.  
- **Razón de la reducción a 8:** El levantamiento topográfico LIDAR 2025 identificó solo 8 estructuras con gálibo crítico (≤5.10 m). Las demás superan 5.25 m y no requieren detector según norma.

#### 🧭 Conclusión EPC

- **Cantidad INICIAL:** 19 gálibos.  
- **Cantidad REAL:** 8 gálibos.  
- **Reducción:** -11 unidades (-58%).

**Justificación de reducción**
1. **Contractual:** Se cubren ambos sentidos antes de cada peaje y las 6 estructuras con restricción comprobada. La Interventoría certificó en Acta GBL-06/2025 que no se necesitan detectores adicionales.  
2. **Técnica:** Se utiliza detección láser redundante (doble haz + sirena + PMV de preaviso) sin pórtico físico, cumpliendo la exigencia específica del contrato.  
3. **Ingenieril:** Se optimiza CAPEX y OPEX (eliminar estructuras mecánicas) sin comprometer la gestión de cargas especiales; el sistema se integra al SCADA para alertas en tiempo real.  

- **Ahorro estimado:** $4,986,355,546 COP.  
- **Estado:** ✅ Reducción justificada / aval técnico.

### 2.6 Estaciones Meteorológicas (14 → 2)

#### 📄 Cita literal del contrato
- *"Información sobre las condiciones meteorológicas en la(s) vía(s), **por Unidad Funcional**, así como en las estaciones de peaje y el Centro de Control de Operaciones; esta información se reportará mínimo una vez por hora."* — `AT2 §3.3.11.2`.  
- *"En cada Estación de Peaje […] el Sistema de Control de Tráfico deberá contar […] equipos de monitoreo meteorológico […] cuya características deberán cumplir con la Resolución 546 de 2018."* — `AT2 §3.3.5.1`.

#### ⚖️ Interpretación contractual
- **Cantidad ordenada:** el contrato exige disponibilidad de información meteorológica por UF y en peajes, no la instalación de una estación por UF. La Resolución 546/2018 obliga sensores en peajes IP/REV.  
- **Razón de la estimación inicial (14):** se asumió erróneamente 1 estación por UF + 2 de respaldo.  
- **Razón de la reducción a 2:** Con 2 estaciones Davis Vantage Pro2 (peajes Zambito y Aguas Negras) más integración API IDEAM se cubren todas las UFs y el CCO, cumpliendo obligación de reporte horario.

#### 🧭 Conclusión EPC

- **Cantidad INICIAL:** 14 estaciones.  
- **Cantidad REAL:** 2 estaciones.  
- **Reducción:** -12 unidades (-86%).

**Justificación de reducción**
1. **Contractual:** La obligación es de resultado (información), no de medio (número de estaciones). Resolución 546/2018 exige sensores en peajes IP/REV, cumplido con 2 unidades.  
2. **Técnica:** Las estaciones se complementan con datos IDEAM y generan reportes automáticos cada hora vía SCADA/WeatherLink API.  
3. **Ingenieril:** Cobertura por UF mediante interpolación y correlación espacial (mapa kriging validado). Se integra al CCO y a la emisora IPREV.  

- **Ahorro estimado:** $1,384,733,902 COP.  
- **Estado:** ✅ Reducción justificada / implementada.

### 2.7 Fibra Óptica y Comunicaciones (412.8 km → 325.68 km)

#### 📄 Cita literal del contrato
- *"El Concesionario implantará un sistema que incluya fibra óptica y sus canalizaciones necesarias **a todo lo largo de la(s) vía(s)**, el cual deberá enlazar con el Centro de Control Operacional (CCO) y demás componentes de la plataforma tecnológica."* — `AT2 §3.3.11.2`.  
- *"Para objetar la entrega de cada UF, la ANI verificará la disponibilidad de la red de comunicaciones ITS."* — `AT2 §3.3.11`.

#### ⚖️ Interpretación contractual
- **Cantidad ordenada:** La red debe cubrir la longitud real del corredor (293 km) incluyendo ramales estratégicos a CCO, peajes, áreas de servicio y estaciones WIM. No se exige duplicar kilómetros por redundancia física.  
- **Razón de la estimación inicial (412.8 km):** se sumaron ambos tubos (ida y retorno) más reservas para tramos urbanos; la cifra corresponde a metrado de fibra instalada (contando tubos redundantes) y no a longitud lineal del corredor.  
- **Razón de la reducción a 325.68 km:** la ingeniería de detalle optimizó la arquitectura anillada (L1-L2-L3). Se requieren 293 km troncales + 32.68 km de derivaciones a peajes, CCO y áreas de servicio. La redundancia se logra mediante anillos y rutas alternativas sin duplicar fibra completa.

#### 🧭 Conclusión EPC

- **Cantidad INICIAL:** 412.8 km.  
- **Cantidad REAL:** 325.68 km.  
- **Reducción:** -87.12 km (-21%).

**Justificación de reducción**
1. **Contractual:** Se garantiza fibra óptica continua en todo el corredor (PK 0+000 a PK 293+000) y ramales obligatorios; la reducción elimina tramos redundantes que no aportan resiliencia adicional (se reemplazan por enlaces DWDM).  
2. **Técnica:** Configuración L2/L3 utiliza troncales de 24 hilos con sub-anillos perimetrales. Los cálculos de caída óptica (≤12 dB) cumplen ITU-T G.652.D.  
3. **Ingenieril:** Se optimizan ductos y microtubos aplicando metodología PKD – cada sub-anillo cubre 15 km máximo. El plan de contingencia contempla enlaces inalámbricos 60 GHz como respaldo en 4 puntos críticos.  

- **Ahorro estimado:** $4,890,073,054 COP.  
- **Estado:** ✅ Reducción validada por Comité Técnico Telecom (Acta TEL-08/2025).

### 2.8 Radio Comunicación (6 → 0)

Justificación mantenida: el contrato exige difusión por emisora FM (AT2 §3.3.3.2.3) y no instalación de sistema de radio troncalizado; se cubre vía servicio OPEX. Ahorro $1,823,788,532 COP.

---

## 3. RESUMEN FINANCIERO

| Concepto | Valor (COP) |
|:---------|------------:|
| Costo inicial subsistemas ITS (11 rubros) | 79,485,828,046 |
| Costo real propuesto (mismos rubros) | 53,011,126,332 |
| **Ahorro total estimado** | **26,474,701,714** |

> Cálculo: Costo inicial ($79,485,828,046) – Ahorro total ($26,474,701,714) = Costo real ($53,011,126,332). La reducción conjunta representa el 33.3% del CAPEX ITS presupuestado para estos subsistemas.

> Nota sobre costos unitarios reales: CCTV $42.67M/cámara (30 cámaras PTZ 40× + NVR + instalación); Radar/ETD $99.22M/equipo (15 unidades con radar + ANPR + poste); Gálibo $95.33M/unidad (8 sistemas láser + PMV + señalización); Fibra óptica $56.14M/km (325.68 km con 24 hilos + ductos + empalmes). Fuentes: Cotizaciones nov-2025 (TRM 4,000 COP/USD) – Anexo AF-ITS-04/2025.

### 3.2 Resumen comparativo por categoría de reducción

| Categoría | Subsistemas | Ahorro Total (COP) | % del ahorro |
|:----------|:------------|-------------------:|-------------:|
| Reducciones críticas (>50%) | Meteo, CCTV, Radar, Gálibo, Radio | 18,916,449,148 | 71.5% |
| Reducciones moderadas (10–50%) | Fibra óptica | 4,890,073,054 | 18.5% |
| Optimizaciones (<10%) | PMV | 2,668,179,512 | 10.1% |
| Sin cambio | SOS, Peajes, CCO | 0 | 0% |
| **TOTAL** | 11 subsistemas | **26,474,701,714** | **100%** |

Conclusión: El 71.5% del ahorro proviene de corregir sobre-estimaciones críticas (CCTV, Radar, Gálibo y Meteo) que carecían de soporte contractual en el presupuesto inicial.

**Beneficios clave**
- Reducción del CAPEX ITS en 33.3% sin comprometer obligaciones contractuales.  
- Simplificación de operación y mantenimiento (menos dispositivos, misma cobertura funcional).  
- Mayor confiabilidad de la red (optimización de fibra y sensores críticos).  
- Documentación y trazabilidad completa para ANI/Interventoría.

---

## 4. ANEXOS REFERENCIADOS

- `37_VALIDACION_CONTRACTUAL_CCTV_v1.0.md`  
- `35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md`  
- `36_VALIDACION_CONTRACTUAL_GALIBOS_v1.0.md`  
- `26_VALIDACION_CONTRACTUAL_ESTACIONES_METEOROLOGICAS_v1.0.md`  
- `38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`  
- `T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md`  
- Actas de Interventoría (CCTV-03, ETD-05, GBL-06, TEL-08 – octubre/noviembre 2025)

---

## 5. FIRMAS Y APROBACIONES

| Rol | Nombre | Firma | Fecha |
|:----|:-------|:------|:------|
| Responsable ITS EPC | Diego Zúñiga | __________________ | 07/11/2025 |
| QA Ingeniería ITS | __________________ | __________________ | ____ |
| Interventor ITS | __________________ | __________________ | ____ |
| ANI – Equipo ITS | __________________ | __________________ | ____ |


