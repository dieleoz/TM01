# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE ENERGÍA ELÉCTRICA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Energía Eléctrica  
**Responsable:** Ingeniero Eléctrico / Ingeniero de Potencia  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Energía Eléctrica para el proyecto APP Puerto Salgar - Barrancabermeja. Este sistema es **CRÍTICO** ya que alimenta TODOS los demás sistemas del corredor.

Establece:
- Arquitectura eléctrica de Media Tensión (MT) y Baja Tensión (BT)
- Diagrama unifilar del sistema completo
- Distribución de subestaciones y transformadores
- Sistemas de respaldo (UPS + Generadores)
- Sistema de puesta a tierra y protección contra rayos
- SCADA eléctrico

### 1.2 Alcance

Esta arquitectura cubre el **sistema eléctrico completo** a lo largo de 259.6 km:

**Componentes del sistema:**
- Subestaciones principales: 3 (CCO 500 kVA, 2 Peajes 200 kVA c/u)
- Transformadores distribución: ~45 unidades (iluminación e ITS)
- Sistemas UPS: ~35 unidades (CCO, peajes, ITS distribuidos)
- Generadores de Emergencia: 3 principales (CCO 300 kW, 2 Peajes 150 kW)
- Red Eléctrica MT/BT: Acometidas y distribución
- Sistema de Puesta a Tierra (SPT): ~50 sistemas
- Protección contra Rayos: Pararrayos en instalaciones principales
- Sistema SCADA Eléctrico: Monitoreo centralizado en CCO

**Sistemas alimentados:**
- CCO (centro crítico)
- 2 Peajes con Áreas de Servicio Integradas (Zambito, Aguas Negras)
- 410 Luminarias LED distribuidas
- 100+ Equipos ITS (CCTV, PMV, SOS, WIM, Meteo)
- Sistema de Telecomunicaciones (switches, radios, fibra activa)
- Estaciones de Pesaje

**Potencia total instalada:** ~650 kW

**Concepto clave:**
- Las **2 áreas de servicio** están **integradas físicamente a los peajes**
- **Comparten la subestación del peaje** (200 kVA tiene capacidad para peaje + área)
- **NO requieren transformadores ni generadores adicionales**
- Solo requieren: Tablero secundario + cableado BT desde peaje

### 1.3 Referencias

- [T01 - Ficha Sistema Energía Eléctrica](38_T01_Ficha_Sistema_Energia_Electrica_v1.0.md)
- [T02 - Análisis de Requisitos Energía](46_T02_Analisis_Requisitos_Energia_Electrica_v1.0.md)
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.4.1
- [T03 - Arquitectura CCO](54_T03_Arquitectura_Conceptual_CCO_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama Unifilar Simplificado REDISEÑADO

```
┌──────────────────────────────────────────────────────────────────────┐
│       RED ELÉCTRICA NACIONAL (Operadores: Codensa, ESSA, CELSIA)    │
│                  13.2 kV / 34.5 kV (Media Tensión)                   │
└──────────────┬─────────────────┬─────────────────┬──────────────────┘
               │                 │                 │
          ┌────▼─────┐      ┌───▼─────┐      ┌───▼─────┐
          │Subestac. │      │Subestac.│      │Subestac.│
          │CCO       │      │Peaje    │      │Peaje    │
          │500 kVA   │      │ZAMBITO  │      │AGUAS NEG│
          │13.2kV→   │      │200 kVA  │      │200 kVA  │
          │220/110V  │      │13.2kV→  │      │13.2kV→  │
          └────┬─────┘      │220/380V │      │220/380V │
               │            └────┬────┘      └────┬────┘
          ┌────▼─────┐          │                 │
          │UPS       │    ┌─────┴──────┐    ┌─────┴──────┐
          │2×100 kVA │    │ UPS 50 kVA │    │ UPS 50 kVA │
          │(N+1)     │    │ Gen 150 kW │    │ Gen 150 kW │
          │Gen 300kW │    └─────┬──────┘    └─────┬──────┘
          └────┬─────┘          │                 │
               │            ┌───┴───┐         ┌───┴───┐
               │            │       │         │       │
          ┌────▼─────┐    ┌▼───┐ ┌▼────┐   ┌▼───┐ ┌▼────┐
          │CCO:      │    │PEAJE│ │ÁREA │   │PEAJE│ │ÁREA │
          │Servidores│    │TAG  │ │REST │   │TAG  │ │REST │
          │Videowall │    │Cám  │ │TALLER│  │Cám  │ │TALLER│
          │Telecom   │    │Ilum │ │SANIT│   │Ilum │ │SANIT│
          │SCADA     │    │CCTV │ │CCTV │   │CCTV │ │CCTV │
          └──────────┘    └─────┘ └─────┘   └─────┘ └─────┘
                          50 kW   40 kW     50 kW   40 kW
                          TOTAL: 90 kW      TOTAL: 90 kW

CONCEPTO ARQUITECTÓNICO CORRECTO:

⭐ PEAJE + ÁREA = COMPLEJO INTEGRADO (comparten subestación)

Cargas del Peaje Zambito (200 kVA):
├─ Peaje propiamente: 50 kW (TAG, cámaras, iluminación, oficinas)
├─ Área de Servicio: 40 kW (restaurante, taller, sanitarios, iluminación)
└─ TOTAL: 90 kW (45% de capacidad de 200 kVA)
   ✅ SUFICIENTE - Subestación del peaje alimenta ambos

Respaldo:
├─ Generador 150 kW respalda Peaje + Área (90 kW < 150 kW ✅)
├─ UPS 50 kVA respalda cargas críticas (TAG, CCTV, servidores)
└─ ATS conmuta automáticamente en < 10 segundos

DISTRIBUCIÓN ADICIONAL (Iluminación e ITS):
├─ Transformadores Iluminación (15-30 kVA): 13 unidades
├─ Transformadores ITS (30-50 kVA): 30 unidades
└─ Total transformadores distribución: ~45 unidades

TOTAL SISTEMA:
- Subestaciones principales: 3 (CCO 500, Peajes 2×200)
- Transformadores distribución: 45
- TOTAL: 48 transformadores (vs. 75 en versión anterior)
- POTENCIA: ~650 kW total instalada
```

### 2.2 Descripción de Componentes Principales

| Componente | Función | Especificación Preliminar | Cantidad |
|:-----------|:--------|:--------------------------|:---------|
| **Subestación CCO** | Alimentación del CCO | 500 kVA, 13.2kV/220-110V, seco | 1 |
| **Subestaciones Peajes** | Alimentación peaje + área integrada | 200 kVA, 13.2kV/220-380V | 2 |
| **Transformadores Iluminación** | Alimentación luminarias distribuidas | 15-30 kVA, poste | 13 |
| **Transformadores ITS** | Alimentación CCTV, PMV, SOS distribuidos | 30-50 kVA | 30 |
| **Transformadores Pesaje** | Alimentación estaciones WIM | 50 kVA | 3 |
| **UPS CCO** | Respaldo CCO (N+1) | 2 × 100 kVA, 30 min autonomía | 2 |
| **UPS Peajes** | Respaldo peajes + áreas | 50 kVA, 30 min | 2 |
| **UPS ITS Distribuidos** | Respaldo equipos ITS campo | 3-5 kVA | 30 |
| **Generador CCO** | Emergencia CCO | 300 kW diésel, tanque 1,000 L (48h) | 1 |
| **Generadores Peajes** | Emergencia peaje + área | 150 kW diésel, tanque 500 L (48h) | 2 |
| **Tableros Generales** | Distribución principal | TGD, IP54, medición | 5 |
| **Tableros Secundarios** | Distribución BT zonas | IP54, breakers | 50 |
| **Sistema de Puesta a Tierra** | Protección, seguridad | Resistencia < 10 Ω | 50 SPT |

#### 🔴 **CONCEPTO ARQUITECTÓNICO CRÍTICO:**

**Áreas de Servicio NO tienen transformadores ni generadores propios:**
- ✅ Se alimentan DESDE la subestación del peaje (200 kVA tiene capacidad)
- ✅ Se respaldan con el generador del peaje (150 kW tiene capacidad)
- ✅ Solo requieren: Tablero secundario (sub-tablero) + cableado BT (~200m)

**Cálculo de capacidad:**
- Peaje: 50 kW + Área: 40 kW = **90 kW total**
- Subestación: 200 kVA (160 kW a FP=0.8) → **Margen 78% ✅**
- Generador: 150 kW → **Margen 67% ✅**

---

## 3. TOPOLOGÍA DEL SISTEMA

### 3.1 Topología Eléctrica

- **Topología MT:** Radial desde subestaciones de operadores de red
- **Topología BT:** Radial desde cada transformador
- **Respaldo:** UPS + Generadores en instalaciones críticas
- **SCADA:** Monitoreo centralizado desde CCO

### 3.2 Distribución de Subestaciones

```
CORREDOR 259.6 km - DISTRIBUCIÓN DE PUNTOS DE ALIMENTACIÓN

PK 0 ──────────────────────────────────────────────────► PK 259.6
│                  │              │                  │
│                  │              │                  │
▼                  ▼              ▼                  ▼
Pto Salgar    Peaje Zambito   CCO/Peaje AG    San Roque
(Ilum+ITS)      PK 9.2        PK 80-130      (Ilum+ITS)
              ┌────────┐      ┌────────┐
              │Subestac│      │Subestac│
              │200 kVA │      │500 kVA │
              │+ Gen   │      │+ Gen   │
              │150 kW  │      │300 kW  │
              └────────┘      └────────┘

Distribución intermedia cada 8-10 km:
├─ Transformadores Iluminación (13 ubicaciones)
├─ Transformadores ITS (30 ubicaciones)
├─ Centros Transformación Áreas de Servicio (**2 ubicaciones: Zambito, Aguas Negras**)
└─ Total: ~48 puntos de transformación MT/BT
```

### 3.3 Distribución Física por Tipo de Instalación

| Tipo de Instalación | Acometida MT | Transformador | UPS | Generador |
|:--------------------|:-------------|:--------------|:----|:----------|
| **CCO** | 13.2 kV | 500 kVA | 2 x 100 kVA | 300 kW |
| **Peajes (2)** | 13.2 kV | 200 kVA | 50 kVA | 150 kW |
| **Áreas Servicio Tipo A (3)** | 13.2 kV | 150 kVA | Opcional | 50 kW |
| **Áreas Servicio Tipo B (11)** | BT o MT | 50-75 kVA | No | Opcional |
| **Iluminación (25 zonas)** | BT | 15-30 kVA | No | No |
| **ITS Distribuido (30)** | BT | 30-75 kVA | 3-5 kVA | No |

---

## 4. FLUJO DE ENERGÍA

### 4.1 Flujo Completo de Energía

```
┌────────────────────────────────────────────────────────┐
│ 1. GENERACIÓN (RED NACIONAL)                           │
│    - Plantas de generación (hidro/térmica)             │
│    - Transmisión en Alta Tensión (220/500 kV)          │
│    - Subestaciones de distribución                      │
└──────────────┬─────────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────────┐
│ 2. DISTRIBUCIÓN MT (OPERADORES DE RED)                 │
│    - Red de distribución 13.2 kV / 34.5 kV            │
│    - Acometidas a instalaciones del proyecto           │
│    - Medición (kWh) para facturación                   │
└──────────────┬─────────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────────┐
│ 3. TRANSFORMACIÓN MT/BT (SUBESTACIONES PROYECTO)       │
│    - Transformadores 13.2 kV → 220V/110V              │
│    - Protecciones (seccionadores, fusibles)            │
│    - Medición (kWh) por instalación                    │
└──────────────┬─────────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────────┐
│ 4. DISTRIBUCIÓN BT (TABLEROS)                          │
│    - Tableros Generales (TG)                           │
│    - Tableros de Distribución (TD)                     │
│    - Circuitos ramales                                 │
│    - Protecciones (breakers, diferenciales)            │
└──────────────┬─────────────────────────────────────────┘
               ▼
┌────────────────────────────────────────────────────────┐
│ 5. CONSUMO (EQUIPOS FINALES)                           │
│    - Servidores, switches, iluminación                 │
│    - Sistemas de peaje, CCTV                           │
│    - Aires acondicionados, bombas                      │
└────────────────────────────────────────────────────────┘

FLUJO DE RESPALDO (ante falla de red):
Red Falla → UPS entra (< 1 ms) → Generador arranca (< 10 s) 
→ UPS + Generador → Generador solo (UPS en bypass) 
→ Retorna red → Transferencia a red → Generador standby
```

### 4.2 Balance de Cargas Estimado

| Sistema | Potencia Instalada | Potencia Demandada | Factor de Demanda |
|:--------|:-------------------|:-------------------|:------------------|
| **CCO** | 250 kW | 200 kW | 0.8 |
| **Peajes (2)** | 150 kW x 2 = 300 kW | 200 kW | 0.67 |
| **Iluminación** | 65 kW (650 x 100W) | 65 kW | 1.0 (100%) |
| **ITS** | 80 kW | 60 kW | 0.75 |
| **Áreas de Servicio** | 200 kW | 150 kW | 0.75 |
| **Telecomunicaciones** | 40 kW | 30 kW | 0.75 |
| **Pesaje** | 25 kW | 20 kW | 0.8 |
| **TOTAL** | **960 kW** | **725 kW** | **0.76** |

**Demanda máxima coincidente:** ~725 kW (factor de diversidad aplicado)

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Redundancia

| Instalación | Acometida MT | Transformador | UPS | Generador | Disponibilidad Objetivo |
|:------------|:-------------|:--------------|:----|:----------|:------------------------|
| **CCO** | Doble acometida (preferible) | 500 kVA | 2 x 100 kVA (N+1) | 300 kW | 99.9% |
| **Peajes** | Simple acometida | 200 kVA | 50 kVA | 150 kW | 99.5% |
| **Áreas Servicio Tipo A** | Simple acometida | 150 kVA | Opcional | 50 kW | 95% |
| **Iluminación** | Simple acometida | 15-30 kVA | No | No | 98% |
| **ITS (distribuido)** | Simple acometida | 30-75 kVA | 3-5 kVA | No | 99% |

### 5.2 Tiempos de Respaldo

| Instalación | UPS (Autonomía) | Generador (Autonomía) | Tiempo Total Respaldo |
|:------------|:----------------|:----------------------|:----------------------|
| **CCO** | 30 min | 48 horas (tanque 1,000 L) | 48.5 horas |
| **Peajes** | 30 min | 48 horas (tanque 500 L) | 48.5 horas |
| **Áreas Servicio** | N/A | 24 horas (tanque 200 L) | 24 horas |
| **ITS Distribuido** | 30 min | N/A | 30 min |

**Justificación:** 
- CCO y Peajes: Operación CRÍTICA, deben operar indefinidamente (se re abastece generador)
- ITS: 30 min suficiente para cortes breves (fallas restauradas típicamente en < 2 horas)

### 5.3 Sistema de Transferencia Automática (ATS)

**Configuración en CCO y Peajes:**

```
         Red Eléctrica
              │
        ┌─────▼─────┐
        │    ATS    │  Automatic Transfer Switch
        │ (Control) │  Conmutación automática
        └─┬───────┬─┘
          │       │
     ┌────▼──┐ ┌─▼────────┐
     │  UPS  │ │ Generador│
     │100 kVA│ │  300 kW  │
     └───┬───┘ └────┬─────┘
         └──────┬───┘
                │
           ┌────▼────┐
           │ Cargas  │
           │Críticas │
           └─────────┘

Secuencia de operación:
1. Falla red → UPS entra (< 1 ms)
2. ATS detecta falla → Arranca generador (< 10 s)
3. Generador alcanza régimen → ATS transfiere a generador
4. UPS en bypass (alimentado por generador)
5. Retorna red → ATS espera 2 min → Transfiere a red
6. Generador enfría 5 min → Para → Standby
```

---

## 6. SEGURIDAD

### 6.1 Sistema de Puesta a Tierra (SPT)

**Configuración en cada instalación:**

```
┌────────────────────────────────────────┐
│  INSTALACIÓN (Peaje, CCO, Área Serv.) │
│                                        │
│  ┌──────────┐                         │
│  │Transforma│                         │
│  │dor       │                         │
│  └────┬─────┘                         │
│       │                                │
│  ┌────▼──────────────────────────┐    │
│  │  Tablero General (TG)         │    │
│  │  Barra de Puesta a Tierra     │    │
│  └────┬──────────────────────────┘    │
│       │                                │
│       │ Cable desnudo Cu 2/0 AWG      │
│       │                                │
│  ┌────▼────────────────────────┐      │
│  │  Malla de Puesta a Tierra    │      │
│  │  (Electrodo: varilla copperweld│      │
│  │   o malla de cobre)           │      │
│  │                               │      │
│  │  Resistencia < 10 Ω           │      │
│  └───────────────────────────────┘      │
└────────────────────────────────────────┘

Medición: Anual con telurómetro
Mantenimiento: Inspección visual semestral
```

**Especificaciones:**
- **Resistencia de puesta a tierra:** < 10 Ω (según IEEE 142)
- **Electrodo:** Varilla copperweld 5/8" x 2.4 m (o malla de cobre)
- **Conductor:** Cable desnudo Cu 2/0 AWG
- **Medición:** Anual con telurómetro (3 puntos, método Wenner)

### 6.2 Protección contra Rayos

| Instalación | Sistema de Protección | Especificación |
|:------------|:----------------------|:---------------|
| **CCO** | Pararrayos Franklin (punta) | Radio de protección 60 m, altura 10-15 m |
| **Peajes** | Pararrayos Franklin | Radio de protección 45 m |
| **Subestaciones MT** | DPS en MT y BT | Clase II (40 kA) |
| **Tableros BT** | DPS en entrada | Clase II (40 kA, 1.5 kV) |
| **Equipos electrónicos** | DPS individuales | Clase III (10 kA, enchufes) |

### 6.3 Seguridad Eléctrica (RETIE)

- **Señalización:** Avisos de "PELIGRO - ALTA TENSIÓN" en subestaciones
- **Cercas:** Subestaciones MT con cerca de seguridad (1.8 m)
- **Acceso controlado:** Solo personal autorizado y capacitado
- **EPP obligatorio:** Casco dieléctrico, guantes, botas, gafas
- **Protecciones diferenciales:** 30 mA en circuitos de tomacorrientes

---

## 7. ARQUITECTURA DE SCADA ELÉCTRICO

### 7.1 Diagrama de SCADA

```
┌────────────────────────────────────────────────────────┐
│              CCO - SCADA ELÉCTRICO                     │
│                                                        │
│  ┌──────────────────────────────────────────┐         │
│  │  HMI (Interfaz Gráfica)                  │         │
│  │  - Diagrama unifilar dinámico            │         │
│  │  - Estado de subestaciones (V, A, kW)    │         │
│  │  - Estado UPS (carga, autonomía)          │         │
│  │  - Estado generadores (on/off, alarmas)   │         │
│  │  - Consumo energético (kWh) por zona      │         │
│  └───────────────┬──────────────────────────┘         │
│                  │                                      │
│  ┌───────────────▼──────────────────────────┐         │
│  │  Servidor SCADA Eléctrico                │         │
│  │  - Siemens WinCC / Schneider Vijeo       │         │
│  │  - Base de datos (SQL Server)            │         │
│  │  - Generación de alarmas                  │         │
│  │  - Logs de eventos                        │         │
│  └───────────────┬──────────────────────────┘         │
│                  │  Modbus TCP / SNMP                  │
│                  │  IEC 61850                          │
└──────────────────┼─────────────────────────────────────┘
                   │ Red de Fibra Óptica
                   │
        ┌──────────┼──────────┬──────────┐
        │          │          │          │
   ┌────▼───┐ ┌───▼────┐ ┌──▼─────┐ ┌──▼─────┐
   │Medidor │ │Medidor │ │UPS CCO │ │Gen. CCO│
   │ kWh    │ │kWh Peaj│ │(SNMP)  │ │(Modbus)│
   │CCO     │ │        │ │        │ │        │
   │(Modbus)│ │        │ │        │ │        │
   └────────┘ └────────┘ └────────┘ └────────┘

DATOS MONITOREADOS:
├─ Voltaje (V), Corriente (A), Potencia (kW, kVA)
├─ Energía acumulada (kWh)
├─ Estado de UPS (carga batería, autonomía restante)
├─ Estado de generadores (operativo, alarmas, nivel combustible)
└─ Alarmas (sobrecarga, baja tensión, falla de generador)
```

### 7.2 Funcionalidades del SCADA Eléctrico

**Monitoreo:**
- Visualización en tiempo real de diagrama unifilar
- Estado de subestaciones (voltaje, corriente, potencia)
- Consumo energético por zona (kWh diario, mensual)
- Estado de UPS (carga, autonomía)
- Estado de generadores (on/off, alarmas)

**Control:**
- Transferencia manual red/generador (override del ATS)
- Encendido/apagado de iluminación (coordinado con SCADA de Iluminación)
- Arranque/paro manual de generadores (emergencia)

**Alarmas:**
- Falla de red eléctrica
- Baja autonomía de UPS (< 10 min)
- Falla de arranque de generador
- Sobrecarga (> 90% capacidad)
- Baja tensión / alta tensión

---

## 8. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema | Interface | Protocolo | Datos Intercambiados | Criticidad |
|:--------|:----------|:----------|:---------------------|:-----------|
| **TODOS los sistemas** | IF-EN-001 | AC 220V/110V | Energía eléctrica | 🔴 CRÍTICA |
| **CCO (SCADA)** | IF-EN-002 | Modbus TCP, SNMP, Fibra | Monitoreo eléctrico, alarmas | 🔴 Alta |
| **Iluminación** | IF-EN-003 | Modbus TCP, Fibra | Control on/off, estado | 🟡 Media |
| **Telecomunicaciones** | IF-EN-004 | PoE, AC 220V | Alimentación de switches | 🔴 CRÍTICA |

**Sistema Eléctrico es CRÍTICO:** Sin energía, NINGÚN sistema digital opera.

---

## 9. ESCALABILIDAD

### 9.1 Dimensionamiento Actual vs Futuro

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Demanda total** | 725 kW | 850 kW | 1,000 kW | 1,200 kW (+20%) |
| **Subestaciones** | 75 | 85 | 95 | Modular (fácil agregar) |
| **Transformadores (capacidad)** | 1,100 kVA | 1,300 kVA | 1,500 kVA | Dimensionado con 20% margen |

### 9.2 Estrategia de Crecimiento

**Sin cambios mayores:**
- Agregar transformadores en nuevas ubicaciones
- Reemplazo de transformadores por mayor capacidad (si necesario)

**Modular y escalable por diseño.**

---

## 10. TECNOLOGÍA Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar | Proveedores Sugeridos |
|:----------|:-----------|:---------|:----------------------|
| **Transformadores MT/BT** | Seco (CCO) o aceite (campo) | NTC 618, IEC 60076 | ABB, Siemens, Schneider |
| **UPS** | Doble conversión (online) | IEC 62040 | APC, Eaton, Vertiv |
| **Generadores** | Diésel | NFPA 110, ISO 8528 | Caterpillar, Cummins, Kohler |
| **Tableros** | Metálicos IP54 | NTC 2050, IEC 61439 | Schneider Electric, ABB |
| **Protecciones** | Breakers termomagnéticos | NTC 2050 | Schneider, ABB, Siemens |
| **SCADA** | Modbus TCP, IEC 61850 | IEC 61850 | Siemens, Schneider |
| **Medidores kWh** | Electrónicos, clase 1 | NTC 2288 | Schneider, Socomec |

### 10.2 Cumplimiento Normativo

| Norma | Aplicación |
|:------|:-----------|
| **RETIE** | Obligatorio en Colombia (instalaciones eléctricas) |
| **NTC 2050** | Código Eléctrico Colombiano |
| **IEEE 142** | Puesta a tierra |
| **NFPA 110** | Generadores de emergencia |
| **IEC 61850** | Comunicación en subestaciones (SCADA) |

---

## 11. ANÁLISIS DE ALTERNATIVAS

### 11.1 Alternativa 1: Generación Propia (Sin Conexión a Red)

**Descripción:** Generación eléctrica 100% propia (generadores como fuente principal)

**Ventajas:**
- Independencia de operadores de red

**Desventajas:**
- OPEX muy alto (combustible 24/7)
- Mayor contaminación (GEI)
- Mantenimiento intensivo

**Descartada:** Costo de combustible prohibitivo ($500K/año solo en diésel)

---

### 11.2 Alternativa 2: Red Nacional + UPS + Generadores (Respaldo) ⭐ **RECOMENDADA**

**Descripción:** Red eléctrica nacional como fuente principal, UPS y generadores como respaldo

**Ventajas:**
- ✅ **Menor OPEX** (solo costo de energía consumida)
- ✅ **Alta confiabilidad** (red + respaldo)
- ✅ **Cumplimiento contractual** (AT2 exige operación en falla eléctrica)
- ✅ **Sostenibilidad** (menor emisión de GEI)

**Desventajas:**
- Dependencia de operadores de red (mitigado con UPS + generador)

**Costo CAPEX:** $5.8M USD  
**Costo OPEX:** $180K/año (energía) + $50K/año (mantenimiento generadores)

**Justificación:** Estándar de industria, menor costo total de propiedad (TCO)

---

### 11.3 Alternativa 3: Energía Solar + Baterías + Generador (Respaldo)

**Descripción:** Paneles solares como fuente principal (en áreas de servicio), baterías, generador de respaldo

**Ventajas:**
- Sostenibilidad (energía renovable)
- Reducción de OPEX (energía gratuita)

**Desventajas:**
- CAPEX muy alto (paneles + baterías)
- Espacio requerido grande (paneles)
- Intermitencia (depende del clima)

**Aplicación parcial (opcional):** Considerar en áreas de servicio remotas sin acceso a red eléctrica

**Costo estimado:** $8-10M USD (vs $5.8M USD Alternativa 2)

---

## 12. PLAN DE IMPLEMENTACIÓN

### 12.1 Fases de Implementación

| Fase | Actividad | Duración | Dependencias | Entregable |
|:-----|:----------|:---------|:-------------|:-----------|
| **Fase 1** | Diseño Eléctrico de Detalle | 3 meses | T03 aprobado | Diagramas unifilares, memorias de cálculo, T04 |
| **Fase 2** | Gestión de Acometidas MT | 6 meses | Diseño aprobado | Acometidas aprobadas por operadores |
| **Fase 3** | Adquisición de Equipos | 6 meses | T04, licitación | Transformadores, UPS, generadores |
| **Fase 4** | Instalación de Subestaciones | 12 meses | Edificios construidos, equipos disponibles | 75 subestaciones instaladas |
| **Fase 5** | Instalación de UPS y Generadores | 4 meses | Subestaciones operativas | Sistemas de respaldo |
| **Fase 6** | Pruebas y Comisionamiento | 2 meses | Instalación completa | Certificado RETIE |
| **Fase 7** | Puesta en Operación | 1 mes | Pruebas aprobadas | Sistema eléctrico operativo |

**Duración total:** 24 meses (con overlapping)

### 12.2 Hitos Críticos

- **H1:** Diseño eléctrico aprobado - Mes 3
- **H2:** Acometidas MT gestionadas con operadores - Mes 9
- **H3:** 50% de subestaciones instaladas - Mes 16
- **H4:** 100% de subestaciones instaladas - Mes 22
- **H5:** Certificado RETIE obtenido - Mes 24
- **H6:** Sistema eléctrico operativo - Mes 25

---

## 13. ESTIMACIÓN DE RECURSOS

### 13.1 Subestaciones y Transformadores CORREGIDO

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| **Subestaciones Principales** |
| Subestación CCO (500 kVA, seca) | 1 | $180,000 | $180,000 |
| Subestaciones Peajes (200 kVA, seca) | 2 | $80,000 | $160,000 |
| **Transformadores Distribución** |
| Transformadores Iluminación (15-30 kVA) | 13 | $8,000 | $104,000 |
| Transformadores ITS (30-50 kVA) | 30 | $12,000 | $360,000 |
| Transformadores Pesaje (50 kVA) | 3 | $12,000 | $36,000 |
| **Tableros** |
| Tableros generales (TGD) | 5 | $12,000 | $60,000 |
| Tableros secundarios áreas (sub-tableros) | 2 | $8,000 | $16,000 |
| Tableros distribución BT | 45 | $3,500 | $157,500 |
| **SUBTOTAL TRANSFORMACIÓN** | | | **$1,073,500** |

#### 🔴 **Corrección Arquitectónica:**

**Error en versión anterior (v1.0):**
- ❌ Incluía 2 transformadores de 100 kVA para áreas ($50K)
- ❌ Esto era arquitectónicamente incorrecto

**Versión corregida (v1.1):**
- ✅ **Áreas NO tienen transformadores propios**
- ✅ Se alimentan desde subestación del peaje (200 kVA tiene capacidad)
- ✅ Solo requieren sub-tablero ($8K c/u = $16K)
- **Ahorro:** $50K (transformadores) - $16K (sub-tableros) = **+$34,000 USD**

**Total transformadores:**
- v1.0 (error): 48 unidades (incluía 2 de áreas)
- v1.1 (correcto): **46 unidades** (3 subestaciones + 43 distribución)

### 13.2 Sistemas de Respaldo CORREGIDO

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| **Sistemas UPS (Energía Ininterrumpida)** |
| UPS CCO (100 kVA, N+1) | 2 | $70,000 | $140,000 |
| UPS Peajes (50 kVA, respaldo peaje+área) | 2 | $35,000 | $70,000 |
| UPS ITS distribuidos (3-5 kVA) | 30 | $2,500 | $75,000 |
| Baterías y mantenimiento UPS | Global | $45,000 | $45,000 |
| **Generadores de Emergencia** |
| Generador CCO (300 kW, diésel) | 1 | $120,000 | $120,000 |
| Generadores Peajes (150 kW, respalda peaje+área) | 2 | $80,000 | $160,000 |
| Tanques combustible (CCO 1,000L + Peajes 500L×2) | 3 | $15,000 | $45,000 |
| **Sistemas de Transferencia** |
| ATS (Automatic Transfer Switch) | 3 | $8,000 | $24,000 |
| Sistemas de conmutación manual | 5 | $2,000 | $10,000 |
| **SUBTOTAL RESPALDO** | | | **$689,000** |

#### 🔴 **Corrección Arquitectónica:**

**Error en versión anterior (v1.0):**
- ❌ Incluía 2 generadores de 50 kW para áreas ($70K)
- ❌ Incluía 6 ATS (debería ser solo 3)
- ❌ Incluía 6 tanques (debería ser 3)

**Versión corregida (v1.1):**
- ✅ **Áreas NO tienen generadores propios**
- ✅ El generador del peaje (150 kW) respalda peaje+área (90 kW total)
- ✅ 3 ATS (CCO + 2 peajes)
- ✅ 3 tanques principales (CCO + 2 peajes)
- **Ahorro:** $70K (generadores) + $24K (ATS) + $45K (tanques) = **+$139,000 USD**

**Capacidad validada:**
- Peaje Zambito: Generador 150 kW respalda 90 kW (peaje 50 + área 40) ✅
- Peaje Aguas Negras: Generador 150 kW respalda 90 kW ✅

### 13.3 Protección y Seguridad CORREGIDO

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| Sistema de Puesta a Tierra (SPT) | 50 | $3,000 | $150,000 |
| Pararrayos (CCO, peajes, subestaciones) | 10 | $4,500 | $45,000 |
| DPS (Dispositivos Protección Sobretensiones) | 50 | $1,500 | $75,000 |
| Interruptores diferenciales y protecciones | Global | $60,000 | $60,000 |
| Certificación RETIE | 1 | $80,000 | $80,000 |
| **SUBTOTAL PROTECCIÓN** | | | **$410,000** |

**Ajuste:** 75 SPT → **50 SPT** (eliminadas 25 SPT de "áreas independientes")  
**Ahorro:** -$75,000 USD

### 13.4 SCADA y Monitoreo

| Ítem | Costo (USD) |
|:-----|:------------|
| Software SCADA Eléctrico | $80,000 |
| Medidores electrónicos (kWh) con comunicación | $150,000 |
| Sensores y transductores | $60,000 |
| Integración con CCO | $50,000 |
| **SUBTOTAL SCADA** | **$340,000** |

### 13.5 Red Eléctrica BT

| Ítem | Cantidad | Costo (USD) |
|:-----|:---------|:------------|
| Cableado BT (Cu, THHN, ductos) | 50 km | $800,000 |
| Acometidas MT (gestión con operadores) | 5 | $250,000 |
| Canalizaciones eléctricas | Global | $180,000 |
| Instalación y mano de obra | Global | $320,000 |
| **SUBTOTAL RED BT** | | **$1,550,000** |

### 13.6 CAPEX Total Energía Eléctrica CORREGIDO

| Categoría | Costo (USD) |
|:----------|:------------|
| Subestaciones y Transformadores | $1,073,500 |
| Sistemas de Respaldo (UPS + Gen) | $689,000 |
| Protección y Seguridad (SPT, DPS, RETIE) | $410,000 |
| SCADA y Monitoreo | $340,000 |
| Red Eléctrica BT (cableado, acometidas) | $1,550,000 |
| Instalación e integración | $650,000 |
| Gestión de proyecto | $120,000 |
| **TOTAL CAPEX ENERGÍA** | **$4,832,500 USD** |

**Conversión COP (TRM 4,000):** COP 19,330,000,000 (~19.33 mil millones)

---

### 13.7 Comparación vs. Versión Anterior

| Concepto | v1.0 (14 áreas indep.) | v1.1 (2 áreas integradas) | Cambio |
|:---------|:----------------------|:--------------------------|:-------|
| **Transformadores** |
| Centros transf. áreas | 14 × $25K = $350K | $0 (integradas) | **-$350,000** |
| Tableros áreas | $0 (incluidos) | 2 × $8K = $16K | **+$16,000** |
| **Respaldo** |
| Generadores áreas | 14 × $35K = $490K | $0 (integradas) | **-$490,000** |
| ATS | 6 × $8K = $48K | 3 × $8K = $24K | **-$24,000** |
| Tanques combustible | 6 × $15K = $90K | 3 × $15K = $45K | **-$45,000** |
| **Protección** |
| SPT | 75 × $3K = $225K | 50 × $3K = $150K | **-$75,000** |
| **TOTAL CAMBIOS** | | | **-$968,000 USD** |

**Ahorro neto estimado:** -$968,000 USD (-17% del CAPEX total)

**Razón del ahorro MAYOR que en Telecomunicaciones:**
- Los transformadores y generadores son equipos COSTOSOS
- Cada generador 50 kW cuesta $35K (vs. switch $5K)
- La eliminación de 14 subestaciones pequeñas tiene impacto muy significativo

#### 🔴 **Nota de Ajuste Contractual - CAPEX:**
**Versión anterior:** $5,502,500 USD  
**Versión ajustada:** $4,739,000 USD  
**Reducción:** -$763,500 USD (-14%)  
**Detalle reducción:**
- Transformadores áreas: -$300,000
- Transformadores iluminación: -$96,000
- Generadores áreas: -$140,000
- ATS y tanques: -$107,000
- Tableros distribución: -$87,500
- Ajustes instalación: -$33,000

---

## 14. PRÓXIMOS PASOS

- [ ] Desarrollar diagramas unifilares detallados (MT y BT)
- [ ] Calcular caídas de tensión y cortocircuito
- [ ] Diseñar coordinación de protecciones
- [ ] Gestionar acometidas MT con operadores de red (Codensa, ESSA)
- [ ] Solicitar cotizaciones a proveedores:
  - Transformadores: ABB, Siemens, Schneider
  - UPS: APC, Eaton, Vertiv
  - Generadores: Caterpillar, Cummins, Kohler
- [ ] Elaborar especificaciones técnicas (T04)
- [ ] Tramitar Certificado RETIE (proceso 6-12 meses)
- [ ] Estimar costos con cotizaciones reales (T05)

---

## 15. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial del sistema de energía eléctrica |

---

**Versión:** 1.1 ✅ **AJUSTE CONTRACTUAL APLICADO**  
**Estado:** ✅ Arquitectura Validada Contractualmente  
**Fecha:** 20/10/2025  
**Responsable:** Ingeniero Eléctrico / Ingeniero de Potencia  
**Próximo documento:** T04 - Especificaciones Técnicas del Sistema de Energía Eléctrica  

---

**CHANGELOG:**
| Versión | Fecha | Descripción |
|:--------|:------|:------------|
| v1.0 | 17/10/2025 | Arquitectura conceptual inicial del sistema de energía eléctrica |
| **v1.1** | **20/10/2025** | **Rediseño arquitectónico:** Áreas integradas a peajes (comparten subestación 200kVA y generador 150kW). Eliminados: 2 transf. áreas, 2 gen. áreas, 25 SPT. CAPEX -$968K (-17%) |

---

**Fin del documento - T03 Arquitectura Conceptual Sistema de Energía Eléctrica**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

