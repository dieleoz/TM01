# T01: FICHA DE SISTEMA - ENERGÍA ELÉCTRICA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Energía Eléctrica  
**Responsable:** Ing. Eléctrico / Ing. de Potencia  
**Versión:** 1.1  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | Sistema de Energía Eléctrica |
| **Categoría** | Infraestructura Crítica / Energía |
| **Prioridad** | 🔴 **CRÍTICA** - Alimenta TODOS los sistemas del corredor |
| **Fase contractual** | Construcción / O&M |
| **AT relacionados** | AT1, AT2, AT4 |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

Garantizar el **suministro eléctrico continuo, confiable y seguro** a TODOS los sistemas del corredor vial, incluyendo:
- Estaciones de Peaje (2 estaciones)
- Sistema de Iluminación (410 luminarias LED)
- Centro de Control Operacional (CCO La Lizama PK 4+300)
- Sistemas ITS (CCTV, PMV, WIM, Meteo, SOS, DAI) - **10+ equipos**
- Sistema de Telecomunicaciones (fibra óptica, switches, routers)
- Estaciones de Pesaje
- **Áreas de Servicio (2 obligatorias)** asociadas a peajes (AT1 Cap. 3)
- Talleres y edificaciones de la concesión

**El sistema eléctrico es CRÍTICO porque sin energía, NINGÚN otro sistema puede operar.**

### 2.2 Alcance del Sistema

- **Sistemas incluidos:**
  - **Subestaciones Eléctricas Principales** (Media Tensión 13.2 kV / 34.5 kV)
  - **Transformadores de Distribución** (MT/BT)
  - **Centros de Transformación** en cada instalación
  - **Tableros de Distribución** (Tableros Generales, Tableros de Distribución)
  - **Sistemas UPS (Uninterruptible Power Supply)** para sistemas críticos
  - **Plantas Generadoras de Emergencia** (Diésel/Gas)
  - **Sistemas de Transferencia Automática** (ATS - Automatic Transfer Switch)
  - **Red Eléctrica de Media y Baja Tensión**
  - **Sistema de Puesta a Tierra y Protección contra Rayos**
  - **Sistema de Monitoreo y Control (SCADA Eléctrico)**
  
- **Cobertura geográfica:** 259.6 km (Subsectores 1.1 y 1.2)
- **Integración con:** Todos los sistemas del corredor, especialmente CCO (monitoreo SCADA), Iluminación, Peajes, ITS

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.4.1 - Equipamiento Básico de Peajes:**

> "Las acometidas de servicios de todas las instalaciones necesarias para la Operación de la vía serán **construidas, administradas y mantenidas por el Concesionario**, incluyendo las correspondientes a estaciones de peaje, pesajes, y centros de control, pero sin limitarse a ellas."

> "La Estación de Peaje también debe contar con **equipos para la Operación del peaje en condiciones de falla de la energía eléctrica**."

> "El Concesionario está obligado al **pago del consumo de los servicios públicos** en los puntos donde cuenta con instalaciones tales como: agua, **energía**, alcantarillado, gas, teléfono, Internet y otros."

> "En caso de no contar con dichos servicios públicos, o que los mismos se encentraran temporalmente suspendidos, el Concesionario es el responsable de **proveerse de tales servicios y de asumir los costos asociados a dicho aprovisionamiento**, así como de tramitar obtener y administrar los permisos necesarios para el **suministro de combustible para el funcionamiento de la planta eléctrica de emergencia**."

**Según AT2, Sección 6.2.4 - Iluminación:**

> "El Concesionario se obliga a asegurar la **adecuada iluminación** de todas y cada una de las Estaciones de Pesaje, Estaciones de Peaje, Centros de Control de Operación, intersecciones a nivel y a desnivel, paraderos y pasos peatonales, y Áreas de Servicio de la(s) vía(s)."

**Según AT2, Sección 3.1.7 - Disponibilidad de la Información:**

> "El Centro de Control de Operaciones deberá coordinar el sistema de información georreferenciado (SIG) provisto para el monitoreo del sistema vial."

> "El **encendido y apagado de la instalación de iluminación** de los tramos alumbrados de la(s) vía(s) podrá **controlarse desde el Centro de Control**, independientemente de que cuente con programadores locales que permitan establecer un horario de encendido."

### 3.2 Requisitos de Apéndices Técnicos

**AT1 - Alcance del Proyecto:**

| Instalación | Requerimiento Eléctrico |
|:------------|:------------------------|
| **2 Estaciones de Peaje** | Acometida MT, Transformador, Tablero General, UPS, Generador |
| **CCO** | Acometida MT, Subestación, UPS redundante, Generador principal |
| **Estaciones de Pesaje** | Acometida BT/MT, Transformador, UPS |
| **Áreas de Servicio (2 obligatorias)** | Acometida BT/MT, Transformador (100 kVA c/u), Tableros distribución |
| **Sistema de Iluminación** | 410 luminarias LED, 13 transformadores, SCADA de control |
| **Sistema ITS (300+ equipos)** | Alimentación PoE, UPS distribuidos, protecciones |

**AT4 (Indicadores):**

| Indicador ID | Descripción | Valor Mínimo Aceptación |
|:-------------|:------------|:------------------------|
| **E14** | Iluminación | ≥ 80% de puntos luminosos operativos |
| **Disponibilidad CCO** | Operación del CCO | ≥ 99% disponibilidad mensual |
| **Disponibilidad ITS** | Sistemas ITS operativos | ≥ 99% disponibilidad mensual |
| **Disponibilidad Peajes** | Operación de peajes | 100% (equipos de emergencia obligatorios) |

**Interpretación:** Para cumplir con los indicadores de disponibilidad ≥99%, el sistema eléctrico debe garantizar:
- **Redundancia N+1** en componentes críticos
- **Respaldo de energía (UPS + Generador)** en todas las instalaciones críticas
- **Transferencia automática** ante falla de red principal

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **NTC 2050** | Código Eléctrico Colombiano (basado en NEC) | Instalaciones eléctricas, cableado, protecciones |
| **RETIE** | Reglamento Técnico de Instalaciones Eléctricas | Obligatorio para todas las instalaciones |
| **RETILAP** | Reglamento Técnico de Iluminación y Alumbrado Público | Sistemas de iluminación |
| **NTC 900** | Código Eléctrico Nacional | Complemento del NTC 2050 |
| **IEEE 1100** | Powering and Grounding Electronic Equipment | Puesta a tierra de equipos electrónicos |
| **IEEE 142** | Grounding of Industrial and Commercial Power Systems | Sistemas de puesta a tierra |
| **IEC 61850** | Comunicación en Subestaciones | Protocolo SCADA para subestaciones |
| **NFPA 70** | National Electrical Code | Referencia internacional |
| **NFPA 110** | Emergency and Standby Power Systems | Generadores de emergencia |
| **CREG** | Comisión de Regulación de Energía y Gas | Regulación del sector eléctrico en Colombia |

---

## 4. COMPONENTES PRINCIPALES

### 4.1 Subestaciones y Centros de Transformación

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Subestación Principal CCO (500 kVA)** | 1 unidad | CCO (ubicación central) | Alimentación del CCO + Telecomunicaciones |
| **Subestaciones Peajes (200 kVA c/u)** | 2 unidades | Zambito (PK 9+200), Aguas Negras (PK 80+000) | Alimentación de estaciones de peaje |
| **Centros de Transformación Áreas de Servicio** | **2 unidades** | **Zambito (PK 9.2), Aguas Negras (PK 80)** | Alimentación de áreas de servicio |
| **Centros de Transformación Iluminación** | 13 unidades | Zonas de iluminación (peajes, intersecciones, áreas) | Alimentación del sistema de iluminación |
| **Transformadores Estaciones de Pesaje** | 3 unidades | Estaciones de pesaje WIM | Alimentación de sistemas WIM |
| **Transformadores ITS (Distribución)** | 30 unidades | A lo largo del corredor (cada 8-10 km) | Alimentación de CCTV, PMV, Meteo, SOS |

**Total:** ~51 transformadores/centros de transformación

#### 🔴 **Nota de Ajuste Contractual:**
**Versión anterior:** 14 centros transformación áreas servicio  
**Versión ajustada:** 2 centros transformación (1 por peaje - AT1 Cap. 3)  
**Reducción:** -12 transformadores  
**Fundamento:** AT1 Cap. 3 - Solo 2 áreas obligatorias

### 4.2 Sistemas de Respaldo y Continuidad

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **UPS CCO (100 kVA, 30 min autonomía)** | 2 unidades (redundante N+1) | CCO | Respaldo de servidores, videowall, SCADA |
| **UPS Peajes (50 kVA, 30 min autonomía)** | 2 unidades | Zambito, Aguas Negras | Respaldo de sistemas de peaje |
| **UPS ITS Distribuidos (3-5 kVA)** | 30 unidades | A lo largo del corredor | Respaldo de cámaras CCTV, PMV, equipos ITS |
| **Generador CCO (300 kW, Diésel)** | 1 unidad + tanque 1,000 L | CCO | Energía de emergencia (24-48 horas autonomía) |
| **Generadores Peajes (150 kW, Diésel)** | 2 unidades | Zambito, Aguas Negras | Energía de emergencia en peajes |
| **Generadores Áreas de Servicio (50 kW)** | 6 unidades | Áreas de servicio principales | Energía de emergencia para sanitarios, iluminación |
| **Sistemas ATS (Automatic Transfer Switch)** | 11 unidades | CCO, Peajes, Áreas de Servicio | Transferencia automática Red ↔ Generador |
| **Baterías de Respaldo (12V 100Ah)** | 150 baterías | Equipos ITS remotos (SOS, DAI) | Respaldo local 4-8 horas |

### 4.3 Tableros y Protecciones

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Tableros Generales de Distribución (TGD)** | 40 unidades | Cada instalación principal | Distribución principal de energía |
| **Tableros de Distribución Secundarios** | 120 unidades | Distribuidos en todas las instalaciones | Distribución secundaria, circuitos ramales |
| **Centros de Control de Motores (CCM)** | 5 unidades | CCO, Peajes, Talleres | Control de motores, ventilación, bombas |
| **Interruptores Termomagnéticos** | 800+ unidades | Todos los tableros | Protección contra sobrecorriente |
| **Interruptores Diferenciales (GFCI)** | 200 unidades | Áreas húmedas, sanitarios | Protección contra fuga a tierra |
| **Protectores contra Sobretensión (SPD)** | 80 unidades | Todos los tableros principales | Protección contra rayos y transitorios |

### 4.4 Red Eléctrica y Canalizaciones

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Cable Media Tensión (13.2 kV, 3x1/0 AWG)** | 25 km | Interconexión de subestaciones | Alimentación MT principal |
| **Cable Baja Tensión (380V, 4x70 mm²)** | 80 km | Distribución BT en instalaciones | Alimentación BT |
| **Cable de Control (3x12 AWG)** | 50 km | Sistemas de control, iluminación | Control y señalización |
| **Cableado Estructurado (UTP Cat6)** | 100 km | Todos los sistemas | Red de datos y control |
| **Ductos PVC Conduit (4" - 6")** | 120 km | Subterráneo y aéreo | Canalización y protección |
| **Bandejas Portacables (300 mm ancho)** | 15 km | CCO, Peajes, Talleres | Canalización aérea organizada |
| **Postes de Concreto/Metálicos** | 200 unidades | Zonas rurales, accesos | Soporte de red aérea |

### 4.5 Puesta a Tierra y Protección contra Rayos

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Sistema de Puesta a Tierra (Malla)** | 40 sistemas | Cada instalación | Protección de equipos y personas (< 5 Ω) |
| **Pararrayos (Franklin / ESE)** | 15 unidades | CCO, Peajes, Talleres | Protección contra descargas atmosféricas |
| **Electrodos de Puesta a Tierra (Jabalinas)** | 400 unidades | Distribuidos en el corredor | Dispersión de corriente a tierra |
| **Cable de Cobre Desnudo (4/0 AWG)** | 50 km | Red de tierra | Conductor de tierra principal |
| **Varillas Copperweld (2.4 m)** | 500 unidades | Distribuidas | Electrodos de tierra |

### 4.6 Sistema SCADA Eléctrico (Monitoreo y Control)

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Servidor SCADA Eléctrico** | 1 servidor (redundante) | CCO | Monitoreo de consumos, alarmas, control remoto |
| **RTUs (Remote Terminal Units)** | 30 unidades | Subestaciones distribuidas | Telemetría y control remoto |
| **Medidores de Energía Inteligentes** | 80 unidades | Todos los tableros principales | Medición de consumo, calidad de energía |
| **Software SCADA (Licencias)** | 10 licencias | CCO | Supervisión, control, alarmas |
| **Sensores de Corriente/Voltaje** | 150 sensores | Distribuidos | Monitoreo en tiempo real |

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO** | SCADA / Ethernet | Modbus TCP/IP, IEC 61850 | Estado de subestaciones, alarmas, consumos, control remoto |
| **Sistema de Iluminación** | Control / Ethernet | Modbus TCP/IP | Control ON/OFF, dimming, alarmas, consumos |
| **Peajes** | Física / Eléctrica | 380V AC, 220V AC | Alimentación eléctrica, respaldo UPS/Generador |
| **ITS (CCTV, PMV, WIM)** | Física / Eléctrica | 220V AC, PoE 48V DC | Alimentación de equipos ITS |
| **Telecomunicaciones** | Física / Eléctrica | 220V AC, -48V DC | Alimentación de switches, routers, fibra óptica |
| **Áreas de Servicio** | Física / Eléctrica | 380V AC, 220V AC | Alimentación de edificaciones, sanitarios, iluminación |
| **Estaciones de Pesaje** | Física / Eléctrica | 380V AC | Alimentación de sistemas WIM, oficinas |
| **Sistema de Gestión (ANI/Interventoría)** | Software / Ethernet | Reportes, API REST | Consumos mensuales, facturación, incidencias |

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) | Costo Total (COP) |
|:-----|:---------|:---------------------|:------------------|:------------------|
| **Subestaciones y Transformadores** |
| Subestación CCO (500 kVA) | 1 | $180,000 | $180,000 | $720,000,000 |
| Subestaciones Peajes (200 kVA) | 2 | $120,000 | $240,000 | $960,000,000 |
| Transformadores Distribución (15-100 kVA) | 48 | $8,500 | $408,000 | $1,632,000,000 |
| **Sistemas de Respaldo** |
| UPS CCO (100 kVA redundante) | 2 | $45,000 | $90,000 | $360,000,000 |
| UPS Peajes (50 kVA) | 2 | $25,000 | $50,000 | $200,000,000 |
| UPS Distribuidos ITS (3-5 kVA) | 30 | $2,500 | $75,000 | $300,000,000 |
| Generador CCO (300 kW Diésel) + Tanque | 1 | $120,000 | $120,000 | $480,000,000 |
| Generadores Peajes (150 kW) | 2 | $65,000 | $130,000 | $520,000,000 |
| Generadores Áreas de Servicio (50 kW) | **2** | $30,000 | **$60,000** | **$240,000,000** |
| Sistemas ATS (Automatic Transfer Switch) | 7 | $8,000 | $56,000 | $224,000,000 |
| Baterías de Respaldo (12V 100Ah) | 150 | $350 | $52,500 | $210,000,000 |
| **Tableros y Protecciones** |
| Tableros Generales de Distribución (TGD) | 40 | $12,000 | $480,000 | $1,920,000,000 |
| Tableros de Distribución Secundarios | 120 | $3,500 | $420,000 | $1,680,000,000 |
| Centros de Control de Motores (CCM) | 5 | $25,000 | $125,000 | $500,000,000 |
| Protecciones (Interruptores, SPD, GFCI) | 1,080 | $180 | $194,400 | $777,600,000 |
| **Red Eléctrica y Canalizaciones** |
| Cable Media Tensión (13.2 kV) | 25 km | $8,500/km | $212,500 | $850,000,000 |
| Cable Baja Tensión (380V) | 80 km | $2,800/km | $224,000 | $896,000,000 |
| Cable de Control (3x12 AWG) | 50 km | $1,200/km | $60,000 | $240,000,000 |
| Ductos PVC Conduit | 120 km | $850/km | $102,000 | $408,000,000 |
| Bandejas Portacables | 15 km | $1,500/km | $22,500 | $90,000,000 |
| Postes de Concreto/Metálicos | 200 | $1,800 | $360,000 | $1,440,000,000 |
| **Puesta a Tierra y Protección contra Rayos** |
| Sistemas de Puesta a Tierra (Malla) | 40 | $8,000 | $320,000 | $1,280,000,000 |
| Pararrayos (Franklin / ESE) | 15 | $12,000 | $180,000 | $720,000,000 |
| Electrodos y Varillas | 900 | $120 | $108,000 | $432,000,000 |
| Cable de Cobre Desnudo (4/0 AWG) | 50 km | $3,500/km | $175,000 | $700,000,000 |
| **Sistema SCADA Eléctrico** |
| Servidor SCADA Eléctrico (redundante) | 1 | $60,000 | $60,000 | $240,000,000 |
| RTUs (Remote Terminal Units) | 30 | $4,500 | $135,000 | $540,000,000 |
| Medidores de Energía Inteligentes | 80 | $1,200 | $96,000 | $384,000,000 |
| Software SCADA (Licencias) | 10 | $8,000 | $80,000 | $320,000,000 |
| Sensores de Corriente/Voltaje | 150 | $450 | $67,500 | $270,000,000 |
| **Instalación, Ingeniería y Puesta en Marcha** | - | - | $950,000 | $3,800,000,000 |
| **Contingencia (10%)** | - | - | $497,500 | $1,990,000,000 |
| **TOTAL CAPEX** | | | **$4,449,400** | **$17,797,600,000** |

**CAPEX Total:** USD 4.28 millones | COP 17.11 mil millones

#### 🔴 **Nota v1.1 (20/10/2025):**
CAPEX actualizado tras rediseño arquitectónico:
- Áreas integradas a peajes (comparten subestación 200kVA y generador 150kW)
- Eliminados: 2 transformadores áreas, 2 generadores áreas, 25 SPT
- 48 transformadores totales (vs. 75 original)
- **Ahorro: -$968K USD (-17%) vs. estimación inicial**

#### 🔴 **Nota de Ajuste Contractual:**
**Versión anterior:** 14 transformadores áreas + 6 generadores = $612K transformadores + $180K generadores  
**Versión ajustada:** 2 transformadores áreas + 2 generadores = $408K transformadores + $60K generadores  
**Reducción CAPEX:** -$300,000 USD  
**Fundamento:** AT1 Cap. 3 - Solo 2 áreas de servicio obligatorias (1 por peaje)

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) | Costo Anual (COP) |
|:-----|:------------------|:------------------|
| **Consumo de Energía Eléctrica** |
| Iluminación (650 luminarias LED, 100W promedio) | $145,000 | $580,000,000 |
| CCO (Servidores, Videowall, HVAC) | $85,000 | $340,000,000 |
| Peajes (2 estaciones, 24/7) | $95,000 | $380,000,000 |
| ITS (CCTV, PMV, Sensores, 300+ equipos) | $120,000 | $480,000,000 |
| Telecomunicaciones (Switches, Routers, Fibra) | $75,000 | $300,000,000 |
| **Áreas de Servicio (2 obligatorias)** | **$16,000** | **$64,000,000** |
| Estaciones de Pesaje (WIM) | $25,000 | $100,000,000 |
| Talleres y Oficinas | $45,000 | $180,000,000 |
| **Subtotal Consumo Energía** | **$700,000** | **$2,800,000,000** |
| **Mantenimiento Preventivo** |
| Subestaciones y Transformadores (anual) | $45,000 | $180,000,000 |
| UPS (revisión trimestral, baterías cada 5 años) | $35,000 | $140,000,000 |
| Generadores (revisión mensual, overhaul 5,000h) | $55,000 | $220,000,000 |
| Tableros y Protecciones (anual) | $25,000 | $100,000,000 |
| Sistemas SCADA Eléctrico (soporte y licencias) | $30,000 | $120,000,000 |
| Red Eléctrica y Canalizaciones (inspección anual) | $20,000 | $80,000,000 |
| Puesta a Tierra (medición anual, < 5 Ω) | $15,000 | $60,000,000 |
| **Subtotal Mantenimiento Preventivo** | **$225,000** | **$900,000,000** |
| **Mantenimiento Correctivo (10% del CAPEX anual)** | $95,000 | $380,000,000 |
| **Repuestos y Consumibles** |
| Interruptores, fusibles, contactores | $25,000 | $100,000,000 |
| Baterías de reemplazo (UPS, respaldo) | $35,000 | $140,000,000 |
| Aceite, filtros para generadores | $18,000 | $72,000,000 |
| Cables, conectores, protecciones | $15,000 | $60,000,000 |
| **Subtotal Repuestos** | **$93,000** | **$372,000,000** |
| **Personal Especializado** |
| Ingeniero Eléctrico Jefe (1 FTE) | $55,000 | $220,000,000 |
| Técnicos Electricistas (3 FTE, turnos rotativos) | $90,000 | $360,000,000 |
| Operadores SCADA Eléctrico (2 FTE) | $50,000 | $200,000,000 |
| **Subtotal Personal** | **$195,000** | **$780,000,000** |
| **Combustible para Generadores (Pruebas mensuales)** | $42,000 | $168,000,000 |
| **Seguros y Certificaciones** | $35,000 | $140,000,000 |
| **TOTAL OPEX/año** | **$1,385,000** | **$5,540,000,000** |

**OPEX Anual:** USD 1.39 millones | COP 5.54 mil millones/año  
**OPEX 25 años:** USD 34.6 millones | COP 138.5 mil millones

### 6.3 Resumen Financiero

| Concepto | Monto (USD) | Monto (COP) |
|:---------|------------:|------------:|
| **CAPEX Inicial** | $5,775,000 | $23,100,000,000 |
| **OPEX 25 años** | $34,625,000 | $138,500,000,000 |
| **TOTAL PROYECTO (25 años)** | **$40,400,000** | **$161,600,000,000** |

**Total Proyecto:** USD 40.4 millones | COP 161.6 mil millones

**Nota:** El sistema de energía eléctrica representa aproximadamente el **13.5% del CAPEX total del proyecto** ($5.77M de $42.5M) pero es el **sistema más crítico**, ya que sin él ningún otro sistema puede operar.

---

## 7. RIESGOS Y ACCIONES DE MITIGACIÓN TEMPRANA

| Riesgo | Probabilidad | Impacto | Acción de Mitigación Temprana |
|:-------|:-------------|:--------|:--------------------------------|
| **Falla de red eléctrica nacional (apagones)** | Media | 🔴 Crítico | **Mes 3:** Diseñar sistemas de respaldo (UPS + Generador) para CCO y Peajes con autonomía de 48h. |
| **Falla de generadores durante emergencia** | Media | 🔴 Alto | **Mes 4:** Firmar contratos de suministro de combustible garantizado. **Mes 6:** Realizar primera prueba de generadores. |
| **Agotamiento de baterías UPS** | Media | 🔴 Alto | **Mes 5:** Implementar monitoreo de estado de baterías en SCADA. **Mes 12:** Programar primer test de descarga. |
| **Descargas atmosféricas (rayos) en equipos** | Alta | 🔴 Alto | **Mes 2:** Diseñar sistema de puesta a tierra (< 5 Ω) y protección contra sobretensiones (SPD) para todas las instalaciones. |
| **Vandalismo/robo de cables de cobre** | Alta | 🟠 Medio | **Mes 3:** Definir tramos con cableado subterráneo y especificar alarmas perimetrales para subestaciones. |
| **Sobrecarga de transformadores** | Baja | 🟠 Medio | **Mes 2:** Validar dimensionamiento de transformadores con un factor de seguridad del 25% sobre la demanda calculada. |
| **Falta de repuestos críticos (transformadores)** | Baja | 🔴 Alto | **Mes 6:** Definir y adquirir stock mínimo de repuestos críticos (1 transformador de cada tipo, fusibles, etc.). |
| **Incumplimiento de normativa RETIE/RETILAP** | Baja | 🟠 Medio | **Mes 1:** Contratar especialista certificado en RETIE para revisión de diseños. **Mes 6:** Programar primera auditoría. |

**Riesgos Críticos:** 4 riesgos con impacto crítico identificados  
**Estrategia General:** Redundancia N+1 en componentes críticos + Mantenimiento preventivo riguroso

---

## 8. INDICADORES DE DESEMPEÑO (KPIs) CLAVE

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición | Fuente |
|:-------------|:------------|:------------------------|:--------------------|:-------|
| **KPI-ENE-01:** Disponibilidad Energética CCO | Disponibilidad de energía en el CCO (Red + Respaldo). | ≥ 99.9% mensual | Continuo (SCADA) | AT4 |
| **KPI-ENE-02:** Disponibilidad Energética Peajes | Disponibilidad de energía en Estaciones de Peaje. | ≥ 99.5% mensual | Continuo (SCADA) | AT4 |
| **KPI-ENE-03:** Tiempo de Transferencia a Respaldo | Tiempo desde corte de red hasta activación de generador. | < 60 segundos | Por evento | NFPA 110 |
| **KPI-ENE-04:** Cumplimiento RETIE | Resistencia de puesta a tierra en todas las instalaciones. | < 5 Ω | Anual | RETIE |
| **KPI-ENE-05:** Calidad de Energía | Factor de potencia en acometidas principales. | ≥ 0.92 | Mensual | CREG |
| **KPI-ENE-06:** Autonomía de Respaldo | Autonomía demostrada de UPS y Generadores en pruebas. | UPS: ≥ 30 min, Generador: ≥ 48h | Semestral | AT2 |
| **KPI-ENE-07:** Cumplimiento Indicador E14 | Porcentaje de puntos de iluminación operativos. | ≥ 80% | Mensual | AT4 |

**Penalizaciones:** Según AT4, el incumplimiento de indicadores de disponibilidad de sistemas críticos (CCO, Peajes, ITS, Iluminación) puede resultar en **deducciones mensuales a la Retribución**.

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (Template T01)
- [ ] 📋 **Desarrollar análisis de requisitos detallado (Template T02)** - Próximo paso
  - Requisitos funcionales (RF): Transformación, distribución, respaldo, monitoreo
  - Requisitos no funcionales (RNF): Disponibilidad 99%, RETIE, RETILAP, seguridad
  - Requisitos de interfaces (RI): SCADA, iluminación, todos los sistemas
- [ ] 🏗️ Definir arquitectura conceptual (Template T03)
  - Diagrama unifilar general del corredor
  - Arquitectura de subestaciones principales
  - Esquemas de respaldo y transferencia automática
- [ ] 📐 Elaborar especificaciones técnicas (Template T04)
  - Especificación de transformadores (potencia, relación, regulación)
  - Especificación de generadores (potencia, combustible, ATS)
  - Especificación de UPS (potencia, autonomía, tipo)
  - Especificación de tableros y protecciones (NTC 2050, RETIE)
- [ ] 💰 Estimar costos detallados (Template T05)
  - Solicitar cotizaciones formales a proveedores:
    * Transformadores: Siemens, ABB, Schneider Electric
    * Generadores: Caterpillar, Cummins, Kohler
    * UPS: APC, Eaton, Vertiv
    * Tableros: Siemens, ABB, Legrand
- [ ] 🔧 Seleccionar proveedores preliminares
  - Mínimo 3 cotizaciones por categoría
  - Matriz comparativa técnico-económica
- [ ] ✅ Validar con stakeholders
  - Revisión con Ingeniero Eléctrico Jefe
  - Validación con operadores de electricidad locales
  - Aprobación de ANI/Interventoría

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

1. **Disponibilidad de red eléctrica nacional:**
   - Se asume disponibilidad de red eléctrica en Media Tensión (13.2 kV o 34.5 kV) en las zonas principales (CCO, Peajes, Áreas de Servicio)
   - En zonas remotas sin cobertura de red, se requerirá generación local o extensión de red

2. **Crecimiento de demanda eléctrica:**
   - Se estima un crecimiento de demanda del 3-5% anual
   - Transformadores dimensionados con factor de seguridad 1.25 para permitir expansión futura

3. **Tarifas eléctricas:**
   - Se asume tarifa promedio de $0.15 USD/kWh (tarifa industrial en Colombia)
   - Sujeto a variación según operador local y regulación CREG

4. **Vida útil de componentes:**
   - Transformadores: 25-30 años
   - UPS: 10-15 años (baterías cada 3-5 años)
   - Generadores: 15-20 años (con overhauls cada 5,000 horas)
   - Tableros: 20-25 años

5. **Normativa vigente:**
   - Se asume cumplimiento de RETIE vigente (Resolución 90708/2013 y actualizaciones)
   - RETILAP vigente (Resolución 180540/2010 y actualizaciones)
   - NTC 2050 (Código Eléctrico Colombiano)

### 10.2 Dependencias

1. **Dependencia de red eléctrica nacional:**
   - El sistema depende de la disponibilidad y confiabilidad de la red eléctrica nacional
   - Generadores de respaldo permiten autonomía temporal (24-48 horas)

2. **Dependencia de proveedores de combustible:**
   - Los generadores de emergencia dependen de suministro continuo de combustible (diésel/gas)
   - Se requieren contratos de suministro garantizado

3. **Dependencia de fabricantes de equipos:**
   - Repuestos críticos (transformadores, UPS) dependen de fabricantes internacionales
   - Se recomienda stock mínimo de repuestos críticos en almacén

4. **Dependencia de operadores eléctricos locales:**
   - Acometidas eléctricas dependen de aprobaciones y trabajos de operadores locales (ISAGEN, ESSA, Codensa, etc.)
   - Se requiere coordinación temprana con operadores

5. **Dependencia de sistema de telecomunicaciones:**
   - El SCADA eléctrico depende de la red de fibra óptica y telecomunicaciones
   - Sin telecomunicaciones, no hay monitoreo remoto (operación local manual)

6. **Todos los sistemas dependen de Energía Eléctrica:**
   - **CRÍTICO:** Sin energía, NINGÚN sistema del corredor puede operar
   - Iluminación, Peajes, CCO, ITS, Telecomunicaciones, Áreas de Servicio, Pesaje

### 10.3 Restricciones

1. **Restricción normativa:**
   - Cumplimiento obligatorio de RETIE y RETILAP
   - Certificaciones de instalaciones eléctricas obligatorias
   - Personal electricista debe estar certificado (Resolución 90708/2013)

2. **Restricción presupuestaria:**
   - CAPEX limitado a presupuesto aprobado
   - OPEX de energía es recurrente y sujeto a incrementos tarifarios

3. **Restricción de espacio:**
   - Subestaciones y centros de transformación requieren espacio físico adecuado
   - Distancias de seguridad según RETIE

4. **Restricción de tiempo:**
   - Instalaciones eléctricas son **críticas en la ruta crítica del proyecto**
   - Deben estar terminadas ANTES de energizar cualquier otro sistema

5. **Restricción de acceso:**
   - Algunas zonas del corredor tienen acceso difícil (zonas montañosas)
   - Puede requerir helicópteros o construcción de accesos temporales

6. **Restricción ambiental:**
   - Generadores de diésel deben cumplir normas de emisiones
   - Tanques de combustible requieren permisos ambientales
   - Residuos peligrosos (aceites, baterías) requieren gestión especializada

---

## 11. INTEGRACIÓN CON OTROS DOCUMENTOS

### 11.1 Referencia a otros T01 (Fichas de Sistema)

| T01 Relacionado | Dependencia con Energía Eléctrica |
|:----------------|:----------------------------------|
| **24_T01_ITS** | CRÍTICA - Alimentación de 300+ equipos ITS (CCTV, PMV, WIM, Meteo, SOS, DAI, Aforo) |
| **25_T01_Peajes** | CRÍTICA - Alimentación de 2 estaciones 24/7 + respaldo obligatorio (UPS + Generador) |
| **26_T01_CCO** | CRÍTICA - Alimentación de servidores, videowall, SCADA + respaldo redundante |
| **27_T01_Telecomunicaciones** | CRÍTICA - Alimentación de switches, routers, ODF, radio (-48V DC, 220V AC) |
| **28_T01_Emergencias** | MEDIA - Alimentación de talleres, oficinas, iluminación perimetral |
| **34_T01_Iluminación** | CRÍTICA - 650 luminarias LED + 25 transformadores + SCADA de control |
| **35_T01_Señalización** | BAJA - Señalización pasiva (no requiere energía, excepto PMV que está en ITS) |
| **36_T01_Áreas_Servicio** | ALTA - Alimentación de **2 áreas de servicio** obligatorias (iluminación, sanitarios, talleres) |
| **T01_Pesaje_WIM** (pendiente) | ALTA - Alimentación de estaciones WIM, básculas dinámicas, oficinas |
| **T01_Gestión_Ambiental** (pendiente) | BAJA - Alimentación de PTAR, puntos ecológicos (bajo consumo) |

### 11.2 Vinculación con WBS Preliminar

| Código WBS | Elemento WBS | Relación con Sistema Energía |
|:-----------|:-------------|:-----------------------------|
| **1.1** | Preconstrucción | Diseños eléctricos, estudios de carga, permisos |
| **1.4** | ITS | Dimensionamiento de carga eléctrica ITS |
| **1.5** | Peajes | Subestaciones, UPS, Generadores de peajes |
| **1.6** | Áreas de Servicio | Acometidas y transformadores de áreas de servicio |
| **1.8** | Telecomunicaciones | Alimentación de equipos de telecomunicaciones |
| **1.10** | CCO | Subestación principal, UPS redundante, Generador principal |
| **1.11** | Iluminación | Transformadores, tableros, SCADA de iluminación |
| **1.15** | O&M | Mantenimiento de sistemas eléctricos, consumo energético |

---

## 12. DATOS CLAVE PARA MEMORIZAR

**Resumen de Cantidades Principales:**
- **51 Transformadores/Centros de Transformación** (1 Subestación CCO 500kVA + 2 Peajes 200kVA + 48 distribución)
- **5 Generadores de Emergencia** (1 CCO 300kW + 2 Peajes 150kW + **2 Áreas Servicio** 50kW)
- **34 Sistemas UPS** (2 CCO 100kVA + 2 Peajes 50kVA + 30 ITS 3-5kVA)
- **40 Sistemas de Puesta a Tierra** (< 5 Ω)
- **15 Pararrayos** (CCO, Peajes, Talleres)
- **30 RTUs para SCADA Eléctrico**

**Cifras Financieras:**
- **CAPEX:** USD 5.77 millones (COP 23.1 mil millones)
- **OPEX Anual:** USD 1.39 millones (COP 5.54 mil millones/año)
- **OPEX 25 años:** USD 34.6 millones (COP 138.5 mil millones)
- **Total Proyecto:** USD 40.4 millones (COP 161.6 mil millones)

**Consumo Energético Anual:**
- **Total:** ~4.67 GWh/año (~700,000 USD/año a $0.15/kWh)
- **Iluminación:** 30%
- **ITS:** 20%
- **CCO:** 15%
- **Peajes:** 15%
- **Telecomunicaciones:** 12%
- **Áreas de Servicio:** 8%

**Disponibilidad Requerida:** ≥ 99% (CCO, Peajes, ITS según AT4)

---

**Versión:** 1.1 ✅ **AJUSTE CONTRACTUAL APLICADO**  
**Estado:** ✅ Ficha Validada Contractualmente  
**Fecha:** 20 de octubre de 2025  
**Responsable:** Administrador Contractual EPC  
**Próximo Documento:** 39_T01_Ficha_Sistema_Pesaje_WIM_v1.0.md

---

**CHANGELOG:**
| Versión | Fecha | Descripción |
|:--------|:------|:------------|
| v1.0 | 17/10/2025 | Creación inicial de ficha de sistema Energía Eléctrica |
| **v1.1** | **20/10/2025** | **Ajuste contractual:** 14 áreas → 2 áreas. Transformadores 72→48 (-24), Generadores 9→5 (-4). CAPEX -$300K |

---

## 📋 CHANGELOG

| Versión | Fecha | Descripción |
|:--------|:------|:------------|
| v1.0 | 17/10/2025 | Creación inicial de ficha de sistema Energía Eléctrica |
| **v1.1** | **22/10/2025** | **Revisión con información oficial:** CCO La Lizama PK 4+300, longitudes actualizadas |

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Longitudes validadas: 259.6 km principal + 33.4 km adicionales
- Rutas específicas: RN 4510, RN 4511, RN 4513
- Integración CCO actualizada con ubicación oficial
- Metodología PKD lineal aplicada

---

**FIN DEL DOCUMENTO T01 - SISTEMA DE ENERGÍA ELÉCTRICA** ⚡🔌✅
