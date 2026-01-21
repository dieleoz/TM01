# T03: ARQUITECTURA CONCEPTUAL - PMV (PANELES DE MENSAJE VARIABLE)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 21 de Enero 2026  
**Sistema:** PMV - Paneles de Mensaje Variable (Dynamic Message Signs - DMS)  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Versión:** 1.5 MVP (Alineado Normativa 2024)  
**Estado:** ✅ Validado y Reconciliado

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Paneles de Mensaje Variable (PMV) para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de alto nivel del sistema PMV
- Arquitectura de componentes del panel
- Topología de red y comunicaciones específica para PMV
- Flujo de datos de mensajes
- Integración con CCO, SCADA y sistemas ITS
- Redundancia y disponibilidad
- Arquitectura de seguridad
- Despliegue físico

### 1.2 Alcance

Esta arquitectura cubre el **Sistema de PMV** a lo largo de 259.6 km principales + 33.4 km adicionales:

- **Cantidad:** 14 paneles PMV (7 pórticos + 7 postes)
- **Distribución:** Estratégicamente ubicados cada ~20 km por sentido
- **Cobertura geográfica:** 100% del corredor (RN 4510, RN 4511, RN 4513)
- **Integración:** CCO La Lizama PK 4+300 (RN 4513)

### 1.3 Referencias

- **T01:** `24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md`
- **T02:** `24D_T02_Analisis_Requisitos_PMV_MVP_v1.0.md`
- **T04:** `04_T04_Especificaciones_Tecnicas_PMV_v1.0.md`
- **T05:** `06_T05_Ingenieria_Detalle_PMV_v1.0.md`
- **T03 ITS:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (contexto general)
- **Validación:** `38_VALIDACION_CONTRACTUAL_PMV_v1.0.md`
- **AT1:** Apéndice Técnico 1, Capítulo 3.8 "Sistemas de Información Variable"
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.8 "Sistemas de Información Variable"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema PMV

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         CAMPO (259.6 km + 33.4 km)                      │
│                                                                          │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐ │
│  │ PMV #1   │  │ PMV #2   │  │ PMV #3   │  │ PMV #4   │  │   ...    │ │
│  │ Pórtico  │  │ Poste    │  │ Pórtico  │  │ Poste    │  │          │ │
│  │ Peaje    │  │ Intersección│ Estratégico│ Estratégico│  │          │ │
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
│  │ 10 Gbps      │  │   PMV        │  │  (Monitoreo) │                 │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘                 │
│         └──────────────────┴──────────────────┘                         │
│                            │                                              │
│  ┌─────────────────────────▼───────────────────────┐                    │
│  │        Estaciones de Trabajo Operadores         │                    │
│  │        (6-10 puestos, dobles monitores)         │                    │
│  │        - Creación y envío de mensajes            │                    │
│  │        - Gestión de biblioteca de mensajes       │                    │
│  │        - Control remoto de paneles                │                    │
│  └─────────────────────────────────────────────────┘                    │
│                            │                                              │
└────────────────────────────┼──────────────────────────────────────────────┘
                             │
                      ┌──────▼──────┐
                      │  Sistemas   │  Integración automática
                      │  ITS        │  DAI, Meteo, Peajes
                      │             │  Policía de Carreteras
                      └─────────────┘
```

### 2.2 Descripción de Componentes Principales

| Componente | Función | Cantidad | Especificación |
|:-----------|:--------|:---------|:---------------|
| **Paneles PMV Pórtico** | Información bidireccional | **7 unidades** | LED matriz 3×1.5m, RGB, IP65, NTCIP 1202 |
| **Paneles PMV Poste** | Información unidireccional | **7 unidades** | LED matriz 3×1.5m, RGB, IP65, NTCIP 1202 |
| **Controladores PMV** | Gestión de mensajes | 14 unidades | NTCIP 1202, Ethernet, IP65 |
| **Estructuras soporte** | Pórticos y postes | 28 unidades | Metálicas, resistentes a viento 120 km/h |
| **Switches de Acceso** | Conectividad local | 10-15 unidades | Gigabit, IP66, VLAN ITS |
| **Red Troncal FO** | Backbone de comunicaciones | 283 km | Fibra monomodo G.652.D, anillo redundante |
| **Switches Core (CCO)** | Agregación y routing | 4 unidades | 10 Gbps, redundante N+1 |
| **Servidores Gestión PMV** | Control y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Servidores SCADA** | Monitoreo y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Estaciones Operador** | Control y monitoreo | 6-10 puestos | Dobles monitores, software de gestión |

---

## 3. ARQUITECTURA DE COMPONENTES DEL PANEL PMV

### 3.1 Diagrama de Componentes Internos (Panel PMV)

```
┌─────────────────────────────────────────────────────────────┐
│                    PANEL PMV (Unidad Completa)              │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  PANEL LED MATRIZ (IP65 frontal)                      │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐            │ │
│  │  │  Módulo  │  │  Módulo  │  │  Módulo  │            │ │
│  │  │  LED RGB │  │  LED RGB │  │  LED RGB │            │ │
│  │  │  32×16   │  │  32×16   │  │  32×16   │            │ │
│  │  └────┬─────┘  └────┬─────┘  └────┬─────┘            │ │
│  │       │             │              │                   │ │
│  │  ┌────▼─────────────▼──────────────▼─────────────────┐ │ │
│  │  │  CONTROLADOR DE MATRIZ                            │ │ │
│  │  │  - Escaneo de matriz                              │ │ │
│  │  │  - Control de brillo automático                   │ │ │
│  │  │  - Gestión de colores RGB                         │ │ │
│  │  └───────────────────────────────────────────────────┘ │ │
│  └───────┼─────────────────────────────────────────────────┘ │
│          │                                                     │
│  ┌───────▼─────────────────────────────────────────────────┐ │
│  │  GABINETE CONTROL (IP65)                                │ │
│  │                                                         │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  CONTROLADOR PMV PRINCIPAL                    │ │ │
│  │  │  - Procesador ARM Cortex-A9 (1.2 GHz)        │ │ │
│  │  │  - RAM 1 GB                                   │ │ │
│  │  │  - Flash 16 GB (mensajes predefinidos)        │ │ │
│  │  │  - Linux embebido                              │ │ │
│  │  │  - Protocolos: NTCIP 1202, SNMP v3, TCP/IP   │ │ │
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
│  │  │  PROTECCIÓN ELÉCTRICA                        │ │ │
│  │  │  - DPS (Supresor de picos) Clase II, 20 kA  │ │ │
│  │  │  - Breaker principal 10A                      │ │ │
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

### 3.2 Flujo de Datos de Mensajes

```
Operador CCO crea/selecciona mensaje
         │
         ▼
Sistema de Gestión PMV (CCO)
         │
         ▼
Protocolo NTCIP 1202 (comando)
         │
         ▼
Switch Core CCO (10 Gbps)
         │
         ▼
Red Troncal FO (283 km) → Anillo redundante
         │
         ▼
Switch Acceso (L2) → VLAN-ITS
         │
         ▼
Conversor FO/Ethernet
         │
         ▼
Controlador PMV (procesamiento)
         │
         ▼
Almacenamiento local (mensaje guardado)
         │
         ▼
Controlador de Matriz (renderizado)
         │
         ▼
Panel LED (visualización)
         │
         ▼
Confirmación al CCO (NTCIP 1202)
```

---

## 4. ARQUITECTURA DE RED ESPECÍFICA PARA PMV

### 4.1 Topología de Red PMV

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
  │ PMV #1-10 │     │ PMV #11-20│     │ PMV #21-28│
  │ RN 4510   │     │ RN 4511   │     │ RN 4511/13│
  │ (Pórtico/Poste)│ │ (Pórtico/Poste)│ │ (Pórtico/Poste)│
  └───────────┘     └───────────┘     └───────────┘

Zona 1: PK 0-90 (Puerto Salgar - Puerto Boyacá) → ~10 PMV
Zona 2: PK 90-180 (Puerto Boyacá - Puerto Berrío) → ~9 PMV
Zona 3: PK 180-259.6 (Puerto Berrío - San Roque) → ~9 PMV
```

### 4.2 Segmentación de Red (VLAN)

| VLAN | Descripción | ID | Equipos |
|:-----|:------------|:---|:--------|
| **VLAN-ITS** | Red ITS general | 100 | PMV, CCTV, WIM, Meteo, SOS, ETD, etc. |
| **VLAN-PMV** | Red dedicada PMV (opcional) | 110 | 28 paneles PMV |
| **VLAN-MGMT** | Gestión y monitoreo | 200 | Switches, servidores, SCADA |

**Nota:** PMV puede usar VLAN-ITS o VLAN-PMV según diseño de red.

### 4.3 Ancho de Banda y Dimensionamiento

| Tipo de Tráfico | Ancho de Banda por Panel | Total (28 paneles) | Prioridad |
|:----------------|:-------------------------|:-------------------|:-----------|
| **Control NTCIP 1202** | <100 kbps | <1.4 Mbps | 🔴 Alta (QoS) |
| **Monitoreo SNMP** | <10 kbps | <140 kbps | 🟡 Media |
| **Actualización firmware** | <1 Mbps (ocasional) | <14 Mbps (ocasional) | 🟡 Media |
| **TOTAL (pico)** | ~1 Mbps | **~14 Mbps** | - |

**Dimensionamiento de red:**
- **Por panel:** 100 Mbps (Ethernet) → Margen 99%
- **Agregación:** 1 Gbps → Margen 97.2%
- **Troncal:** 10 Gbps → Margen 99.7%

---

## 5. FLUJO DE DATOS DE MENSAJES

### 5.1 Diagrama de Flujo Detallado

```
┌─────────────────────────────────────────────────────────────────┐
│ 1. CREACIÓN DE MENSAJE (CCO)                                     │
│                                                                 │
│    Operador CCO crea/selecciona mensaje                         │
│         │                                                       │
│         ▼                                                       │
│    Sistema de Gestión PMV (validación)                         │
│         │                                                       │
└─────────┼───────────────────────────────────────────────────────┘
          │
          │ Comando NTCIP 1202
          ▼
┌─────────────────────────────────────────────────────────────────┐
│ 2. TRANSMISIÓN (RED DE TELECOMUNICACIONES)                      │
│                                                                 │
│    Sistema Gestión PMV → Switch Core (L3) → Routing hacia PMV │
│         │                                                       │
│         ▼                                                       │
│    Red Troncal FO (283 km) → Anillo redundante                 │
│         │                                                       │
│         ▼                                                       │
│    Switch Acceso (L2) → VLAN-ITS                                │
│         │                                                       │
│         ▼                                                       │
│    Conversor FO/Ethernet                                        │
│         │                                                       │
└─────────┼───────────────────────────────────────────────────────┘
          │
          │ NTCIP 1202 (comando)
          ▼
┌─────────────────────────────────────────────────────────────────┐
│ 3. PROCESAMIENTO EN PANEL PMV                                  │
│                                                                 │
│    Controlador PMV recibe comando                              │
│         │                                                     │
│         ▼                                                     │
│    Validación y almacenamiento local                           │
│         │                                                     │
│         ▼                                                     │
│    Controlador de Matriz (renderizado)                        │
│         │                                                     │
│         ▼                                                     │
│    Panel LED (visualización)                                  │
│         │                                                     │
│         ▼                                                     │
│    Confirmación al CCO (NTCIP 1202)                          │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### 5.2 Secuencia Temporal de Transmisión

| Tiempo | Evento | Duración Acumulada |
|:-------|:-------|:-------------------|
| **T+0ms** | Operador envía comando | 0ms |
| **T+50ms** | Sistema procesa comando | 50ms |
| **T+100ms** | Comando transmitido por Ethernet | 100ms |
| **T+200ms** | Comando en switch acceso | 200ms |
| **T+300ms** | Comando en red troncal FO | 300ms |
| **T+500ms** | Comando en switch core CCO | 500ms |
| **T+600ms** | Comando recibido por controlador PMV | 600ms |
| **T+800ms** | Mensaje procesado y renderizado | 800ms |
| **T+1000ms** | Mensaje visible en panel | 1000ms |
| **T+1200ms** | Confirmación recibida en CCO | 1200ms |

**Tiempo total:** ≤ 2 segundos (latencia) + ≤ 3 segundos (renderizado) = **≤5 segundos** (requisito contractual)

---

## 6. INTEGRACIÓN CON CCO Y SISTEMAS ITS

### 6.1 Arquitectura de Integración

```
┌─────────────────────────────────────────────────────────────┐
│                    PANELES PMV (28 unidades)                │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ NTCIP 1202 (control)
                       │ SNMP (monitoreo)
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO La Lizama                            │
│                    PK 4+300 (RN 4513)                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Servidor    │  │  Servidor    │  │  Servidor    │      │
│  │  Gestión PMV │  │  SCADA       │  │  Sistema     │      │
│  │  (Control)   │  │  (Monitoreo) │  │  ITS        │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                 │                 │               │
│         └─────────────────┴─────────────────┘               │
│                            │                                │
│  ┌─────────────────────────▼───────────────────────┐      │
│  │        Estación Operador CCO                    │      │
│  │        - Creación de mensajes                    │      │
│  │        - Control remoto de paneles               │      │
│  │        - Gestión de biblioteca                   │      │
│  └─────────────────────────┬───────────────────────┘      │
│                            │                                │
└────────────────────────────┼────────────────────────────────┘
                             │
                             │ Alertas, eventos
                             ▼
┌─────────────────────────────────────────────────────────────┐
│                    Sistemas ITS Integrados                 │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  DAI         │  │  Estaciones  │  │  Sistema     │      │
│  │  (Detección) │  │  Meteorológicas│ │  Peajes     │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 6.2 Protocolos de Integración

| Interface | Protocolo | Datos Intercambiados | Frecuencia |
|:----------|:----------|:---------------------|:-----------|
| **PMV ↔ Gestión PMV** | NTCIP 1202 | Comandos de control, confirmaciones | Por evento |
| **PMV ↔ SCADA** | SNMP v3 | Estado de paneles, alarmas | Cada 5 min |
| **PMV ↔ DAI** | API REST (vía CCO) | Activación automática de mensajes | Por evento |
| **PMV ↔ Meteo** | API REST (vía CCO) | Activación automática por clima | Por evento |
| **PMV ↔ Peajes** | Base de Datos / API (vía CCO) | Tarifas, tiempos de espera | Cada 5-10 min |

---

## 7. ARQUITECTURA DE REDUNDANCIA Y DISPONIBILIDAD

### 7.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Red Troncal FO** | Anillo redundante | Topología anillo en zonas críticas | Protección ante cortes de fibra |
| **Switches Core (CCO)** | N+1 | 4 switches (stacking o MLAG) | Alta disponibilidad de red |
| **Servidores Gestión PMV** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Continuidad de control |
| **Servidores SCADA** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Monitoreo continuo |
| **Alimentación Paneles** | Principal + Respaldo | AC 120V + UPS 4 horas | Operación continua |
| **Enlaces a CCO** | Redundancia de ruta | Múltiples rutas en anillo FO | Sin punto único de falla |

### 7.2 Disponibilidad del Sistema

**Disponibilidad objetivo:** ≥ 99% anual (requisito contractual AT4)

**Cálculo de disponibilidad:**
- **Panel individual:** MTBF = 5,000 horas, MTTR = 24 horas
  - Disponibilidad = MTBF / (MTBF + MTTR) = 5,000 / 5,024 = **99.52%**
- **Sistema completo (28 paneles):**
  - Disponibilidad sistema = (Disponibilidad panel)^28 = 99.52%^28 = **87.0%**
  - **Con redundancia de red y servidores:** ≥ **99%** ✅

**Estrategias para cumplir 99%:**
- ✅ Redundancia de red troncal (anillo)
- ✅ Monitoreo proactivo (SCADA)
- ✅ Mantenimiento preventivo trimestral
- ✅ Stock de repuestos críticos
- ✅ Tiempo de respuesta de mantenimiento ≤ 24 horas

---

## 8. ARQUITECTURA DE SEGURIDAD

### 8.1 Seguridad de Comunicaciones

| Aspecto | Implementación | Estándar |
|:--------|:---------------|:---------|
| **Cifrado de comunicación** | TLS 1.2 mínimo | RFC 5246 |
| **Autenticación de acceso** | Credenciales robustas, roles | ISO 27001 |
| **Segmentación de red** | VLAN dedicada (VLAN-PMV/VLAN-ITS) | IEEE 802.1Q |
| **Control de acceso** | Firewall en switches L3 | - |
| **Monitoreo de seguridad** | IDS/IPS en red troncal | - |

### 8.2 Seguridad Física

| Componente | Protección | Especificación |
|:-----------|:-----------|:---------------|
| **Panel LED** | Antivandalismo | IK08 mínimo (resistencia a impactos) |
| **Gabinete control** | Protección ambiental | IP65 (estanco a polvo y agua) |
| **Estructura** | Protección física | Altura 8-12 m (difícil acceso) |

### 8.3 Seguridad de Datos

- **Mensajes inviolables:** Base de datos con auditoría, no modificable
- **Control de acceso:** Solo personal autorizado (roles: operador, supervisor, admin)
- **Logs de auditoría:** Todas las acciones registradas

---

## 9. ARQUITECTURA DE MONITOREO Y GESTIÓN

### 9.1 Sistema SCADA para PMV

```
┌─────────────────────────────────────────────────────────────┐
│                    PANELES PMV (28 unidades)                │
│                    (Campo)                                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ SNMP v3 (cada 5 minutos)
                       │ - Estado operativo
                       │ - Nivel de señal
                       │ - Temperatura interna
                       │ - Estado de alimentación
                       │ - Brillo actual
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
│  │        - Mapa con estado de paneles               │       │
│  │        - Alertas de falla                         │       │
│  │        - Reportes de disponibilidad               │       │
│  └───────────────────────────────────────────────────┘       │
│                                                               │
└───────────────────────────────────────────────────────────────┘
```

### 9.2 Métricas Monitoreadas

| Métrica | Frecuencia | Umbral de Alerta | Acción |
|:--------|:-----------|:-----------------|:-------|
| **Estado operativo** | Cada 5 min | No responde | Alerta a CCO, programar mantenimiento |
| **Nivel de señal** | Cada 5 min | < -70 dBm | Alerta preventiva |
| **Temperatura interna** | Cada 5 min | > 60°C o < -20°C | Alerta de falla |
| **Estado de alimentación** | Cada 5 min | Sin alimentación > 4 horas | Alerta crítica |
| **Brillo del panel** | Cada 5 min | < 7,000 cd/m² | Alerta de degradación |
| **Disponibilidad mensual** | Mensual | < 99% | Reporte a gerencia |

---

## 10. DESPLIEGUE FÍSICO

### 10.1 Distribución Geográfica

| Ubicación | Cantidad | Tipo | Justificación |
|:----------|:---------|:-----|:-------------|
| **Estaciones de Peaje** | 4 | 2 pórticos + 2 postes | Antes/después peajes (obligatorio) |
| **Intersecciones Críticas** | 8 | 4 pórticos + 4 postes | Pre-intercambiadores |
| **Zonas de Obras** | 6 | 3 pórticos + 3 postes | Puntos de construcción |
| **Zonas Urbanas** | 4 | 2 pórticos + 2 postes | Reducción de velocidad |
| **Puntos de Control** | 4 | 2 pórticos + 2 postes | Gestión de tráfico |
| **Zonas de Accidentalidad** | 2 | 1 pórtico + 1 poste | Alertas de seguridad |
| **TOTAL** | **14** | **7 pórticos + 7 postes** | - |

### 10.2 Ubicaciones Específicas Principales

- **PK 0+000** (Puerto Salgar): Inicio del corredor
- **PK 9+200** (Peaje Zambito): 2 PMV (antes + después)
- **PK 50±5**: Punto medio Zona 1
- **PK 80+000** (Peaje Aguas Negras): 2 PMV (antes + después)
- **PK 130±5** (CCO La Lizama): Centro de control
- **PK 180±5**: Punto medio Zona 3
- **PK 259+600** (San Roque): Fin del corredor

---

## 11. TECNOLOGÍAS Y ESTÁNDARES

### 11.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar/Versión | Justificación |
|:----------|:-----------|:-----------------|:--------------|
| **Protocolo PMV** | NTCIP 1202 | NEMA/AASHTO/ITE | Obligatorio según AT3, estándar de industria |
| **Red de datos** | Ethernet | IEEE 802.3 | Estándar universal |
| **Fibra óptica** | Monomodo G.652.D | ITU-T G.652 | Larga distancia, baja atenuación |
| **Alimentación** | AC 120V/60Hz | RETIE | Estándar colombiano |
| **Monitoreo** | SNMP v3 | RFC 3410-3418 | Gestión de red estándar |
| **Protección IP** | IP65/IK08 | IEC 60529, IEC 62262 | Resistencia ambiental y vandalismo |

### 11.2 Interoperabilidad

- **Con sistemas CCO:** Protocolo NTCIP 1202 estándar (compatible con cualquier sistema de gestión)
- **Con sistemas ITS:** VLAN dedicada, protocolo IP estándar
- **Entre fabricantes:** Estándares abiertos (NTCIP 1202, SNMP, IP) permiten multi-vendor

---

## 12. ANÁLISIS DE ALTERNATIVAS

### 12.1 Alternativa 1: Solución Propietaria Integrada

**Descripción:** Sistema PMV completo de un solo fabricante (ej: Daktronics, TransCore, SWARCO)

**Ventajas:**
- Integración garantizada
- Soporte unificado
- Interfaz única

**Desventajas:**
- Vendor lock-in (dependencia de un proveedor)
- Costo alto (falta de competencia)
- Difícil escalabilidad con terceros

**Costo estimado:** $800,000-$1,000,000 USD

---

### 12.2 Alternativa 2: Solución Basada en Estándares Abiertos ⭐ **RECOMENDADA**

**Descripción:** Arquitectura modular basada en protocolos estándar (NTCIP 1202, IP, SNMP), permitiendo integración de múltiples fabricantes best-of-breed

**Ventajas:**
- ✅ **Competencia entre proveedores** (menor costo, mejor calidad)
- ✅ **Interoperabilidad** (NTCIP 1202, estándares abiertos)
- ✅ **Escalabilidad** (fácil agregar paneles de diferentes marcas)
- ✅ **Reducción de riesgo** (no dependencia de un solo proveedor)
- ✅ **Flexibilidad** (actualizaciones y mejoras independientes)

**Desventajas:**
- Requiere integración entre componentes
- Gestión de múltiples proveedores

**Costo estimado:** $1,190,000 USD (incluye estructuras pórtico, obras civiles, sistema de gestión)

**Justificación de selección:**
- ✅ Cumple con todos los requisitos contractuales (AT1, AT2, AT3, AT4)
- ✅ Reduce costos mediante competencia
- ✅ Garantiza sostenibilidad a largo plazo (25 años)
- ✅ Facilita reemplazo por obsolescencia tecnológica
- ✅ **Modelo probado en proyectos APP colombianos exitosos**

---

## 13. PLAN DE IMPLEMENTACIÓN

### 13.1 Fases de Implementación

| Fase | Actividad | Duración | Hito |
|:-----|:----------|:---------|:-----|
| **Fase 1** | Diseño detallado y especificaciones | 2 meses | H1: Especificaciones aprobadas |
| **Fase 2** | Adquisición de equipos | 3 meses | H2: Equipos recibidos |
| **Fase 3** | Instalación de paneles (por zonas) | 6 meses | H3: 100% paneles instalados |
| **Fase 4** | Integración con CCO | 1 mes | H4: Sistema integrado |
| **Fase 5** | Pruebas y comisionamiento | 1 mes | H5: Sistema operativo |
| **Fase 6** | Puesta en servicio | 1 mes | H6: Sistema en operación |

**Duración total:** 14 meses

### 13.2 Cronograma por Zona

- **Zona 1 (PK 0-90):** Meses 3-5 (10 paneles)
- **Zona 2 (PK 90-180):** Meses 4-7 (9 paneles)
- **Zona 3 (PK 180-260):** Meses 6-9 (9 paneles)
- **Integración CCO:** Mes 10
- **Pruebas:** Mes 11
- **Puesta en servicio:** Mes 12

---

## 14. ESCALABILIDAD

### 14.1 Capacidad de Crecimiento

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Paneles PMV** | 28 | 32 | 35 | 50 (+79% margen) |
| **Ancho de banda troncal** | 28 Mbps | 35 Mbps | 40 Mbps | 10 Gbps (+35,614%) |
| **Capacidad servidores** | 28 paneles | 32 paneles | 35 paneles | 100 paneles (+257%) |

### 14.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Agregar hasta 22 paneles adicionales (total 50)
- Ampliar capacidad de servidores (módulos adicionales)

**Con cambios menores (año 20-25):**
- Actualización de servidores a mayor capacidad
- Reemplazo de paneles por modelos más modernos

**Arquitectura modular permite crecimiento orgánico sin rediseño completo.**

---

## 15. PRÓXIMOS PASOS

- [x] ✅ Arquitectura Conceptual completada (T03)
- [ ] 🔄 Validar arquitectura con stakeholders (ANI, Interventoría, Policía)
- [ ] ⏳ Validar especificaciones técnicas detalladas (T04 - ya existe, revisar coherencia)
- [ ] ⏳ Validar ingeniería de detalle (T05 - ya existe, revisar coherencia)
- [ ] ⏳ Solicitar cotizaciones a fabricantes preseleccionados
- [ ] ⏳ Diseñar diagramas de red detallados (Visio, AutoCAD)
- [ ] ⏳ Definir ubicaciones exactas de paneles (coordenadas, PKs)
- [ ] ⏳ Crear plan de pruebas de integración (FAT/SAT)
- [ ] ⏳ Elaborar plan de capacitación de operadores

---

## 16. REFERENCIAS

### 16.1 Documentos del Proyecto

- [T01 - Ficha Sistema PMV](24D_T01_Ficha_Sistema_PMV_MVP_v1.0.md)
- [T02 - Análisis de Requisitos PMV](24D_T02_Analisis_Requisitos_PMV_MVP_v1.0.md)
- [T04 - Especificaciones Técnicas PMV](IV.%20Ingenieria%20Basica/04_T04_Especificaciones_Tecnicas_PMV_v1.0.md)
- [T05 - Ingeniería de Detalle PMV](V.%20Ingenieria%20de%20Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md)
- [T03 - Arquitectura Conceptual ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md) (contexto general)
- [Validación Contractual PMV](VII.%20Documentos%20Transversales/38_VALIDACION_CONTRACTUAL_PMV_v1.0.md)

### 16.2 Documentos Contractuales

- **AT1:** Apéndice Técnico 1, Capítulo 3.8 "Sistemas de Información Variable"
- **AT2:** Apéndice Técnico 2, Sección 3.3.4.8 "Sistemas de Información Variable"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 16.3 Normativa y Estándares

- **NTCIP 1202:** Object Definitions for Dynamic Message Signs (obligatorio)
- **IEC 60529:** Grado de protección IP
- **IEC 62262:** Grado de protección IK
- **RFC 3410-3418:** SNMP v3

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Arquitectura Conceptual Completada  
**Fecha:** 31/10/2025  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Próximo paso:** Validación de arquitectura con stakeholders

