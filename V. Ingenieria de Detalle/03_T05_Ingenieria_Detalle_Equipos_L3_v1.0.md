# T05 - INGENIERÍA DE DETALLE - EQUIPOS L3 (CORE DE RED)
## Arquitectura de Red - Anillo Troncal L3

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** Telecomunicaciones - Equipos Nivel 3 (Core/Troncal)  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.1  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - 11 switches L3 | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Ubicaciones actualizadas | Ing. Telecomunicaciones |

---

## 📋 **RESUMEN EJECUTIVO**

### **Arquitectura de Red L3:**

| Parámetro | Valor | Observaciones |
|:----------|:------|:--------------|
| **Total Switches L3** | 11 unidades (7 nodos×1 + 2 STACKs×2) | Core de red |
| **Firewalls** | 2 unidades | Alta disponibilidad en CCO |
| **Nodos L3** | 7 ubicaciones | CCO, 2 Peajes, 2 AS, 2 Bunkers |
| **Anillo troncal** | 293 km fibra | Cerrado, redundante |
| **Regla crítica 80 km** | ✅ 100% cumplimiento | SFP 10G-ZR validados |
| **CAPEX Total L3** | **$139,326 USD** | Switches + Firewalls + SFPs |
| **Stock Repuestos** | **$30,370 USD** | 25% equipos críticos |
| **IVA + Seguro/Flete** | **$33,196 USD** | 19% IVA + 0.5% seguro |
| **TOTAL L3** | **$202,892 USD** | - |

---

## 🏢 **NODOS L3 - UBICACIONES**

### **Distribución Geográfica:**

| Nodo | Nombre | Ubicación | PKR | PKD | Tipo Edificación | Switch L3 |
|:-----|:-------|:----------|:----|:----|:-----------------|:----------|
| **N1** | CCO | La Lizama PK 4+300 | RN 4513 | 0+000 | Centro de Control | STACK 48p×2 |
| **N2** | ZAMBITO | RN 4511 | 9+200 | 141+300 | Peaje + AS | 48p |
| **N3** | BUNKER 01 | TBD | TBD | 70+450 | Bunker Telecom | 24p |
| **N4** | AGUAS NEGRAS | RN 4511 | 80+000 | 68+700 | Peaje + AS | 48p |
| **N5** | AS AGUAS NEGRAS | RN 4511 | 113+450 | 37+050 | Área Servicio | 24p |
| **N6** | AS ZAMBITO | RN 4510 | 104+100 | 178+000 | Área Servicio | 24p |
| **N7** | BUNKER 02 | TBD | TBD | 233+150 | Bunker Telecom | STACK 24p×2 |

**Total switches:** 7 unidades individuales + 2 STACKs (4 switches) = **11 switches**

---

## 🔧 **DETALLE DE EQUIPOS POR MODELO**

### **1. CISCO CATALYST 9200 - 24 PUERTOS (7 unidades)**

#### **Especificaciones Técnicas:**

| Parámetro | Especificación | Cumplimiento AT3 |
|:----------|:--------------|:-----------------|
| **Modelo** | C9200-24T-A (Network Advantage) | ✅ Empresarial |
| **Puertos Ethernet** | 24×10/100/1000 Mbps RJ45 | ✅ Gigabit |
| **Módulo uplink** | C9200-NM-4X (4×10G SFP+) | ✅ 10 Gigabit |
| **Switching capacity** | 128 Gbps | ✅ Alto rendimiento |
| **Forwarding rate** | 95.2 Mpps | ✅ |
| **Memoria** | 8 GB DRAM | ✅ |
| **Flash** | 16 GB | ✅ |
| **Temperatura** | 0°C a +45°C | ✅ Controlada (rack) |
| **Alimentación** | Dual redundante (PWR-C6-125WAC×2) | ✅ Redundancia |
| **Gestión** | Cisco DNA, SNMP, CLI | ✅ |

#### **Distribución:**

| Nodo | Cantidad | Aplicación | Observaciones |
|:-----|:---------|:-----------|:--------------|
| **N3-BUNKER01** | 1 | Nodo intermedio | Agrega sub-anillos SA6-A y SA6-B |
| **N5-AS_AGUAS_NEGRAS** | 1 | Área Servicio | Agrega SA5-B y SA6-A |
| **N6-AS_ZAMBITO** | 1 | Área Servicio | Agrega SA3-B y SA4-B |
| **N7-BUNKER02 (STACK)** | 2 | STACK alta disponibilidad | Agrega SA5-A, SA7-A |
| **Spare** | 2 | Stock repuesto | 25% de 7 = 2 unidades |
| **TOTAL** | **7** | - | - |

**Costo:**
- Precio unitario: $1,731.16 USD + módulo $1,288.70 + fuente $507.30 = $3,527.16 USD
- Total 7 unidades: **$24,690.12 USD** (sin IVA)
- Con IVA 19%: **$29,381.44 USD**
- Con licencias DNA + soporte: **$42,848 USD**

---

### **2. CISCO CATALYST 9200 - 48 PUERTOS (3 unidades)**

#### **Especificaciones Técnicas:**

| Parámetro | Especificación |
|:----------|:--------------|
| **Modelo** | C9200-48T-A (Network Advantage) |
| **Puertos Ethernet** | 48×10/100/1000 Mbps RJ45 |
| **Módulo uplink** | C9200-NM-4X (4×10G SFP+) |
| **Switching capacity** | 176 Gbps |
| **Forwarding rate** | 130.9 Mpps |
| **Stacking** | StackWise-160 (hasta 8 switches) |

#### **Distribución:**

| Nodo | Cantidad | Aplicación | Observaciones |
|:-----|:---------|:-----------|:--------------|
| **N1-CCO (STACK)** | 2 | STACK core principal | Máxima densidad + HA |
| **N2-PEAJE_ZAMBITO** | 1 | Peaje + AS + equipos ITS | 14 carriles + AS |
| **N4-PEAJE_AGUAS_NEGRAS** | 1 | Peaje + AS + equipos ITS | 14 carriles + AS |
| **Spare (incluido)** | 1 | Stock para módulos | - |
| **TOTAL** | **3** | - | + 1 módulo spare |

**Costo:**
- Precio unitario: $2,945.75 + módulo $1,288.70 + fuente $507.30 = $4,741.75 USD
- Total 3 unidades: **$14,225.25 USD** (sin IVA)
- Con IVA 19%: **$16,928.05 USD**
- Con licencias DNA + soporte: **$29,687 USD**

---

### **3. FIREWALLS FORTINET FORTIGATE-100F (2 unidades)**

#### **Especificaciones Técnicas:**

| Parámetro | Especificación |
|:----------|:--------------|
| **Modelo** | FortiGate-100F (FG-100F) |
| **Throughput Firewall** | 10 Gbps |
| **Throughput IPS** | 900 Mbps |
| **Throughput VPN** | 4.2 Gbps (IPsec) |
| **Interfaces** | 10×GE RJ45 + 8×GE SFP |
| **Usuarios concurrentes** | 500 |
| **Sesiones** | 1,000,000 |
| **Licencias incluidas** | FortiCare Premium + UTP 1 año |

#### **Aplicación:**

| Ubicación | Rol | Configuración |
|:----------|:----|:--------------|
| **N1-CCO (Firewall 1)** | Activo | Master, all traffic |
| **N1-CCO (Firewall 2)** | Standby | Backup, HA failover |

**Topología Alta Disponibilidad (HA):**
```
Internet/WAN
     |
     |
 [FW1-Active] ←→ [FW2-Standby]  (HA heartbeat)
     |
     |
Red ITS (VLAN trunk)
```

**Costo:**
- Precio unitario: $4,012.03 USD
- Total 2 unidades: **$8,024.06 USD** (sin IVA)
- Con IVA 19%: **$9,549 USD**

---

## 📡 **MÓDULOS SFP 10G - LARGO ALCANCE**

### **Distribución por Tipo:**

| Modelo | Alcance | Cantidad | Aplicación | Precio Unit. | Total |
|:-------|:--------|:---------|:-----------|:-------------|:------|
| **SFP-10G-ZR-S** | 80 km | 11 | Troncal larga distancia | $5,339.48 | $58,734 |
| **SFP-10G-LR-S** | 10 km | 5 | Conexiones medias | $1,020.55 | $5,103 |
| **SFP-10G-ER-S** | 40 km | 2 | Backup/redundancia | $3,869.90 | $7,740 |
| **TOTAL SFPs 10G** | - | **18** | - | - | **$71,577** |

**Nota:** SFPs incluyen conector LC y están pre-configurados para monomodo G.652D.

---

## 📊 **APU - INSTALACIÓN SWITCH L3**

### **APU-L3-001: Instalación Switch L3 en Nodo (Rack 19")**

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
|:-----|:------------|:-------|:---------|:-------------|:------|
| **MANO DE OBRA** | | | | | **$450/switch** |
| Ingeniero telecomunicaciones | Instalación y configuración | HH | 8.0 | $35.00 | $280.00 |
| Técnico FO | Fusiones y patch cords | HH | 4.0 | $25.00 | $100.00 |
| Técnico redes | Configuración avanzada | HH | 4.0 | $30.00 | $120.00 |
| Ayudante | Apoyo instalación | HH | 6.0 | $10.00 | $60.00 |
| **MATERIALES** | | | | | **$350/switch** |
| Patch panel 24p Cat6 | Conexión equipos locales | UND | 1.0 | $80.00 | $80.00 |
| Patch cords RJ45 3m Cat6 | Interconexión | UND | 12.0 | $8.00 | $96.00 |
| Patch cords FO LC-LC 3m | Uplinks fibra | UND | 4.0 | $20.00 | $80.00 |
| Organizador cables 1U | Gestión cables rack | UND | 2.0 | $25.00 | $50.00 |
| Etiquetas identificación | Puertos, cables, uplinks | UND | 30.0 | $0.80 | $24.00 |
| Accesorios montaje rack | Tornillos, tuercas, jaulas | GLB | 1.0 | $20.00 | $20.00 |
| **EQUIPOS Y HERRAMIENTAS** | | | | | **$120/switch** |
| Fusionadora FO | Uso | HH | 2.0 | $30.00 | $60.00 |
| OTDR | Pruebas fibra | HH | 1.0 | $10.00 | $10.00 |
| Laptop + software Cisco | Configuración | HH | 4.0 | $10.00 | $40.00 |
| Herramienta red | Crimpadoras, testers | HH | 1.0 | $10.00 | $10.00 |
| **PRUEBAS Y COMISIONAMIENTO** | | | | | **$280/switch** |
| Ingeniero comisionamiento | Pruebas integrales | HH | 6.0 | $40.00 | $240.00 |
| Técnico pruebas | Apoyo mediciones | HH | 4.0 | $10.00 | $40.00 |
| **SUBTOTAL DIRECTO** | | | | | **$1,200/switch** |
| **Administración (5%)** | | | | | **$60/switch** |
| **Imprevistos (3%)** | | | | | **$37.80/switch** |
| **Utilidad (2%)** | | | | | **$25.96/switch** |
| **TOTAL APU-L3-001** | | | | | **$1,323.76/switch** |

**Costo instalación 11 switches:** 11 × $1,324 = **$14,561 USD**

---

## 🗺️ **TOPOLOGÍA DE RED L3**

### **Anillo Troncal Principal:**

```
                    N1-CCO (STACK 48p×2)
                    PKD 0+000
                         |
                    (10G-ZR 80km)
                         |
         +---------------+---------------+
         |                               |
    (SFP 10G-ZR)                    (SFP 10G-ZR)
         |                               |
    N7-BUNKER02                     N2-ZAMBITO
    PKD 233+150                     PKD 141+300
    (STACK 24p×2)                   (48p)
         |                               |
    (10G-ZR 80km)                  (10G-ZR 80km)
         |                               |
    N6-AS_ZAMBITO                  N4-AGUAS_NEGRAS
    PKD 178+000                     PKD 68+700
    (24p)                           (48p)
         |                               |
    (10G-LR 10km)                  (10G-LR 10km)
         |                               |
    N5-AS_AGUAS_NEGRAS ←──────→ N3-BUNKER01
    PKD 37+050         (10G-ER 40km)   PKD 70+450
    (24p)                           (24p)
         |                               |
         +----------- (cierre) ---------+
                         ↓
                    N1-CCO (cierre)
```

**Distancias validadas:**
- N1 → N7: ~70 km (SFP 10G-ZR 80km) ✅
- N7 → N6: ~55 km (SFP 10G-ZR 80km) ✅
- N6 → N5: ~33 km (SFP 10G-ER 40km) ✅
- N5 → N3: ~33 km (SFP 10G-ER 40km) ✅
- N3 → N4: ~31 km (SFP 10G-LR 10km) ✅
- N4 → N2: ~73 km (SFP 10G-ZR 80km) ✅
- N2 → N1: ~70 km (SFP 10G-ZR 80km) ✅

**✅ Todas las distancias <80 km (límite SFP-10G-ZR)**

---

## 🔧 **DETALLE DE EQUIPOS**

### **2. SWITCHES CATALYST 9200-24T (7 unidades)**

**Configuración por nodo:**

| Nodo | Switch | Uplinks 10G | Sub-Anillos L2 | Equipos Locales | Observaciones |
|:-----|:-------|:------------|:---------------|:----------------|:--------------|
| **N3-BUNKER01** | 1×24p | 2×10G | SA6-A, SA6-B | Ninguno | Solo agregación |
| **N5-AS_AGUAS_NEGRAS** | 1×24p | 2×10G | SA5-B, SA6-A | Equipos AS | Área servicio |
| **N6-AS_ZAMBITO** | 1×24p | 2×10G | SA3-B, SA4-B | Equipos AS | Área servicio |
| **N7-BUNKER02** | 2×24p STACK | 4×10G | SA5-A, SA7-A | Ninguno | Alta disponibilidad |
| **TOTAL** | **7** | - | - | - | Incluye STACK N7 |

**Precio unitario completo:**
- Switch 24p: $1,731.16
- Módulo 4×10G: $1,288.70
- Fuente redundante: $507.30
- Licencia DNA 3 años: $1,295.15
- Soporte 3 años: $321.48
- **TOTAL por switch:** $5,143.79 USD (sin IVA)
- **Con IVA 19%:** $6,121.11 USD

**Total 7 switches:** 7 × $6,121 = **$42,848 USD**

---

### **3. SWITCHES CATALYST 9200-48T (3 unidades + 1 spare)**

**Configuración por nodo:**

| Nodo | Switch | Uplinks 10G | Sub-Anillos L2 | Equipos Locales | Observaciones |
|:-----|:-------|:------------|:---------------|:----------------|:--------------|
| **N1-CCO** | 2×48p STACK | 4×10G | SA1-A, SA1-B, SA7-B | Servidores CCO, SCADA, NVR | Core principal |
| **N2-ZAMBITO** | 1×48p | 2×10G | SA1-B, SA2-A | 14 carriles peaje + AS | Alta densidad |
| **N4-AGUAS_NEGRAS** | 1×48p | 2×10G | SA2-A, SA2-B, SA3-A | 14 carriles peaje + AS | Alta densidad |
| **Módulo spare** | - | 1×4×10G | - | - | Repuesto |
| **TOTAL** | **3** (+1 spare) | - | - | - | Incluye STACK N1 |

**Precio unitario completo:**
- Switch 48p: $2,945.75
- Módulo 4×10G: $1,288.70 (×4 total para N1 STACK + spare)
- Fuente redundante: $507.30
- Licencia DNA 3 años: $2,429.20
- Soporte 3 años: $546.12
- **TOTAL por switch:** $7,716.07 USD (sin IVA)
- **Con IVA 19%:** $9,182.13 USD

**Total 3 switches + 1 módulo spare:** **$29,687 USD**

---

### **4. FIREWALLS FORTINET FORTIGATE-100F (2 unidades)**

**Configuración Alta Disponibilidad (HA):**

| Parámetro | Firewall 1 (Activo) | Firewall 2 (Standby) |
|:----------|:-------------------|:---------------------|
| **Rol** | Master (todo el tráfico) | Backup (sincronizado) |
| **Interfaces** | 10×GE RJ45 + 8×GE SFP | Idénticas |
| **Configuración** | Active | Passive (Hot Standby) |
| **Sincronización** | Heartbeat dedicado | Heartbeat dedicado |
| **Failover** | Automático (<3 segundos) | Automático |
| **Sesiones** | Hasta 1M sesiones | Sincronizadas |

**Políticas de Seguridad:**
- ✅ **Zona WAN** → Internet/ANI/Policía
- ✅ **Zona LAN-ITS** → Red ITS (VLANs 10-50)
- ✅ **Zona CCO** → Servidores/SCADA
- ✅ **Zona DMZ** → Servicios públicos (si aplica)

**Costo:**
- Precio unitario: $4,012.03 USD (incluye licencia 1 año)
- Total 2 unidades: **$8,024 USD** (sin IVA)
- Con IVA 19%: **$9,549 USD**

---

## 📡 **MÓDULOS SFP 10G - DETALLE**

### **SFP-10G-ZR-S (80 km) - 11 unidades**

| Parámetro | Especificación |
|:----------|:--------------|
| **Alcance** | Hasta 80 km |
| **Longitud de onda** | 1550 nm |
| **Tipo fibra** | Monomodo G.652D |
| **Potencia TX** | +4 a +8 dBm |
| **Sensibilidad RX** | -24 dBm |
| **Budget óptico** | 28-32 dB |

**Aplicación:** Enlaces largos entre nodos L3 principales (N1-N7, N7-N6, N4-N2, N2-N1)

**Costo:** 11 × $5,339.48 = **$58,734 USD**

---

### **SFP-10G-LR-S (10 km) - 5 unidades**

| Parámetro | Especificación |
|:----------|:--------------|
| **Alcance** | Hasta 10 km |
| **Longitud de onda** | 1310 nm |
| **Budget óptico** | 10 dB |

**Aplicación:** Enlaces cortos (dentro de edificaciones, backups)

**Costo:** 5 × $1,020.55 = **$5,103 USD**

---

### **SFP-10G-ER-S (40 km) - 2 unidades**

**Aplicación:** Enlaces intermedios N5-N3 (~33 km)

**Costo:** 2 × $3,869.90 = **$7,740 USD**

---

## 🔄 **CONFIGURACIÓN DE STACKING**

### **STACK N1-CCO (2× Catalyst 9200-48T)**

**Topología física:**
```
[Switch 1 - Master] ←→ [Switch 2 - Member]
   (STACK-T4-50CM cable)
```

**Ventajas:**
- ✅ Gestión unificada (1 IP management)
- ✅ Ancho de banda apilado (160 Gbps)
- ✅ Redundancia (falla 1 switch → el otro continúa)
- ✅ Escalabilidad (hasta 8 switches)

**Configuración:**
```cisco
switch 1 priority 15  ! Master
switch 2 priority 10  ! Member

! Distribución de puertos
interface range Gi1/0/1-24
 description SERVIDORES-CCO-SCADA
 
interface range Gi2/0/1-24
 description EQUIPOS-ITS-LOCALES

interface TenGigabitEthernet1/1/1
 description UPLINK-ANILLO-ENTRADA
 
interface TenGigabitEthernet1/1/2
 description UPLINK-ANILLO-SALIDA
```

---

### **STACK N7-BUNKER02 (2× Catalyst 9200-24T)**

**Aplicación:** Nodo intermedio con alta disponibilidad

**Configuración similar a N1 pero con menor densidad de puertos (24 vs 48)**

---

## 📋 **PRUEBAS Y CERTIFICACIÓN**

### **6.1 Pruebas de Aceptación en Fábrica (FAT)**

| Prueba | Criterio | Responsable |
|:-------|:---------|:------------|
| **Inspección física** | Sin daños, embalaje original | EPC + Proveedor |
| **Encendido inicial** | POST exitoso, LED verdes | Proveedor |
| **Configuración básica** | IP management, SNMP | Proveedor |
| **Throughput** | ≥10 Gbps (uplinks 10G) | Laboratorio |
| **Documentación** | Seriales, certificados, manuales | Proveedor |

---

### **6.2 Pruebas en Sitio (SAT)**

| Prueba | Criterio | Método |
|:-------|:---------|:-------|
| **Conectividad anillo** | Ping a todos los nodos L3 | CLI |
| **Ancho de banda** | ≥9 Gbps real (10G teórico) | iPerf3 |
| **Latencia** | ≤2 ms por salto L3 | Ping extendido |
| **Redundancia** | Failover <3s ante falla | Desconexión controlada |
| **VLAN trunking** | Tráfico segregado | Wireshark |
| **Spanning Tree** | Convergencia <10s | Prueba lazo |
| **SNMP** | Monitoreable desde CCO | Software gestión |
| **Throughput agregado** | ≥70 Gbps (anillo completo) | Prueba carga |

---

## 💰 **RESUMEN FINANCIERO EQUIPOS L3**

| Concepto | Valor (USD) | % del Total |
|:---------|:------------|:------------|
| **Switches 24p (7 unidades)** | $42,848 | 21.1% |
| **Switches 48p (3 unidades)** | $29,687 | 14.6% |
| **Firewalls (2 unidades)** | $9,549 | 4.7% |
| **SFPs 10G (18 unidades)** | $71,577 | 35.3% |
| **Módulos Stacking** | $5,152 | 2.5% |
| **Atenuadores** | $198 | 0.1% |
| **Configuración** | Incluido | - |
| **SUBTOTAL EQUIPOS** | $159,011 | 78.4% |
| **Stock Repuestos (25%)** | $30,370 | 15.0% |
| **IVA + Seguro/Flete** | $13,511 | 6.7% |
| **TOTAL EQUIPOS L3** | **$202,892 USD** | **100%** |

---

## 🛠️ **CRONOGRAMA DE INSTALACIÓN L3**

| Actividad | Mes 18-19 | Mes 20-21 | Mes 22-23 |
|:----------|:----------|:----------|:----------|
| **Recepción equipos L3** | ████████ | | |
| **Pruebas FAT** | ████████ | | |
| **Instalación física** | ████ | ████████ | ████ |
| **Configuración core** | | ████████ | ████ |
| **Pruebas de anillo** | | ████ | ████████ |
| **Integración con L2** | | | ████████ |
| **Comisionamiento** | | | ████ |

**Duración total:** 6 meses (paralelo a últimos 6 meses de fibra + L2)

**Nota:** L3 se instala después de que fibra óptica esté al 75% completada.

---

## 📊 **INTEGRACIÓN CON SISTEMAS**

### **7.1 Conexión a Sub-Anillos L2**

| Nodo L3 | Sub-Anillos Conectados | Total Switches L2 | Equipos ITS |
|:--------|:-----------------------|:------------------|:------------|
| **N1-CCO** | SA1-A, SA7-B | 8 + 6 = 14 | ~28 equipos |
| **N2-ZAMBITO** | SA1-B, SA2-A | 4 + 6 = 10 | ~20 equipos |
| **N3-BUNKER01** | SA6-B | 5 | ~10 equipos |
| **N4-AGUAS_NEGRAS** | SA2-B, SA3-A, SA4-A | 6 + 6 + 5 = 17 | ~34 equipos |
| **N5-AS_AGUAS_NEGRAS** | SA5-B, SA6-A | 4 + 5 = 9 | ~18 equipos |
| **N6-AS_ZAMBITO** | SA3-B, SA4-B | 6 + 5 = 11 | ~22 equipos |
| **N7-BUNKER02** | SA5-A, SA7-A | 4 + 6 = 10 | ~20 equipos |
| **TOTAL** | 14 sub-anillos | 84 switches L2 | **169 equipos ITS** |

---

### **7.2 Conexión a Servidores CCO**

**En Nodo N1-CCO:**

| Servidor | Conexión | Puerto Switch | VLAN |
|:---------|:---------|:--------------|:-----|
| **NVR (Video)** | 1G RJ45 | Gi1/0/1 | VLAN 10 (CCTV) |
| **SCADA** | 1G RJ45 | Gi1/0/2 | VLAN 1 (MGMT) |
| **Servidor Aplicaciones** | 1G RJ45 | Gi1/0/3 | VLAN 1 (MGMT) |
| **Servidor Base Datos** | 1G RJ45 | Gi1/0/4 | VLAN 1 (MGMT) |
| **Servidor Peajes** | 1G RJ45 | Gi1/0/5 | VLAN 60 (Peajes) |
| **Firewall 1** | 10G SFP+ | Te1/1/1 | Trunk (todas VLANs) |
| **Firewall 2** | 10G SFP+ | Te1/1/2 | Trunk (todas VLANs) |

---

## 🔒 **SEGURIDAD Y REDUNDANCIA**

### **8.1 Mecanismos de Redundancia**

| Mecanismo | Implementación | Tiempo de Failover |
|:----------|:---------------|:-------------------|
| **Anillo Fibra L3** | Topología cerrada | Automático (RSTP <10s) |
| **STACK (N1, N7)** | StackWise-160 | <1 segundo |
| **Firewalls HA** | Active-Standby | <3 segundos |
| **Dual Uplinks** | Cada nodo L3 tiene 2 uplinks 10G | RSTP |
| **Fuentes redundantes** | Cada switch tiene 2 fuentes AC | Instantáneo |

---

### **8.2 Políticas de Seguridad (Firewalls)**

| Política | Origen | Destino | Acción |
|:---------|:-------|:--------|:-------|
| **Internet → CCO** | WAN | VLAN 1 (MGMT) | DENY (solo VPN) |
| **Internet → ITS** | WAN | VLANs 10-50 | DENY (protección) |
| **CCO → ITS** | VLAN 1 | VLANs 10-50 | ALLOW (monitoreo) |
| **ITS → CCO** | VLANs 10-50 | VLAN 1 | ALLOW (datos) |
| **ITS → Internet** | VLANs 10-50 | WAN | DENY (salvo excepciones) |
| **VPN ANI** | WAN (VPN) | VLAN 1 | ALLOW (conexión segura) |

---

## 📝 **DOCUMENTOS ENTREGABLES**

1. ✅ Este documento (T05 Equipos L3)
2. ⏳ Diagramas de topología L3 (Visio/AutoCAD)
3. ⏳ Configuraciones de switches (por nodo)
4. ⏳ Matriz de VLANs y subredes
5. ⏳ Políticas de firewall documentadas
6. ⏳ Protocolo de pruebas L3
7. ⏳ Plan de contingencia (failover)
8. ⏳ Manuales de operación CCO

---

## 🎯 **RESUMEN EJECUTIVO - CAPEX L3**

| Componente | Cantidad | CAPEX (USD) |
|:-----------|:---------|:------------|
| **Switches 24p** | 7 | $42,848 |
| **Switches 48p** | 3 (+1 módulo) | $29,687 |
| **Firewalls** | 2 | $9,549 |
| **SFPs 10G** | 18 | $71,577 |
| **Stacking** | 4 kits + 5 cables | $5,152 |
| **Atenuadores** | 19 | $198 |
| **Stock Repuestos** | - | $30,370 |
| **IVA + Seguro** | - | $13,511 |
| **TOTAL L3** | - | **$202,892 USD** |

**Integración con Fibra Óptica (Opción A):** $8,593,000 USD  
**Integración con Equipos L2:** $119,459 USD  
**TOTAL TELECOMUNICACIONES:** **$8,915,374 USD** ✅

---

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Ubicaciones actualizadas: CCO La Lizama PK 4+300, Aguas Negras PK 80+000
- CAPEX mantenido: USD $202,892
- Arquitectura L3 confirmada
- Metodología PKD lineal aplicada

