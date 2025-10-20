# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE TELECOMUNICACIONES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Telecomunicaciones - Backbone de Comunicaciones  
**Responsable:** Ing. Telecomunicaciones / Arquitecto de Redes  
**Versión:** 1.0  
**Referencia T01:** 27_T01_Ficha_Sistema_Telecomunicaciones_v1.0  
**Referencia T03:** 55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0  
**Referencia Validación:** 32_VALIDACION_CONTRACTUAL_TELECOMUNICACIONES_v1.0  

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Telecomunicaciones - Backbone Fibra Óptica + Red de Datos |
| **Alcance** | **285 km fibra óptica** + switches + equipos |
| **CAPEX** | **USD $6,109,000** |
| **Topología** | **Anillo redundante** (5 nodos principales) |

---

## 2. COMPONENTES PRINCIPALES

### 2.1 Fibra Óptica

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | **Monomodo SM 9/125 μm, OS2** |
| **Norma** | **ITU-T G.652.D** |
| **Configuración** | 12-24 hilos |
| **Longitud total** | **285 km** (anillo + derivaciones) |
| **Atenuación** | ≤0.35 dB/km @ 1310 nm, ≤0.22 dB/km @ 1550 nm |
| **Dispersión** | ≤18 ps/(nm·km) |
| **Cable** | ADSS (all-dielectric self-supporting) o ducto |

### 2.2 Ductos y Canalizaciones

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | HDPE corrugado doble pared |
| **Diámetro** | Ø110 mm (4") principal |
| **Configuración** | 4-6 ductos por zanja |
| **Profundidad** | 0.80-1.0 m |
| **Protección** | Cinta señalizadora + concreto (cruces de vías) |
| **Longitud** | 285 km |

### 2.3 Equipos L3 (Cisco Catalyst 9200 + FortiGate + SFPs)

| No. de Parte | Descripción | Cantidad | Precio Unit. (USD) | Precio Total (USD) | IVA (19%) | Total con IVA (USD) |
|:-------------|:------------|:---------|:-------------------|:-------------------|:----------|:--------------------|
| **FG-100F-BDL-950-12** | FortiGate-100F Hardware + 1 Year FortiCare Premium and UTP | 2 | $4,012.03 | $8,024.06 | $1,524.57 | $9,548.63 |
| **C9200-24T-A** | Catalyst 9200 24-port data only, Network Advantage | 7 | $1,731.16 | $12,118.11 | $2,302.44 | $14,420.55 |
| **C9200-NM-4X** | Catalyst 9200 4 x 10G Network Module | 11 | $1,288.70 | $14,175.74 | $2,693.39 | $16,869.13 |
| **PWR-C6-125WAC/2** | 125W AC Config 6 Power Supply - Secondary Power Supply | 11 | $507.30 | $5,580.30 | $1,060.26 | $6,640.56 |
| **C9200-DNA-A-24-3Y** | C9200 Cisco DNA Advantage, 24-Port, 3 Year Term License | 7 | $1,295.15 | $9,066.04 | $1,722.55 | $10,788.59 |
| **CON-3SNT-C920024A** | 3YR SNTC 8X5XNBD Catalyst 9200 24-port data only, Network | 7 | $321.48 | $2,250.36 | $427.57 | $2,677.93 |
| **C9200-STACK-KIT** | Cisco Catalyst 9200 Stack Module | 4 | $880.73 | $3,522.90 | $669.35 | $4,192.25 |
| **STACK-T4-50CM** | 50CM Type 4 Stacking Cable | 5 | $161.30 | $806.52 | $153.24 | $959.76 |
| **C9200-48T-A** | Catalyst 9200 48-port data only, Network Advantage | 3 | $2,945.75 | $8,837.24 | $1,679.07 | $10,516.31 |
| **C9200-DNA-A-48-3Y** | C9200 Cisco DNA Advantage, 48-Port, 3 Year Term License | 3 | $2,429.20 | $7,287.59 | $1,384.64 | $8,672.23 |
| **CON-3SNT-C920048T** | 3YR SNTC 8X5XNBD Catalyst 9200 48-port data only, Network | 3 | $546.12 | $1,638.36 | $311.29 | $1,949.65 |
| **SFP-10G-ER-S=** | 10GBASE-ER SFP Module, Enterprise-Class | 2 | $3,869.90 | $7,739.81 | $1,470.56 | $9,210.37 |
| **SFP-10G-LR-S=** | 10GBASE-LR SFP Module, Enterprise-Class | 5 | $1,020.55 | $5,102.75 | $969.52 | $6,072.27 |
| **SFP-10G-ZR-S=** | 10GBASE-ZR SFP Module, Enterprise-Class | 11 | $5,339.48 | $58,734.32 | $11,159.52 | $69,893.84 |
| **15216-ATT-LC-5=** | Bulk Attenuator - LC Connector - 5dB | 16 | $128.24 | $2,051.90 | $389.86 | $2,441.76 |
| **15216-ATT-LC-10=** | BULK ATTENUATOR LC CONNECTOR 10DB | 3 | $102.42 | $307.26 | $58.38 | $365.64 |
| **LC-LC SO2** | Lc/lc 3 Mts Duplex Monomodo Fibra Óptica Patch Cord | 20 | $11.16 | $223.26 | $42.42 | $265.68 |
| **CP-0373** | Power Cable | 20 | $18.00 | $360.00 | $68.40 | $428.40 |
| **CCFF-AVZ** | Configuración Avanzada (VLANS, agregación, stacking, seguridad) | 1 | $6,750.00 | $6,750.00 | $1,282.50 | $8,032.50 |
| **SUBTOTAL ANTES DE IVA** | | | | **$141,584.50** | | |
| **IVA (19%)** | | | | | **$26,901.06** | |
| **SEGURO Y FLETE** | | | | | **$772.88** | |
| **TOTAL EQUIPOS L3** | | | | | | **$169,258.44** |

### 2.5 Equipos L2 de Campo (Advantech)

| Modelo | Descripción | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-------|:------------|:---------|:-------------------|:------------|
| **EKI-7706G-2FI-AE** | 4FE + 2SFP Managed Switch Industrial (<75°C) | 79 | $406 | $32,074 |
| **EKI-7710E-2CI-AE** | 8FE + 2G Combo Managed Switch Industrial (<75°C) | 15 | $943 | $14,145 |
| **EKI-7712G-4FP-AE** | 8FE + 4SFP Managed Switch Industrial (<75°C) | 16 | $916 | $14,656 |
| **SFP-GLX/LC-10E** | 1000Base-LX Single mode SFP module (10km) | 188 | $88 | $16,544 |
| **TOTAL L2** | - | **298** | - | **$77,419** |

**Nota:** Precios actuales 2025 - Equipos industriales Advantech

---

## 3. ARQUITECTURA DE RED

### 3.1 Topología Anillo

```
Puerto Salgar ──[Fibra]── Peaje Zambito ──[Fibra]── CCO ──[Fibra]── Peaje Aguas Negras ──[Fibra]── Barrancabermeja
     │                          │                     │                     │                          │
  [SW Agr.1]              [SW Agr.2]            [SW CORE]             [SW Agr.4]                [SW Agr.5]
   10 Gbps                 10 Gbps              4×10 Gbps              10 Gbps                  10 Gbps
```

### 3.2 VLANs por Sistema

| VLAN ID | Sistema | Subnet |
|:--------|:--------|:-------|
| VLAN 10 | Gestión | 10.1.10.0/24 |
| VLAN 20 | ITS | 10.1.20.0/24 |
| VLAN 30 | CCTV | 10.1.30.0/24 |
| VLAN 40 | Peajes | 10.1.40.0/24 |
| VLAN 50 | VoIP | 10.1.50.0/24 |
| VLAN 60 | SCADA | 10.1.60.0/24 |

---

## 4. ESPECIFICACIONES DETALLADAS

### 4.1 Cable de Fibra Óptica

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tipo de fibra** | Monomodo OS2, 9/125 μm | ITU-T G.652.D |
| **Configuración** | 12-24 hilos |
| **Instalación** | Ducto subterráneo (preferido) o ADSS aéreo |
| **Protección** | Armadura dieléctrica |
| **Radio de curvatura** | ≥20× diámetro del cable |
| **Tracción máxima** | 2,500 N |
| **Temperatura operación** | -40°C a +70°C |

**Fabricantes referencia:** Corning, Furukawa, Prysmian, CommScope

### 4.2 Empalmes de Fibra

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | Fusión (splice) |
| **Atenuación empalme** | <0.05 dB |
| **Pérdida de retorno** | >55 dB |
| **Caja de empalme** | IP68, capacidad 24-48 fibras |
| **Protección** | Termocontraíble individual |

### 4.3 Conectores y Adaptadores

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | **SC/APC** (Angled Physical Contact) |
| **Pérdida de inserción** | <0.3 dB |
| **Pérdida de retorno** | >60 dB |
| **Durabilidad** | >1000 ciclos |

### 4.4 Switches Core (CCO)

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Modelo referencia** | Cisco Catalyst 9500 o equiv. (Huawei, HP Aruba) |
| **Puertos 10 Gbps** | 48 puertos SFP+ mínimo |
| **Capacidad switching** | 960 Gbps |
| **Throughput** | 720 Mpps |
| **Stacking** | Sí, hasta 8 unidades |
| **Redundancia** | Dual PSU, dual CPU |
| **Layer** | Layer 3 (routing) |
| **Protocolos** | OSPF, BGP, VLAN, STP/RSTP, LACP |

### 4.5 Switches de Agregación (Nodos Anillo)

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Modelo referencia** | Cisco Catalyst 9300 o equiv. |
| **Puertos 1 Gbps** | 24 puertos 10/100/1000 |
| **Puertos 10 Gbps (uplink)** | 4 puertos SFP+ mínimo |
| **PoE+** | Opcional (si conecta cámaras localmente) |
| **Layer** | Layer 3 |
| **Redundancia** | Dual PSU |

### 4.6 Switches de Acceso (Campo ITS)

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Modelo referencia** | Cisco Catalyst 2960X o equiv. (industrial) |
| **Puertos PoE+** | 24 puertos 10/100/1000 PoE+ (30 W/puerto) |
| **Uplinks** | 2-4 puertos SFP Gigabit |
| **Presupuesto PoE** | 370 W total |
| **Protección** | IP30 (gabinete exterior IP65) |
| **Temperatura** | -10°C a +60°C (industrial) |

---

## 5. INTEGRACIÓN

### 5.1 Sistemas Conectados

| Sistema | Puntos Conexión | Ancho Banda | Protocolo |
|:--------|:----------------|:------------|:----------|
| Postes SOS (87) | 87 | 100 Mbps c/u | VoIP (SIP) |
| PMV (28) | 28 | 10 Mbps c/u | NTCIP 1202 |
| CCTV (30) | 30 | 8 Mbps c/u | RTSP/ONVIF |
| Radares (12) | 12 | 50 Mbps c/u | API REST |
| WIM (1 est.) | 4 | 20 Mbps | SNMP + API |
| Peajes (2) | 2 | 200 Mbps c/u | Múltiple |
| CCO | 1 | 1 Gbps | Múltiple |

---

## 6. PRESUPUESTO

| Ítem | Unidad | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:-------|:---------|:-------------------|:------------|
| Fibra óptica 12 hilos | km | 285 | $8,000 | $2,280,000 |
| Ductos + canalizaciones | km | 285 | $5,000 | $1,425,000 |
| Equipos L3 (Cisco + FortiGate + SFPs + Accesorios) | global | - | - | $169,258.44 |
| Equipos L2 Advantech | global | 298 | - | $77,419 |
| ODFs | und | 15 | $2,000 | $30,000 |
| Instalación + pruebas | global | 1 | $1,500,000 | $1,500,000 |
| Otros | - | - | - | $599,000 |
| **TOTAL** | - | - | - | **$6,080,677.44** |

---

## 7. PRUEBAS

### FAT
- Switches: Throughput, latencia, PoE
- Fibra: Atenuación por OTDR

### SAT
- End-to-end: Latencia <100 ms
- Disponibilidad: 99% en 30 días piloto
- OTDR completo del anillo

---

## 8. FABRICANTES

- **Cisco** (switches) - Líder mundial
- **Corning / Furukawa** (fibra)
- **Huawei / HP Aruba** (alternativas switches)

---

**FIN T04 TELECOMUNICACIONES v1.0**
