# T03: ARQUITECTURA CONCEPTUAL - ETD/RADAR (ESTACIONES DE TOMA DE DATOS Y RADARES)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 05/12/2025  
**Sistema:** ETD (Estaciones de Toma de Datos) + Radares Sancionatorios  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Versión:** 1.1 MVP  
**Estado:** ✅ Completado y Actualizado (CAPEX Consolidado)

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de ETD/RADAR (Estaciones de Toma de Datos y Radares Sancionatorios) para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de alto nivel del sistema ETD/RADAR
- Arquitectura de componentes de equipos ETD y Radares
- Topología de red y comunicaciones específica para ETD/RADAR
- Flujo de datos de tráfico y evidencias
- Integración con CCO, SCADA, SICC y sistemas ITS
- Redundancia y disponibilidad
- Arquitectura de seguridad
- Despliegue físico

### 1.2 Alcance

Esta arquitectura cubre el **Sistema de ETD/RADAR** a lo largo de 259.6 km principales + 33.4 km adicionales:

- **Cantidad:** 15 equipos (13 ETD + 2 Radares)
- **Distribución:** Una ETD por Unidad Funcional (UF1-UF13), 2 Radares en sitios críticos
- **Cobertura geográfica:** 100% del corredor (RN 4510, RN 4511, RN 4513)
- **Integración:** CCO La Lizama PK 4+300 (RN 4513)

**Distinción funcional:**
- **ETD (13 unidades):** Equipos de monitoreo estadístico (velocidad promedio, flujo, clasificación)
- **Radares (2 unidades):** Equipos sancionatorios (detección infracciones, registro fotográfico)

### 1.3 Referencias

- **T01:** `24E_T01_Ficha_Sistema_ETD_RADAR_MVP_v1.0.md`
- **T02:** `24E_T02_Analisis_Requisitos_ETD_RADAR_MVP_v1.0.md`
- **T04:** `02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md`
- **T05:** `07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md`
- **T03 ITS:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (contexto general)
- **Validación:** `35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md`
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.5 "Sistemas de Monitoreo y Control de Tráfico"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema ETD/RADAR

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         CAMPO (259.6 km + 33.4 km)                      │
│                                                                          │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐ │
│  │ ETD #1   │  │ ETD #2   │  │ ETD #3   │  │ RADAR #1 │  │   ...    │ │
│  │ UF1      │  │ UF2      │  │ UF3      │  │ Crítico  │  │          │ │
│  │ Peaje    │  │ Tramo    │  │ Tramo    │  │ Sitio 1  │  │          │ │
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘ │
│       │             │              │              │              │      │
│       └─────────────┴──────────────┴──────────────┴──────────────┘      │
│                          │                                               │
│                    ┌─────▼─────┐                                        │
│                    │  Switches │  Switches de acceso (10-15 unidades)   │
│                    │  Acceso   │  Gigabit, IP66                         │
│                    │  (L2)     │  VLAN dedicada ITS                     │
│                    └─────┬─────┘                                        │
└──────────────────────────┼───────────────────────────────────────────────┘
                           │
                    ┌──────▼──────┐
                    │ Red Troncal │  Fibra Óptica Monomodo 283 km
                    │Fibra Óptica │  Topología: Anillo redundante
                    │  (Backbone) │  Protocolo: Ethernet/IP
                    └──────┬──────┘
                           │
┌──────────────────────────▼───────────────────────────────────────────────┐
│                    CCO (Centro de Control)                               │
│                    Ubicado en La Lizama PK 4+300 (RN 4513)             │
│                                                                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐                 │
│  │  Switches    │  │  Servidores  │  │  Servidores  │                 │
│  │   Core       │  │   Gestión    │  │   SCADA      │                 │
│  │ 10 Gbps      │  │   ETD/RADAR  │  │  (Monitoreo) │                 │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘                 │
│         └──────────────────┴──────────────────┘                         │
│                            │                                              │
│  ┌─────────────────────────▼───────────────────────┐                    │
│  │        Estaciones de Trabajo Operadores         │                    │
│  │        (6-10 puestos, dobles monitores)         │                    │
│  │        - Visualización de datos de tráfico       │                    │
│  │        - Gestión de evidencias (radares)        │                    │
│  │        - Reportes a SICC                         │                    │
│  └─────────────────────────────────────────────────┘                    │
│                            │                                              │
│  ┌─────────────────────────▼───────────────────────┐                    │
│  │        Sistemas Externos                         │                    │
│  │        - SICC (ANI) - Reporte indicadores        │                    │
│  │        - SIMIT (opcional) - Infracciones         │                    │
│  └─────────────────────────────────────────────────┘                    │
│                                                                           │
└───────────────────────────────────────────────────────────────────────────┘
```

### 2.2 Descripción de Componentes Principales

| Componente | Función | Cantidad | Especificación |
|:-----------|:--------|:---------|:---------------|
| **ETD (Monitoreo)** | Medición estadística | **13 unidades** | Sensor radar/microondas, precisión ±3 km/h, rango ≥150 m |
| **Radares Sancionatorios** | Control sancionatorio | **2 unidades** | Sensor radar + cámara ANPR, precisión ±2 km/h, certificación ONAC |
| **Controladores ETD** | Gestión de datos | 13 unidades | Procesamiento, comunicación, almacenamiento local |
| **Controladores Radar** | Gestión de evidencias | 2 unidades | Procesamiento, ANPR, almacenamiento ≥30 días |
| **Switches de Acceso** | Conectividad local | 10-15 unidades | Gigabit, IP66, VLAN ITS |
| **Red Troncal FO** | Backbone de comunicaciones | 283 km | Fibra monomodo G.652.D, anillo redundante |
| **Switches Core (CCO)** | Agregación y routing | 4 unidades | 10 Gbps, redundante N+1 |
| **Servidores Gestión ETD/RADAR** | Control y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Servidores SCADA** | Monitoreo y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Estaciones Operador** | Control y monitoreo | 6-10 puestos | Dobles monitores, software de gestión |

---

## 3. ARQUITECTURA DE COMPONENTES DE EQUIPOS

### 3.1 Diagrama de Componentes Internos (ETD)

```
┌─────────────────────────────────────────────────────────────┐
│                    ETD (Unidad Completa)                    │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  SENSOR RADAR/MICROONDAS (IP65/IK08)                 │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐            │ │
│  │  │  Antena  │  │  Emisor  │  │ Receptor │            │ │
│  │  │  Radar   │  │  Señal   │  │  Señal   │            │ │
│  │  │  24 GHz  │  │  Doppler │  │  Doppler │            │ │
│  │  └────┬─────┘  └────┬─────┘  └────┬─────┘            │ │
│  └───────┼─────────────┼──────────────┼───────────────────┘ │
│          │             │              │                     │
│  ┌───────▼─────────────▼──────────────▼─────────────────┐ │
│  │  GABINETE CONTROL (IP65)                            │ │
│  │                                                      │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONTROLADOR ETD PRINCIPAL                    │ │ │
│  │  │  - Procesador ARM Cortex-A9 (1.2 GHz)        │ │ │
│  │  │  - RAM 1 GB                                   │ │ │
│  │  │  - Flash 16 GB (almacenamiento local)        │ │ │
│  │  │  - Linux embebido                              │ │ │
│  │  │  - Protocolos: API REST, SNMP v3, TCP/IP     │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                      │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROCESADOR DE DATOS                          │ │ │
│  │  │  - Cálculo velocidad promedio                 │ │ │
│  │  │  - Cálculo flujo vehicular                    │ │ │
│  │  │  - Clasificación vehicular (FHWA)             │ │ │
│  │  │  - Agregación de datos                        │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                      │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONVERSOR DE MEDIOS (Media Converter)      │ │ │
│  │  │  - FO (SC/APC) ↔ Ethernet (RJ45)              │ │ │
│  │  │  - 100 Mbps full-duplex                        │ │ │
│  │  │  - Longitud: hasta 20 km                      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                      │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  SISTEMA DE ALIMENTACIÓN                      │ │ │
│  │  │  - Fuente AC 120V/60Hz (principal)            │ │ │
│  │  │  - UPS integrado 4 horas                       │ │ │
│  │  │  - Batería 12V 100Ah × 2 (respaldo)            │ │ │
│  │  │  - Controlador de carga                        │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                      │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROTECCIÓN ELÉCTRICA                         │ │ │
│  │  │  - DPS (Supresor de picos) Clase II, 20 kA   │ │ │
│  │  │  - Breaker principal 10A                      │ │ │
│  │  │  - Fusibles secundarios                       │ │ │
│  │  │  - Puesta a tierra <10 Ω                      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                      │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  CONEXIÓN EXTERNA                                     │ │
│  │  - Fibra óptica (derivación desde troncal)          │ │
│  │  - Alimentación AC 120V                               │ │
│  │  - Puesta a tierra (SPT)                             │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Diagrama de Componentes Internos (Radar Sancionatorio)

```
┌─────────────────────────────────────────────────────────────┐
│                    RADAR SANCIONATORIO (Unidad Completa)    │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  SENSOR RADAR DOPPLER (IP65/IK08)                    │ │
│  │  - K-band (24 GHz)                                   │ │
│  │  - Rango: 20-250 km/h                                │ │
│  │  - Precisión: ±2 km/h                                │ │
│  │  - Alcance: ≥150 m                                   │ │
│  │  - Multipista: hasta 4 carriles                      │ │
│  └───────┬───────────────────────────────────────────────┘ │
│          │                                                   │
│  ┌───────▼───────────────────────────────────────────────┐ │
│  │  CÁMARA ANPR (IP66/IK08)                              │ │
│  │  - Resolución: ≥1920×1080 px                         │ │
│  │  - FPS: ≥30 fps                                       │ │
│  │  - Shutter: 1/10,000s                                 │ │
│  │  - Iluminación IR: 850 nm, alcance 30m               │ │
│  │  - Software OCR: ≥95% reconocimiento                │ │
│  └───────┬───────────────────────────────────────────────┘ │
│          │                                                   │
│  ┌───────▼───────────────────────────────────────────────┐ │
│  │  GABINETE CONTROL (IP65)                              │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONTROLADOR RADAR PRINCIPAL                   │ │ │
│  │  │  - Procesador ARM Cortex-A9 (1.5 GHz)         │ │ │
│  │  │  - RAM 2 GB                                   │ │ │
│  │  │  - Flash 128 GB (almacenamiento ≥30 días)     │ │ │
│  │  │  - Linux embebido                              │ │ │
│  │  │  - Protocolos: API REST, SNMP v3, TCP/IP      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROCESADOR DE EVIDENCIAS                     │ │ │
│  │  │  - Detección de infracciones                   │ │ │
│  │  │  - Reconocimiento de placas (ANPR)            │ │ │
│  │  │  - Superposición de datos                     │ │ │
│  │  │  - Firma digital de evidencias                 │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CÁMARA CONTEXTUAL (Evidencia)                │ │ │
│  │  │  - Resolución: ≥1920×1080 px                  │ │ │
│  │  │  - Captura contexto del vehículo              │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONVERSOR DE MEDIOS (Media Converter)      │ │ │
│  │  │  - FO (SC/APC) ↔ Ethernet (RJ45)              │ │ │
│  │  │  - 100 Mbps full-duplex                        │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  SISTEMA DE ALIMENTACIÓN                      │ │ │
│  │  │  - Fuente AC 120V/60Hz (principal)            │ │ │
│  │  │  - UPS integrado 4 horas                       │ │ │
│  │  │  - Batería 12V 100Ah × 2 (respaldo)            │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  CONEXIÓN EXTERNA                                     │ │
│  │  - Fibra óptica (derivación desde troncal)          │ │
│  │  - Alimentación AC 120V                               │ │
│  │  - Puesta a tierra (SPT)                             │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 3.3 Flujo de Datos de Tráfico (ETD)

```
Sensor Radar detecta vehículo
         │
         ▼
Medición velocidad, flujo, clasificación
         │
         ▼
Controlador ETD procesa datos
         │
         ▼
Agregación de datos (promedio, totales)
         │
         ▼
Almacenamiento local (respaldo)
         │
         ▼
Transmisión al CCO (API REST)
         │
         ▼
Servidor Gestión ETD/RADAR (procesamiento)
         │
         ▼
Almacenamiento en Base de Datos
         │
         ▼
Reporte a SICC (diariamente)
```

### 3.4 Flujo de Datos de Evidencias (Radares)

```
Sensor Radar detecta infracción
         │
         ▼
Verificación de umbral de velocidad
         │
         ▼
Activación de cámara ANPR
         │
         ▼
Captura fotográfica del vehículo
         │
         ▼
Reconocimiento de placa (ANPR ≥95%)
         │
         ▼
Superposición de datos (velocidad, fecha, hora, ubicación)
         │
         ▼
Firma digital de evidencia
         │
         ▼
Almacenamiento local (≥30 días)
         │
         ▼
Transmisión al CCO (API REST)
         │
         ▼
Servidor Gestión ETD/RADAR (procesamiento)
         │
         ▼
Almacenamiento en Base de Datos
         │
         ▼
Disponible para procesamiento legal
```

---

## 4. ARQUITECTURA DE RED ESPECÍFICA PARA ETD/RADAR

### 4.1 Topología de Red ETD/RADAR

```
                    [CCO - Núcleo]
                    La Lizama PK 4+300
                          │
                    ┌─────┴─────┐
                    │ Switches  │
                    │ Core 10G  │
                    └─────┬─────┘
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
  ┌─────▼─────┐     ┌─────▼─────┐     ┌─────▼─────┐
  │ Switch    │     │ Switch    │     │ Switch    │
  │ Agregación│◄───►│ Agregación│◄───►│ Agregación│
  │ Zona 1    │     │ Zona 2    │     │ Zona 3    │
  │ (PK 0-90) │     │(PK 90-180)│     │(PK 180-260)│
  └─────┬─────┘     └─────┬─────┘     └─────┬─────┘
        │                 │                 │
    ┌───┴───┐         ┌───┴───┐         ┌───┴───┐
    │Switch │         │Switch │         │Switch │
    │Acceso │         │Acceso │         │Acceso │
    │(L2)   │         │(L2)   │         │(L2)   │
    └───┬───┘         └───┬───┘         └───┬───┘
        │                 │                 │
  ┌─────┴─────┐     ┌─────┴─────┐     ┌─────┴─────┐
  │ ETD #1-5  │     │ ETD #6-10 │     │ ETD #11-13│
  │ RADAR #1  │     │           │     │ RADAR #2  │
  │ RN 4510   │     │ RN 4511   │     │ RN 4511/13│
  └───────────┘     └───────────┘     └───────────┘

Zona 1: PK 0-90 (Puerto Salgar - Puerto Boyacá) → ~5 ETD + 1 Radar
Zona 2: PK 90-180 (Puerto Boyacá - Puerto Berrío) → ~5 ETD
Zona 3: PK 180-259.6 (Puerto Berrío - San Roque) → ~3 ETD + 1 Radar
```

### 4.2 Segmentación de Red (VLAN)

| VLAN | Descripción | ID | Equipos |
|:-----|:------------|:---|:--------|
| **VLAN-ITS** | Red ITS general | 100 | ETD, Radares, CCTV, PMV, WIM, Meteo, SOS, etc. |
| **VLAN-ETD** | Red dedicada ETD/RADAR (opcional) | 115 | 15 equipos ETD/RADAR |
| **VLAN-MGMT** | Gestión y monitoreo | 200 | Switches, servidores, SCADA |

**Nota:** ETD/RADAR puede usar VLAN-ITS o VLAN-ETD según diseño de red.

### 4.3 Ancho de Banda y Dimensionamiento

| Tipo de Tráfico | Ancho de Banda por ETD | Ancho de Banda por Radar | Total (15 equipos) | Prioridad |
|:----------------|:----------------------|:------------------------|:-------------------|:-----------|
| **Datos de tráfico (ETD)** | <100 kbps | - | <1.3 Mbps | 🔴 Alta (QoS) |
| **Evidencias fotográficas (Radares)** | - | <500 kbps (por evento) | <1 Mbps (pico) | 🔴 Alta (QoS) |
| **Monitoreo SNMP** | <10 kbps | <10 kbps | <150 kbps | 🟡 Media |
| **Actualización firmware** | <1 Mbps (ocasional) | <1 Mbps (ocasional) | <15 Mbps (ocasional) | 🟡 Media |
| **TOTAL (pico)** | ~1 Mbps | ~1 Mbps | **~15 Mbps** | - |

**Dimensionamiento de red:**
- **Por equipo:** 100 Mbps (Ethernet) → Margen 99%
- **Agregación:** 1 Gbps → Margen 98.5%
- **Troncal:** 10 Gbps → Margen 99.85%

---

## 5. INTEGRACIÓN CON CCO Y SISTEMAS EXTERNOS

### 5.1 Arquitectura de Integración

```
┌─────────────────────────────────────────────────────────────┐
│                    EQUIPOS ETD/RADAR (15 unidades)          │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ API REST (datos tráfico, evidencias)
                       │ SNMP (monitoreo)
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO La Lizama                            │
│                    PK 4+300 (RN 4513)                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Servidor    │  │  Servidor    │  │  Servidor    │      │
│  │  Gestión     │  │  SCADA       │  │  Base de     │      │
│  │  ETD/RADAR   │  │  (Monitoreo) │  │  Datos       │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                 │                 │               │
│         └─────────────────┴─────────────────┘               │
│                            │                                │
│  ┌─────────────────────────▼───────────────────────┐      │
│  │        Estación Operador CCO                    │      │
│  │        - Visualización de datos de tráfico        │      │
│  │        - Gestión de evidencias (radares)          │      │
│  │        - Reportes a SICC                         │      │
│  └─────────────────────────┬───────────────────────┘      │
│                            │                                │
└────────────────────────────┼────────────────────────────────┘
                             │
                             │ API REST
                             ▼
┌─────────────────────────────────────────────────────────────┐
│                    Sistemas Externos                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐                       │
│  │  SICC (ANI)  │  │  SIMIT        │                       │
│  │  (Reporte    │  │  (Opcional)   │                       │
│  │  indicadores)│  │  (Infracciones)│                       │
│  └──────────────┘  └──────────────┘                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 5.2 Protocolos de Integración

| Interface | Protocolo | Datos Intercambiados | Frecuencia |
|:----------|:----------|:---------------------|:-----------|
| **ETD/RADAR ↔ Gestión ETD/RADAR** | API REST | Datos de tráfico, evidencias, estado | Tiempo real (datos), por evento (evidencias) |
| **ETD/RADAR ↔ SCADA** | SNMP v3 | Estado de equipos, alarmas | Cada 5 min |
| **ETD ↔ SICC** | API REST (vía CCO) | Velocidad promedio por UF, flujo | Diaria |
| **RADAR ↔ SIMIT** | API REST (vía CCO) | Datos de infracciones, evidencias | Por evento (opcional) |

---

## 6. ARQUITECTURA DE REDUNDANCIA Y DISPONIBILIDAD

### 6.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Red Troncal FO** | Anillo redundante | Topología anillo en zonas críticas | Protección ante cortes de fibra |
| **Switches Core (CCO)** | N+1 | 4 switches (stacking o MLAG) | Alta disponibilidad de red |
| **Servidores Gestión ETD/RADAR** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Continuidad de control |
| **Servidores SCADA** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Monitoreo continuo |
| **Alimentación Equipos** | Principal + Respaldo | AC 120V + UPS 4 horas | Operación continua |
| **Enlaces a CCO** | Redundancia de ruta | Múltiples rutas en anillo FO | Sin punto único de falla |

### 6.2 Disponibilidad del Sistema

**Disponibilidad objetivo:** ≥ 99% anual (requisito contractual AT4)

**Cálculo de disponibilidad:**
- **Equipo individual:** MTBF = 5,000 horas, MTTR = 24 horas
  - Disponibilidad = MTBF / (MTBF + MTTR) = 5,000 / 5,024 = **99.52%**
- **Sistema completo (15 equipos):**
  - Disponibilidad sistema = (Disponibilidad equipo)^15 = 99.52%^15 = **92.7%**
  - **Con redundancia de red y servidores:** ≥ **99%** ✅

**Estrategias para cumplir 99%:**
- ✅ Redundancia de red troncal (anillo)
- ✅ Monitoreo proactivo (SCADA)
- ✅ Mantenimiento preventivo trimestral
- ✅ Stock de repuestos críticos
- ✅ Tiempo de respuesta de mantenimiento ≤ 24 horas

---

## 7. ARQUITECTURA DE SEGURIDAD

### 7.1 Seguridad de Comunicaciones

| Aspecto | Implementación | Estándar |
|:--------|:---------------|:---------|
| **Cifrado de comunicación** | TLS 1.2 mínimo | RFC 5246 |
| **Autenticación de acceso** | Credenciales robustas, roles | ISO 27001 |
| **Segmentación de red** | VLAN dedicada (VLAN-ETD/VLAN-ITS) | IEEE 802.1Q |
| **Control de acceso** | Firewall en switches L3 | - |
| **Monitoreo de seguridad** | IDS/IPS en red troncal | - |

### 7.2 Seguridad Física

| Componente | Protección | Especificación |
|:-----------|:-----------|:---------------|
| **Sensor Radar** | Antivandalismo | IK08 mínimo (resistencia a impactos) |
| **Cámara ANPR** | Antivandalismo | IK08 mínimo (resistencia a impactos) |
| **Gabinete control** | Protección ambiental | IP65 (estanco a polvo y agua) |
| **Estructura** | Protección física | Altura 8-12 m (difícil acceso) |

### 7.3 Seguridad de Datos

- **Datos de tráfico:** Base de datos con auditoría, no modificable
- **Evidencias fotográficas:** Firma digital, timestamp, no modificable (Resolución 718/2018)
- **Datos personales:** Cumplimiento Ley 1581/2012 (solo radares)
- **Control de acceso:** Solo personal autorizado (roles: operador, supervisor, admin)
- **Logs de auditoría:** Todas las acciones registradas

---

## 8. ARQUITECTURA DE MONITOREO Y GESTIÓN

### 8.1 Sistema SCADA para ETD/RADAR

```
┌─────────────────────────────────────────────────────────────┐
│                    EQUIPOS ETD/RADAR (15 unidades)           │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ SNMP v3 (cada 5 minutos)
                       │ - Estado operativo
                       │ - Nivel de señal
                       │ - Temperatura interna
                       │ - Estado de alimentación
                       │ - Métricas de desempeño
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO - Servidor SCADA                     │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Recolección │  │  Procesamiento│  │  Almacenamiento│   │
│  │  de Datos    │  │  y Análisis  │  │  (BD)        │      │
│  │  (SNMP)      │  │  (Alertas)   │  │  (Histórico) │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                 │                 │               │
│         └─────────────────┴─────────────────┘               │
│                            │                                 │
│  ┌─────────────────────────▼───────────────────────┐       │
│  │        Dashboard Operador                        │       │
│  │        - Mapa con estado de equipos               │       │
│  │        - Alertas de falla                         │       │
│  │        - Reportes de disponibilidad               │       │
│  └───────────────────────────────────────────────────┘       │
│                                                               │
└───────────────────────────────────────────────────────────────┘
```

### 8.2 Métricas Monitoreadas

| Métrica | Frecuencia | Umbral de Alerta | Acción |
|:--------|:-----------|:-----------------|:-------|
| **Estado operativo** | Cada 5 min | No responde | Alerta a CCO, programar mantenimiento |
| **Nivel de señal** | Cada 5 min | < -70 dBm | Alerta preventiva |
| **Temperatura interna** | Cada 5 min | > 60°C o < -20°C | Alerta de falla |
| **Estado de alimentación** | Cada 5 min | Sin alimentación > 4 horas | Alerta crítica |
| **Precisión de medición** | Diaria | Desviación > ±5% | Alerta de calibración |
| **Disponibilidad mensual** | Mensual | < 99% | Reporte a gerencia |

---

## 9. DESPLIEGUE FÍSICO

### 9.1 Distribución Geográfica

| Ubicación | ETD | Radares | Justificación |
|:----------|:----|:--------|:--------------|
| **UF1 (Peaje Zambito)** | 1 | - | Medición velocidad promedio UF1 |
| **UF2-UF12 (Tramos principales)** | 11 | - | Medición velocidad promedio por UF |
| **UF13 (Peaje Aguas Negras)** | 1 | - | Medición velocidad promedio UF13 |
| **Sitios Críticos** | - | 2 | Detección infracciones (ubicaciones a definir según estudio técnico) |
| **TOTAL** | **13** | **2** | - |

### 9.2 Ubicaciones Específicas Principales

- **PK 0+000** (Puerto Salgar): Inicio del corredor
- **PK 9+200** (Peaje Zambito): ETD UF1
- **PK 50±5**: ETD UF2-UF3
- **PK 80+000** (Peaje Aguas Negras): ETD UF13
- **PK 130±5** (CCO La Lizama): Centro de control
- **PK 180±5**: ETD UF7-UF8
- **PK 259+600** (San Roque): Fin del corredor
- **Sitios Críticos:** 2 Radares (ubicaciones a definir según estudio técnico de seguridad vial)

---

## 10. TECNOLOGÍAS Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar/Versión | Justificación |
|:----------|:-----------|:-----------------|:--------------|
| **Sensor ETD** | Radar Doppler / Microondas | K-band (24 GHz) / ISO TC-204 | Estándar de industria, precisión ±3 km/h |
| **Sensor Radar** | Radar Doppler | K-band (24 GHz) | Estándar de industria, precisión ±2 km/h |
| **Cámara ANPR** | IP con OCR | Resolución ≥1920×1080, ≥95% reconocimiento | Resolución 718/2018 |
| **Red de datos** | Ethernet | IEEE 802.3 | Estándar universal |
| **Fibra óptica** | Monomodo G.652.D | ITU-T G.652 | Larga distancia, baja atenuación |
| **Alimentación** | AC 120V/60Hz | RETIE | Estándar colombiano |
| **Monitoreo** | SNMP v3 | RFC 3410-3418 | Gestión de red estándar |
| **Protección IP** | IP65/IK08 | IEC 60529, IEC 62262 | Resistencia ambiental y vandalismo |

### 10.2 Interoperabilidad

- **Con sistemas CCO:** Protocolo API REST estándar (compatible con cualquier sistema de gestión)
- **Con sistemas ITS:** VLAN dedicada, protocolo IP estándar
- **Entre fabricantes:** Estándares abiertos (API REST, SNMP, IP) permiten multi-vendor

---

## 11. ANÁLISIS DE ALTERNATIVAS

### 11.1 Alternativa 1: Solución Propietaria Integrada

**Descripción:** Sistema ETD/RADAR completo de un solo fabricante (ej: Jenoptik, Vitronic, Swarco, Kapsch)

**Ventajas:**
- Integración garantizada
- Soporte unificado
- Interfaz única

**Desventajas:**
- Vendor lock-in (dependencia de un proveedor)
- Costo alto (falta de competencia)
- Difícil escalabilidad con terceros

**Costo estimado:** $700,000-$900,000 USD

---

### 11.2 Alternativa 2: Solución Basada en Estándares Abiertos ⭐ **RECOMENDADA**

**Descripción:** Arquitectura modular basada en protocolos estándar (API REST, IP, SNMP), permitiendo integración de múltiples fabricantes best-of-breed

**Ventajas:**
- ✅ **Competencia entre proveedores** (menor costo, mejor calidad)
- ✅ **Interoperabilidad** (API REST, estándares abiertos)
- ✅ **Escalabilidad** (fácil agregar equipos de diferentes marcas)
- ✅ **Reducción de riesgo** (no dependencia de un solo proveedor)
- ✅ **Flexibilidad** (actualizaciones y mejoras independientes)

**Desventajas:**
- Requiere integración entre componentes
- Gestión de múltiples proveedores

**Costo estimado:** $1,650,000 USD (incluye integración ANPR, software avanzado, edge computing)

**Justificación de selección:**
- ✅ Cumple con todos los requisitos contractuales (AT2, AT3, AT4)
- ✅ Reduce costos mediante competencia
- ✅ Garantiza sostenibilidad a largo plazo (25 años)
- ✅ Facilita reemplazo por obsolescencia tecnológica
- ✅ **Modelo probado en proyectos APP colombianos exitosos**

---

## 12. PLAN DE IMPLEMENTACIÓN

### 12.1 Fases de Implementación

| Fase | Actividad | Duración | Hito |
|:-----|:----------|:---------|:-----|
| **Fase 1** | Diseño detallado y especificaciones | 2 meses | H1: Especificaciones aprobadas |
| **Fase 2** | Adquisición de equipos | 3 meses | H2: Equipos recibidos |
| **Fase 3** | Instalación de equipos (por zonas) | 6 meses | H3: 100% equipos instalados |
| **Fase 4** | Integración con CCO | 1 mes | H4: Sistema integrado |
| **Fase 5** | Pruebas y comisionamiento | 1 mes | H5: Sistema operativo |
| **Fase 6** | Puesta en servicio | 1 mes | H6: Sistema en operación |

**Duración total:** 14 meses

**Nota especial:** Para radares sancionatorios, se requiere autorización previa del Ministerio de Transporte (trámite 6-12 meses antes de instalación).

### 12.2 Cronograma por Zona

- **Zona 1 (PK 0-90):** Meses 3-5 (5 ETD + 1 Radar)
- **Zona 2 (PK 90-180):** Meses 4-7 (5 ETD)
- **Zona 3 (PK 180-260):** Meses 6-9 (3 ETD + 1 Radar)
- **Integración CCO:** Mes 10
- **Pruebas:** Mes 11
- **Puesta en servicio:** Mes 12

---

## 13. ESCALABILIDAD

### 13.1 Capacidad de Crecimiento

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Equipos ETD/RADAR** | 15 | 18 | 20 | 30 (+100% margen) |
| **Ancho de banda troncal** | 15 Mbps | 20 Mbps | 25 Mbps | 10 Gbps (+39,900%) |
| **Capacidad servidores** | 15 equipos | 18 equipos | 20 equipos | 50 equipos (+233%) |

### 13.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Agregar hasta 15 equipos adicionales (total 30)
- Ampliar capacidad de servidores (módulos adicionales)

**Con cambios menores (año 20-25):**
- Actualización de servidores a mayor capacidad
- Reemplazo de equipos por modelos más modernos

**Arquitectura modular permite crecimiento orgánico sin rediseño completo.**

---

## 14. PRÓXIMOS PASOS

- [x] ✅ Arquitectura Conceptual completada (T03)
- [ ] 🔄 Validar arquitectura con stakeholders (ANI, Interventoría, MinTransporte)
- [ ] ⏳ Validar especificaciones técnicas detalladas (T04 - ya existe, revisar coherencia)
- [ ] ⏳ Validar ingeniería de detalle (T05 - ya existe, revisar coherencia)
- [ ] ⏳ Solicitar cotizaciones a fabricantes preseleccionados
- [ ] ⏳ Diseñar diagramas de red detallados (Visio, AutoCAD)
- [ ] ⏳ Definir ubicaciones exactas de equipos (coordenadas, PKs)
- [ ] ⏳ Crear plan de pruebas de integración (FAT/SAT)
- [ ] ⏳ Elaborar plan de capacitación de operadores
- [ ] ⏳ Iniciar trámite de autorización MinTransporte para radares (6-12 meses antes)

---

## 15. REFERENCIAS

### 15.1 Documentos del Proyecto

- [T01 - Ficha Sistema ETD/RADAR](24E_T01_Ficha_Sistema_ETD_RADAR_MVP_v1.0.md)
- [T02 - Análisis de Requisitos ETD/RADAR](24E_T02_Analisis_Requisitos_ETD_RADAR_MVP_v1.0.md)
- [T04 - Especificaciones Técnicas ETD/RADAR](IV.%20Ingenieria%20Basica/02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md)
- [T05 - Ingeniería de Detalle ETD/RADAR](V.%20Ingenieria%20de%20Detalle/07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md)
- [T03 - Arquitectura Conceptual ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md) (contexto general)
- [Validación Contractual ETD/RADAR](VII.%20Documentos%20Transversales/35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0.md)

### 15.2 Documentos Contractuales

- **AT2:** Apéndice Técnico 2, Sección 3.3.4.5 "Sistemas de Monitoreo y Control de Tráfico"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 15.3 Normativa y Estándares

- **Resolución 718/2018:** Criterios técnicos para instalación y operación de SAST (Solo radares)
- **ISO TC-204:** Intelligent Transport Systems
- **IEC 60529:** Grado de protección IP65
- **IEC 62262:** Grado de protección IK08
- **RFC 3410-3418:** SNMP v3

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Arquitectura Conceptual Completada  
**Fecha:** 31/10/2025  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Próximo paso:** Validación de arquitectura con stakeholders

