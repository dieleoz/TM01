# T04: ESPECIFICACIÓN TÉCNICA - SWITCHES DE RED
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Switches de Red (Core y Acceso)  
**Responsable:** Ing. de Telecomunicaciones  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Switches de Red Capa 3 (Core) y Capa 2 (Acceso) |
| **Cantidad estimada** | Core L3: 11, Acceso L2: 84 |
| **Ubicación** | Core: CCO, Nodos Principales. Acceso: Gabinetes de campo. |
| **Sistema asociado** | Telecomunicaciones (Red de Datos) |
| **Criticidad** | 🔴 Crítica |
| **Documentos de Referencia** | `27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md` |

---

## 2. ESPECIFICACIONES SWITCH CORE (CAPA 3)

### 2.1 Función Principal

Enrutamiento de alta velocidad y agregación de tráfico de los nodos de acceso hacia el CCO. Constituye el núcleo de la red.

### 2.2 Especificaciones Técnicas

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tipo** | Switch modular administrable Capa 3 |
| **Puertos Uplink** | Mínimo 4 x 10/25 Gbps SFP+ / SFP28 |
| **Puertos Downlink** | Mínimo 24 x 1/10 Gbps SFP+ |
| **Capacidad de Switching** | ≥ 1 Tbps |
| **Tasa de Reenvío** | ≥ 700 Mpps |
| **Protocolos de Ruteo** | OSPF, BGP, RIP, VRRP |
| **Redundancia** | Fuentes de poder y ventiladores redundantes y hot-swappable |
| **Seguridad** | Listas de Control de Acceso (ACLs), 802.1X, DHCP Snooping |
| **Calidad de Servicio (QoS)** | 8 colas de prioridad por puerto, clasificación y marcado |
| **Gestión** | CLI, SNMPv3, RMON, SSH/SSL |
| **Chasis** | Montable en rack de 19" |

---

## 3. ESPECIFICACIONES SWITCH DE ACCESO (CAPA 2)

### 3.1 Función Principal

Conectar los equipos finales de campo (cámaras, PMV, sensores) a la red troncal de fibra óptica.

### 3.2 Especificaciones Técnicas

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tipo** | Switch administrable Capa 2 de grado industrial |
| **Puertos Uplink (Fibra)** | Mínimo 2 x 1/10 Gbps SFP/SFP+ |
| **Puertos Downlink (Cobre)** | Mínimo 8 x 10/100/1000 Mbps RJ45 con PoE+ |
| **Presupuesto PoE (Power Budget)** | ≥ 240W (para alimentar 8 dispositivos PoE+ de 30W) |
| **Estándar PoE** | IEEE 802.3at (PoE+), 30W por puerto |
| **Capacidad de Switching** | ≥ 20 Gbps |
| **Funcionalidades L2** | VLANs (802.1Q), Link Aggregation (802.3ad), Spanning Tree (STP/RSTP/MSTP) |
| **Seguridad** | Port Security, Storm Control, Autenticación RADIUS/TACACS+ |
| **Protección Ambiental** | **IP30** o superior, diseño sin ventilador (fanless) |
| **Temperatura de Operación** | -40°C a +75°C (grado industrial) |
| **Montaje** | Riel DIN |

---

## 4. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación | Cumplimiento |
|:------|:------------|:--------------|
| **IEEE 802.3** | Estándares Ethernet | 🔴 Obligatorio |
| **IEEE 802.1Q** | VLAN Tagging | 🔴 Obligatorio |
| **IEEE 802.3at** | Power over Ethernet Plus (PoE+) | 🔴 Obligatorio |
| **IETF RFCs** | Para protocolos de ruteo (OSPF, BGP) | 🔴 Obligatorio |

---

## 5. PRUEBAS DE ACEPTACIÓN (SAT)

- [ ] **Switch Core:** Prueba de rendimiento de enrutamiento, prueba de failover de fuentes de poder, validación de configuración OSPF/BGP.
- [ ] **Switch de Acceso:** Prueba de entrega de potencia PoE+ en todos los puertos simultáneamente, prueba de VLANs y segmentación, prueba de operación en cámara climática a temperaturas extremas.
- [ ] **Integración:** Prueba de conectividad extremo a extremo (Cámara → Switch Acceso → Switch Core → CCO).

---

## 6. GARANTÍA Y SOPORTE

| Aspecto | Requisito Mínimo |
|:--------|:-------------------|
| **Garantía del Fabricante** | 5 años para Core, 3 años para Acceso |
| **Soporte Técnico** | Soporte 24/7 con reemplazo avanzado de hardware (NBD - Next Business Day) |
| **Disponibilidad de Repuestos** | Garantizada por 10 años |

---

## 7. PROVEEDORES PRELIMINARES

| Proveedor | Series de Referencia (Core / Acceso Industrial) |
|:----------|:------------------------------------------------|
| Cisco | Catalyst 9500 / Industrial Ethernet 4000 Series |
| Juniper | EX Series / ACX Series |
| Aruba (HPE) | CX 8320 Series / 3810M Series |
| Hirschmann | MACH Series / RSP Series |

---

## 8. PRESUPUESTO ESTIMADO

| Componente | CAPEX (USD) |
|:-----------|:------------|
| **Switches L2 (84 und)** | $119,459 |
| **Switches L3 (11 und)** | $202,892 |
| **TOTAL** | **$322,351** |

---

---

**Versión:** 1.0  
**Estado:** ✅ Especificación Lista para Cotización  
**Fecha:** 18/10/2025

