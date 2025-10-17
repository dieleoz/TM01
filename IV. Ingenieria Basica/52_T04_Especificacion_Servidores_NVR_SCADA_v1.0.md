# T04: ESPECIFICACIÓN TÉCNICA - SERVIDORES NVR/SCADA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Servidores de Video (NVR) y SCADA  
**Responsable:** Ing. de Sistemas / Arquitecto de TI  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Servidores Rack para NVR, SCADA, Aplicaciones |
| **Cantidad estimada** | 6-8 servidores (2 NVR, 2 SCADA, 2 Aplicaciones, 2 Backup) |
| **Ubicación** | CCO (Data Center) |
| **Sistema asociado** | ITS (CCTV), CCO (SCADA), Telecomunicaciones |
| **Criticidad** | 🔴 Crítica |
| **Documentos de Referencia** | `54_T03_Arquitectura_Conceptual_CCO_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

- **Servidores NVR:** Grabación y almacenamiento de video de 120-150 cámaras CCTV
- **Servidores SCADA:** Ejecución de software SCADA para monitoreo y control de ITS
- **Servidores Aplicaciones:** Hosting de aplicaciones (DAI, LPR, gestión de incidentes)

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Servidor NVR (Network Video Recorder)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Formato** | Servidor Rack 2U o Tower |
| **Procesador** | Intel Xeon Gold 6200 series o superior (12 cores, 2.4 GHz base) |
| **RAM** | 128 GB DDR4 ECC, expandible a 256 GB |
| **Almacenamiento Sistema** | 2x 960 GB SSD NVMe (RAID 1) |
| **Almacenamiento Video** | 24x 8TB HDD SATA 7200 RPM (RAID 6) = 176 TB útiles |
| **Controladora RAID** | Hardware RAID 6, caché 2 GB con BBU |
| **Tarjetas de Red** | 2x 10 GbE (fibra óptica SFP+), redundancia activa-pasiva |
| **GPU** | Opcional: NVIDIA Quadro P1000 o superior (para análisis de video) |
| **Fuentes de Alimentación** | Redundantes (1+1), Hot-Swap, 1000W+ |
| **Sistema Operativo** | Windows Server 2019/2022 Datacenter o Linux (Ubuntu Server 20.04 LTS) |

**Retención de video:** 30 días @ 1080p, 15 fps, H.265

### 3.2 Servidor SCADA

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Formato** | Servidor Rack 1U o 2U |
| **Procesador** | Intel Xeon Silver 4200 series (8 cores, 2.2 GHz) |
| **RAM** | 64 GB DDR4 ECC, expandible a 128 GB |
| **Almacenamiento** | 2x 480 GB SSD SATA (RAID 1) + 2x 2TB HDD (RAID 1, datos históricos) |
| **Tarjetas de Red** | 4x 1 GbE (cobre), redundancia de red |
| **Puertos Serie** | 4x RS-232/485 (para equipos legacy) |
| **Fuentes de Alimentación** | Redundantes (1+1) |
| **Sistema Operativo** | Windows Server 2019 Standard o RHEL 8 |

### 3.3 Servidor de Aplicaciones

| Parámetro | Especificación |
|:----------|:---------------|
| **Procesador** | Intel Xeon Silver 4200 series (8-12 cores) |
| **RAM** | 64-96 GB DDR4 ECC |
| **Almacenamiento** | 2x 960 GB SSD (RAID 1) |
| **Red** | 2x 10 GbE o 4x 1 GbE |
| **Virtualización** | Soporte VMware ESXi 7.0, Hyper-V o KVM |

---

## 4. PROTECCIÓN Y DISPONIBILIDAD

| Característica | Especificación |
|:---------------|:---------------|
| **Redundancia de PSU** | Sí, 1+1 Hot-Swap |
| **Redundancia de Ventiladores** | Sí, N+1 |
| **Hot-Swap de Discos** | Sí, bandejas con LED |
| **Management** | iDRAC 9 (Dell), iLO 5 (HP), o similar (IPMI, KVM sobre IP) |
| **Monitoreo** | SNMP v3, syslog, integración con Nagios/Zabbix |
| **Backup** | Servidor de Backup dedicado con Veeam o similar |

---

## 5. CUMPLIMIENTO Y CERTIFICACIONES

| Norma | Descripción |
|:------|:------------|
| **ISO 9001** | Calidad de fabricación |
| **Energy Star** | Eficiencia energética |
| **RoHS** | Sin sustancias peligrosas |
| **UL, CE** | Seguridad eléctrica |

---

## 6. PROVEEDORES SUGERIDOS

| Proveedor | Línea de Producto | Observaciones |
|:----------|:------------------|:--------------|
| **Dell Technologies** | PowerEdge R740, R750 | Líder en servidores, excelente soporte |
| **HPE** | ProLiant DL380 Gen10+ | Alta disponibilidad |
| **Lenovo** | ThinkSystem SR650 | Buena relación precio-calidad |
| **Cisco** | UCS C240 M6 | Integración con redes Cisco |

---

## 7. SOFTWARE ASOCIADO

### 7.1 NVR

- **Milestone XProtect Corporate** (recomendado)
- **Genetec Security Center**
- **Avigilon Control Center**

### 7.2 SCADA

- **Siemens SCADA (WinCC)**
- **Schneider Electric (Wonderware)**
- **GE Digital (iFIX)**

---

## 8. COSTOS ESTIMADOS

| Servidor | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:---------|:---------|:---------------------|:------------------|
| NVR (con almacenamiento) | 2 | $45,000 | $90,000 |
| SCADA | 2 | $15,000 | $30,000 |
| Aplicaciones | 2 | $12,000 | $24,000 |
| Backup | 1 | $25,000 | $25,000 |
| Licencias Software | - | - | $150,000 |
| **TOTAL** | **7** | - | **$319,000** |

---

## 9. PRÓXIMOS PASOS

- [ ] Definir arquitectura de virtualización (VMware vs Hyper-V)
- [ ] Solicitar cotizaciones a Dell, HPE, Lenovo
- [ ] Dimensionar storage según retención de video requerida
- [ ] Diseñar plan de backup y recuperación ante desastres

---

## 10. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de servidores |

---

**Fin del documento - T04 Especificación Técnica Servidores NVR/SCADA**  
*Metodología Punto 42 v1.0*

