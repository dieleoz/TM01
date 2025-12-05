# T03: ARQUITECTURA CONCEPTUAL - WIM (SISTEMA DE PESAJE EN MOVIMIENTO)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 05/12/2025  
**Sistema:** WIM - Weigh In Motion (Sistema de Pesaje Dinámico y Estático)  
**Responsable:** Ingeniero Civil / Arquitecto de Sistemas  
**Versión:** 1.1 MVP  
**Estado:** ✅ Completado y Actualizado (CAPEX Consolidado)

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Pesaje WIM (Weigh In Motion) para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de alto nivel del sistema WIM
- Arquitectura de componentes de plataformas WIM y estáticas
- Topología de red y comunicaciones específica para WIM
- Flujo de datos de pesaje
- Integración con CCO, SCADA, Policía de Carreteras y sistemas ITS
- Redundancia y disponibilidad
- Arquitectura de seguridad
- Despliegue físico

### 1.2 Alcance

Esta arquitectura cubre el **Sistema de Pesaje WIM** en PR4+0100 RN 4513:

- **Cantidad:** 1 estación bidireccional (4 plataformas: 2 WIM + 2 estáticas)
- **Distribución:** 1 plataforma WIM + 1 plataforma estática por sentido
- **Cobertura geográfica:** Control permanente en estación fija + móviles eventuales
- **Integración:** CCO La Lizama PK 4+300 (RN 4513)

**Configuración:**
- **2 Plataformas WIM (Dinámicas):** 1 por sentido - Pesaje sin detención
- **2 Plataformas Estáticas:** 1 por sentido - Pesaje de precisión
- **Total: 4 plataformas** (1 estación bidireccional)

### 1.3 Referencias

- **T01:** `24F_T01_Ficha_Sistema_WIM_MVP_v1.0.md`
- **T02:** `24F_T02_Analisis_Requisitos_WIM_MVP_v1.0.md`
- **T04:** `05_T04_Especificaciones_Tecnicas_Pesaje_WIM_v1.0.md`
- **T05:** `10_T05_Ingenieria_Detalle_WIM_v1.0.md`
- **T03 ITS:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (contexto general)
- **Validación:** `24_VALIDACION_CONTRACTUAL_PESAJE_v1.0.md`
- **AT1:** Apéndice Técnico 1, Adenda 4, páginas 46-47 "Estaciones de Pesaje"
- **AT2:** Apéndice Técnico 2, Sección 3.3.9 "Sistemas de Pesaje"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema WIM

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    ESTACIÓN DE PESAJE (PR4+0100 RN 4513)                │
│                    Bidireccional (4 plataformas)                        │
│                                                                          │
│  ┌──────────────────────────┐      ┌──────────────────────────┐        │
│  │   SENTIDO 1               │      │   SENTIDO 2               │        │
│  │                           │      │                           │        │
│  │  ┌─────────────────────┐  │      │  ┌─────────────────────┐  │        │
│  │  │ Plataforma WIM #1   │  │      │  │ Plataforma WIM #2   │  │        │
│  │  │ (Dinámica)          │  │      │  │ (Dinámica)          │  │        │
│  │  │ Pre-selección       │  │      │  │ Pre-selección       │  │        │
│  │  └──────┬──────────────┘  │      │  └──────┬──────────────┘  │        │
│  │         │                  │      │         │                  │        │
│  │  ┌──────▼──────────────┐  │      │  ┌──────▼──────────────┐  │        │
│  │  │ Plataforma Estática #1│  │      │  │ Plataforma Estática #2│  │        │
│  │  │ (Precisión)          │  │      │  │ (Precisión)          │  │        │
│  │  │ Verificación/Sanción│  │      │  │ Verificación/Sanción│  │        │
│  │  └──────┬──────────────┘  │      │  └──────┬──────────────┘  │        │
│  └─────────┼──────────────────┘      └─────────┼──────────────────┘        │
│            │                                    │                            │
│            └──────────────┬─────────────────────┘                            │
│                           │                                                    │
│                    ┌──────▼──────┐                                            │
│                    │  Sistema de │  Controlador principal                     │
│                    │  Control    │  Gestión de datos y comunicación            │
│                    │  WIM        │  Procesamiento y almacenamiento             │
│                    └──────┬──────┘                                            │
│                           │                                                    │
│                    ┌──────▼──────┐                                            │
│                    │  Switch     │  Switch de acceso (Gigabit, IP66)          │
│                    │  Acceso     │  VLAN dedicada ITS                         │
│                    │  (L2)       │                                            │
│                    └──────┬──────┘                                            │
└───────────────────────────┼───────────────────────────────────────────────────┘
                            │
                     ┌──────▼──────┐
                     │ Red Troncal │  Fibra Óptica Monomodo (derivación)
                     │Fibra Óptica │  Protocolo: Ethernet/IP
                     │  (Backbone) │
                     └──────┬──────┘
                            │
┌───────────────────────────▼───────────────────────────────────────────────────┐
│                    CCO (Centro de Control)                                    │
│                    Ubicado en La Lizama PK 4+300 (RN 4513)                  │
│                                                                               │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐                      │
│  │  Switches    │  │  Servidores  │  │  Servidores  │                      │
│  │   Core       │  │   Gestión    │  │   SCADA      │                      │
│  │ 10 Gbps      │  │   WIM        │  │  (Monitoreo) │                      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘                      │
│         └──────────────────┴──────────────────┘                            │
│                            │                                                  │
│  ┌─────────────────────────▼───────────────────────┐                        │
│  │        Estaciones de Trabajo Operadores         │                        │
│  │        (2-4 puestos, monitores)                 │                        │
│  │        - Visualización de datos de pesaje       │                        │
│  │        - Gestión de reportes                    │                        │
│  │        - Control de impresión                   │                        │
│  └─────────────────────────────────────────────────┘                        │
│                            │                                                  │
│  ┌─────────────────────────▼───────────────────────┐                        │
│  │        Sistemas Externos                       │                        │
│  │        - Policía de Carreteras (reportes)      │                        │
│  │        - ANI (reportes técnicos)               │                        │
│  └─────────────────────────────────────────────────┘                        │
│                                                                               │
└───────────────────────────────────────────────────────────────────────────────┘
```

### 2.2 Descripción de Componentes Principales

| Componente | Función | Cantidad | Especificación |
|:-----------|:--------|:---------|:---------------|
| **Plataformas WIM (Dinámicas)** | Pesaje sin detención | **2 unidades** | Sensores piezoeléctricos, precisión ≤5%, velocidad ≤80 km/h |
| **Plataformas Estáticas** | Pesaje de precisión | **2 unidades** | Células de carga, precisión ≤1%, capacidad ≥100 ton |
| **Sistema de Control WIM** | Gestión de datos | 1 unidad | Procesamiento, comunicación, almacenamiento |
| **Sistema de Impresión** | Comprobantes automáticos | 1 unidad | Impresión automática de peso, identificación vehículo |
| **Switch de Acceso** | Conectividad local | 1 unidad | Gigabit, IP66, VLAN ITS |
| **Red Troncal FO** | Backbone de comunicaciones | Derivación | Fibra monomodo G.652.D, anillo redundante |
| **Switches Core (CCO)** | Agregación y routing | 4 unidades | 10 Gbps, redundante N+1 |
| **Servidores Gestión WIM** | Control y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Servidores SCADA** | Monitoreo y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Estaciones Operador** | Control y monitoreo | 2-4 puestos | Monitores, software de gestión |
| **Área de Administración** | Infraestructura | 1 unidad | Oficinas, sanitarios, control |
| **Zona de Estacionamiento** | Infraestructura | 1 unidad | Estacionamiento para infractores |

---

## 3. ARQUITECTURA DE COMPONENTES DE PLATAFORMAS

### 3.1 Diagrama de Componentes Internos (Plataforma WIM)

```
┌─────────────────────────────────────────────────────────────┐
│                    PLATAFORMA WIM (Unidad Completa)         │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  PLATAFORMA DE PESAJE (IP65)                          │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐            │ │
│  │  │  Sensor  │  │  Sensor  │  │  Sensor  │            │ │
│  │  │Piezoeléct│  │Piezoeléct│  │Piezoeléct│            │ │
│  │  │  rico    │  │  rico    │  │  rico    │            │ │
│  │  │  1.55m   │  │  1.55m   │  │  1.55m   │            │ │
│  │  └────┬─────┘  └────┬─────┘  └────┬─────┘            │ │
│  │       │             │              │                   │ │
│  │  ┌────▼─────────────▼──────────────▼─────────────────┐ │ │
│  │  │  LAZOS INDUCTIVOS (Detección de ejes)            │ │ │
│  │  │  - Detección de número de ejes                    │ │ │
│  │  │  - Espaciamiento entre ejes                      │ │ │
│  │  │  - Clasificación vehicular                        │ │ │
│  │  └───────────────────────────────────────────────────┘ │ │
│  └───────┼─────────────────────────────────────────────────┘ │
│          │                                                     │
│  ┌───────▼─────────────────────────────────────────────────┐ │
│  │  GABINETE CONTROL (IP65)                                │ │
│  │                                                         │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONTROLADOR WIM PRINCIPAL                     │ │ │
│  │  │  - Procesador ARM Cortex-A9 (1.2 GHz)        │ │ │
│  │  │  - RAM 2 GB                                   │ │ │
│  │  │  - Flash 64 GB (almacenamiento local)         │ │ │
│  │  │  - Linux embebido                              │ │ │
│  │  │  - Protocolos: API REST, SNMP v3, TCP/IP      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                         │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROCESADOR DE DATOS                          │ │ │
│  │  │  - Cálculo de peso total (PBVT)                │ │ │
│  │  │  - Cálculo de peso por eje                    │ │ │
│  │  │  - Cálculo de grupos de ejes                  │ │ │
│  │  │  - Clasificación vehicular                    │ │ │
│  │  │  - Comparación con límites legales            │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                         │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONVERSOR DE MEDIOS (Media Converter)      │ │ │
│  │  │  - FO (SC/APC) ↔ Ethernet (RJ45)              │ │ │
│  │  │  - 100 Mbps full-duplex                        │ │ │
│  │  │  - Longitud: hasta 20 km                      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                         │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  SISTEMA DE ALIMENTACIÓN                      │ │ │
│  │  │  - Fuente AC 120V/60Hz (principal)            │ │ │
│  │  │  - UPS integrado 4 horas                       │ │ │
│  │  │  - Batería 12V 100Ah × 2 (respaldo)            │ │ │
│  │  │  - Controlador de carga                        │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                         │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROTECCIÓN ELÉCTRICA                         │ │ │
│  │  │  - DPS (Supresor de picos) Clase II, 20 kA   │ │ │
│  │  │  - Breaker principal 20A                      │ │ │
│  │  │  - Fusibles secundarios                       │ │ │
│  │  │  - Puesta a tierra <10 Ω                      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                         │ │
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

### 3.2 Diagrama de Componentes Internos (Plataforma Estática)

```
┌─────────────────────────────────────────────────────────────┐
│                    PLATAFORMA ESTÁTICA (Unidad Completa)    │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  PLATAFORMA DE PESAJE (IP65)                          │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐            │ │
│  │  │  Célula  │  │  Célula  │  │  Célula  │            │ │
│  │  │  Carga   │  │  Carga   │  │  Carga   │            │ │
│  │  │  100 ton │  │  100 ton │  │  100 ton │            │ │
│  │  └────┬─────┘  └────┬─────┘  └────┬─────┘            │ │
│  │       │             │              │                   │ │
│  │  ┌────▼─────────────▼──────────────▼─────────────────┐ │ │
│  │  │  SISTEMA DE MEDICIÓN DE PRECISIÓN                 │ │ │
│  │  │  - Medición de peso total (PBVT)                  │ │ │
│  │  │  - Medición de peso por eje                       │ │ │
│  │  │  - Precisión ≤1%                                  │ │ │
│  │  └───────────────────────────────────────────────────┘ │ │
│  └───────┼─────────────────────────────────────────────────┘ │
│          │                                                   │
│  ┌───────▼───────────────────────────────────────────────┐ │
│  │  GABINETE CONTROL (IP65)                              │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONTROLADOR ESTÁTICA PRINCIPAL                │ │ │
│  │  │  - Procesador ARM Cortex-A9 (1.5 GHz)         │ │ │
│  │  │  - RAM 2 GB                                   │ │ │
│  │  │  - Flash 64 GB (almacenamiento local)         │ │ │
│  │  │  - Linux embebido                              │ │ │
│  │  │  - Protocolos: API REST, SNMP v3, TCP/IP      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROCESADOR DE DATOS                          │ │ │
│  │  │  - Cálculo de peso total (PBVT)                │ │ │
│  │  │  - Cálculo de peso por eje                     │ │ │
│  │  │  - Comparación con límites legales             │ │ │
│  │  │  - Generación de comprobantes                  │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  DISPLAY DIGITAL                              │ │ │
│  │  │  - Visualización de peso para conductor        │ │ │
│  │  │  - Visualización de peso para operador         │ │ │
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
│  │  SISTEMA DE IMPRESIÓN                                 │ │
│  │  - Impresora térmica o láser                          │ │
│  │  - Impresión automática de comprobantes               │ │
│  │  - Identificación de vehículo y compañía             │ │
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

### 3.3 Flujo de Datos de Pesaje

```
Vehículo circula sobre plataforma WIM
         │
         ▼
Sensores piezoeléctricos detectan peso
         │
         ▼
Lazos inductivos detectan ejes
         │
         ▼
Controlador WIM procesa datos
         │
         ▼
Cálculo de PBVT, peso por eje, grupos de ejes
         │
         ▼
Comparación con límites legales (Resolución 4959/2006)
         │
         ├─ Peso normal → Vehículo continúa sin detenerse
         │
         └─ Sobrepeso detectado → Derivación a báscula estática
                  │
                  ▼
         Vehículo se detiene sobre plataforma estática
                  │
                  ▼
         Células de carga miden peso con precisión ≤1%
                  │
                  ▼
         Sistema imprime comprobante automático
                  │
                  ▼
         Sistema reporta inmediatamente a Policía
                  │
                  ▼
         Transmisión al CCO (tiempo real)
```

---

## 4. ARQUITECTURA DE RED ESPECÍFICA PARA WIM

### 4.1 Topología de Red WIM

```
                    [CCO - Núcleo]
                    La Lizama PK 4+300
                          │
                    ┌─────┴─────┐
                    │ Switches  │
                    │ Core 10G  │
                    └─────┬─────┘
                          │
                    ┌─────▼─────┐
                    │ Switch    │
                    │ Agregación│
                    │ Zona 3    │
                    │(PK 180-260)│
                    └─────┬─────┘
                          │
                    ┌─────▼─────┐
                    │ Switch    │
                    │ Acceso    │
                    │ (L2)      │
                    └─────┬─────┘
                          │
                    ┌─────▼─────┐
                    │ Estación  │
                    │ Pesaje    │
                    │ PR4+0100  │
                    │ RN 4513   │
                    └─────┬─────┘
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
  ┌─────▼─────┐     ┌─────▼─────┐     ┌─────▼─────┐
  │ Plataforma│     │ Plataforma│     │ Sistema   │
  │ WIM #1    │     │ Estática  │     │ Control   │
  │ (Sentido 1)│     │ #1        │     │ WIM        │
  └───────────┘     │ (Sentido 1)│     └───────────┘
                    └───────────┘
        ┌─────────────────┼─────────────────┐
        │                 │                 │
  ┌─────▼─────┐     ┌─────▼─────┐
  │ Plataforma│     │ Plataforma│
  │ WIM #2    │     │ Estática  │
  │ (Sentido 2)│     │ #2        │
  └───────────┘     │ (Sentido 2)│
                    └───────────┘
```

### 4.2 Segmentación de Red (VLAN)

| VLAN | Descripción | ID | Equipos |
|:-----|:------------|:---|:--------|
| **VLAN-ITS** | Red ITS general | 100 | WIM, CCTV, PMV, ETD/RADAR, SOS, etc. |
| **VLAN-WIM** | Red dedicada WIM (opcional) | 120 | 4 plataformas WIM/Estáticas |
| **VLAN-MGMT** | Gestión y monitoreo | 200 | Switches, servidores, SCADA |

**Nota:** WIM puede usar VLAN-ITS o VLAN-WIM según diseño de red.

### 4.3 Ancho de Banda y Dimensionamiento

| Tipo de Tráfico | Ancho de Banda por Plataforma | Total (4 plataformas) | Prioridad |
|:----------------|:------------------------------|:---------------------|:-----------|
| **Datos de pesaje** | <100 kbps | <400 kbps | 🔴 Alta (QoS) |
| **Reportes a Policía** | <50 kbps (por evento) | <200 kbps (pico) | 🔴 Alta (QoS) |
| **Monitoreo SNMP** | <10 kbps | <40 kbps | 🟡 Media |
| **Actualización firmware** | <1 Mbps (ocasional) | <4 Mbps (ocasional) | 🟡 Media |
| **TOTAL (pico)** | ~1 Mbps | **~4 Mbps** | - |

**Dimensionamiento de red:**
- **Por plataforma:** 100 Mbps (Ethernet) → Margen 99%
- **Agregación:** 1 Gbps → Margen 99.6%
- **Troncal:** 10 Gbps → Margen 99.96%

---

## 5. INTEGRACIÓN CON CCO Y SISTEMAS EXTERNOS

### 5.1 Arquitectura de Integración

```
┌─────────────────────────────────────────────────────────────┐
│                    PLATAFORMAS WIM/ESTÁTICAS (4 unidades)  │
│                    Estación PR4+0100 RN 4513               │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ API REST (datos de pesaje, reportes)
                       │ SNMP (monitoreo)
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO La Lizama                            │
│                    PK 4+300 (RN 4513)                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Servidor    │  │  Servidor    │  │  Servidor    │      │
│  │  Gestión     │  │  SCADA       │  │  Base de     │      │
│  │  WIM         │  │  (Monitoreo) │  │  Datos       │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                 │                 │               │
│         └─────────────────┴─────────────────┘               │
│                            │                                │
│  ┌─────────────────────────▼───────────────────────┐      │
│  │        Estación Operador CCO                      │      │
│  │        - Visualización de datos de pesaje         │      │
│  │        - Gestión de reportes                      │      │
│  │        - Control de impresión                    │      │
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
│  │  Policía de  │  │  ANI          │                       │
│  │  Carreteras  │  │  (Reportes    │                       │
│  │  (Reportes   │  │  técnicos)    │                       │
│  │  inmediatos) │  │               │                       │
│  └──────────────┘  └──────────────┘                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 5.2 Protocolos de Integración

| Interface | Protocolo | Datos Intercambiados | Frecuencia |
|:----------|:----------|:---------------------|:-----------|
| **WIM/Estática ↔ Gestión WIM** | API REST | Datos de pesaje, reportes, estado | Tiempo real (datos), por evento (reportes) |
| **WIM/Estática ↔ SCADA** | SNMP v3 | Estado de plataformas, alarmas | Cada 5 min |
| **WIM ↔ Policía de Carreteras** | API REST (vía CCO) | Reportes de vehículos con sobrepeso | Por evento (tiempo real) |
| **WIM ↔ ANI** | API REST (vía CCO) | Reportes técnicos y estadísticos | Diaria o según requerimiento |

---

## 6. ARQUITECTURA DE REDUNDANCIA Y DISPONIBILIDAD

### 6.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Red Troncal FO** | Anillo redundante | Topología anillo en zonas críticas | Protección ante cortes de fibra |
| **Switches Core (CCO)** | N+1 | 4 switches (stacking o MLAG) | Alta disponibilidad de red |
| **Servidores Gestión WIM** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Continuidad de control |
| **Servidores SCADA** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Monitoreo continuo |
| **Alimentación Plataformas** | Principal + Respaldo | AC 120V + UPS 4 horas | Operación continua |
| **Plataformas por sentido** | Redundancia funcional | 1 WIM + 1 estática por sentido | Si WIM falla, estática puede operar independientemente |

### 6.2 Disponibilidad del Sistema

**Disponibilidad objetivo:** 24 horas diarias, 365 días al año (requisito contractual AT2)

**Cálculo de disponibilidad:**
- **Plataforma individual:** MTBF = 5,000 horas, MTTR = 24 horas
  - Disponibilidad = MTBF / (MTBF + MTTR) = 5,000 / 5,024 = **99.52%**
- **Sistema completo (4 plataformas):**
  - Disponibilidad sistema = (Disponibilidad plataforma)^4 = 99.52%^4 = **98.1%**
  - **Con redundancia de red y servidores:** ≥ **99.5%** ✅

**Estrategias para cumplir 24/7/365:**
- ✅ Redundancia de red troncal (anillo)
- ✅ Monitoreo proactivo (SCADA)
- ✅ Mantenimiento preventivo trimestral
- ✅ Stock de repuestos críticos
- ✅ Tiempo de respuesta de mantenimiento ≤ 24 horas
- ✅ Personal operativo en turnos (2 turnos mínimo)

---

## 7. ARQUITECTURA DE SEGURIDAD

### 7.1 Seguridad de Comunicaciones

| Aspecto | Implementación | Estándar |
|:--------|:---------------|:---------|
| **Cifrado de comunicación** | TLS 1.2 mínimo | RFC 5246 |
| **Autenticación de acceso** | Credenciales robustas, roles | ISO 27001 |
| **Segmentación de red** | VLAN dedicada (VLAN-WIM/VLAN-ITS) | IEEE 802.1Q |
| **Control de acceso** | Firewall en switches L3 | - |
| **Monitoreo de seguridad** | IDS/IPS en red troncal | - |

### 7.2 Seguridad Física

| Componente | Protección | Especificación |
|:-----------|:-----------|:---------------|
| **Plataformas WIM/Estáticas** | Protección ambiental | IP65 (estanco a polvo y agua) |
| **Gabinete control** | Protección ambiental | IP65 (estanco a polvo y agua) |
| **Área de administración** | Control de acceso | Cerradura, CCTV, personal de seguridad |
| **Sistema de impresión** | Protección física | Ubicado en área de administración |

### 7.3 Seguridad de Datos

- **Datos de pesaje:** Base de datos con auditoría, no modificable
- **Comprobantes de peso:** Firma digital, timestamp, no modificable
- **Reportes a Policía:** Integridad garantizada, no modificable
- **Control de acceso:** Solo personal autorizado (roles: operador, supervisor, admin, Policía)
- **Logs de auditoría:** Todas las acciones registradas

---

## 8. ARQUITECTURA DE MONITOREO Y GESTIÓN

### 8.1 Sistema SCADA para WIM

```
┌─────────────────────────────────────────────────────────────┐
│                    PLATAFORMAS WIM/ESTÁTICAS (4 unidades)   │
│                    Estación PR4+0100 RN 4513               │
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
│  │        - Estado de plataformas                    │       │
│  │        - Alertas de falla                         │       │
│  │        - Reportes de disponibilidad               │       │
│  │        - Estadísticas de pesaje                   │       │
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
| **Precisión de pesaje** | Diaria | Desviación > ±5% (WIM) o ±1% (estática) | Alerta de calibración |
| **Disponibilidad mensual** | Mensual | < 99.5% | Reporte a gerencia |

---

## 9. DESPLIEGUE FÍSICO

### 9.1 Ubicación de la Estación

| Parámetro | Valor |
|:----------|:------|
| **Ubicación** | **PR4+0100 RN 4513** |
| **Referencia** | Cerca del CCO La Lizama PK 4+300 y Peaje Aguas Negras |
| **Configuración** | Bidireccional (ambos sentidos desde 1 punto de control) |
| **Tipo de intervención** | Adecuar estación existente + modernizar equipos |

### 9.2 Distribución de Plataformas

| Sentido | Plataforma WIM | Plataforma Estática | Función |
|:--------|:---------------|:-------------------|:--------|
| **Sentido 1** | 1 unidad | 1 unidad | Control de peso sentido 1 |
| **Sentido 2** | 1 unidad | 1 unidad | Control de peso sentido 2 |
| **TOTAL** | **2 unidades** | **2 unidades** | **4 plataformas (1 estación bidireccional)** |

### 9.3 Infraestructura Complementaria

| Componente | Descripción | Ubicación |
|:-----------|:------------|:----------|
| **Área de Administración** | Oficinas, sanitarios, control | Estación de pesaje |
| **Zona de Estacionamiento** | Estacionamiento para infractores (500-800 m²) | Estación de pesaje |
| **Área de Servicio** | Área de servicio operacional | Estación de pesaje |
| **Señalización** | Señalización especial de ordenamiento y seguridad | Estación de pesaje |
| **Iluminación** | Iluminación nocturna | Estación de pesaje |
| **CCTV** | Grabación de operativos | Estación de pesaje |

---

## 10. TECNOLOGÍAS Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar/Versión | Justificación |
|:----------|:-----------|:-----------------|:--------------|
| **Sensor WIM** | Piezoeléctrico o células de carga | ASTM E1318 Type III, COST323 A(5) | Estándar de industria, precisión ≤5% |
| **Sensor Estática** | Células de carga | OIML R134, NTC 5371 | Estándar de industria, precisión ≤1% |
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

**Descripción:** Sistema WIM completo de un solo fabricante (ej: PAT, Kistler, International Road Dynamics)

**Ventajas:**
- Integración garantizada
- Soporte unificado
- Interfaz única

**Desventajas:**
- Vendor lock-in (dependencia de un proveedor)
- Costo alto (falta de competencia)
- Difícil escalabilidad con terceros

**Costo estimado:** $1,200,000-$1,500,000 USD

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

**Costo estimado:** $551,000 USD (optimizado: 4 plataformas en configuración bidireccional)

**Justificación de selección:**
- ✅ Cumple con todos los requisitos contractuales (AT1, AT2, AT4)
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
| **Fase 3** | Adecuación de infraestructura civil | 3 meses | H3: Infraestructura lista |
| **Fase 4** | Instalación de plataformas | 2 meses | H4: 100% plataformas instaladas |
| **Fase 5** | Integración con CCO | 1 mes | H5: Sistema integrado |
| **Fase 6** | Pruebas y comisionamiento | 1 mes | H6: Sistema operativo |
| **Fase 7** | Puesta en servicio | 1 mes | H7: Sistema en operación |

**Duración total:** 13 meses

**Nota especial:** La adecuación de infraestructura civil puede requerir coordinación con obras de peaje y CCO.

### 12.2 Cronograma por Componente

- **Infraestructura Civil:** Meses 1-3 (adecuación de estación existente)
- **Plataformas WIM:** Meses 4-5 (instalación)
- **Plataformas Estáticas:** Meses 5-6 (instalación)
- **Sistema de Control:** Mes 6 (instalación)
- **Integración CCO:** Mes 7
- **Pruebas:** Mes 8
- **Puesta en servicio:** Mes 9

---

## 13. ESCALABILIDAD

### 13.1 Capacidad de Crecimiento

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Plataformas WIM/Estáticas** | 4 | 4 | 4 | 4 (fija según contrato) |
| **Ancho de banda troncal** | 4 Mbps | 4 Mbps | 4 Mbps | 10 Gbps (+249,900%) |
| **Capacidad servidores** | 4 plataformas | 4 plataformas | 4 plataformas | 10 plataformas (+150%) |
| **Volumen de pesajes** | ~1,000/día | ~1,500/día | ~2,000/día | ~5,000/día (+400%) |

### 13.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 25):**
- Sistema fijo según contrato (1 estación bidireccional)
- Básculas móviles para operativos temporales (opcional)

**Con cambios menores (año 20-25):**
- Actualización de servidores a mayor capacidad
- Reemplazo de plataformas por modelos más modernos

**Arquitectura modular permite actualizaciones sin rediseño completo.**

---

## 14. PRÓXIMOS PASOS

- [x] ✅ Arquitectura Conceptual completada (T03)
- [ ] 🔄 Validar arquitectura con stakeholders (ANI, Interventoría, Policía de Carreteras)
- [ ] ⏳ Validar especificaciones técnicas detalladas (T04 - ya existe, revisar coherencia)
- [ ] ⏳ Validar ingeniería de detalle (T05 - ya existe, revisar coherencia)
- [ ] ⏳ Solicitar cotizaciones a fabricantes preseleccionados
- [ ] ⏳ Diseñar diagramas de red detallados (Visio, AutoCAD)
- [ ] ⏳ Definir ubicación exacta de estación (coordenadas, PK)
- [ ] ⏳ Crear plan de pruebas de integración (FAT/SAT)
- [ ] ⏳ Elaborar plan de capacitación de operadores
- [ ] ⏳ Coordinar con Policía de Carreteras para protocolos de reporte

---

## 15. REFERENCIAS

### 15.1 Documentos del Proyecto

- [T01 - Ficha Sistema WIM](24F_T01_Ficha_Sistema_WIM_MVP_v1.0.md)
- [T02 - Análisis de Requisitos WIM](24F_T02_Analisis_Requisitos_WIM_MVP_v1.0.md)
- [T04 - Especificaciones Técnicas WIM](IV.%20Ingenieria%20Basica/05_T04_Especificaciones_Tecnicas_Pesaje_WIM_v1.0.md)
- [T05 - Ingeniería de Detalle WIM](V.%20Ingenieria%20de%20Detalle/10_T05_Ingenieria_Detalle_WIM_v1.0.md)
- [T03 - Arquitectura Conceptual ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md) (contexto general)
- [Validación Contractual WIM](VII.%20Documentos%20Transversales/24_VALIDACION_CONTRACTUAL_PESAJE_v1.0.md)

### 15.2 Documentos Contractuales

- **AT1:** Apéndice Técnico 1, Adenda 4, páginas 46-47 "Estaciones de Pesaje"
- **AT2:** Apéndice Técnico 2, Sección 3.3.9 "Sistemas de Pesaje"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 15.3 Normativa y Estándares

- **Resolución 4959/2006:** Normas sobre pesos y dimensiones vehiculares
- **NTC 5371:** Norma Técnica Colombiana para básculas
- **NTC 5206:** Norma Técnica Colombiana para sistemas WIM
- **ASTM E1318:** Estándar para sistemas WIM
- **COST323:** Estándar europeo para sistemas WIM
- **OIML R134:** Estándar internacional de básculas

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Arquitectura Conceptual Completada  
**Fecha:** 31/10/2025  
**Responsable:** Ingeniero Civil / Arquitecto de Sistemas  
**Próximo paso:** Validación de arquitectura con stakeholders

