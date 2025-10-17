# T02: ANÁLISIS DE REQUISITOS - SISTEMA DE TELECOMUNICACIONES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 17/10/2025  
**Sistema:** Telecomunicaciones (Fibra Óptica, Radio, Red de Datos)  
**Responsable:** Ingeniero de Telecomunicaciones  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento

Este documento presenta el **análisis detallado de requisitos** del Sistema de Telecomunicaciones para el proyecto APP Puerto Salgar - Barrancabermeja. Este sistema es el **BACKBONE CRÍTICO** que interconecta TODOS los sistemas del corredor.

El análisis cubre:
- Requisitos funcionales de conectividad
- Requisitos no funcionales (disponibilidad, ancho de banda, latencia)
- Requisitos de interfaces con todos los sistemas
- Criterios de aceptación
- Casos de uso principales
- Matriz de trazabilidad contractual

### 1.2 Alcance

Este análisis cubre el **sistema completo de telecomunicaciones** a lo largo de 259.6 km:

**Componentes del sistema:**
1. **Red Troncal de Fibra Óptica:** ~285 km (con reserva técnica)
2. **Red de Datos Ethernet/IP:** Switches, routers, firewalls
3. **Sistema de Radio Troncalizado:** Para comunicaciones de emergencia
4. **Telefonía IP (VoIP):** Teléfonos SOS, comunicaciones internas
5. **Enlaces de Respaldo:** Microondas, 4G/5G
6. **Sistema de Gestión de Red:** SCADA de telecomunicaciones
7. **Canalizaciones y Ductos:** Protección de fibra óptica

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| **FO** | Fibra Óptica |
| **ODF** | Optical Distribution Frame (Distribuidor Óptico) |
| **OTDR** | Optical Time-Domain Reflectometer (medidor de atenuación de fibra) |
| **VoIP** | Voice over IP (Telefonía por Internet) |
| **VLAN** | Virtual Local Area Network |
| **QoS** | Quality of Service (Calidad de Servicio) |
| **SNMP** | Simple Network Management Protocol |
| **SLA** | Service Level Agreement |
| **CCO** | Centro de Control Operacional |
| **Mbps** | Megabits por segundo |
| **Gbps** | Gigabits por segundo |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 Red Troncal de Fibra Óptica

**ID:** RF-001  
**Descripción:** El sistema debe incluir red troncal de fibra óptica a lo largo del corredor  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2 (implícito en ITS, Peajes, CCO)  

**Criterios de Aceptación:**
- Longitud total: ~285 km (259.6 km + 10% reserva técnica)
- Tipo: Fibra monomodo (UIT-T G.652.D)
- Cantidad de hilos: 12-24 hilos
- Topología: Anillo redundante en secciones críticas
- Canalización: Ductos subterráneos PVC/HDPE
- Cámaras de inspección: Cada 300-500 m
- Atenuación máxima: 0.35 dB/km @ 1550 nm
- Conectores: SC/APC o LC/APC

---

### 2.2 Red de Datos IP (Switches y Routers)

**ID:** RF-002  
**Descripción:** El sistema debe incluir red de datos Ethernet/IP para interconectar todos los equipos  
**Prioridad:** 🔴 CRÍTICA  
**Fuente:** AT2, Secciones 3.3.5.1, 3.3.4, 3.1.7  

**Criterios de Aceptación:**
- **Switches de Campo:** 50-80 switches (conexión de equipos ITS, peajes)
- **Switches de Agregación:** 10-15 switches (agregación de tráfico)
- **Switches Core:** 4-6 switches en CCO (núcleo de red)
- **Routers:** 2-4 routers (conectividad WAN, Internet, ANI)
- Velocidad: 1 Gbps (acceso), 10 Gbps (agregación y core)
- Redundancia: Enlaces duales en puntos críticos
- VLANs: Segmentación de tráfico (ITS, Peajes, Gestión, ANI)
- QoS: Priorización de tráfico crítico (video, VoIP)

---

### 2.3 Sistema de Radio Troncalizado

**ID:** RF-003  
**Descripción:** El sistema debe incluir radio troncalizado para comunicaciones de voz en emergencias  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.3 (Emergencias)  

**Criterios de Aceptación:**
- 2-4 radio bases (CCO + bases de emergencia)
- Frecuencia: Banda asignada por MinTIC
- Cobertura: 100% del corredor (259.6 km)
- 20-30 radios móviles (vehículos de emergencia, patrullas)
- Licencia de operación vigente (MinTIC)
- Encriptación de comunicaciones

---

### 2.4 Telefonía IP (VoIP)

**ID:** RF-004  
**Descripción:** El sistema debe incluir telefonía IP para comunicaciones internas y teléfonos SOS  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1 (Teléfonos SOS)  

**Criterios de Aceptación:**
- Central telefónica IP (PBX) en CCO
- Teléfonos SOS de emergencia (30-50 unidades en corredor)
- Teléfonos IP internos (50-80 unidades en CCO, peajes, bases)
- Conexión directa SOS → CCO en < 30 segundos
- Grabación de llamadas SOS (evidencia)
- Geolocalización automática de teléfono SOS

---

### 2.5 Conectividad con ANI

**ID:** RF-005  
**Descripción:** El sistema debe proporcionar conectividad con sistemas de la ANI (SIINCO, ANIscopio)  
**Prioridad:** 🔴 Alta  
**Fuente:** AT2, Sección 3.3.5.1  

**Criterios de Aceptación:**
- Enlace de Internet dedicado (10-20 Mbps)
- VPN segura CCO ↔ ANI
- Transmisión en tiempo real de datos ITS, peajes, pesaje
- Almacenamiento local si hay falla (retransmisión en máximo 3 días)
- Redundancia (enlace primario + respaldo)

---

### 2.6 Enlaces de Respaldo (Redundancia)

**ID:** RF-006  
**Descripción:** El sistema debe incluir enlaces de respaldo para garantizar disponibilidad ≥99%  
**Prioridad:** 🔴 Alta  
**Fuente:** Disponibilidad crítica de sistemas  

**Criterios de Aceptación:**
- Enlaces de microondas en puntos críticos (backup de fibra)
- Enlaces 4G/5G en puntos remotos
- Conmutación automática ante falla de fibra (< 5 segundos)
- Ancho de banda de respaldo: ≥30% del enlace principal

---

### 2.7 Sistema de Gestión de Red

**ID:** RF-007  
**Descripción:** El sistema debe incluir SCADA/NMS para monitoreo y gestión de la red  
**Prioridad:** 🟡 Alta  
**Fuente:** AT2, Sección 3.1.7  

**Criterios de Aceptación:**
- Monitoreo SNMP de todos los equipos activos
- Visualización de topología de red
- Alarmas automáticas ante:
  - Caída de enlace
  - Alta utilización (>80%)
  - Falla de equipo
- Registro de eventos (syslog)
- Interfaz web para gestión

---

### 2.8 Seguridad de Red

**ID:** RF-008  
**Descripción:** El sistema debe incluir medidas de seguridad de red (firewalls, segmentación, cifrado)  
**Prioridad:** 🔴 Alta  
**Fuente:** ISO 27001; Buenas prácticas  

**Criterios de Aceptación:**
- Firewalls en CCO (perimetral)
- Segmentación de red (VLANs)
- Autenticación de usuarios (RADIUS, AAA)
- Cifrado de datos sensibles (VPN, TLS)
- Control de acceso por roles

---

### 2.9 Canalizaciones y Protección Física

**ID:** RF-009  
**Descripción:** El sistema debe proteger la fibra óptica mediante canalizaciones adecuadas  
**Prioridad:** 🔴 Alta  
**Fuente:** Protección de infraestructura  

**Criterios de Aceptación:**
- Ductos PVC o HDPE (4-6 ductos por tramo)
- Cámaras de inspección cada 300-500 m
- Profundidad mínima: 80 cm (bajo calzada), 60 cm (berma)
- Señalización de presencia de fibra (cinta de advertencia)
- Registro de as-built (ubicación exacta)

---

### 2.10 WiFi Público en Áreas de Servicio

**ID:** RF-010  
**Descripción:** El sistema debe proporcionar WiFi público en áreas de servicio  
**Prioridad:** 🟡 Baja  
**Fuente:** Confort de usuarios  

**Criterios de Aceptación:**
- WiFi en 6 áreas de servicio principales
- Ancho de banda: 10-20 Mbps por área
- Portal cautivo (términos de uso)
- Gratuito para usuarios
- Filtrado de contenido

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad de red troncal | ≥ 99.5% anual | Crítico para todos los sistemas |
| **RNF-002** | Disponibilidad de enlaces críticos | ≥ 99.9% (con redundancia) | CCO, Peajes |
| **RNF-003** | MTTR (Tiempo Medio de Reparación) | < 4 horas | Reparación rápida |

---

### 3.2 Requisitos de Performance

| ID | Requisito | Valor | Fuente |
|:---|:----------|:------|:-------|
| **RNF-004** | Ancho de banda troncal | 10 Gbps | Tráfico de video CCTV |
| **RNF-005** | Latencia extremo a extremo | < 50 ms | Tiempo real |
| **RNF-006** | Pérdida de paquetes | < 0.1% | Calidad de servicio |
| **RNF-007** | Jitter (VoIP) | < 30 ms | Calidad de voz |

---

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-008** | Cifrado de datos | TLS 1.2 mínimo, VPN IPsec | ISO 27001 |
| **RNF-009** | Autenticación | RADIUS, control de acceso por roles | Seguridad |
| **RNF-010** | Firewall | Perimetral en CCO | Protección |
| **RNF-011** | Segmentación (VLANs) | Tráfico separado por sistema | Seguridad |

---

### 3.4 Requisitos de Escalabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-012** | Capacidad de crecimiento | +50% ancho de banda sin cambios | Buenas prácticas |
| **RNF-013** | Puertos disponibles | 30% libres en switches | Expansión |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface Telecomunicaciones ↔ Todos los Sistemas

**ID:** RI-001  
**Sistemas:** Telecomunicaciones ↔ ITS, Peajes, CCO, Emergencias, etc.  
**Tipo:** Backbone (Fibra Óptica + Ethernet)  
**Protocolo:** Ethernet, IP  
**Datos Intercambiados:** TODOS los datos del corredor  
**Frecuencia:** Continuo 24/7  

**Ancho de banda total estimado:**
- Video CCTV: 600-780 Mbps (100-130 cámaras × 6 Mbps)
- Datos ITS: 10-20 Mbps
- Peajes: 20-30 Mbps
- VoIP: 5-10 Mbps
- **Total:** ~1 Gbps (picos), 10 Gbps dimensionado

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción Resumida | Fuente | Prioridad |
|:-------------|:-----|:---------------------|:-------|:----------|
| **RF-001** | Funcional | Red de fibra óptica 285 km | AT2 (implícito) | 🔴 CRÍTICA |
| **RF-002** | Funcional | Red de datos IP | AT2 | 🔴 CRÍTICA |
| **RF-005** | Funcional | Conectividad con ANI | AT2, 3.3.5.1 | 🔴 Alta |
| **RNF-001** | Disponibilidad | ≥ 99.5% anual | Crítico | 🔴 CRÍTICA |
| **RNF-004** | Performance | 10 Gbps ancho de banda | Video CCTV | 🔴 Alta |

**Total requisitos identificados:** 23 (10 funcionales + 13 no funcionales)

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | Sin telecomunicaciones, NINGÚN sistema digital opera | Crítico - Sistema más crítico después de energía | Lógica |
| **REST-002** | Disponibilidad ≥99.5% obligatoria | Alto - Impacta disponibilidad de TODOS los sistemas | AT2, AT4 |

---

### 6.2 Supuestos

| ID | Supuesto | Riesgo | Validación |
|:---|:---------|:-------|:-----------|
| **SUP-001** | Permisos de instalación de fibra otorgados | Alto | Gestionar con INVIAS/ANI |
| **SUP-002** | Frecuencias de radio asignadas por MinTIC | Alto | Solicitar licencia radio |

---

## 7. CASOS DE USO

### 7.1 CU-001: Transmisión de Video CCTV a CCO

**Actor:** Sistema CCTV + Red de Telecomunicaciones  
**Descripción:** Transmisión continua de video desde cámaras al CCO  

**Flujo Normal:**
1. Cámara CCTV captura video (1080p, 25 fps, H.265)
2. Video se transmite por fibra óptica (6 Mbps por cámara)
3. Switches transportan tráfico hasta CCO
4. Video llega a servidores NVR en CCO
5. Operador visualiza video en videowall (latencia < 500 ms)

**Postcondiciones:** Video disponible en tiempo real

---

### 7.2 CU-002: Llamada de Emergencia desde Teléfono SOS

**Actor:** Usuario + Sistema VoIP  
**Descripción:** Usuario llama desde SOS y se conecta con CCO  

**Flujo Normal:**
1. Usuario presiona botón SOS
2. Teléfono VoIP establece conexión con PBX en CCO
3. PBX identifica ubicación (PK) del teléfono
4. PBX conecta con operador de turno (< 30 segundos)
5. Llamada transmitida por fibra óptica
6. Operador atiende emergencia

**Postcondiciones:** Usuario conectado con CCO, emergencia atendida

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] Red de fibra óptica de 285 km instalada
- [ ] 100% de equipos ITS, peajes, CCO conectados
- [ ] Sistema de radio operativo (cobertura 100% corredor)
- [ ] Telefonía VoIP funcional (SOS + internos)
- [ ] Conectividad con ANI operativa
- [ ] Enlaces de respaldo configurados

### 8.2 Criterios de Performance

- [ ] Disponibilidad ≥ 99.5% anual
- [ ] Ancho de banda troncal: 10 Gbps
- [ ] Latencia < 50 ms
- [ ] Pérdida de paquetes < 0.1%

### 8.3 Criterios de Calidad

- [ ] Fibra óptica cumple UIT-T G.652.D
- [ ] Switches cumplen IEEE 802.3
- [ ] Pruebas OTDR de fibra aprobadas
- [ ] Certificación de cableado estructurado (TIA-568)

---

## 9. DEPENDENCIAS

| Sistema | Criticidad | Estado |
|:--------|:-----------|:-------|
| **Todos los sistemas digitales** | 🔴 CRÍTICA | Dependen de telecomunicaciones |
| **Energía Eléctrica** | 🔴 CRÍTICA | Para alimentar equipos de telecomunicaciones |

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura de red (Template T03)
- [ ] Diseñar topología detallada (anillo, estrella)
- [ ] Solicitar cotizaciones:
  - Fibra óptica: Corning, Furukawa, Prysmian
  - Switches: Cisco, Huawei, HP/Aruba
  - Radio: Motorola, Hytera, Kenwood
- [ ] Elaborar especificaciones técnicas (Template T04)
- [ ] Tramitar licencia de radio con MinTIC

---

## 11. REFERENCIAS

### Documentos Contractuales:
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Secciones 3.3.5.1, 3.3.4, 3.1.7

### Documentos del Proyecto:
- [T01 - Ficha Sistema Telecomunicaciones](27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md)
- [T01 - Todos los sistemas](.) - Todos dependen de Telecomunicaciones

### Normativa:
- UIT-T G.652 - Fibra Óptica Monomodo
- TIA-568 - Cableado Estructurado
- IEEE 802.3 - Ethernet
- ISO 27001 - Seguridad de la Información

---

## 12. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 17/10/2025 | Administrador Contractual EPC | Análisis inicial de requisitos del sistema de telecomunicaciones |

---

**Versión:** 1.0  
**Estado:** ✅ Análisis de Requisitos Completado  
**Fecha:** 17/10/2025  
**Responsable:** Ingeniero de Telecomunicaciones  
**Próximo documento:** T03 - Arquitectura Conceptual del Sistema de Telecomunicaciones  

---

**Fin del documento - T02 Análisis de Requisitos Sistema de Telecomunicaciones**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

