# T03: ARQUITECTURA CONCEPTUAL - ESTACIONES METEOROLÓGICAS
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 21 de Enero 2026  
**Sistema:** Estaciones Meteorológicas - Sistema de Monitoreo Climático  
**Responsable:** Ingeniero Ambiental / Arquitecto de Sistemas  
**Versión:** 1.5 MVP (Reconciliado Industrial Class)  
**Estado:** ✅ Arquitectura Validada y Reconciliada (Versión Industrial)

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Estaciones Meteorológicas para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de alto nivel del sistema de estaciones meteorológicas
- Arquitectura de componentes de estaciones meteorológicas
- Topología de red y comunicaciones específica
- Flujo de datos meteorológicos
- Integración con CCO, SCADA, ANI, Policía de Carreteras y sistemas ITS
- Redundancia y disponibilidad
- Arquitectura de seguridad
- Despliegue físico

### 1.2 Alcance

Esta arquitectura cubre el **Sistema de Estaciones Meteorológicas** en 3 ubicaciones estratégicas:

- **Cantidad:** 3 estaciones meteorológicas
- **Distribución:** 2 en peajes IP/REV + 1 en CCO
- **Cobertura geográfica:** Corredor completo (RN 4510, RN 4511, RN 4513)
- **Integración:** CCO La Lizama PK 4+300 (RN 4513)

**Configuración:**
- **2 Estaciones en Peajes IP/REV:**
  - Peaje Zambito (RN 4510)
  - Peaje Aguas Negras (RN 4511)
- **1 Estación en CCO:**
  - CCO La Lizama PK 4+300 (RN 4513)
- **Total: 3 estaciones meteorológicas**

### 1.3 Referencias

- **T01:** `24G_T01_Ficha_Sistema_Estaciones_Meteorologicas_MVP_v1.0.md`
- **T02:** `24G_T02_Analisis_Requisitos_Estaciones_Meteorologicas_MVP_v1.0.md`
- **T04:** `07_T04_Especificaciones_Tecnicas_Estaciones_Meteorologicas_v1.0.md`
- **T05:** `09_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md`
- **T03 ITS:** `53_T03_Arquitectura_Conceptual_ITS_v1.0.md` (contexto general)
- **Validación:** `26_VALIDACION_CONTRACTUAL_ESTACIONES_METEOROLOGICAS_v1.0.md`
- **AT2:** Apéndice Técnico 2, Sección 3.3.11.2 "Sistemas de Comunicación"
- **AT2:** Apéndice Técnico 2, Sección 3.3.3.2.3 "Emisora de Radio"
- **AT2:** Apéndice Técnico 2, Sección 4.2.2 "Informes Mensuales"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **Resolución 546/2018:** IP/REV - Monitoreo ambiental en peajes
- **NTC 5660:** Norma Técnica Colombiana para estaciones meteorológicas

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema de Estaciones Meteorológicas

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    CAMPO (3 ubicaciones estratégicas)                  │
│                                                                          │
│  ┌──────────────────────┐  ┌──────────────────────┐  ┌──────────────┐ │
│  │  Peaje Zambito       │  │  Peaje Aguas Negras  │  │  CCO La      │ │
│  │  (RN 4510)           │  │  (RN 4511)           │  │  Lizama      │ │
│  │                      │  │                      │  │  PK 4+300    │ │
│  │  ┌────────────────┐  │  │  ┌────────────────┐  │  │  (RN 4513)  │ │
│  │  │ Estación        │  │  │  │ Estación        │  │  │             │ │
│  │  │ Meteorológica   │  │  │  │ Meteorológica   │  │  │  ┌────────┐ │ │
│  │  │ #1              │  │  │  │ #2              │  │  │  │Estación│ │ │
│  │  │ Davis Pro2       │  │  │  │ Davis Pro2      │  │  │  │Meteo   │ │ │
│  │  │ + WeatherLink    │  │  │  │ + WeatherLink   │  │  │  │#3      │ │ │
│  │  └────────┬─────────┘  │  │  └────────┬─────────┘  │  │  │Davis   │ │ │
│  └───────────┼─────────────┘  └───────────┼─────────────┘  │  │Pro2    │ │ │
│              │                             │                │  └────────┘ │ │
│              │                             │                └──────────────┘ │
│              └──────────────┬──────────────┘                                │
│                             │                                                │
│                    ┌────────▼────────┐                                       │
│                    │ WeatherLink API  │  Nube (comunicación)                 │
│                    │ (Cloud Service)  │                                       │
│                    └────────┬─────────┘                                       │
└────────────────────────────┼──────────────────────────────────────────────────┘
                             │
                    ┌────────▼────────┐
                    │ Red Troncal FO  │  Fibra Óptica Monomodo (opcional)
                    │  (Backbone)     │  Protocolo: Ethernet/IP
                    └────────┬────────┘
                             │
┌────────────────────────────▼──────────────────────────────────────────────────┐
│                    CCO (Centro de Control)                                     │
│                    Ubicado en La Lizama PK 4+300 (RN 4513)                  │
│                                                                               │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐                      │
│  │  Switches    │  │  Servidores  │  │  Servidores  │                      │
│  │   Core       │  │   Gestión    │  │   SCADA      │                      │
│  │ 10 Gbps      │  │   Meteorología│  │  (Monitoreo) │                      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘                      │
│         └──────────────────┴──────────────────┘                            │
│                            │                                                  │
│  ┌─────────────────────────▼───────────────────────┐                        │
│  │        Estaciones de Trabajo Operadores         │                        │
│  │        (2-4 puestos, monitores)                 │                        │
│  │        - Visualización de datos meteorológicos  │                        │
│  │        - Gestión de reportes                    │                        │
│  │        - Control de información para PMV/emisora│                        │
│  └─────────────────────────────────────────────────┘                        │
│                            │                                                  │
│  ┌─────────────────────────▼───────────────────────┐                        │
│  │        Sistemas Externos                       │                        │
│  │        - ANI (reportes horarios/diarios)       │                        │
│  │        - Policía de Carreteras (acceso tiempo real)│                    │
│  │        - PMV (información para usuarios)       │                        │
│  │        - Emisora de Radio (información confiable)│                      │
│  └─────────────────────────────────────────────────┘                        │
│                                                                               │
└───────────────────────────────────────────────────────────────────────────────┘
```

### 2.2 Descripción de Componentes Principales

| Componente | Función | Cantidad | Especificación |
|:-----------|:--------|:---------|:---------------|
| **Estaciones Meteo Industriales** | Medición multivariable | **3 unidades** | Compacta, ultrasonido viento, visibilímetro óptico |
| **Gateway de Comunicación** | Modbus/SNMP over IP | 3 unidades | Conversión a red troncal, IP66 |
| **Sistema de Integración SCADA** | Gestión y procesamiento | 1 unidad | Integración nativa, base de datos local |
| **Servidores Gestión Meteorología** | Control y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Servidores SCADA** | Monitoreo y gestión | 2-3 unidades | Alta disponibilidad, VM |
| **Estaciones Operador** | Control y monitoreo | 2-4 puestos | Monitores, software de gestión |
| **Red Troncal FO** | Backbone de comunicaciones (opcional) | Derivación | Fibra monomodo G.652.D, anillo redundante |
| **Switches Core (CCO)** | Agregación y routing | 4 unidades | 10 Gbps, redundante N+1 |

---

## 3. ARQUITECTURA DE COMPONENTES DE ESTACIONES METEOROLÓGICAS

### 3.1 Diagrama de Componentes Internos (Estación Meteorológica Davis Pro2)

```
┌─────────────────────────────────────────────────────────────┐
│                    ESTACIÓN METEOROLÓGICA (Unidad Completa)│
│                    Davis Vantage Pro2 Plus                │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  SENSORES METEOROLÓGICOS (IP65)                      │ │
│  │                                                       │ │
│  │  ┌──────────────┐  ┌──────────────┐  ┌────────────┐ │ │
│  │  │  Sensor      │  │  Sensor      │  │  Sensor    │ │ │
│  │  │  Temperatura │  │  Humedad     │  │  Presión   │ │ │
│  │  │  -40°C a     │  │  0-100% HR   │  │  880-1080  │ │ │
│  │  │  +65°C       │  │  ±2% HR      │  │  hPa       │ │ │
│  │  │  ±0.5°C      │  │              │  │  ±1.0 hPa  │ │ │
│  │  └──────────────┘  └──────────────┘  └────────────┘ │ │
│  │                                                       │ │
│  │  ┌──────────────┐  ┌──────────────┐  ┌────────────┐ │ │
│  │  │  Pluviómetro │  │  Anemómetro  │  │  Piranómetro│ │ │
│  │  │  Precipitación│  │  Viento      │  │  Radiación  │ │ │
│  │  │  0.2 mm res. │  │  3-241 km/h  │  │  Solar      │ │ │
│  │  │  ±2%         │  │  ±3% o ±0.3  │  │  W/m²       │ │ │
│  │  │              │  │  m/s         │  │             │ │ │
│  │  └──────────────┘  └──────────────┘  └────────────┘ │ │
│  │                                                       │ │
│  │  ┌──────────────┐                                    │ │
│  │  │  Veleta      │  Dirección del viento              │ │
│  │  │  Viento      │  0-360°                            │ │
│  │  │              │  ±3°                               │ │
│  │  └──────────────┘                                    │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  GABINETE CONTROL (IP65)                             │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  DATALOGGER (Procesador Central)               │ │ │
│  │  │  - Procesador ARM Cortex-A9 (1.2 GHz)         │ │ │
│  │  │  - RAM 512 MB                                  │ │ │
│  │  │  - Flash 64 MB (almacenamiento local)          │ │ │
│  │  │  - Frecuencia medición: Cada 2.5 segundos     │ │ │
│  │  │  - Protocolos: API REST, SNMP v3, TCP/IP      │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROCESADOR DE DATOS                          │ │ │
│  │  │  - Cálculo de promedios, máximos, mínimos    │ │ │
│  │  │  - Validación de datos                        │ │ │
│  │  │  - Almacenamiento local (≥30 días)            │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  WEATHERLINK LIVE (Comunicación)              │ │ │
│  │  │  - API REST (nube)                            │ │ │
│  │  │  - Ethernet directo (opcional)                 │ │ │
│  │  │  - Sincronización automática                   │ │ │
│  │  │  - Almacenamiento nube (histórico)              │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  SISTEMA DE ALIMENTACIÓN                      │ │ │
│  │  │  - Panel solar 150W (principal)              │ │ │
│  │  │  - Batería 12V 100Ah × 2 (respaldo)           │ │ │
│  │  │  - Autonomía: 7 días sin sol                  │ │ │
│  │  │  - Alternativa: Conexión a red eléctrica      │ │ │
│  │  │  - Controlador solar MPPT                     │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  │  ┌───────────────────────────────────────────────┐ │ │
│  │  │  PROTECCIÓN ELÉCTRICA                         │ │ │
│  │  │  - DPS (Supresor de picos) Clase II, 20 kA  │ │ │
│  │  │  - Breaker principal 20A                      │ │ │
│  │  │  - Fusibles secundarios                       │ │ │
│  │  │  - Puesta a tierra <10 Ω                     │ │ │
│  │  └───────────────────────────────────────────────┘ │ │
│  │                                                       │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
│  ┌───────────────────────────────────────────────────────┐ │
│  │  CONEXIÓN EXTERNA                                     │ │
│  │  - WeatherLink API (nube) - Principal                │ │
│  │  - Ethernet directo (opcional) - Secundario          │ │
│  │  - Alimentación solar + batería                      │ │
│  │  - Puesta a tierra (SPT)                             │ │
│  └───────────────────────────────────────────────────────┘ │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Flujo de Datos Meteorológicos

```
Estación Meteorológica mide variables cada 2.5 segundos
         │
         ▼
Datalogger procesa y almacena datos localmente
         │
         ▼
WeatherLink Live transmite datos a la nube (API REST)
         │
         ├─ Transmisión exitosa → Datos en nube
         │
         └─ Falla de comunicación → Almacenamiento local (sincronización posterior)
                  │
                  ▼
         SCADA/CCO consume API REST cada 5 minutos
                  │
                  ▼
         Procesamiento y almacenamiento en CCO
                  │
                  ├─ Generación de reportes horarios (24/día)
                  ├─ Generación de reportes consolidados diarios
                  ├─ Información para PMV (tiempo real)
                  ├─ Información para emisora de radio (cada 15 min)
                  └─ Transmisión a ANI y Policía de Carreteras
```

---

## 4. ARQUITECTURA DE RED ESPECÍFICA PARA ESTACIONES METEOROLÓGICAS

### 4.1 Topología de Red

**Opción 1: WeatherLink API (Nube) - RECOMENDADA**

```
                    [Estaciones Meteorológicas (3 unidades)]
                    Peaje Zambito + Peaje Aguas Negras + CCO
                              │
                              │ WeatherLink API (Internet)
                              │
                    ┌─────────▼─────────┐
                    │ WeatherLink Cloud │  Servicio en la nube
                    │  (Almacenamiento) │  API REST
                    └─────────┬─────────┘
                              │
                              │ API REST (cada 5 minutos)
                              ▼
                    ┌─────────────────────┐
                    │  CCO La Lizama      │
                    │  Servidores SCADA   │
                    │  Consumo de API     │
                    └─────────────────────┘
```

**Opción 2: Ethernet Directo (Opcional)**

```
                    [Estaciones Meteorológicas (3 unidades)]
                    Peaje Zambito + Peaje Aguas Negras + CCO
                              │
                              │ Ethernet (Fibra Óptica)
                              │
                    ┌─────────▼─────────┐
                    │  Red Troncal FO   │  Fibra Óptica Monomodo
                    │  (Backbone)       │  Protocolo: Ethernet/IP
                    └─────────┬─────────┘
                              │
                              │ Ethernet (Gigabit)
                              ▼
                    ┌─────────────────────┐
                    │  CCO La Lizama      │
                    │  Switches Core      │
                    │  Servidores SCADA   │
                    └─────────────────────┘
```

### 4.2 Segmentación de Red (VLAN)

| VLAN | Descripción | ID | Equipos |
|:-----|:------------|:---|:--------|
| **VLAN-ITS** | Red ITS general | 100 | Estaciones Meteorológicas, CCTV, PMV, ETD/RADAR, SOS, WIM, etc. |
| **VLAN-MGMT** | Gestión y monitoreo | 200 | Switches, servidores, SCADA |

**Nota:** Estaciones Meteorológicas usan VLAN-ITS o comunicación vía WeatherLink API (nube).

### 4.3 Ancho de Banda y Dimensionamiento

| Tipo de Tráfico | Ancho de Banda por Estación | Total (3 estaciones) | Prioridad |
|:----------------|:----------------------------|:---------------------|:-----------|
| **Datos meteorológicos** | <1 kbps | <3 kbps | 🔴 Alta (QoS) |
| **Reportes horarios** | <0.5 kbps (por evento) | <1.5 kbps (pico) | 🔴 Alta (QoS) |
| **Monitoreo SNMP** | <0.1 kbps | <0.3 kbps | 🟡 Media |
| **Actualización firmware** | <100 kbps (ocasional) | <300 kbps (ocasional) | 🟡 Media |
| **TOTAL (pico)** | ~1 kbps | **~3 kbps** | - |

**Dimensionamiento de red:**
- **Por estación:** 1 Mbps (Ethernet) → Margen 99.9%
- **Agregación:** 10 Mbps → Margen 99.97%
- **Troncal:** 10 Gbps → Margen 99.9997%

**Nota:** Si se usa WeatherLink API (nube), el ancho de banda es mínimo (solo consumo de API desde CCO).

---

## 5. INTEGRACIÓN CON CCO Y SISTEMAS EXTERNOS

### 5.1 Arquitectura de Integración

```
┌─────────────────────────────────────────────────────────────┐
│                    ESTACIONES METEOROLÓGICAS (3 unidades)   │
│                    Peaje Zambito + Peaje Aguas Negras + CCO│
└──────────────────────┬──────────────────────────────────────┘
                       │
                       │ WeatherLink API (nube) o Ethernet directo
                       ▼
┌─────────────────────────────────────────────────────────────┐
│                    CCO La Lizama                            │
│                    PK 4+300 (RN 4513)                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Servidor    │  │  Servidor    │  │  Servidor    │      │
│  │  Gestión     │  │  SCADA       │  │  Base de     │      │
│  │  Meteorología│  │  (Monitoreo) │  │  Datos       │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                 │                 │               │
│         └─────────────────┴─────────────────┘               │
│                            │                                │
│  ┌─────────────────────────▼───────────────────────┐      │
│  │        Estación Operador CCO                      │      │
│  │        - Visualización de datos meteorológicos    │      │
│  │        - Gestión de reportes                      │      │
│  │        - Control de información para PMV/emisora  │      │
│  └─────────────────────────┬───────────────────────┘      │
│                            │                                │
└────────────────────────────┼────────────────────────────────┘
                             │
                             │ API REST / WebService
                             ▼
┌─────────────────────────────────────────────────────────────┐
│                    Sistemas Externos                       │
│                                                             │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  ANI          │  │  Policía de  │  │  PMV         │      │
│  │  (Reportes    │  │  Carreteras  │  │  (Información│      │
│  │  horarios/    │  │  (Acceso     │  │  usuarios)   │      │
│  │  diarios)     │  │  tiempo real)│  │              │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
│                                                             │
│  ┌──────────────┐                                          │
│  │  Emisora de  │                                          │
│  │  Radio       │                                          │
│  │  (Información│                                          │
│  │  confiable)  │                                          │
│  └──────────────┘                                          │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 5.2 Protocolos de Integración

| Interface | Protocolo | Datos Intercambiados | Frecuencia |
|:----------|:----------|:---------------------|:-----------|
| **Estación Meteorológica ↔ WeatherLink API** | API REST (nube) | Datos meteorológicos en tiempo real | Cada 2.5 seg (medición), cada 5 min (transmisión) |
| **Estación Meteorológica ↔ SCADA** | SNMP v3, API REST | Estado de estaciones, alarmas | Cada 5 min |
| **CCO ↔ ANI** | API REST (vía CCO) | Reportes horarios y consolidados diarios | Horaria (reportes), diaria (consolidados) |
| **CCO ↔ Policía de Carreteras** | API REST (vía CCO) | Acceso en tiempo real a condiciones meteorológicas | Tiempo real |
| **CCO ↔ PMV** | API REST (vía CCO) | Información meteorológica para usuarios | Tiempo real |
| **CCO ↔ Emisora de Radio** | API REST / PDF (vía CCO) | Información confiable sobre situaciones meteorológicas | Cada 15 min |

---

## 6. ARQUITECTURA DE REDUNDANCIA Y DISPONIBILIDAD

### 6.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **WeatherLink API (Nube)** | Servicio en la nube | Redundancia del proveedor | Alta disponibilidad de servicio |
| **Almacenamiento Local** | Respaldo local | Almacenamiento ≥30 días en datalogger | Continuidad ante falla de comunicación |
| **Alimentación** | Principal + Respaldo | Solar + batería (7 días autonomía) | Operación continua |
| **Comunicación** | Principal + Secundaria | WeatherLink API (principal) + Ethernet directo (secundario) | Redundancia de comunicación |
| **Servidores CCO** | N+1 | 2-3 servidores (VM, alta disponibilidad) | Continuidad de control |

### 6.2 Disponibilidad del Sistema

**Disponibilidad objetivo:** ≥95% anual (requisito contractual implícito)

**Cálculo de disponibilidad:**
- **Estación individual:** MTBF = 10,000 horas, MTTR = 48 horas
  - Disponibilidad = MTBF / (MTBF + MTTR) = 10,000 / 10,048 = **99.52%**
- **Sistema completo (3 estaciones):**
  - Disponibilidad sistema = (Disponibilidad estación)^3 = 99.52%^3 = **98.6%**
  - **Con redundancia de comunicación y servidores:** ≥ **99%** ✅

**Estrategias para cumplir ≥95%:**
- ✅ Redundancia de comunicación (WeatherLink API + Ethernet directo)
- ✅ Almacenamiento local (sincronización posterior)
- ✅ Monitoreo proactivo (SCADA)
- ✅ Mantenimiento preventivo semestral
- ✅ Stock de repuestos críticos
- ✅ Tiempo de respuesta de mantenimiento ≤48 horas

---

## 7. ARQUITECTURA DE SEGURIDAD

### 7.1 Seguridad de Comunicaciones

| Aspecto | Implementación | Estándar |
|:--------|:---------------|:---------|
| **Cifrado de comunicación** | TLS 1.2 mínimo | RFC 5246 |
| **Autenticación de acceso** | Credenciales robustas, roles | ISO 27001 |
| **Segmentación de red** | VLAN dedicada (VLAN-ITS) | IEEE 802.1Q |
| **Control de acceso** | Firewall en switches L3 | - |
| **Monitoreo de seguridad** | IDS/IPS en red troncal | - |

### 7.2 Seguridad Física

| Componente | Protección | Especificación |
|:-----------|:-----------|:---------------|
| **Estación Meteorológica** | Protección ambiental | IP65 (estanco a polvo y agua) |
| **Gabinete control** | Protección ambiental | IP65 (estanco a polvo y agua) |
| **Mástil** | Protección física | Acero galvanizado, altura 10m |

### 7.3 Seguridad de Datos

- **Datos meteorológicos:** Base de datos con auditoría, no modificable
- **Reportes:** Integridad garantizada, no modificable
- **Control de acceso:** Solo personal autorizado (roles: operador, supervisor, admin, ANI, Policía)
- **Logs de auditoría:** Todas las acciones registradas

---

## 8. ARQUITECTURA DE MONITOREO Y GESTIÓN

### 8.1 Sistema SCADA para Estaciones Meteorológicas

```
┌─────────────────────────────────────────────────────────────┐
│                    ESTACIONES METEOROLÓGICAS (3 unidades)   │
│                    Peaje Zambito + Peaje Aguas Negras + CCO│
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
│  │  (API/SNMP)  │  │  (Alertas)   │  │  (Histórico) │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                 │                 │               │
│         └─────────────────┴─────────────────┘               │
│                            │                                 │
│  ┌─────────────────────────▼───────────────────────┐       │
│  │        Dashboard Operador                        │       │
│  │        - Estado de estaciones                     │       │
│  │        - Alertas de falla                         │       │
│  │        - Reportes de disponibilidad               │       │
│  │        - Estadísticas meteorológicas              │       │
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
| **Estado de alimentación** | Cada 5 min | Batería < 20% | Alerta preventiva |
| **Precisión de medición** | Diaria | Desviación > ±5% | Alerta de calibración |
| **Disponibilidad mensual** | Mensual | < 95% | Reporte a gerencia |

---

## 9. DESPLIEGUE FÍSICO

### 9.1 Ubicaciones de las Estaciones

| Estación | Ubicación | Referencia | Función |
|:---------|:----------|:-----------|:--------|
| **Estación 1** | **Peaje Zambito** | RN 4510 | Monitoreo ambiental en peaje IP/REV |
| **Estación 2** | **Peaje Aguas Negras** | RN 4511 | Monitoreo ambiental en peaje IP/REV |
| **Estación 3** | **CCO La Lizama** | PK 4+300 (RN 4513) | Monitoreo centralizado |

### 9.2 Distribución de Estaciones

| Ubicación | Cantidad | Función |
|:----------|:---------|:--------|
| **Peajes IP/REV** | 2 unidades | Monitoreo ambiental obligatorio (Res. 546/2018) |
| **CCO** | 1 unidad | Monitoreo centralizado y supervisión |
| **TOTAL** | **3 unidades** | Sistema completo de monitoreo climático |

### 9.3 Infraestructura Complementaria

| Componente | Descripción | Ubicación |
|:-----------|:------------|:----------|
| **Mástil** | Mástil 10m galvanizado para sensores | Cada estación |
| **Gabinete** | Gabinete IP66 con ventilación | Cada estación |
| **Panel Solar** | Panel solar 150W + baterías | Cada estación |
| **Sistema de Tierras** | Puesta a tierra <10 Ω | Cada estación |

---

## 10. TECNOLOGÍAS Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar/Versión | Justificación |
|:----------|:-----------|:-----------------|:--------------|
| **Estación Meteorológica** | Davis Vantage Pro2 Plus | NTC 5660, WMO | Estándar de industria, precisión según NTC 5660 |
| **Comunicación** | WeatherLink API (nube) | API REST | Comunicación confiable, almacenamiento nube |
| **Red de datos** | Ethernet (opcional) | IEEE 802.3 | Estándar universal |
| **Fibra óptica** | Monomodo G.652.D (opcional) | ITU-T G.652 | Larga distancia, baja atenuación |
| **Alimentación** | Solar + batería | RETIE | Operación autónoma |
| **Monitoreo** | SNMP v3 | RFC 3410-3418 | Gestión de red estándar |
| **Protección IP** | IP65/IK08 | IEC 60529, IEC 62262 | Resistencia ambiental y vandalismo |

### 10.2 Interoperabilidad

- **Con sistemas CCO:** Protocolo API REST estándar (compatible con cualquier sistema de gestión)
- **Con sistemas ITS:** VLAN dedicada, protocolo IP estándar
- **Entre fabricantes:** Estándares abiertos (API REST, SNMP, IP) permiten multi-vendor

---

## 11. ANÁLISIS DE ALTERNATIVAS

### 11.1 Alternativa 1: Solución Propietaria Integrada

**Descripción:** Sistema meteorológico completo de un solo fabricante (ej: Lufft VS20k, Vaisala)

**Ventajas:**
- Integración garantizada
- Soporte unificado
- Interfaz única

**Desventajas:**
- Vendor lock-in (dependencia de un proveedor)
- Costo alto (falta de competencia)
- Difícil escalabilidad con terceros

**Costo estimado:** $150,000-$200,000 USD

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

**Costo estimado:** $180,000 USD (estaciones profesionales completas con torres, sensores avanzados)

**Justificación de selección:**
- ✅ Cumple con todos los requisitos contractuales (AT2, Res. 546/2018)
- ✅ Reduce costos mediante competencia
- ✅ Garantiza sostenibilidad a largo plazo (25 años)
- ✅ Facilita reemplazo por obsolescencia tecnológica
- ✅ **Modelo probado en proyectos APP colombianos exitosos**

---

## 12. PLAN DE IMPLEMENTACIÓN

### 12.1 Fases de Implementación

| Fase | Actividad | Duración | Hito |
|:-----|:----------|:---------|:-----|
| **Fase 1** | Diseño detallado y especificaciones | 1 mes | H1: Especificaciones aprobadas |
| **Fase 2** | Adquisición de equipos | 2 meses | H2: Equipos recibidos |
| **Fase 3** | Instalación de estaciones | 1 mes | H3: 100% estaciones instaladas |
| **Fase 4** | Integración con CCO | 1 mes | H4: Sistema integrado |
| **Fase 5** | Pruebas y comisionamiento | 1 mes | H5: Sistema operativo |
| **Fase 6** | Puesta en servicio | 1 mes | H6: Sistema en operación |

**Duración total:** 7 meses

**Nota especial:** La instalación de estaciones puede requerir coordinación con obras de peajes y CCO.

### 12.2 Cronograma por Componente

- **Estación Peaje Zambito:** Meses 3-4 (instalación)
- **Estación Peaje Aguas Negras:** Meses 3-4 (instalación)
- **Estación CCO:** Meses 4-5 (instalación)
- **Integración CCO:** Mes 5
- **Pruebas:** Mes 6
- **Puesta en servicio:** Mes 7

---

## 13. ESCALABILIDAD

### 13.1 Capacidad de Crecimiento

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Estaciones Meteorológicas** | 3 | 3 | 3 | 3 (fija según contrato) |
| **Ancho de banda troncal** | 3 kbps | 3 kbps | 3 kbps | 10 Gbps (+333,333,000%) |
| **Capacidad servidores** | 3 estaciones | 3 estaciones | 3 estaciones | 10 estaciones (+233%) |
| **Volumen de datos** | ~1 MB/día | ~1 MB/día | ~1 MB/día | ~10 MB/día (+900%) |

### 13.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 25):**
- Sistema fijo según contrato (3 estaciones)
- Capacidad suficiente para expansión futura

**Con cambios menores (año 20-25):**
- Actualización de servidores a mayor capacidad
- Reemplazo de estaciones por modelos más modernos

**Arquitectura modular permite actualizaciones sin rediseño completo.**

---

## 14. PRÓXIMOS PASOS

- [x] ✅ Arquitectura Conceptual completada (T03)
- [ ] 🔄 Validar arquitectura con stakeholders (ANI, Interventoría)
- [ ] ⏳ Validar especificaciones técnicas detalladas (T04 - ya existe, revisar coherencia)
- [ ] ⏳ Validar ingeniería de detalle (T05 - ya existe, revisar coherencia)
- [ ] ⏳ Solicitar cotizaciones a fabricantes preseleccionados
- [ ] ⏳ Diseñar diagramas de red detallados (Visio, AutoCAD)
- [ ] ⏳ Definir ubicación exacta de estaciones (coordenadas, PK)
- [ ] ⏳ Crear plan de pruebas de integración (FAT/SAT)
- [ ] ⏳ Elaborar plan de capacitación de operadores
- [ ] ⏳ Coordinar con ANI para protocolos de reporte

---

## 15. REFERENCIAS

### 15.1 Documentos del Proyecto

- [T01 - Ficha Sistema Estaciones Meteorológicas](24G_T01_Ficha_Sistema_Estaciones_Meteorologicas_MVP_v1.0.md)
- [T02 - Análisis de Requisitos Estaciones Meteorológicas](24G_T02_Analisis_Requisitos_Estaciones_Meteorologicas_MVP_v1.0.md)
- [T04 - Especificaciones Técnicas Estaciones Meteorológicas](IV.%20Ingenieria%20Basica/07_T04_Especificaciones_Tecnicas_Estaciones_Meteorologicas_v1.0.md)
- [T05 - Ingeniería de Detalle Estaciones Meteorológicas](V.%20Ingenieria%20de%20Detalle/09_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md)
- [T03 - Arquitectura Conceptual ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md) (contexto general)
- [Validación Contractual Estaciones Meteorológicas](VII.%20Documentos%20Transversales/26_VALIDACION_CONTRACTUAL_ESTACIONES_METEOROLOGICAS_v1.0.md)

### 15.2 Documentos Contractuales

- **AT2:** Apéndice Técnico 2, Sección 3.3.11.2 "Sistemas de Comunicación"
- **AT2:** Apéndice Técnico 2, Sección 3.3.3.2.3 "Emisora de Radio"
- **AT2:** Apéndice Técnico 2, Sección 4.2.2 "Informes Mensuales"
- **AT3:** Apéndice Técnico 3, Capítulo IV "Sistemas ITS"
- **Resolución 546/2018:** IP/REV - Monitoreo ambiental en peajes

### 15.3 Normativa y Estándares

- **NTC 5660:** Norma Técnica Colombiana para estaciones meteorológicas
- **Resolución 546/2018:** IP/REV - Monitoreo ambiental en peajes
- **WMO:** Organización Meteorológica Mundial (estándares internacionales)
- **ISO TC-204:** Estándares ITS

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Arquitectura Conceptual Completada  
**Fecha:** 31/10/2025  
**Responsable:** Ingeniero Ambiental / Arquitecto de Sistemas  
**Próximo paso:** Validación de arquitectura con stakeholders

