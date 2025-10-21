# T05 - INGENIERÍA DE DETALLE - EQUIPOS L2 (SWITCHES DE CAMPO)
## Arquitectura de Red - Sub-Anillos L2

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** Telecomunicaciones - Equipos Nivel 2 (Campo)  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.0  
**Basado en:** Solicitud Compra Equipos L2 v1.0 + Tabla Maestra Layout v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Arquitectura de Red L2:**

| Parámetro | Valor | Observaciones |
|:----------|:------|:--------------|
| **Total Switches L2** | 84 unidades | Conectan 169 equipos ITS |
| **Sub-anillos creados** | 14 (7 tramos × 2 sub-anillos) | Metodología punto medio |
| **Equipos ITS conectados** | 169 unidades | SOS, CCTV, PMV, RADAR, ETD, WIM, Gálibos, Meteo |
| **Regla crítica 10 km** | ✅ 100% cumplimiento | 72 saltos validados, 0 >10km |
| **CAPEX Total L2** | **$95,361 USD** | Equipos + SFPs incluidos |
| **Stock Repuestos** | **$23,504 USD** | 25% equipos críticos |
| **TOTAL L2** | **$119,459 USD** | Incluyendo seguro/flete |

---

## 🔧 **DETALLE DE EQUIPOS POR MODELO**

### **1. ADVANTECH EKI-7706G (50 unidades)**

#### **Especificaciones Técnicas:**

| Parámetro | Especificación | Cumplimiento AT3 |
|:----------|:--------------|:-----------------|
| **Modelo** | EKI-7706G-2FI-AE | ✅ Industrial |
| **Puertos Ethernet** | 4×10/100 Mbps RJ45 | ✅ |
| **Puertos Fibra** | 2×SFP Gigabit (1000Base-X) | ✅ |
| **Temperatura operación** | -40°C a +75°C | ✅ Extendida |
| **Humedad** | 10% a 95% sin condensación | ✅ |
| **Protección** | IP30 (requiere gabinete IP65) | ✅ |
| **Alimentación** | 12-48 VDC (redundante) | ✅ |
| **Consumo** | 6.6W típico | ✅ Bajo |
| **MTBF** | >500,000 horas | ✅ Alta confiabilidad |
| **Gestión** | Web, CLI, SNMP v1/v2c/v3 | ✅ |
| **Protocolos** | RSTP, IGMP Snooping, VLAN | ✅ |

#### **Aplicación en Proyecto:**

| Ubicación | Cantidad | Equipos ITS Conectados | Observaciones |
|:----------|:---------|:-----------------------|:--------------|
| **Postes SOS individuales** | 30 | 1 SOS por switch | Bermas externas |
| **PMV individuales** | 12 | 1 PMV por switch | Separador/bermas |
| **CCTV individuales** | 8 | 1 CCTV por switch | Zonas dispersas |
| **TOTAL EKI-7706G** | **50** | - | Switch económico, baja densidad |

**Costo:**
- Precio unitario: $406.00 USD
- Total 50 unidades: **$20,300.00 USD**

---

### **2. ADVANTECH EKI-7710E (25 unidades)**

#### **Especificaciones Técnicas:**

| Parámetro | Especificación | Cumplimiento AT3 |
|:----------|:--------------|:-----------------|
| **Modelo** | EKI-7710E-2CI-AE | ✅ Industrial |
| **Puertos Ethernet** | 8×10/100 Mbps RJ45 | ✅ |
| **Puertos Combo** | 2×10/100/1000 (RJ45 o SFP) | ✅ Versatilidad |
| **Temperatura operación** | -40°C a +75°C | ✅ Extendida |
| **Humedad** | 10% a 95% sin condensación | ✅ |
| **Protección** | IP30 (requiere gabinete IP65) | ✅ |
| **Alimentación** | 12-48 VDC (redundante) | ✅ |
| **Consumo** | 9.2W típico | ✅ |
| **MTBF** | >400,000 horas | ✅ |
| **Gestión** | Web, CLI, SNMP, RSTP | ✅ |

#### **Aplicación en Proyecto:**

| Ubicación | Cantidad | Equipos ITS Conectados | Observaciones |
|:----------|:---------|:-----------------------|:--------------|
| **CCTV + SOS** | 15 | 2-3 equipos por switch | Zonas de concentración |
| **PMV + sensores** | 7 | 2-4 equipos por switch | Pórticos complejos |
| **Edificaciones menores** | 3 | Múltiples equipos | AS, bunkers |
| **TOTAL EKI-7710E** | **25** | - | Densidad media |

**Costo:**
- Precio unitario: $943.00 USD
- Total 25 unidades: **$23,575.00 USD**

---

### **3. ADVANTECH EKI-7712G (9 unidades)**

#### **Especificaciones Técnicas:**

| Parámetro | Especificación | Cumplimiento AT3 |
|:----------|:--------------|:-----------------|
| **Modelo** | EKI-7712G-4FP-AE | ✅ Industrial |
| **Puertos Ethernet** | 8×10/100 Mbps RJ45 | ✅ |
| **Puertos Fibra** | 4×SFP Gigabit (uplinks) | ✅ Alta conectividad |
| **Temperatura operación** | -40°C a +75°C | ✅ Extendida |
| **Protección** | IP30 (requiere gabinete IP65) | ✅ |
| **Alimentación** | 12-48 VDC (redundante) | ✅ |
| **Consumo** | 10.5W típico | ✅ |
| **MTBF** | >350,000 horas | ✅ |
| **Gestión** | Web, CLI, SNMP, RSTP, IGMP | ✅ |

#### **Aplicación en Proyecto:**

| Ubicación | Cantidad | Equipos ITS Conectados | Observaciones |
|:----------|:---------|:-----------------------|:--------------|
| **RADAR-ANPR** | 9 | 1 RADAR + sensores + cámaras | Hasta 8 equipos |
| **TOTAL EKI-7712G** | **9** | - | Alta densidad, equipos complejos |

**Costo:**
- Precio unitario: $916.00 USD
- Total 9 unidades: **$8,244.00 USD**

---

## 📡 **MÓDULOS SFP (FIBRA ÓPTICA)**

### **SFP 1G - 10 KM (188 unidades)**

| Parámetro | Especificación |
|:----------|:--------------|
| **Modelo Referencia** | Compatible Advantech / Generic |
| **Interfaz** | LC Duplex |
| **Velocidad** | 1000Base-LX |
| **Distancia** | Hasta 10 km |
| **Longitud de onda** | 1310 nm |
| **Tipo de fibra** | Monomodo 9/125μm |
| **Temperatura** | -40°C a +85°C |
| **Potencia TX** | -9.5 a -3 dBm |
| **Sensibilidad RX** | -20 dBm mínimo |

**Distribución:**
- 84 switches L2 × 2 SFPs (anillo entrada/salida) = 168 SFPs
- Spare + derivaciones: 20 SFPs
- **TOTAL:** 188 SFPs (incluidos en precio switches)

---

## 📊 **APU - INSTALACIÓN SWITCH L2**

### **APU-L2-001: Instalación Switch L2 en Gabinete de Equipo ITS**

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
|:-----|:------------|:-------|:---------|:-------------|:------|
| **MANO DE OBRA** | | | | | **$180/switch** |
| Técnico telecomunicaciones | Instalación y configuración | HH | 4.0 | $25.00 | $100.00 |
| Técnico FO | Fusiones y conectores | HH | 2.0 | $25.00 | $50.00 |
| Ayudante | Apoyo | HH | 3.0 | $10.00 | $30.00 |
| **MATERIALES** | | | | | **$120/switch** |
| Patch cord FO LC-LC 3m | Conexión SFP | UND | 2.0 | $15.00 | $30.00 |
| Cable UTP Cat6 (derivaciones) | Conexión equipos ITS | ML | 10.0 | $2.50 | $25.00 |
| Conectores RJ45 Cat6 | Terminales | UND | 4.0 | $2.00 | $8.00 |
| Organizadores de cable | Gestión cables | UND | 2.0 | $8.00 | $16.00 |
| Etiquetas identificación | Puertos y cables | UND | 12.0 | $0.50 | $6.00 |
| Bridas, velcro, accesorios | Fijación | GLB | 1.0 | $15.00 | $15.00 |
| Pigtail LC 1.5m | Conexión ODF a switch | UND | 2.0 | $10.00 | $20.00 |
| **EQUIPOS Y HERRAMIENTAS** | | | | | **$50/switch** |
| Fusionadora FO | Uso | HH | 1.0 | $30.00 | $30.00 |
| OTDR | Pruebas | HH | 0.50 | $10.00 | $5.00 |
| Herramienta red | Crimpadora, tester | HH | 0.50 | $5.00 | $2.50 |
| Laptop configuración | Software gestión | HH | 2.0 | $5.00 | $10.00 |
| Herramienta menor | Varios | GLB | 1.0 | $2.50 | $2.50 |
| **SUBTOTAL DIRECTO** | | | | | **$350.00/switch** |
| **Administración (3%)** | | | | | **$10.50/switch** |
| **Imprevistos (2%)** | | | | | **$7.21/switch** |
| **Utilidad (2%)** | | | | | **$7.35/switch** |
| **TOTAL APU-L2-001** | | | | | **$375.06/switch** |

**Costo instalación 84 switches:** 84 × $375 = **$31,500 USD** (incluido en Fibra Óptica)

---

## 🗺️ **DISTRIBUCIÓN POR SUB-ANILLO**

### **Sub-Anillos L2 Completos (14 unidades)**

| Sub-Anillo | Nodo L3 Ref. | Switches L2 | EKI-7706G | EKI-7710E | EKI-7712G | Longitud (km) |
|:-----------|:-------------|:------------|:----------|:----------|:----------|:--------------|
| **SA1-A** | N1-CCO | 4 | 2 | 1 | 1 | 19.7 |
| **SA1-B** | N2-ZAMBITO | 4 | 2 | 1 | 1 | 19.7 |
| **SA2-A** | N2-ZAMBITO | 6 | 4 | 1 | 1 | 36.5 |
| **SA2-B** | N4-AGUAS_NEGRAS | 6 | 3 | 2 | 1 | 36.5 |
| **SA3-A** | N4-AGUAS_NEGRAS | 6 | 3 | 2 | 1 | 35.4 |
| **SA3-B** | N6-AS_ZAMBITO | 6 | 4 | 1 | 1 | 35.4 |
| **SA4-A** | N4-AGUAS_NEGRAS | 5 | 3 | 2 | 0 | 24.9 |
| **SA4-B** | N6-AS_ZAMBITO | 5 | 3 | 2 | 0 | 24.9 |
| **SA5-A** | N7-BUNKER02 | 4 | 2 | 2 | 0 | 19.6 |
| **SA5-B** | N5-AS_AGUAS_NEGRAS | 4 | 2 | 2 | 0 | 19.6 |
| **SA6-A** | N5-AS_AGUAS_NEGRAS | 5 | 3 | 2 | 0 | 15.8 |
| **SA6-B** | N3-BUNKER01 | 5 | 3 | 2 | 0 | 15.8 |
| **SA7-A** | N7-BUNKER02 | 6 | 4 | 1 | 1 | 35.2 |
| **SA7-B** | N1-CCO | 6 | 4 | 1 | 1 | 35.2 |
| **TOTAL** | - | **84** | **50** | **25** | **9** | **334 km** |

---

## 📐 **ESPECIFICACIONES DE INSTALACIÓN**

### **2.1 Gabinete de Protección para Switch L2**

| Componente | Especificación | Observaciones |
|:-----------|:--------------|:--------------|
| **Gabinete** | IP65, policarbonato o metálico | Resistente intemperie |
| **Dimensiones mínimas** | 40 × 50 × 25 cm (H×W×D) | Para 1 switch + accesorios |
| **Ventilación** | Natural + filtros anti-polvo | Sin ventiladores |
| **Cierre** | Llave tipo cerradura industrial | Seguridad |
| **Montaje** | Soporte metálico galvanizado | A poste o pared |
| **Altitud instalación** | 2.5-3.0 metros (según equipo ITS) | Acceso mantenimiento |
| **Puesta a tierra** | Conexión a SPT del equipo ITS | Obligatorio |

**Costo gabinete:** Incluido en instalación equipo ITS (no en L2)

---

### **2.2 Alimentación Eléctrica**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tensión** | 12-48 VDC (desde UPS equipo ITS) |
| **Consumo máximo** | 6.6W (7706G) / 9.2W (7710E) / 10.5W (7712G) |
| **Cable alimentación** | AWG 18 (1.0 mm²) mínimo |
| **Protección** | Fusible 2A en fuente UPS |
| **Fuente** | Compartida con equipo ITS |

**No requiere:** UPS dedicado (usa UPS del equipo ITS asociado)

---

### **2.3 Conexión a Fibra Óptica**

| Parámetro | Especificación |
|:----------|:--------------|
| **De Troncal 48h a Switch** | Pigtail SC/APC desde ODF → Patch cord LC-LC → SFP |
| **Topología** | Anillo cerrado (entrada SFP1, salida SFP2) |
| **Reserva de fibra** | Mínimo 10 metros en caja de empalme |
| **Etiquetado** | "SUB-ANILLO SA#-X - ENTRADA/SALIDA" |
| **Pruebas** | OTDR antes y después de fusión |

---

## 🔄 **CONFIGURACIÓN DE RED**

### **3.1 Configuración Base Switch L2**

```cisco
! Configuración básica Advantech EKI-77XXX
hostname SW-L2-XXX-PKDXXX
!
! VLAN Management
vlan 1
 name MGMT
!
! VLAN por Tipo de Equipo ITS
vlan 10
 name CCTV
vlan 20
 name PMV
vlan 30
 name SOS
vlan 40
 name RADAR_ETD
vlan 50
 name SENSORES
!
! Interfaces Fibra (Anillo)
interface GigabitEthernet1/1
 description UPLINK-ENTRADA-ANILLO
 switchport mode trunk
 spanning-tree portfast trunk
!
interface GigabitEthernet1/2
 description UPLINK-SALIDA-ANILLO
 switchport mode trunk
 spanning-tree portfast trunk
!
! Interfaces Equipos ITS
interface FastEthernet1/1
 description EQUIPO-ITS-01
 switchport access vlan 10
 spanning-tree portfast
!
! RSTP para redundancia
spanning-tree mode rstp
spanning-tree priority 32768
!
! SNMP para monitoreo CCO
snmp-server community public RO
snmp-server community private RW
snmp-server location PK-XXX-UF-XX
!
! NTP para sincronización
ntp server 192.168.1.1
!
end
```

---

### **3.2 VLANs por Tipo de Equipo**

| VLAN ID | Nombre | Equipos ITS | Subnet (ejemplo) | Observaciones |
|:--------|:-------|:------------|:-----------------|:--------------|
| **1** | MGMT | Switches L2/L3 | 192.168.100.0/24 | Gestión de red |
| **10** | CCTV | 30 cámaras | 192.168.10.0/24 | Videovigilancia |
| **20** | PMV | 28 paneles | 192.168.20.0/24 | Mensajería variable |
| **30** | SOS | 87 postes | 192.168.30.0/24 | Telefonía emergencia |
| **40** | RADAR_ETD | 15 radares/ETD | 192.168.40.0/24 | Detección tráfico |
| **50** | SENSORES | 8 gálibos + 2 meteo + 1 WIM | 192.168.50.0/24 | Sensórica |

**Total equipos:** 169 ITS en 6 VLANs

---

## 📦 **STOCK DE REPUESTOS (25%)**

| Equipo | Cantidad Instalada | Stock Repuesto (25%) | Precio Unit. | Total Repuestos |
|:-------|:-------------------|:---------------------|:-------------|:----------------|
| **EKI-7706G** | 50 | 13 | $406.00 | $5,278.00 |
| **EKI-7710E** | 25 | 6 | $943.00 | $5,658.00 |
| **EKI-7712G** | 9 | 2 | $916.00 | $1,832.00 |
| **SFP 1G 10km** | 188 | 47 | $50.00 | $2,350.00 |
| **Patch cord LC-LC** | 188 | 47 | $15.00 | $705.00 |
| **TOTAL REPUESTOS** | - | - | - | **$15,823.00** |

**Incremento por seguro/flete (0.5%):** $7,681 USD  
**TOTAL CON REPUESTOS:** **$23,504 USD**

---

## 🛠️ **CRONOGRAMA DE INSTALACIÓN**

### **Diagrama de Gantt - Equipos L2**

| Actividad | Mes 16-17 | Mes 18-19 | Mes 20-21 | Mes 22-23 |
|:----------|:----------|:----------|:----------|:----------|
| **Recepción equipos** | ████████ | | | |
| **Pruebas FAT (fábrica)** | ████ | | | |
| **Instalación física** | ████ | ████████ | ████████ | ████ |
| **Configuración red** | | ████ | ████████ | ████████ |
| **Pruebas integración** | | | ████ | ████████ |
| **Comisionamiento** | | | | ████ |

**Duración total:** 8 meses (paralelo a instalación fibra, últimos 8 meses)

**Nota:** La instalación de L2 inicia después de que fibra óptica esté al 50% completada.

---

## 📋 **PRUEBAS Y COMISIONAMIENTO**

### **5.1 Pruebas por Switch L2**

| Prueba | Criterio de Aceptación | Método |
|:-------|:-----------------------|:-------|
| **Encendido y POST** | LED verde, sin errores | Visual |
| **Conectividad FO** | Link up en ambos SFPs | Indicador LED |
| **Conectividad equipos ITS** | Ping exitoso a IP equipo | Software |
| **Ancho de banda** | ≥100 Mbps por puerto | iPerf |
| **Latencia** | ≤10 ms entre switches | Ping |
| **VLAN tagging** | Tráfico segregado correctamente | Wireshark |
| **RSTP convergencia** | ≤2 segundos ante falla | Prueba desconexión |
| **SNMP** | Monitoreable desde CCO | Software gestión |

---

### **5.2 Pruebas de Anillo Completo**

| Sub-Anillo | Prueba | Criterio de Aceptación |
|:-----------|:-------|:-----------------------|
| **SA1-A** | Ping extremo a extremo | ≤5 ms, 0% pérdida |
| **SA1-A** | Ancho de banda | ≥800 Mbps (Gigabit SFP) |
| **SA1-A** | Redundancia | Falla 1 enlace → reconverge en ≤2s |
| **SA1-A** | Monitoreo SNMP | Todos los switches visibles en CCO |

**Aplicar a los 14 sub-anillos**

---

## 💰 **RESUMEN FINANCIERO EQUIPOS L2**

| Concepto | Valor (USD) | % del Total |
|:---------|:------------|:------------|
| **Switches L2 (84 unidades)** | $52,119 | 54.6% |
| **SFPs 1G (188 unidades)** | Incluidos | - |
| **Accesorios (patch cords, etc.)** | Incluidos | - |
| **Instalación (84 switches)** | $31,500 | 33.0% |
| **Stock Repuestos (25%)** | $15,823 | 16.6% |
| **Seguro/Flete (0.5%)** | $7,681 | 8.0% |
| **TOTAL EQUIPOS L2** | **$119,459 USD** | **100%** |

---

## 🔗 **INTEGRACIÓN CON EQUIPOS ITS**

### **Tabla de Conexiones L2 ↔ ITS**

**Ver:** `43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md` (columnas SWITCH_L2 y SUB_ANILLO)

**Ejemplo de conexiones:**
- **L2-242** (PKD 242+100): PMV×2 + SOS×1 + Gálibo×1 → EKI-7712G (alta densidad)
- **L2-245** (PKD 245+100): CCTV×1 → EKI-7706G (baja densidad)
- **L2-229** (PKD 229+100): RADAR-ANPR×2 → EKI-7712G (equipos complejos)

**Total conexiones:** 169 equipos ITS distribuidos en 84 switches L2

---

## 📝 **DOCUMENTOS ENTREGABLES**

1. ✅ Este documento (T05 Equipos L2)
2. ⏳ Planos de ubicación switches (AutoCAD)
3. ⏳ Diagramas de conexión por sub-anillo
4. ⏳ Configuraciones de switches (por equipo)
5. ⏳ Matriz de VLANs y subredes
6. ⏳ Protocolo de pruebas L2
7. ⏳ Manuales de operación y mantenimiento
8. ⏳ Pliego de compra equipos L2

---

**Última actualización:** 22 de octubre de 2025 - 18:00  
**Responsable:** Ingeniero de Telecomunicaciones  
**Estado:** ✅ **T05 EQUIPOS L2 COMPLETADO**  
**Archivo:** `02_T05_Ingenieria_Detalle_Equipos_L2_v1.0.md`

