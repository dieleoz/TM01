# T01: FICHA DE SISTEMA - ESTACIONES METEOROLÓGICAS
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 05/12/2025  
**Sistema:** Estaciones Meteorológicas - Sistema de Monitoreo Climático  
**Responsable:** Administrador Contractual EPC / Ingeniero Ambiental  
**Versión:** 1.1 MVP  
**Estado:** ✅ Ficha de Sistema Completada y Actualizada (CAPEX Consolidado)

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | Estaciones Meteorológicas - Sistema de Monitoreo Climático |
| **Categoría** | ITS - Sistemas Inteligentes de Transporte / Monitoreo Ambiental |
| **Prioridad** | 🟠 Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (Sección 3.3.11.2), AT3 (Cap. IV), Resolución 546/2018 (IP/REV), NTC 5660 |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Estaciones Meteorológicas tiene como objetivo **informar condiciones meteorológicas** a lo largo del corredor vial Puerto Salgar - Barrancabermeja (259.6 km principales + 33.4 km adicionales), permitiendo:

- **Cumplir obligaciones contractuales** de información meteorológica (AT2 Sección 3.3.11.2)
- **Monitoreo ambiental en peajes** según Resolución 546/2018 (IP/REV)
- **Información confiable** para usuarios de la vía (emisora de radio, PMV, web)
- **Reportes automáticos** a ANI y Policía de Carreteras
- **Datos para gestión operacional** del corredor (condiciones climáticas adversas)
- **Consolidación por Unidad Funcional** para reportes técnicos

**El sistema proporciona:**
- **Medición de variables meteorológicas:** Temperatura, humedad, precipitación, viento, presión, visibilidad, radiación solar
- **Transmisión en tiempo real** al CCO
- **Reportes automáticos** horarios y consolidados diarios
- **Integración con sistemas ITS** (PMV, emisora de radio, web)

### 2.2 Alcance del Sistema

**Cobertura geográfica:**
- **Longitud Principal:** 259.6 km (RN 4510 + RN 4511)
- **Longitud Total:** ~293 km (incluyendo RN 4513 conexión CCO)
- **Rutas:** RN 4510 (Honda-Río Ermitaño), RN 4511 (Río Ermitaño-La Lizama), RN 4513 (Conexión CCO)
- **Ubicaciones:** 3 estaciones (2 en peajes + 1 en CCO)

**Configuración:**
- **2 Estaciones en Peajes IP/REV:**
  - Peaje Zambito (RN 4510)
  - Peaje Aguas Negras (RN 4511)
- **1 Estación en CCO:**
  - CCO La Lizama PK 4+300 (RN 4513)
- **Total: 3 estaciones meteorológicas**

**Integración con:**
- **CCO (Centro de Control Operacional):** Ubicado en La Lizama PK 4+300 (RN 4513) - Transmisión en tiempo real
- **SCADA:** Supervisión y control operacional
- **Sistema ITS:** Integración con PMV, emisora de radio, web
- **Telecomunicaciones:** Fibra óptica como backbone (283 km anillo redundante)
- **ANI:** Reportes automáticos horarios y consolidados diarios
- **Policía de Carreteras:** Acceso en tiempo real a condiciones meteorológicas

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.11.2 - Sistemas de Comunicación:**

El Concesionario deberá suministrar o permitir acceso a la ANI y a la Policía de Carreteras en tiempo real:

> "**Información sobre las condiciones meteorológicas en la(s) vía(s), por Unidad Funcional, así como en las estaciones de peaje y el Centro de Control de Operaciones**; esta información se reportará mínimo una vez por hora (24 reportes al día) y un consolidado diario."

**Interpretación:**
- El contrato exige **"informar"** condiciones meteorológicas (obligación de resultado, no de medio)
- La información debe estar disponible **por Unidad Funcional, en peajes y en CCO**
- **Frecuencia mínima:** 1 vez por hora (24 reportes al día) + consolidado diario

**Según AT2, Sección 3.3.3.2.3 - Emisora de Radio:**

> "El Concesionario deberá difundir al menos 4 veces en una hora... la siguiente información de la vía por medio de uno o varios canales de emisora de radio: ... **Información confiable sobre situaciones meteorológicas**."

**Según AT2, Sección 4.2.2 - Informes Mensuales:**

> "El Informe Gerencial Mensual debe incluir... **información resumida de condiciones meteorológicas**."

**Según AT3, Capítulo IV - Sistemas ITS:**

> "El Concesionario deberá cumplir con lo dispuesto en las especificaciones y/o normas técnicas que se listan a continuación: ... **Resolución 546 de 2018** 'por el cual se adecua la reglamentación del sistema de Interoperabilidad de Peajes con Recaudo Electrónico Vehicular (IP/REV)'..."

**Según Resolución 546/2018 (IP/REV):**

> "El Sistema ITS en las estaciones de peaje deberá disponer de **sensores y equipos de monitoreo ambiental y de tráfico**, que permitan la observación de condiciones climáticas y de operación, con el fin de informar a los usuarios y al Centro de Control de Operaciones."

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.11.2:**
- Información meteorológica por Unidad Funcional
- Información meteorológica en estaciones de peaje
- Información meteorológica en Centro de Control de Operaciones
- Reporte mínimo una vez por hora (24 reportes al día)
- Consolidado diario

**AT2, Sección 3.3.3.2.3:**
- Difusión confiable sobre situaciones meteorológicas (emisora de radio)

**AT2, Sección 4.2.2:**
- Información resumida de condiciones meteorológicas (informes mensuales)

**Resolución 546/2018 (IP/REV):**
- Equipos de monitoreo ambiental en estaciones de peaje

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| **Estación Meteorológica Peaje 1** | **1 unidad** | Peaje Zambito (RN 4510) | Monitoreo ambiental en peaje IP/REV |
| **Estación Meteorológica Peaje 2** | **1 unidad** | Peaje Aguas Negras (RN 4511) | Monitoreo ambiental en peaje IP/REV |
| **Estación Meteorológica CCO** | **1 unidad** | CCO La Lizama PK 4+300 (RN 4513) | Monitoreo centralizado |
| **TOTAL ESTACIONES** | **3 unidades** | 2 peajes + 1 CCO | Sistema completo de monitoreo climático |
| **Sistema de Integración** | 1 unidad | CCO | Integración con SCADA y sistemas ITS |
| **Conexión a red FO** | 3 puntos | Integración con red de telecomunicaciones | Comunicación con CCO |

**Distribución por ubicación:**
- **Peaje Zambito:** 1 Estación Meteorológica
- **Peaje Aguas Negras:** 1 Estación Meteorológica
- **CCO La Lizama:** 1 Estación Meteorológica
- **Total:** 3 estaciones meteorológicas

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO (Centro de Control)** | Red IP / Fibra Óptica | Ethernet / API REST | Datos meteorológicos en tiempo real, reportes horarios, consolidados diarios |
| **Sistema de Telecomunicaciones** | Red FO / L2/L3 | Ethernet | Tráfico de datos y control |
| **SCADA** | Red IP | SNMP / Modbus TCP | Supervisión y control operacional |
| **Sistema ITS (PMV, Emisora)** | Lógica (vía CCO) | API REST | Información meteorológica para usuarios |
| **ANI** | Lógica (vía CCO) | API REST / WebService | Reportes horarios y consolidados diarios |
| **Policía de Carreteras** | Lógica (vía CCO) | API REST / WebService | Acceso en tiempo real a condiciones meteorológicas |
| **Sistema de Energía Eléctrica** | Alimentación | AC 120V/60Hz o Solar | Suministro de energía |
| **Sistema Web** | Lógica (vía CCO) | API REST | Información meteorológica para usuarios web |

**Flujo de comunicación:**
```
Estación Meteorológica → WeatherLink API → SCADA/CCO → Reportes Automáticos
         (Medición)      (Transmisión)    (Procesamiento)  (ANI/Policía/Usuarios)
```

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| **Estaciones Meteorológicas Profesionales** | 3 | $15,000 | $45,000 |
| **Torres meteorológicas (10m altura)** | 3 | $12,000 | $36,000 |
| **Sensores adicionales (visibilidad, radiación)** | 3 | $8,000 | $24,000 |
| **Sistema de comunicación redundante** | 3 | $5,000 | $15,000 |
| **Integración SCADA avanzada** | 1 | $15,000 | $15,000 |
| **Obras civiles y cimentación** | 3 | $8,000 | $24,000 |
| **Instalación y comisionamiento** | 3 | $7,000 | $21,000 |
| **TOTAL CAPEX** | **3 estaciones** | **$25,000/estación** | **$75,000** |

**Nota sobre actualización (15/01/2026):** El CAPEX se ajustó a **$75,000 USD** para 3 estaciones, promediando $25k/estación para equipos profesionales (Davis Vantage Pro2 Plus o equivalente) incluyendo torres de 10m y sistema de integración SCADA.

### 6.2 OPEX (Operación y Mantenimiento)

| Ítem | Cantidad | Costo Unitario Anual (USD) | Costo Total Anual (USD) |
|:-----|:---------|:---------------------------|:------------------------|
| **Mantenimiento preventivo** | 3 estaciones | $400 | $1,200 |
| **Mantenimiento correctivo** | 3 estaciones | $200 | $600 |
| **Calibración anual** | 3 estaciones | $200 | $600 |
| **Licencias WeatherLink** | 3 estaciones | $100 | $300 |
| **TOTAL OPEX ANUAL** | **3 estaciones** | **$900/estación/año** | **$2,700** |

**OPEX 20 años:** $2,700 × 20 = **$54,000 USD**

### 6.3 Costo Total del Ciclo de Vida (20 años)

**CAPEX + OPEX:** $75,000 + $54,000 = **$129,000 USD**

---

## 7. DISTRIBUCIÓN GEOGRÁFICA

### 7.1 Ubicaciones de las Estaciones

| Estación | Ubicación | Referencia | Función |
|:---------|:----------|:-----------|:--------|
| **Estación 1** | **Peaje Zambito** | RN 4510 | Monitoreo ambiental en peaje IP/REV |
| **Estación 2** | **Peaje Aguas Negras** | RN 4511 | Monitoreo ambiental en peaje IP/REV |
| **Estación 3** | **CCO La Lizama** | PK 4+300 (RN 4513) | Monitoreo centralizado |

### 7.2 Distribución de Estaciones

| Ubicación | Cantidad | Función |
|:----------|:---------|:--------|
| **Peajes IP/REV** | 2 unidades | Monitoreo ambiental obligatorio (Res. 546/2018) |
| **CCO** | 1 unidad | Monitoreo centralizado y supervisión |
| **TOTAL** | **3 unidades** | Sistema completo de monitoreo climático |

---

## 8. ESPECIFICACIONES TÉCNICAS BÁSICAS

### 8.1 Estación Meteorológica Davis Vantage Pro2

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Modelo** | Davis Vantage Pro2 Plus |
| **Variables medidas** | Temperatura, humedad, presión, precipitación, viento, radiación solar |
| **Precisión temperatura** | ±0.5°C |
| **Rango temperatura** | -40°C a +65°C |
| **Precisión humedad** | ±2% HR |
| **Rango humedad** | 0-100% HR |
| **Precisión precipitación** | ±2% |
| **Resolución precipitación** | 0.2 mm |
| **Rango velocidad viento** | 3-241 km/h |
| **Precisión velocidad viento** | ±3% o ±0.3 m/s |
| **Rango dirección viento** | 0-360° |
| **Precisión dirección viento** | ±3° |
| **Rango presión barométrica** | 880-1080 hPa |
| **Precisión presión** | ±1.0 hPa |
| **Comunicación** | WeatherLink API (nube) + Ethernet local |
| **Protección** | IP65, IK08 |
| **Alimentación** | Solar + batería (respaldo) |

### 8.2 Variables Meteorológicas Requeridas

| Variable | Unidad | Frecuencia | Fuente |
|:---------|:-------|:-----------|:-------|
| **Temperatura del aire** | °C | Cada 5 min | Sensor integrado |
| **Humedad relativa** | % | Cada 5 min | Sensor integrado |
| **Precipitación** | mm/h | Cada 5 min | Pluviómetro |
| **Velocidad del viento** | m/s | Cada 5 min | Anemómetro |
| **Dirección del viento** | grados | Cada 5 min | Veleta |
| **Presión barométrica** | hPa | Cada 5 min | Sensor integrado |
| **Radiación solar** | W/m² | Cada 5 min | Piranómetro |
| **Visibilidad** | m | Cada 5 min | Sensor dedicado o API externa |

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (T01)
- [x] ✅ Análisis de Requisitos completado (T02)
- [x] ✅ Arquitectura Conceptual completada (T03)
- [x] ✅ Especificaciones Técnicas (T04) - Ya existe, validar coherencia
- [x] ✅ Ingeniería de Detalle (T05) - Ya existe, validar coherencia
- [x] ✅ Validación Contractual - Ya existe (`26_VALIDACION_CONTRACTUAL_ESTACIONES_METEOROLOGICAS_v1.0.md`)

---

## 10. REFERENCIAS

### 10.1 Documentos del Proyecto

- **T02:** `24G_T02_Analisis_Requisitos_Estaciones_Meteorologicas_MVP_v1.0.md` (Pendiente)
- **T03:** `24G_T03_Arquitectura_Conceptual_Estaciones_Meteorologicas_MVP_v1.0.md` (Pendiente)
- **T04:** `IV. Ingenieria Basica/07_T04_Especificaciones_Tecnicas_Estaciones_Meteorologicas_v1.0.md`
- **T05:** `V. Ingenieria de Detalle/09_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md`
- **T01 ITS General:** `24_T01_Ficha_Sistema_ITS_v1.0.md` (Referencia para contexto)
- **Validación:** `VII. Documentos Transversales/26_VALIDACION_CONTRACTUAL_ESTACIONES_METEOROLOGICAS_v1.0.md`

### 10.2 Documentos Contractuales

- **AT2:** Apéndice Técnico 2, Sección 3.3.11.2 "Sistemas de Comunicación"
- **AT2:** Apéndice Técnico 2, Sección 3.3.3.2.3 "Emisora de Radio"
- **AT2:** Apéndice Técnico 2, Sección 4.2.2 "Informes Mensuales"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **Resolución 546/2018:** IP/REV - Monitoreo ambiental en peajes

### 10.3 Normativa Aplicable

- **NTC 5660:** Norma Técnica Colombiana para estaciones meteorológicas
- **Resolución 546/2018:** IP/REV - Monitoreo ambiental en peajes
- **WMO:** Organización Meteorológica Mundial (estándares internacionales)
- **ISO TC-204:** Estándares ITS

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 31/10/2025  
**Responsable:** Administrador Contractual EPC  
**Próximo paso:** Validación de arquitectura con stakeholders  
**T02 disponible:** `24G_T02_Analisis_Requisitos_Estaciones_Meteorologicas_MVP_v1.0.md`  
**T03 disponible:** `24G_T03_Arquitectura_Conceptual_Estaciones_Meteorologicas_MVP_v1.0.md`

