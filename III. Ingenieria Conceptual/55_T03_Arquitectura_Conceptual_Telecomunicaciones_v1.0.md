# T03: ARQUITECTURA CONCEPTUAL - SISTEMA DE TELECOMUNICACIONES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Telecomunicaciones (Fibra Óptica, Radio, Red de Datos)  
**Responsable:** Ingeniero de Telecomunicaciones / Arquitecto de Redes  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento define la **arquitectura conceptual** del Sistema de Telecomunicaciones para el proyecto APP Puerto Salgar - Barrancabermeja. Este sistema es el **BACKBONE CRÍTICO** que interconecta TODOS los sistemas digitales del corredor.

Establece:
- Topología de red de fibra óptica (anillo redundante)
- Arquitectura de red de datos (jerarquía de switches)
- Sistema de radio troncalizado
- Telefonía IP (VoIP)
- Enlaces de respaldo
- Sistema de gestión de red

### 1.2 Alcance

Esta arquitectura cubre el **sistema completo de telecomunicaciones** a lo largo de 259.6 km:

**Componentes del sistema:**
1. **Red Troncal de Fibra Óptica:** 285 km (12-24 hilos)
2. **Canalizaciones y Ductos:** 285 km subterráneos
3. **Red de Datos IP:** 50-80 switches distribuidos
4. **Sistema de Radio Troncalizado:** Para emergencias
5. **Telefonía IP (VoIP):** Teléfonos SOS + internos
6. **Enlaces de Respaldo:** Microondas, 4G/5G
7. **Sistema de Gestión de Red (NMS):** Monitoreo SNMP

**Ancho de banda total:** 1 Gbps (operación normal), dimensionado para 10 Gbps

### 1.3 Referencias

- [T01 - Ficha Sistema Telecomunicaciones](27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md)
- [T02 - Análisis de Requisitos Telecomunicaciones](48_T02_Analisis_Requisitos_Telecomunicaciones_v1.0.md)
- [T03 - Arquitectura ITS](53_T03_Arquitectura_Conceptual_ITS_v1.0.md)
- [T03 - Arquitectura CCO](54_T03_Arquitectura_Conceptual_CCO_v1.0.md)

---

## 2. ARQUITECTURA DE ALTO NIVEL

### 2.1 Diagrama de Arquitectura del Sistema de Telecomunicaciones

```
┌─────────────────────────────────────────────────────────────────┐
│           TOPOLOGÍA DE ANILLO REDUNDANTE (285 km FO)            │
│                                                                 │
│  PK 0 ──────► PK 80 ──────► PK 130 (CCO) ──────► PK 259.6     │
│  (Pto Salgar) (Peaje AG)    (Centro)          (San Roque)     │
│        │           │            │                   │          │
│        │           │            │                   │          │
│        └───────────┴────────────┴───────────────────┘          │
│              ANILLO DE RESPALDO (sentido inverso)              │
│                                                                 │
│  Switches de Agregación en:                                    │
│  - PK 0 (Puerto Salgar)                                        │
│  - PK 80 (Peaje Aguas Negras)                                 │
│  - PK 130 (CCO - Núcleo)                                      │
│  - PK 180 (Puerto Berrío)                                     │
│  - PK 259.6 (San Roque)                                       │
└─────────────────────────────────────────────────────────────────┘

EQUIPOS CONECTADOS:
├─ ITS: 100+ equipos (CCTV, PMV, WIM, SOS, etc.)
├─ Peajes: 2 estaciones (Zambito, Aguas Negras)
├─ Áreas de Servicio: 14 UFs
├─ CCO: Núcleo central
├─ Emergencias: Bases operativas
└─ Gestión: Oficinas administrativas
```

### 2.2 Descripción de Componentes

| Componente | Función | Especificación Preliminar | Cantidad |
|:-----------|:--------|:--------------------------|:---------|
| **Fibra Óptica Monomodo** | Backbone de comunicaciones | G.652.D, 12-24 hilos, SM 9/125 μm | 285 km |
| **Ductos PVC/HDPE** | Protección de fibra | 4-6 ductos Ø110mm, subterráneo | 285 km |
| **Cámaras de Inspección** | Acceso a ductos | Concreto prefabricado, 1x1m | 500-800 |
| **ODF (Optical Distribution Frame)** | Terminación de fibra | 12-48 puertos por ODF | 30-50 |
| **Switches de Campo (Acceso)** | Conexión de equipos ITS | Gigabit PoE, 24 puertos, L2/L3 | 50-80 |
| **Switches de Agregación** | Agregación de tráfico | 10 Gbps, L3, redundante | 10-15 |
| **Switches Core (CCO)** | Núcleo de red | 10 Gbps, stacking, 48 puertos | 4-6 |
| **Routers WAN** | Conectividad Internet/ANI | Gigabit, redundante | 2-4 |
| **Radio Bases** | Comunicaciones de voz | UHF/VHF, troncalizado | 2-4 |
| **Radios Móviles** | Vehículos de emergencia | Portátiles, 5W | 20-30 |
| **Central Telefónica IP (PBX)** | Telefonía VoIP | SIP, 100 extensiones | 1-2 |
| **Teléfonos IP** | Comunicaciones internas | SIP, PoE | 50-80 |
| **Enlaces Microondas** | Respaldo de fibra | 1-2 Gbps, banda licenciada | 2-4 |

---

## 3. TOPOLOGÍA DEL SISTEMA

### 3.1 Topología de Red de Fibra Óptica

- **Tipo de topología:** **Anillo redundante** (Ring) con derivaciones en estrella
- **Protocolo principal:** Ethernet sobre fibra (1000Base-LX, 10GBase-LR)
- **Segmentación:** VLANs por sistema
- **Redundancia:** Anillo bidireccional (sentido horario + antihorario)
- **Protección:** Automatic Protection Switching (APS) en < 50 ms

### 3.2 Diagrama de Topología Detallada

```
                           ANILLO PRINCIPAL
                                (RING)
                                  
    Puerto Salgar ──────────────────────────────────► San Roque
    (PK 0)          Sentido Horario                   (PK 259.6)
       │                                                    │
       │                                                    │
       ▼                                                    ▼
   [Switch                                             [Switch
    Agregación 1]                                       Agregación 5]
       │                                                    │
       │                                                    │
       ▼                                                    ▼
    Peaje Zambito ─────────────────────────────────► Puerto Berrío
    (PK 9.2)                                          (PK 180)
       │                                                    │
       │              Sentido Antihorario                   │
       ▼              (RESPALDO)                            ▼
    [Switch                                             [Switch
     Agregación 2]  ◄───────────────────────────────  Agregación 4]
       │                                                    │
       │                                                    │
       ▼                                                    ▼
    Peaje Aguas Negras ◄────────────────────────────────► CCO
    (PK 80)                                            (PK 130)
                                                       [NÚCLEO]
                                                       Switches Core
                                                       4x 10 Gbps


DERIVACIONES EN ESTRELLA (desde puntos de agregación):
├─ Cámaras CCTV (cada 2-3 km): 120 derivaciones
├─ PMV: 15 derivaciones  
├─ Áreas de Servicio: 14 derivaciones
├─ Estaciones de Pesaje: 3 derivaciones
└─ Otros equipos ITS: 50+ derivaciones
```

### 3.3 Distribución de Switches

**Jerarquía de 3 niveles:**

| Nivel | Tipo de Switch | Cantidad | Ubicación | Función |
|:------|:---------------|:---------|:----------|:--------|
| **Core** | 10 Gbps, L3, Stacking | 4-6 | CCO | Núcleo de red, enrutamiento, redundancia |
| **Agregación** | 10 Gbps, L3 | 10-15 | Puntos estratégicos (cada 20-30 km) | Agregación de tráfico de switches de campo |
| **Acceso** | 1 Gbps PoE, L2/L3 | 50-80 | Campo (equipos ITS, peajes) | Conectividad local de equipos |

---

## 4. FLUJO DE DATOS E INFORMACIÓN

### 4.1 Flujo Completo de Datos

```
┌──────────────────────────────────────────────────────────┐
│ 1. GENERACIÓN DE DATOS (EQUIPOS DE CAMPO)               │
│    - CCTV: Video 1080p H.265 (6 Mbps/cám)               │
│    - Sensores ITS: Datos JSON/Modbus (kb/s)             │
│    - Peajes: Transacciones SQL (kb/s)                    │
│    - VoIP: Llamadas SOS (64 kbps/llamada)               │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 2. AGREGACIÓN LOCAL (SWITCHES DE CAMPO)                 │
│    - Switch PoE alimenta y conecta equipos locales       │
│    - Agregación de tráfico (hasta 20-30 equipos/switch)  │
│    - Uplink a switch de agregación vía fibra (1 Gbps)   │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 3. AGREGACIÓN ZONAL (SWITCHES DE AGREGACIÓN)            │
│    - Consolida tráfico de 5-10 switches de campo        │
│    - Enrutamiento inter-VLAN (L3)                        │
│    - Uplink a CCO vía anillo de fibra (10 Gbps)         │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 4. NÚCLEO (SWITCHES CORE EN CCO)                        │
│    - Recepción de tráfico de todo el corredor           │
│    - Enrutamiento a servidores (NVR, SCADA, BD)         │
│    - Enrutamiento a ANI (firewall, router WAN)          │
│    - QoS: Priorización de tráfico (video, VoIP)         │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 5. SERVIDORES Y ALMACENAMIENTO (CCO)                    │
│    - NVR graba video (3 TB/día)                          │
│    - SCADA procesa datos de sensores                     │
│    - BD almacena eventos, transacciones                  │
└──────────────┬───────────────────────────────────────────┘
               ▼
┌──────────────────────────────────────────────────────────┐
│ 6. TRANSMISIÓN A ANI (INTERNET/VPN)                     │
│    - Router WAN + Firewall                               │
│    - Enlace primario 20 Mbps + Respaldo 4G              │
│    - VPN IPsec a servidores ANI                          │
└──────────────────────────────────────────────────────────┘
```

### 4.2 Ancho de Banda por Sistema

| Sistema | Ancho de Banda Estimado | % del Total |
|:--------|:------------------------|:------------|
| **Video CCTV** (120 cámaras × 6 Mbps) | 720 Mbps | 72% |
| **Datos ITS** (sensores, PMV, etc.) | 20 Mbps | 2% |
| **Peajes** (transacciones, video local) | 30 Mbps | 3% |
| **VoIP** (SOS, telefonía interna) | 10 Mbps | 1% |
| **Gestión y Administración** | 20 Mbps | 2% |
| **Margen de seguridad** (overhead TCP/IP) | 200 Mbps | 20% |
| **TOTAL** | **1,000 Mbps** (1 Gbps) | 100% |

**Dimensionamiento:** Red de 10 Gbps (10x el tráfico pico) para crecimiento futuro

---

## 5. REDUNDANCIA Y DISPONIBILIDAD

### 5.1 Estrategia de Redundancia

| Componente | Tipo de Redundancia | Configuración | Justificación |
|:-----------|:--------------------|:--------------|:--------------|
| **Fibra Óptica (Troncal)** | Anillo bidireccional | Sentido horario + antihorario | Protección ante corte de fibra, conmutación < 50 ms |
| **Switches Core (CCO)** | Stacking | 4 switches (activo-activo) | Alta disponibilidad núcleo de red |
| **Switches de Agregación** | Dual-homing | 2 uplinks a CCO (ring) | Protección ante falla de enlace |
| **Enlaces a ANI** | Activo-Pasivo | Fibra primaria + 4G respaldo | Transmisión continua a ANI |
| **Radio Bases** | Cobertura superpuesta | 2-4 bases con áreas de cobertura superpuestas | Comunicaciones de emergencia sin zonas muertas |
| **Energía (switches)** | UPS distribuidos | 30 UPS de 3-5 kVA | Operación ante corte eléctrico |

### 5.2 SLA (Service Level Agreement)

- **Disponibilidad de red troncal:** ≥ 99.5% anual
- **MTBF (Fibra óptica):** ≥ 50,000 horas (con mantenimiento)
- **MTTR (Reparación de fibra):** < 4 horas (con empalmes de emergencia)
- **RTO (Recovery Time Objective):** < 1 hora (conmutación a respaldo)
- **RPO (Recovery Point Objective):** 0 minutos (conmutación automática)
- **Latencia extremo a extremo:** < 50 ms
- **Pérdida de paquetes:** < 0.1%

### 5.3 Protección ante Fallas

**Escenario 1: Corte de Fibra en PK 100**
- Tráfico se enruta automáticamente por sentido antihorario del anillo
- Conmutación en < 50 ms (transparente para usuarios)
- Sin pérdida de datos

**Escenario 2: Falla de Switch de Agregación**
- Tráfico se enruta por switch de agregación vecino
- Posible degradación de performance (mayor latencia)
- Reparación en < 24 horas

**Escenario 3: Falla de Enlace a ANI (primario)**
- Conmutación automática a enlace 4G de respaldo
- Ancho de banda reducido (10 Mbps vs 20 Mbps)
- Transmisión continua garantizada

---

## 6. SEGURIDAD

### 6.1 Seguridad Física

- **Ductos subterráneos:** 80 cm profundidad (protección contra excavaciones)
- **Cinta de advertencia:** 30 cm sobre ductos ("FIBRA ÓPTICA")
- **Cámaras de inspección:** Tapas con cerradura
- **Gabinetes de switches campo:** IP66, cerradura
- **Sala de telecomunicaciones (CCO):** Acceso controlado, climatizada

### 6.2 Seguridad Lógica / Ciberseguridad

- **Firewall perimetral:** Protección de red interna vs Internet
- **Segmentación (VLANs):** Aislamiento de tráfico por sistema
- **ACLs (Access Control Lists):** Control de acceso entre VLANs
- **Autenticación 802.1X:** Control de acceso a red (solo dispositivos autorizados)
- **Cifrado:** VPN IPsec para enlaces a ANI
- **SNMP v3:** Autenticación y cifrado en monitoreo de red
- **Logs centralizados:** Syslog server para auditoría

### 6.3 Normativa de Seguridad Aplicable

| Norma | Aplicación |
|:------|:-----------|
| **ISO 27001** | Gestión de seguridad de la información |
| **UIT-T X.800** | Arquitectura de seguridad para sistemas OSI |
| **IEC 62443** | Ciberseguridad en redes industriales |
| **TIA-942** | Seguridad en Data Centers (aplicable a sala de telecomunicaciones) |

---

## 7. ARQUITECTURA DE RADIO TRONCALIZADO

### 7.1 Topología de Radio

```
┌────────────────────────────────────────────────────────┐
│          SISTEMA DE RADIO TRONCALIZADO                 │
│                                                        │
│  Radio Base 1 ────┐                ┌──── Radio Base 3 │
│  (CCO, PK 130)    │                │    (Pto Berrío)  │
│  Cobertura:       │  Central PBX   │    Cobertura:    │
│  PK 80-180        │  (IP/Radio)    │    PK 150-250    │
│                   │  en CCO        │                  │
│  Radio Base 2 ────┘                └──── Radio Base 4 │
│  (Peaje AG,PK 80) Cobertura:            (San Roque)   │
│  Cobertura:       PK 0-130                PK 230-260  │
│  PK 20-140                                            │
│                                                        │
│  COBERTURA TOTAL: 100% del corredor (259.6 km)        │
│  con superposición (sin zonas muertas)                │
└────────────────────────────────────────────────────────┘

Usuarios de radio:
├─ Vehículos de emergencia (TAM, grúas): 10 radios
├─ Patrullas de inspección: 6 radios
├─ Vehículos de mantenimiento: 8 radios
├─ Personal de bases operativas: 6 radios
└─ TOTAL: 30 radios móviles
```

### 7.2 Integración Radio - VoIP

- Radio bases conectadas a PBX en CCO (RoIP - Radio over IP)
- Operadores CCO pueden comunicarse con personal de campo (radio ↔ teléfono IP)
- Grabación de comunicaciones de radio (auditoría)
- Licencia de operación de radio (MinTIC)

---

## 8. INTEGRACIÓN CON OTROS SISTEMAS

| Sistema | Interface | Protocolo | Datos Intercambiados | Ancho de Banda |
|:--------|:----------|:----------|:---------------------|:---------------|
| **ITS** | IF-TC-001 | Ethernet/IP, Fibra | Video, datos sensores, comandos | 800 Mbps |
| **CCO** | IF-TC-002 | 10 Gbps, Fibra | Todo el tráfico (núcleo) | 1-2 Gbps |
| **Peajes** | IF-TC-003 | Ethernet/IP, Fibra | Recaudos, video, tráfico | 30 Mbps |
| **Emergencias** | IF-TC-004 | Radio, VoIP, Fibra | Comunicaciones de voz, despacho | 10 Mbps |
| **Energía** | IF-TC-005 | Modbus TCP, Fibra | SCADA eléctrico, alarmas | 1 Mbps |
| **ANI** | IF-TC-006 | HTTPS, VPN, Internet | Datos para SIINCO, ANIscopio | 10-20 Mbps |

**Sistema de Telecomunicaciones es CRÍTICO:** Sin telecomunicaciones, ningún sistema digital opera.

---

## 9. ESCALABILIDAD

### 9.1 Dimensionamiento Actual vs Futuro

| Parámetro | Año 1 | Año 10 | Año 25 | Capacidad Diseñada |
|:----------|:------|:-------|:-------|:-------------------|
| **Ancho de banda troncal** | 1 Gbps | 2 Gbps | 3 Gbps | 10 Gbps (+233%) |
| **Equipos conectados** | 200 | 250 | 300 | 400 (+33%) |
| **Puertos de switch utilizados** | 70% | 85% | 95% | Planificar ampliación año 20 |
| **Hilos de fibra utilizados** | 8/24 | 12/24 | 18/24 | 24 hilos (33% reserva) |

### 9.2 Estrategia de Crecimiento

**Sin cambios en arquitectura (hasta año 20):**
- Utilizar hilos de fibra de reserva (16 hilos disponibles)
- Agregar switches de campo (hasta 100 total)
- Ampliar switches core (agregando módulos)

**Con cambios menores (año 20-25):**
- Reemplazo de switches por modelos 25/40 Gbps
- Actualización de tecnología de fibra (si disponible)

**Arquitectura de anillo permite crecimiento sin rediseño completo.**

---

## 10. TECNOLOGÍA Y ESTÁNDARES

### 10.1 Tecnologías Seleccionadas

| Categoría | Tecnología | Estándar | Justificación |
|:----------|:-----------|:---------|:--------------|
| **Fibra Óptica** | Monomodo G.652.D | UIT-T G.652 | Estándar universal, baja atenuación, larga distancia |
| **Conectores Fibra** | SC/APC o LC/APC | IEC 61754 | Baja pérdida de retorno, polarizado |
| **Ethernet** | Gigabit/10 Gigabit | IEEE 802.3 | Estándar universal de redes |
| **VLANs** | 802.1Q | IEEE 802.1Q | Segmentación de red estándar |
| **VoIP** | SIP/RTP | RFC 3261 | Estándar abierto de telefonía IP |
| **Radio** | UHF/VHF Troncalizado | P.25 o TETRA | Estándar de radio profesional |
| **Gestión de Red** | SNMP v3 | RFC 3411-3418 | Monitoreo estándar de equipos |

### 10.2 Interoperabilidad

- **Multi-vendor:** Arquitectura basada en estándares abiertos permite equipos de múltiples fabricantes
- **Con ANI:** Compatible con requisitos de conectividad de SIINCO
- **Futuro:** Preparado para tecnologías emergentes (400G, 5G, IoT)

---

## 11. ANÁLISIS DE ALTERNATIVAS

### 11.1 Alternativa 1: Topología Estrella desde CCO

**Descripción:** Enlaces punto a punto desde CCO a cada ubicación (sin anillo)

**Ventajas:**
- Diseño más simple
- Menor cantidad de fibra

**Desventajas:**
- Sin redundancia (SPOF en cada enlace)
- Mayor latencia en extremos
- No cumple disponibilidad 99.5%

**Costo estimado:** $1.2M USD  
**Descartada:** No cumple requisitos de disponibilidad

---

### 11.2 Alternativa 2: Topología de Anillo Redundante ⭐ **RECOMENDADA**

**Descripción:** Anillo de fibra óptica bidireccional con switches de agregación

**Ventajas:**
- ✅ **Alta disponibilidad** (99.5%+)
- ✅ **Redundancia inherente** (2 rutas siempre)
- ✅ **Conmutación automática** ante falla (< 50 ms)
- ✅ **Escalable** (fácil agregar nodos)
- ✅ **Modelo probado** en autopistas (estándar de facto)

**Desventajas:**
- Requiere mayor cantidad de fibra (~20% más)
- Complejidad de configuración de anillo

**Costo estimado:** $1.5M USD

**Justificación de selección:**
- Cumple con requisitos de disponibilidad (99.5%)
- Protección ante cortes de fibra (obras, accidentes)
- Modelo estándar en concesiones APP colombianas
- Inversión adicional justificada por beneficios de disponibilidad

---

### 11.3 Alternativa 3: Red Inalámbrica (Microondas/5G)

**Descripción:** Red troncal basada en enlaces inalámbricos (microondas o 5G privado)

**Ventajas:**
- Instalación más rápida
- Sin necesidad de ductos

**Desventajas:**
- Menor confiabilidad (clima, interferencias)
- Ancho de banda limitado
- No soporta 1 Gbps de video CCTV
- Mayor OPEX (licencias de espectro)

**Costo estimado:** $1.8M USD  
**Descartada:** No soporta ancho de banda requerido

---

## 12. PLAN DE IMPLEMENTACIÓN

### 12.1 Fases de Implementación

| Fase | Actividad | Duración | Dependencias | Entregable |
|:-----|:----------|:---------|:-------------|:-----------|
| **Fase 1** | Diseño de Detalle de Red | 2 meses | T03 aprobado | Planos de ruta de fibra, T04 |
| **Fase 2** | Instalación de Ductos y Cámaras | 12 meses | Diseño aprobado, construcción vial | 285 km de ductos |
| **Fase 3** | Tendido de Fibra Óptica | 6 meses | Ductos instalados | 285 km de fibra instalada |
| **Fase 4** | Instalación de ODF y Switches | 4 meses | Fibra tendida, energía disponible | Red activa |
| **Fase 5** | Pruebas de Certificación (OTDR) | 2 meses | Instalación completa | Certificados de fibra |
| **Fase 6** | Configuración de Red (VLANs, routing) | 1 mes | Switches activos | Red operativa |
| **Fase 7** | Puesta en Operación | 1 mes | Configuración completa | Sistema telecom operativo |

**Duración total:** 22 meses (con overlapping)

**Ruta crítica:** Instalación de ductos + tendido de fibra (18 meses)

### 12.2 Hitos Críticos

- **H1:** Diseño de ruta de fibra aprobado - Mes 2
- **H2:** 50% de ductos instalados (7 UFs) - Mes 8
- **H3:** 100% de ductos instalados - Mes 14
- **H4:** 100% de fibra tendida - Mes 20
- **H5:** Red certificada (pruebas OTDR) - Mes 22
- **H6:** Red en operación - Mes 23

---

## 13. ESTIMACIÓN DE RECURSOS

### 13.1 Infraestructura Pasiva (Ductos y Fibra)

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| Ductos PVC/HDPE (4-6 ductos) | 285 km | $8,000/km | $2,280,000 |
| Cámaras de inspección | 650 | $800 | $520,000 |
| Excavación y relleno | 285 km | $3,000/km | $855,000 |
| Fibra óptica monomodo (24 hilos) | 285 km | $2,500/km | $712,500 |
| Empalmes y conectores | Global | $150,000 | $150,000 |
| **SUBTOTAL PASIVO** | | | **$4,517,500** |

### 13.2 Equipos Activos

| Ítem | Cantidad | Costo Unitario | Costo Total (USD) |
|:-----|:---------|:---------------|:------------------|
| ODF (Distribuidores ópticos) | 40 | $1,500 | $60,000 |
| Switches de Campo (Gigabit PoE) | 60 | $3,500 | $210,000 |
| Switches de Agregación (10 Gbps) | 12 | $12,000 | $144,000 |
| Switches Core CCO (10 Gbps) | 4 | $20,000 | $80,000 |
| Routers WAN | 2 | $10,000 | $20,000 |
| Radio Bases (troncalizado) | 3 | $25,000 | $75,000 |
| Radios Móviles | 30 | $800 | $24,000 |
| Central Telefónica IP (PBX) | 1 | $30,000 | $30,000 |
| Teléfonos IP | 60 | $250 | $15,000 |
| Enlaces Microondas (respaldo) | 2 | $40,000 | $80,000 |
| Sistema de Gestión de Red (NMS) | 1 | $50,000 | $50,000 |
| **SUBTOTAL ACTIVOS** | | | **$788,000** |

### 13.3 CAPEX Total Telecomunicaciones

**TOTAL CAPEX:** $4,517,500 + $788,000 = **$5,305,500 USD**

**Conversión COP (TRM 4,000):** COP 21,222,000,000 (~21.2 mil millones)

---

## 14. PRÓXIMOS PASOS

- [ ] Validar arquitectura con ANI e Interventoría
- [ ] Realizar estudio de ruta de fibra óptica (topografía)
- [ ] Solicitar licencia de radio a MinTIC
- [ ] Elaborar especificaciones técnicas de fibra y equipos (T04)
- [ ] Solicitar cotizaciones:
  - Fibra óptica: Corning, Furukawa, Prysmian
  - Switches: Cisco, Huawei, HP/Aruba
  - Radio: Motorola, Hytera, Kenwood
- [ ] Coordinar con construcción vial (instalación de ductos)
- [ ] Definir puntos exactos de switches de agregación
- [ ] Estimar costos detallados (T05)

---

## 15. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Arquitectura conceptual inicial del sistema de telecomunicaciones |

---

**Versión:** 1.0  
**Estado:** ✅ Arquitectura Conceptual Definida  
**Fecha:** 17/10/2025  
**Responsable:** Ingeniero de Telecomunicaciones / Arquitecto de Redes  
**Próximo documento:** T04 - Especificaciones Técnicas de Telecomunicaciones  

---

**Fin del documento - T03 Arquitectura Conceptual Sistema de Telecomunicaciones**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

