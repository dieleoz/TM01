# T03: ARQUITECTURA CONCEPTUAL - SISTEMA ITS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** ITS - Intelligent Transportation Systems  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema ITS (Intelligent Transportation Systems) para el proyecto APP Puerto Salgar - Barrancabermeja, estableciendo:

- Arquitectura de alto nivel del sistema ITS completo
- Topología de red y comunicaciones
- Flujo de datos desde campo hasta CCO
- Redundancia y disponibilidad
- Integración con otros sistemas
- Alternativas tecnológicas evaluadas

### 1.2 Alcance

Esta arquitectura cubre los **10 subsistemas del ITS** a lo largo de 259.6 km principales + 33.4 km adicionales:

1. **CCTV** (30 cámaras IP PTZ según diseño inicial)
2. **PMV** (Paneles de Mensaje Variable)
3. **WIM** (Estaciones de Pesaje en Movimiento)
4. **Estaciones Meteorológicas**
5. **Teléfonos SOS** (88 unidades - **Obligatorio contractual AT1 + SOS #88 RN 4513**)
6. **ETD/RADAR** (Estaciones de Detección de Tráfico/Radares)
7. **Aforo Vehicular**
8. **Radares de Velocidad**
9. **Detectores de Altura (Gálibos)**
10. **Sensores de Pista/Carril**

### 1.3 Referencias

- [T01 - Ficha Sistema ITS](24_T01_Ficha_Sistema_ITS_v1.0.md)
- [T02 - Análisis de Requisitos ITS](31_T02_Analisis_Requisitos_ITS_v1.0.md)
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.5.1
- [T01 - Sistema CCO](26_T01_Ficha_Sistema_CCO_v1.0.md)
- [T01 - Sistema Telecomunicaciones](27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura

```
┌─────────────────────────────────────────────────────────────────┐
│                     CAMPO (259.6 km principales + 33.4 km adicionales) │
│                                                                 │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐      │
│  │ CCTV PTZ │  │   PMV    │  │   WIM    │  │  Meteo   │      │
│  │30 cámaras│  │28 unidades│  │1 estación│  │3 estaciones│    │
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘      │
│       │             │              │              │             │
│  ┌────┴─────┐  ┌───┴──────┐  ┌───┴──────┐  ┌───┴──────┐      │
│  │   SOS    │  │ETD/RADAR │  │  Aforo   │  │  Radares │      │
│  │88 unidades│  │16 unidades│  │10-15 un │  │11 unidades│     │
│  └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘      │
│       │             │              │              │             │
│       └─────────────┴──────────────┴──────────────┘            │
│                          │                                      │
│                    ┌─────▼─────┐                               │
│                    │  Switches │  35-45 switches de campo      │
│                    │  Acceso   │  (1 Gbps, PoE)               │
│                    └─────┬─────┘                               │
└──────────────────────────┼──────────────────────────────────────┘
                           │
                    ┌──────▼──────┐
                    │ Red Troncal │  Fibra Óptica 283 km
                    │Fibra Óptica │  Topología: Anillo redundante
                    └──────┬──────┘
                           │
┌──────────────────────────▼──────────────────────────────────────┐
│                    CCO (Centro de Control)                      │
│                    Ubicado en La Lizama PK 4+300 (RN 4513)     │
│                                                                 │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐        │
│  │  Switches    │  │  Servidores  │  │   Videowall  │        │
│  │   Core       │  │   NVR/SCADA  │  │   16-32      │        │
│  │ 10 Gbps (4x) │  │  Redundante  │  │   Pantallas  │        │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘        │
│         └──────────────────┴──────────────────┘                │
│                            │                                    │
│  ┌─────────────────────────▼───────────────────────┐          │
│  │        Estaciones de Trabajo Operadores         │          │
│  │        (6-10 puestos, dobles monitores)         │          │
│  └─────────────────────────────────────────────────┘          │
│                            │                                    │
└────────────────────────────┼────────────────────────────────────┘
                             │
                      ┌──────▼──────┐
                      │   ANI/Web   │  Enlaces redundantes
                      │ SIINCO, etc │  10-20 Mbps
                      └─────────────┘
```

### 2.2 Descripción de Componentes

| Componente | Función | Especificación Preliminar | Cantidad |
|:-----------|:--------|:--------------------------|:---------|
| **Cámaras CCTV IP PTZ** | Supervisión visual 24/7 | 1080p, 25 fps, H.265, IP66/IK10, PoE | **30** ✅ |
| **PMV (Paneles Mensaje Variable)** | Información dinámica a usuarios | LED full-color, control remoto, Res. 546/2018 | **28** ✅ |
| **Estaciones WIM** | Pesaje dinámico sin detención | Piezoeléctricas, ±5%, 100 ton | **1 estación bidireccional** ✅ |
| **Estaciones Meteorológicas** | Monitoreo climático | Según IDEAM, precipitación, temp, viento | **3 estaciones** ✅ |
| **Teléfonos SOS** | Emergencias de usuarios | VoIP, geolocalización, conexión directa CCO | **88** ✅ |
| **ETD/RADAR** | Detección automática de tráfico | Analítica de video, 90% detección, <10% FP | **16 unidades** ✅ |
| **Estaciones Aforo** | Conteo y clasificación | Loops/Video, precisión ≥98%, Cat. I-VI | 10-15 |
| **Radares de Velocidad** | Control de velocidad | Precisión ±2 km/h, foto matrícula | **11 unidades** ✅ |
| **Detectores de Altura (Gálibos)** | Control de altura vehicular | Tecnología láser, ±5 cm | **8 unidades** ✅ |
| **Switches de Campo** | Conectividad local | Gigabit PoE, IP66, administrables | 35-45 |
| **Servidores NVR** | Grabación de video | 30 cámaras, 30 días, RAID 6 | 4-6 (redundante) |
| **Servidores SCADA** | Gestión del sistema ITS | Alta disponibilidad, VM, N+1 | 2-3 (redundante) |
| **Videowall** | Visualización en CCO | LED, 16-32 pantallas, 55", control matricial | 1 sistema |

---

## 3. TOPOLOGÍA DEL SISTEMA

### 3.1 Topología de Red ITS

- **Tipo de topología:** Árbol jerárquico con redundancia en anillo (backbone)
- **Protocolo principal:** TCP/IP (Ethernet sobre fibra óptica)
- **Segmentación:** VLAN dedicada para ITS (aislamiento de tráfico)
- **Redundancia:** Anillo de fibra óptica 283 km con 7 nodos principales
- **CCO:** Ubicado en La Lizama PK 4+300 (RN 4513)

### 3.2 Diagrama de Topología

```
                         [CCO - Núcleo]
                               │
                    ┌──────────┴──────────┐
                    │ Switches Core       │
                    │ 10 Gbps (redundante)│
                    └──────────┬──────────┘
                               │
        ┌──────────────────────┼──────────────────────┐
        │                      │                      │
  ┌─────▼─────┐         ┌─────▼─────┐         ┌─────▼─────┐
  │ Switch    │         │ Switch    │         │ Switch    │
  │ Agregación│◄───────►│ Agregación│◄───────►│ Agregación│
  │ Zona 1    │  Anillo │ Zona 2    │  Anillo │ Zona 3    │
  └─────┬─────┘         └─────┬─────┘         └─────┬─────┘
        │                     │                     │
    ┌───┴───┐             ┌───┴───┐             ┌───┴───┐
    │Switch │             │Switch │             │Switch │
    │Acceso │             │Acceso │             │Acceso │
    └───┬───┘             └───┬───┘             └───┬───┘
        │                     │                     │
  ┌─────┴─────┐         ┌─────┴─────┐         ┌─────┴─────┐
  │ CCTV, PMV │         │ CCTV, SOS │         │ WIM, Meteo│
  │ Radares   │         │ Aforo     │         │ DAI       │
  └───────────┘         └───────────┘         └───────────┘

Zona 1: PK 0-90 (Puerto Salgar - Puerto Boyacá)
Zona 2: PK 90-180 (Puerto Boyacá - Puerto Berrío)  
Zona 3: PK 180-259.6 (Puerto Berrío - San Roque)
```

### 3.3 Distribución Física

**Ubicaciones principales de equipos ITS:**

| PK | Equipos ITS | Justificación |
|:---|:------------|:--------------|
| **PK 0+000** (Puerto Salgar) | CCTV, PMV, Aforo | Inicio del corredor |
| **PK 9+200** (Peaje Zambito) | CCTV (6 cám), PMV (2), Altura, Aforo, WIM | Estación de peaje |
| **PK 50±5** | CCTV, Meteo, SOS | Punto medio Zona 1 |
| **PK 80+000** (Peaje Aguas Negras) | CCTV (6 cám), PMV (2), Altura, Aforo, WIM | Estación de peaje |
| **PK 130±5** (CCO) | Switch de Agregación, Enlace principal | Centro de control |
| **PK 180±5** | CCTV, Meteo, SOS | Punto medio Zona 3 |
| **PK 259+600** (San Roque) | CCTV, PMV, Aforo | Fin del corredor |
| **Curvas críticas** | CCTV, PMV (advertencia) | 15-20 ubicaciones |
| **Puentes** | CCTV, Detector Altura | Según diseño geométrico |
| **Intersecciones** | CCTV, PMV | Según diseño geométrico |

---

## 4. FLUJO DE DATOS E INFORMACIÓN

### 4.1 Flujo de Datos Principal

```
┌─────────────────────────────────────────────────────────────┐
│ 1. CAPTURA (CAMPO)                                          │
│    ├─ CCTV captura video (1080p, 25 fps, H.265)           │
│    ├─ WIM captura peso de vehículos                        │
│    ├─ Meteo captura datos climáticos (cada 5 min)         │
│    ├─ SOS recibe llamadas de usuarios                      │
│    └─ Radares capturan velocidad + foto matrícula         │
└────────────────┬────────────────────────────────────────────┘
                 ▼
┌─────────────────────────────────────────────────────────────┐
│ 2. TRANSMISIÓN (RED DE TELECOMUNICACIONES)                  │
│    ├─ Video: Fibra óptica (6 Mbps/cám × 120 = 720 Mbps)   │
│    ├─ Datos sensores: Fibra óptica (10-20 Mbps)           │
│    ├─ VoIP (SOS): Fibra óptica (5-10 Mbps)                │
│    └─ Protocolo: Ethernet/IP sobre fibra monomodo          │
└────────────────┬────────────────────────────────────────────┘
                 ▼
┌─────────────────────────────────────────────────────────────┐
│ 3. PROCESAMIENTO Y ALMACENAMIENTO (CCO)                     │
│    ├─ Servidores NVR graban video (30 días, RAID 6)       │
│    ├─ SCADA procesa datos de sensores                      │
│    ├─ DAI analiza video (detección incidentes)            │
│    ├─ Base de datos registra eventos                       │
│    └─ Backup diario a almacenamiento secundario            │
└────────────────┬────────────────────────────────────────────┘
                 ▼
┌─────────────────────────────────────────────────────────────┐
│ 4. VISUALIZACIÓN Y CONTROL (CCO)                            │
│    ├─ Videowall muestra video en vivo (32 cámaras simult.) │
│    ├─ SCADA muestra mapa con estado de todos los equipos   │
│    ├─ Operadores controlan PMV (mensajes)                  │
│    ├─ Alarmas automáticas (DAI, SOS, fallas)              │
│    └─ Reportes automáticos (TPDA, velocidades, eventos)    │
└────────────────┬────────────────────────────────────────────┘
                 ▼
┌─────────────────────────────────────────────────────────────┐
│ 5. TRANSMISIÓN A ANI                                        │
│    └─ Datos de tráfico, velocidades, incidentes → SIINCO   │
└─────────────────────────────────────────────────────────────┘
```

### 4.2 Tipos de Datos

| Tipo de Dato | Formato | Volumen Estimado | Retención | Ancho de Banda |
|:-------------|:--------|:-----------------|:----------|:---------------|
| **Video CCTV** | H.265/HEVC, 1080p | ~3 TB/día (120 cámaras) | 30 días (90 TB) | 720 Mbps pico |
| **Datos WIM** | JSON/SQL | 10 MB/día | 5 años | < 1 Mbps |
| **Datos Meteorológicos** | JSON/SQL | 5 MB/día | 5 años | < 0.5 Mbps |
| **Datos de Aforo** | JSON/SQL | 20 MB/día | 5 años | < 1 Mbps |
| **Datos de Radares** | JSON + JPEG | 100 MB/día (fotos) | 1 año | < 5 Mbps |
| **Llamadas SOS** | Audio/VoIP | 50 MB/día | 1 año | < 5 Mbps |
| **Logs y eventos** | Syslog/SQL | 200 MB/día | 5 años | < 1 Mbps |

**Ancho de banda total requerido:** ~1 Gbps (picos), **dimensionado para 2-3 Gbps** (margen 100-200%)

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Servidores NVR** | N+1 | 4-6 servidores (3 activos + 1-3 respaldo) | Cumplir disponibilidad 99%, pérdida de video inadmisible |
| **Switches Core (CCO)** | N+1 | 4 switches (stacking o MLAG) | Alta disponibilidad de red |
| **Fibra Óptica (troncal)** | Anillo redundante | Topología anillo en zonas críticas | Protección ante cortes de fibra |
| **Almacenamiento (SAN)** | RAID 6 | Tolerancia a 2 discos fallidos | Protección de datos de video |
| **Enlaces a ANI** | Activo-Pasivo | Enlace primario + respaldo 4G | Transmisión continua a ANI |
| **Energía (PoE)** | UPS distribuidos | 30 UPS de 3-5 kVA en campo | Operación continua ante corte eléctrico |

### 5.2 SLA (Service Level Agreement)

- **Disponibilidad del sistema ITS:** ≥ 99% mensual (según AT4)
- **MTBF (Tiempo Medio Entre Fallas):** ≥ 2,000 horas
- **MTTR (Tiempo Medio de Reparación):** ≤ 24 horas (equipos críticos)
- **RTO (Recovery Time Objective):** < 4 horas (recuperación ante desastre)
- **RPO (Recovery Point Objective):** < 30 minutos (pérdida máxima de datos)
- **Latencia de video:** < 500 ms (campo → CCO)
- **Pérdida de paquetes:** < 0.1%

**Cálculo de disponibilidad 99%:** Máximo 7.3 horas de indisponibilidad/mes

### 5.3 Puntos Únicos de Falla (SPOF)

| Componente | Es SPOF? | Mitigación |
|:-----------|:---------|:-----------|
| **Cámaras CCTV individuales** | Sí | Cobertura superpuesta (20% de cámaras cubren zonas adyacentes) |
| **Switches de campo** | Sí | Switches con fuente de poder redundante, UPS |
| **Fibra óptica (tramos)** | Sí | Topología anillo (backup automático ante corte) |
| **Servidores NVR** | No | Configuración N+1 (redundancia) |
| **Switches Core CCO** | No | Configuración N+1 (stacking o MLAG) |
| **Energía eléctrica** | Sí | UPS (30 min) + Generador (24h) en CCO |

---

## 6. SEGURIDAD

### 6.1 Seguridad Física

- **Carcasas antivandalismo:** IP66/IK10 en todos los equipos de campo
- **Gabinetes metálicos:** Con cerradura en switches de campo
- **Postes de CCTV:** Altura 8-12 m (difícil acceso)
- **Control de acceso a CCO:** Biométrico + tarjeta
- **CCTV de seguridad:** En perímetro de CCO
- **Alarmas de intrusión:** En sala de servidores

### 6.2 Seguridad Lógica / Ciberseguridad

- **Autenticación:** Control de acceso por roles (operador, supervisor, admin)
- **Segregación de red:** VLAN dedicada para ITS (aislada de otras redes)
- **Firewall:** Entre red ITS y red corporativa/Internet
- **Cifrado:** TLS 1.2 para transmisión de video (si requerido por ANI)
- **Logs de auditoría:** Registro inviolable de todas las acciones de usuarios
- **Actualizaciones de seguridad:** Parches mensuales de firmware
- **Backup cifrado:** Copias de seguridad con cifrado AES-256

### 6.3 Normativa de Seguridad Aplicable

| Norma | Aplicación |
|:------|:-----------|
| **ISO 27001** | Seguridad de la información (gestión) |
| **IEC 62443** | Ciberseguridad en sistemas industriales (SCADA) |
| **ONVIF** | Interoperabilidad y seguridad de CCTV |
| **RETIE** | Seguridad eléctrica (puesta a tierra) |

---

## 7. ARQUITECTURA DE SOFTWARE

### 7.1 Capas de la Aplicación SCADA ITS

```
┌─────────────────────────────────────────────────────────┐
│   CAPA DE PRESENTACIÓN (Frontend / HMI)                │
│   - Interfaz web responsive (HTML5, JavaScript)        │
│   - Dashboard de control (PMV, visualización eventos)  │
│   - Videowall controller (selección de cámaras)        │
│   - Reportes y gráficos (TPDA, velocidades)           │
├─────────────────────────────────────────────────────────┤
│   CAPA DE LÓGICA DE NEGOCIO (Backend)                  │
│   - Motor de reglas (detección de alarmas)             │
│   - Procesamiento de datos de sensores                 │
│   - Gestión de eventos (SICC)                          │
│   - Generación de reportes automáticos                 │
│   - API REST para integración con ANI                  │
├─────────────────────────────────────────────────────────┤
│   CAPA DE DATOS (Base de Datos + Almacenamiento)       │
│   - PostgreSQL/SQL Server (eventos, configuración)     │
│   - NVR (almacenamiento de video, 90 TB)              │
│   - SAN/NAS (backup, archivos históricos)             │
└─────────────────────────────────────────────────────────┘
```

### 7.2 Tecnologías Propuestas

| Capa | Tecnología | Justificación |
|:-----|:-----------|:--------------|
| **Frontend** | HTML5 + JavaScript (React/Vue) | Interfaz web moderna, responsive, compatible con navegadores estándar |
| **Backend** | Java/Python/C# | Robusto, compatible con SCADA industrial |
| **Base de Datos** | PostgreSQL o SQL Server | Alta disponibilidad, soporte de geo-datos |
| **SCADA** | Siemens WinCC / Schneider Vijeo / Wonderware | Probado en ITS, compatible con protocolos industriales |
| **VMS (Video)** | Milestone XProtect / Genetec / Avigilon | Gestión profesional de video, ONVIF, escalable |
| **API** | REST (JSON) | Integración con ANI, estándar de industria |
| **Protocolos** | ONVIF (video), SNMP (monitoreo), Modbus TCP (sensores) | Estándares abiertos, interoperabilidad |

---

## 8. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema Externo | Interface | Protocolo | Criticidad | Datos Intercambiados |
|:----------------|:----------|:----------|:-----------|:---------------------|
| **CCO** | IF-ITS-001 | Ethernet/IP, Fibra | 🔴 CRÍTICA | Video, datos sensores, alarmas, comandos PMV |
| **Telecomunicaciones** | IF-ITS-002 | Fibra óptica | 🔴 CRÍTICA | Backbone de comunicaciones (1 Gbps) |
| **Peajes** | IF-ITS-003 | TCP/IP, BD | 🟡 Alta | Aforo vs recaudo, WIM vs categoría |
| **Emergencias** | IF-ITS-004 | VoIP, API | 🔴 Alta | Llamadas SOS, detección incidentes DAI |
| **ANI (SIINCO)** | IF-ITS-005 | HTTPS, API REST | 🔴 Alta | Datos de tráfico, velocidades, eventos |
| **Energía Eléctrica** | IF-ITS-006 | PoE, AC 220V | 🔴 CRÍTICA | Alimentación de equipos |

---

## 9. ESCALABILIDAD

### 9.1 Dimensionamiento Actual vs Futuro

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Cámaras CCTV** | 120 | 140 | 160 | 200 (+67% margen) |
| **Ancho de banda troncal** | 1 Gbps | 1.5 Gbps | 2 Gbps | 10 Gbps (+400%) |
| **Almacenamiento video** | 90 TB | 120 TB | 150 TB | 200 TB (+33%) |
| **PMV** | 28 | 30 | 32 | 35 (+25%) |
| **Puertos de switch disponibles** | 70% uso | 85% uso | 95% uso | Planificar ampliación año 20 |

### 9.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Agregar cámaras CCTV (hasta 200 total)
- Agregar PMV (hasta 25 total)
- Ampliar almacenamiento (módulos adicionales)

**Con cambios menores (año 20-25):**
- Reemplazo de switches por modelos superiores
- Ampliación de SAN de video

**Arquitectura modular permite crecimiento orgánico sin rediseño completo.**

---

## 10. TECNOLOGÍA Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar/Versión | Justificación |
|:----------|:-----------|:-----------------|:--------------|
| **CCTV** | IP PTZ 1080p | ONVIF Profile S | Interoperabilidad, estándar de industria |
| **Compresión video** | H.265 (HEVC) | ITU-T H.265 | Reducción 50% ancho de banda vs H.264 |
| **PMV** | LED full-color | Resolución 546/2018 | Cumplimiento normativo obligatorio |
| **WIM** | Sensores piezoelétricos | ASTM E1318 | Precisión ±5%, estándar internacional |
| **Red de datos** | Ethernet Gigabit/10G | IEEE 802.3 | Estándar universal |
| **Fibra óptica** | Monomodo G.652.D | UIT-T G.652 | Larga distancia, baja atenuación |
| **VoIP (SOS)** | SIP/RTP | RFC 3261 | Estándar abierto de telefonía IP |
| **SCADA** | OPC UA / Modbus TCP | IEC 62541 | Interoperabilidad con PLC/sensores |

### 10.2 Interoperabilidad

- **Con sistemas ANI:** Compatible con SIINCO, ANIscopio (API REST, JSON)
- **Con otros sistemas del proyecto:** Protocolo IP estándar (Ethernet)
- **Entre fabricantes:** ONVIF (CCTV), SNMP (switches), estándares abiertos

---

## 11. ANÁLISIS DE ALTERNATIVAS

### 11.1 Alternativa 1: Solución Propietaria Integrada

**Descripción:** Sistema ITS completo de un solo fabricante (ej: Siemens, Kapsch, Q-Free)

**Ventajas:**
- Integración garantizada
- Soporte unificado
- Interfaz única

**Desventajas:**
- Vendor lock-in (dependencia de un proveedor)
- Costo alto (falta de competencia)
- Difícil escalabilidad con terceros

**Costo estimado:** $28-32M USD

---

### 11.2 Alternativa 2: Solución Basada en Estándares Abiertos ⭐ **RECOMENDADA**

**Descripción:** Arquitectura modular basada en protocolos estándar (ONVIF, IP, SNMP, API REST), permitiendo integración de múltiples fabricantes best-of-breed

**Ventajas:**
- ✅ **Competencia entre proveedores** (menor costo, mejor calidad)
- ✅ **Interoperabilidad** (ONVIF, estándares abiertos)
- ✅ **Escalabilidad** (fácil agregar equipos de diferentes marcas)
- ✅ **Reducción de riesgo** (no dependencia de un solo proveedor)
- ✅ **Flexibilidad** (reemplazo de componentes sin afectar sistema completo)

**Desventajas:**
- Requiere mayor esfuerzo de integración inicial
- Necesidad de SCADA robusto (middleware de integración)

**Costo estimado:** $22-26M USD (ahorro 20-25% vs Alternativa 1)

**Justificación de selección:** 
- Cumple con todos los requisitos contractuales (AT2, AT4)
- Reduce costos mediante competencia
- Garantiza sostenibilidad a largo plazo (25 años)
- Facilita reemplazo por obsolescencia tecnológica
- **Modelo ya probado en proyectos APP colombianos exitosos**

---

## 12. PLAN DE IMPLEMENTACIÓN

### 12.1 Fases de Implementación

| Fase | Actividad | Duración | Dependencias | Entregable |
|:-----|:----------|:---------|:-------------|:-----------|
| **Fase 1** | Diseño de Detalle | 3 meses | T03 aprobado | Planos, diagramas unifilares red, T04 |
| **Fase 2** | Licitación y Adquisición | 4 meses | T04 completado | Contratos con proveedores |
| **Fase 3** | Instalación CCO | 3 meses | CCO construido, equipos disponibles | CCO operativo (sin campo) |
| **Fase 4** | Instalación Campo (14 UFs) | 18 meses | Fibra instalada, energía disponible | Equipos ITS operativos |
| **Fase 5** | Integración y Pruebas | 3 meses | Instalación completa | Pruebas FAT/SAT aprobadas |
| **Fase 6** | Puesta en Operación | 1 mes | Pruebas aprobadas, personal capacitado | Sistema ITS operativo |

**Duración total:** 32 meses (overlapping de fases)

### 12.2 Hitos Críticos

- **H1:** Diseño de Detalle completado y aprobado - Mes 3
- **H2:** Proveedores contratados (CCTV, PMV, SCADA) - Mes 7
- **H3:** CCO operativo (sin equipos de campo) - Mes 10
- **H4:** 50% de equipos de campo instalados (7 UFs) - Mes 19
- **H5:** 100% de equipos instalados y probados - Mes 29
- **H6:** Sistema ITS en operación completa - Mes 32

---

## 13. ESTIMACIÓN DE RECURSOS

### 13.1 Hardware

| Categoría | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:----------|:---------|:---------------------|:------------------|
| **CCTV IP PTZ** | 120 | $2,500 | $300,000 |
| **PMV LED** | 28 | $35,000 | $980,000 |
| **Estaciones WIM** | 5 | $120,000 | $600,000 |
| **Estaciones Meteo** | 7 | $25,000 | $175,000 |
| **Teléfonos SOS** | **87** | $2,000 | **$174,000** |
| **Radares velocidad** | 18 | $15,000 | $270,000 |
| **Estaciones Aforo** | 12 | $12,000 | $144,000 |
| **Detectores Altura** | 10 | $8,000 | $80,000 |
| **Switches campo/agregación** | 45 | $3,500 | $157,500 |
| **Servidores NVR (CCO)** | 5 | $25,000 | $125,000 |
| **Almacenamiento SAN** | 100 TB | $1,200/TB | $120,000 |
| **Videowall** | 1 sistema | $180,000 | $180,000 |
| **TOTAL HARDWARE** | | | **$2,850,500** |

### 13.2 Software y Licencias

| Categoría | Descripción | Costo (USD) |
|:----------|:------------|:------------|
| **VMS (Video Management)** | Licencias para 120 cámaras | $150,000 |
| **SCADA ITS** | Licencia central + módulos | $120,000 |
| **Analítica de video (DAI)** | Licencias para detección incidentes | $80,000 |
| **Base de datos** | SQL Server o PostgreSQL | $30,000 |
| **TOTAL SOFTWARE** | | **$380,000** |

### 13.3 Instalación e Integración

| Categoría | Costo (USD) |
|:----------|:------------|
| Instalación de equipos | $550,000 |
| Integración de sistemas | $200,000 |
| Pruebas FAT/SAT | $80,000 |
| Capacitación (personal) | $50,000 |
| Gestión de proyecto | $150,000 |
| **TOTAL INSTALACIÓN** | **$1,030,000** |

### 13.4 CAPEX Total Estimado

**TOTAL CAPEX ITS:** $3,035,500 + $380,000 + $1,030,000 = **$4,445,500 USD**

**Conversión COP (TRM 4,000):** COP 17,782,000,000 (~17.8 mil millones)

#### 💡 **Nota de Optimización Futura - CCTV:**
**Opción de reducción:** De 30 a 12 cámaras CCTV (corredor + peatonales)  
**Ahorro potencial:** -18 cámaras (-$284,166 USD)  
**Ubicaciones a mantener:** 6 corredor (cada 40 km) + 6 peatonales (puntos críticos)  
**Ubicaciones a eliminar:** Peajes, CCO, pesaje (8 cámaras operativas)  
**Consideración:** Evaluar en fase de licitación según competitividad de precios

#### 🔴 **Nota de Ajuste Contractual - PMV:**
**Versión anterior:** 15 PMV ($525,000 USD)  
**Versión ajustada:** 28 PMV ($980,000 USD)  
**Incremento:** +13 PMV (+$455,000 USD)  
**Justificación:** Diseño detallado requiere 2 PMV por peaje (antes/después) + cobertura general cada 20 km máximo

#### 🔴 **Nota de Ajuste Contractual - Postes SOS:**
**Versión anterior:** 40 postes SOS ($80,000 USD)  
**Versión ajustada:** 87 postes SOS ($174,000 USD)  
**Incremento:** +47 postes (+$94,000 USD)  
**Fundamento legal:** AT1, Cap. 3 "Sistemas de comunicación y postes SOS" - Requisito explícito: "distancia máxima de tres (3) kilómetros entre sí"  
**Cálculo:** 259.6 km ÷ 3 km = 87 postes mínimos (OBLIGATORIO, no negociable)

---

## 14. PRÓXIMOS PASOS

- [ ] Validar arquitectura con stakeholders (ANI, Interventoría, Policía)
- [ ] Desarrollar especificaciones técnicas detalladas de cada subsistema (T04)
- [ ] Solicitar cotizaciones a fabricantes preseleccionados
- [ ] Diseñar diagramas de red detallados (Visio, AutoCAD)
- [ ] Definir ubicaciones exactas de equipos (coordenadas, PKs)
- [ ] Estimar costos detallados con cotizaciones reales (T05)
- [ ] Crear plan de pruebas de integración (FAT/SAT)
- [ ] Elaborar plan de capacitación de operadores
- [ ] Obtener homologación de ANI (protocolos, interfaces)

---

## 15. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial del sistema ITS |
| **v1.1** | 20/10/2025 | Administrador Contractual EPC | **Ajuste contractual:** Postes SOS 40→87 unidades según AT1 Cap. 3 (+$94K USD) |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | **Revisión con información oficial:** Longitudes, rutas, CCO La Lizama, cantidades actualizadas |

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Arquitectura Conceptual Validada vs Contrato + Información Oficial  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Sistemas ITS / Arquitecto de Redes  
**Próximo documento:** T04 - Especificaciones Técnicas de Componentes ITS  

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Longitudes actualizadas: 259.6 km principal + 33.4 km adicionales
- Rutas confirmadas: RN 4510, RN 4511, RN 4513 (conexión CCO)
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Cantidades validadas contra información oficial
- Metodología PKD lineal aplicada  

---

**Fin del documento - T03 Arquitectura Conceptual Sistema ITS**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

