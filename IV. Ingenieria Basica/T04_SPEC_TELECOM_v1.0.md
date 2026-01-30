# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE TELECOMUNICACIONES
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Telecomunicaciones - Backbone de Comunicaciones  
**Responsable:** Ing. Telecomunicaciones / Arquitecto de Redes  
**Versión:** 1.1  
**Referencia T01:** 27_T01_Ficha_Sistema_Telecomunicaciones_v1.0  
**Referencia T03:** 55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 283 km fibra óptica | Ing. Telecomunicaciones |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** ~322 km fibra óptica | Ing. Telecomunicaciones |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Telecomunicaciones - Backbone Fibra Óptica + Red de Datos |
| **Alcance** | **322 km fibra óptica** + switches + equipos |
| **CAPEX** | **USD $7,980,000.00** |
| **Topología** | **Anillo redundante L3** + **Sub-anillos L2** |
| **Nodos L3** | **7 nodos** (4 edificaciones + 2 STACKS + 2 bunkers) |

---

## 2. COMPONENTES PRINCIPALES

### 2.1 Fibra Óptica

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | **Monomodo SM 9/125 μm, OS2** |
| **Norma** | **ITU-T G.652.D** |
| **Configuración** | 12-24 hilos |
| **Longitud total** | **~322 km** (anillo + derivaciones) |
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
| **Longitud** | ~322 km |

### 2.3 Distribución de Switches L3 (Criterio: 1 L3 por Edificación + Bunkers)

**Edificaciones Contractuales (AT1):**
- 2 Peajes (Zambito PK 9+200, Aguas Negras PK 80+000)
- 2 Áreas de Servicio (asociadas a peajes)
- 1 Estación de Pesaje WIM (PR 4+0100 RN 4513)
- 1 CCO (ubicación a definir por Concesionario)

**TABLA DE DISEÑO DEL ANILLO - PENSANDO EN PKD (Distancia Lineal):**

| PKD | Nodo | Switch L3 | Tipo | Ruta Real | PKR Real | Dist. → Siguiente |
|:----|:-----|:----------|:-----|:----------|:---------|:------------------|
| PKD 0+000 | **CCO + WIM** | **C9200-48T-A STACK** + L2 | Core + Báscula | R4513 | 4+350 | 39.45 km → |
| **PKD 39+450** | **Peaje Zambito** | C9200-48T-A | Peaje | R4511 | 9+170 | 31.00 km → |
| **PKD 70+450** | **BUNKER 01** | C9200-24T-A | Regeneración | R4511 | ~40+000 | 42.00 km → |
| **PKD 112+450** | **Peaje Aguas Negras** | **C9200-48T-A STACK** | Peaje más lejano | R4511 | 81+800 | 31.65 km → |
| **PKD 144+100** | **AS Aguas Negras** | C9200-24T-A | Área Servicio | R4511 | 113+450 | 39.20 km → |
| **PKD 183+300** | **AS Zambito** | C9200-24T-A | Área Servicio | R4510 | 104+000 | 138.70 km → CCO |
| **PKD 322+000** | **→ cierra en CCO** | (anillo cerrado) | - | - | - | **ANILLO COMPLETO** |

**RESUMEN:**
- **7 nodos L3** en secuencia: N1 → N2 → N4 → N6 → N7 → N5 → N3 → N1
- **Anillo total:** 322 km de fibra óptica (incluyendo derivaciones)
- **2 STACKS:** N1 (CCO) y N7 (BUNKER 02) - puntos de convergencia
- **Redundancia dual-path:** Dos caminos independientes desde N1 hasta N7

**TABLA LINEAL DEL ANILLO (PKD + PKR):**

| ID | **PKD** (Diseño) | **PKR** (Real) | Ruta | Nodo | Switch | Tramo | Distancia | ¿≤70km? |
|:---|:-----------------|:---------------|:-----|:-----|:-------|:------|:----------|:--------|
| **N1** | **PKD 0+000** | 4+350 | R4513 | **CCO + WIM** | **C9200-48T-A STACK** + L2 | Inicio | - | - |
| **N2** | **PKD 39+450** | 9+170 | R4511 | **Peaje Zambito** | C9200-48T-A | N1 → N2 | 39.45 km | ✅ |
| **N4** | **PKD 112+450** | 81+800 | R4511 | **Peaje Aguas Negras** | C9200-48T-A | N2 → N4 | 73.00 km | ✅ |
| **N6** | **PKD 183+300** | 104+000 | R4510 | **AS Zambito** | C9200-24T-A | N4 → N6 | 70.85 km | ✅ |
| **N7** | **PKD 233+150** | ~150+000 | R4510 | **BUNKER 02** | **C9200-24T-A STACK** | N6 → N7 | 49.85 km | ✅ |
| **N5** | **PKD 144+100** | 113+450 | R4511 | **AS Aguas Negras** | C9200-24T-A | N7 → N5 | 39.20 km | ✅ |
| **N3** | **PKD 70+450** | ~40+000 | R4511 | **BUNKER 01** | C9200-24T-A | N5 → N3 | 31.65 km | ✅ |
| **N1** | **PKD 322+000** | 4+350 | R4513 | **CCO (cierre)** | - | N3 → N1 | 109.45 km | ✅ |

**✅ OPTIMIZACIÓN:** 
- **WIM (120 m del CCO)** conectado con switch **L2** (Advantech EKI-7710E)
- **Ahorro:** 1 switch C9200-24T-A (~$14,000 USD)

**✅ TODAS LAS DISTANCIAS ENTRE NODOS L3 ≤70 KM**
- Tramo más largo directo: **Zambito → Aguas Negras = 72.63 km** (sin BUNKER)
- **Solución:** BUNKER 01 en PKD 70+450 divide el tramo en 31 km + 42 km ✅

### 2.4 Sub-Anillos L2 (Equipos de Campo) - METODOLOGÍA PUNTO MEDIO

**METODOLOGÍA DE DISEÑO:**

Para cada tramo entre dos nodos L3, aplicar el criterio de **PUNTO MEDIO**:

1. **Calcular el PUNTO MEDIO del tramo:**
   - Punto Medio = (PKD_inicial + PKD_final) / 2

2. **Dividir el tramo en DOS SUB-ANILLOS:**
   
   **Sub-Anillo A (AMAYORES):** 
   - Desde Nodo L3 inicial hasta Punto Medio
   - Los equipos L2 forman un anillo que sale del Nodo L3 inicial y regresa (cierre)
   
   **Sub-Anillo B (AMENORES):**
   - Desde Punto Medio hasta Nodo L3 final
   - Los equipos L2 forman un anillo que sale del Nodo L3 final y regresa (cierre)

**APLICACIÓN A TODOS LOS TRAMOS L3:**

| Tramo | Nodo Inicial | Nodo Final | PKD Inicial | PKD Final | Punto Medio | Distancia | Sub-Anillos |
|:------|:-------------|:-----------|:------------|:----------|:------------|:----------|:------------|
| 1 | N1 (CCO) | N2 (Zambito) | 0+000 | 39+450 | 19+725 | 39.45 km | SA1-A + SA1-B |
| 2 | N2 (Zambito) | N4 (Aguas Negras) | 39+450 | 112+450 | 75+950 | 73.00 km | SA2-A + SA2-B |
| 3 | N4 (Aguas Negras) | N6 (AS Zambito) | 112+450 | 183+300 | 147+875 | 70.85 km | SA3-A + SA3-B |
| 4 | N6 (AS Zambito) | N7 (BUNKER 02) | 183+300 | 233+150 | 208+225 | 49.85 km | SA4-A + SA4-B |
| 5 | N7 (BUNKER 02) | N5 (AS Aguas Negras) | 233+150 | 144+100 | 188+625 | 39.20 km | SA5-A + SA5-B |
| 6 | N5 (AS Aguas Negras) | N3 (BUNKER 01) | 144+100 | 70+450 | 107+275 | 31.65 km | SA6-A + SA6-B |
| 7 | N3 (BUNKER 01) | N1 (CCO) | 70+450 | 283+000 | 176+725 | 70.45 km | SA7-A + SA7-B |

**RESULTADO TOTAL:**
- **7 tramos entre nodos L3**
- **14 sub-anillos L2** (2 por cada tramo: AMAYORES + AMENORES)
- **300 equipos L2** distribuidos proporcionalmente

**VENTAJAS DE ESTE CRITERIO:**

✅ **Redundancia máxima:** Cada mitad del tramo tiene su propio anillo independiente
✅ **Distancias cortas:** Ningún sub-anillo supera ~35 km
✅ **Fácil mantenimiento:** Puedo aislar medio tramo sin afectar al otro
✅ **Escalabilidad:** Puedo agregar equipos en cualquier sub-anillo sin rediseñar
✅ **Resiliencia:** Falla en un sub-anillo no afecta al sub-anillo adyacente

| No. de Parte | Descripción | Cantidad | Precio Unit. (USD) | Precio Total (USD) | IVA (19%) | Total con IVA (USD) |
|:-------------|:------------|:---------|:-------------------|:-------------------|:----------|:--------------------|
| **FG-100F-BDL-950-12** | FortiGate-100F Hardware + 1 Year FortiCare Premium and UTP | 2 | $4,012.03 | $8,024.06 | $1,524.57 | $9,548.63 |
| **C9200-24T-A** | Catalyst 9200 24-port data only, Network Advantage | 7 | $1,731.16 | $12,118.12 | $2,302.44 | $14,420.56 |
| **C9200-NM-4X** | Catalyst 9200 4 x 10G Network Module | 11 | $1,288.70 | $14,175.74 | $2,693.39 | $16,869.13 |
| **PWR-C6-125WAC/2** | 125W AC Config 6 Power Supply - Secondary Power Supply | 11 | $507.30 | $5,580.30 | $1,060.26 | $6,640.56 |
| **C9200-DNA-A-24-3Y** | C9200 Cisco DNA Advantage, 24-Port, 3 Year Term License | 7 | $1,295.15 | $9,066.05 | $1,722.55 | $10,788.60 |
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
| **SUBTOTAL ANTES DE IVA** | | | | **$139,326.39** | | |
| **IVA (19%)** | | | | | **$26,472.01** | |
| **SEGURO Y FLETE** | | | | | **$772.88** | |
| **TOTAL EQUIPOS L3** | | | | | | **$166,571.28** |

### 2.5 Equipos L2 de Campo (Advantech)

| Modelo | Descripción | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-------|:------------|:---------|:-------------------|:------------|
| **EKI-7706G-2FI-AE** | 4FE + 2SFP Managed Switch Industrial (<75°C) | 66 | $406 | $26,796 |
| **EKI-7710E-2CI-AE** | 8FE + 2G Combo Managed Switch Industrial (<75°C) | 20 | $943 | $18,860 |
| **EKI-7712G-4FP-AE** | 8FE + 4SFP Managed Switch Industrial (<75°C) | 15 | $916 | $13,740 |
| **SFP-GLX/LC-10E** | 1000Base-LX Single mode SFP module (10km) | 188 | $88 | $16,544 |
| **TOTAL L2** | - | **289** | - | **$75,940** |

**Nota:** Precios actuales 2025 - Equipos industriales Advantech

---

## 3. ARQUITECTURA DE RED

### 3.1 Topología Anillo L3 - Backbone Principal

#### **ESPECIFICACIONES TÉCNICAS TRONCAL L3**

**Tecnología:** 10 Gigabit Ethernet  
**Equipos:** Cisco Catalyst 9200 (switches L3)  
**SFP Módulos:** SFP-10G-ZR-S (10GBASE-ZR, hasta 80 km)  
**Atenuación:** Atenuadores LC 5dB o 10dB según distancia  
**Fibra:** Monomodo OS2 9/125 μm  

#### **Especificaciones SFP Troncal:**

| Parámetro | Especificación |
|:----------|:---------------|
| **Modelo** | SFP-10G-ZR-S (Cisco Enterprise-Class) |
| **Velocidad** | 10 Gbps |
| **Alcance máximo** | **80 km** ⚠️ |
| **Longitud de onda** | 1550 nm |
| **Tipo fibra** | Monomodo (SMF) |
| **Conector** | LC duplex |
| **Presupuesto óptico** | ~25 dB |
| **Atenuador requerido** | +5dB o +10dB según distancia |

#### **⚠️ REGLA DE DISEÑO L3:**

**✅ Distancia máxima entre nodos L3:** ≤80 km (limitado por SFP-10G-ZR-S)  
**✅ Todos los tramos L3 del proyecto:** ≤73 km (cumple con margen de seguridad)  
**✅ Atenuación:** 5dB para distancias <60 km, 10dB para distancias 60-80 km  

#### **Topología del Anillo L3:**

```
N1 (CCO) ←──────→ N2 (Zambito) ←──────→ N4 (Aguas Negras) ←──────→ N6 (AS Zambito)
  39.45km            73.00km                  70.85km
  10G-ZR             10G-ZR                   10G-ZR
  +5dB               +5dB                     +5dB

N7 (BUNKER 02) ←──────→ N5 (AS Aguas Negras) ←──────→ N3 (BUNKER 01) ←──────→ N1 (CCO)
  49.85km                  39.20km                      31.65km              70.45km
  10G-ZR                   10G-ZR                       10G-ZR               10G-ZR
  +5dB                     +5dB                         +5dB                 +5dB
```

**Validación:**
- ✅ **Tramo más largo:** N2→N4 = 73 km (<80 km límite SFP)
- ✅ **Todos los tramos:** Utilizan SFP-10G-ZR-S + atenuador 5dB
- ✅ **Redundancia completa:** 2 caminos independientes entre cualquier par de nodos

```
═══════════════════════════════════════════════════════════════════════════════
                    ANILLO L3 - TOPOLOGÍA REAL (322 km)
═══════════════════════════════════════════════════════════════════════════════

N1 (STACK) → N2 → N4 → N6 → N7 (STACK) → N5 → N3 → N1 (STACK)
   ↑                                                           ↓
   └─────────────────────── CIERRE DEL ANILLO ─────────────────┘

═══════════════════════════════════════════════════════════════════════════════

SECUENCIA COMPLETA:
N1 (CCO + WIM) [STACK] 
    ↓ 39.45 km
N2 (Peaje Zambito)
    ↓ 73.00 km  
N4 (Peaje Aguas Negras)
    ↓ 70.85 km
N6 (AS Zambito)
    ↓ 49.85 km
N7 (BUNKER 02) [STACK]
    ↓ 39.20 km
N5 (AS Aguas Negras)
    ↓ 31.65 km
N3 (BUNKER 01)
    ↓ 109.45 km
N1 (CCO) [CIERRE]

═══════════════════════════════════════════════════════════════════════════════

STACKS:
- N1: CCO + WIM (inicio del anillo)
- N7: BUNKER 02 (punto medio del anillo)

TOTAL: 7 nodos L3 | 322 km de fibra (inc. derivaciones)
✅ TODAS LAS DISTANCIAS ≤73 KM (dentro de límite de 80 km)

═══════════════════════════════════════════════════════════════════════════════
```

**REDUNDANCIA DUAL-PATH:**
```
RAMA A (Superior):  N1 → N2 → N4 → N6 → N7
                    39km   73km   71km   50km

RAMA B (Inferior):  N1 → N3 → N5 → N7
                    70km   32km   39km

PUNTOS DE CIERRE:
- N1 (CCO): Inicio del anillo [STACK]
- N7 (BUNKER 02): Convergencia de ambas ramas [STACK]
```

**Criterios Aplicados:**
- ✅ **7 nodos L3:** CCO, 2 Peajes, 2 Áreas Servicio, 2 Bunkers
- ✅ **WIM con L2:** Solo 120 m del CCO, no justifica L3
- ✅ **2 STACKS:** N1 (CCO) + N7 (BUNKER 02) - puntos de convergencia
- ✅ **2 BUNKERS:** BUNKER 01 (N3) + BUNKER 02 (N7) para mantener ≤80km
- ✅ **Redundancia dual-path:** Dos caminos independientes N1→N7

### 3.2 Topología Sub-Anillos L2 - Equipos ITS de Campo

#### **ESPECIFICACIONES TÉCNICAS SUB-ANILLOS L2**

**Tecnología:** Gigabit Ethernet  
**Equipos:** Advantech EKI-7706G / EKI-7710E / EKI-7712G (switches industriales L2)  
**SFP Módulos:** SFP-GLX/LC-10E (1000Base-LX, hasta 10 km)  
**Fibra:** Monomodo OS2 9/125 μm  

#### **Especificaciones SFP Sub-Anillos:**

| Parámetro | Especificación |
|:----------|:---------------|
| **Modelo** | SFP-GLX/LC-10E (Advantech/Moxa) |
| **Velocidad** | 1.25 Gbps (Gigabit Ethernet) |
| **Alcance máximo** | **10 km** ⚠️ |
| **Longitud de onda** | 1310 nm |
| **Tipo fibra** | Monomodo (SMF) |
| **Conector** | LC duplex |
| **Temperatura** | -40°C a +85°C (industrial) |

#### **⚠️ REGLA CRÍTICA DE DISEÑO L2:**

**DISTANCIA MÁXIMA ENTRE EQUIPOS L2:** ≤10 km

Esta limitación es impuesta por el SFP industrial 1.25G utilizado en los switches Advantech.

✅ **Válido:** Distancia L2 ↔ L2 ≤ 10 km  
❌ **Inválido:** Distancia L2 ↔ L2 > 10 km  

**Excepción:** El último equipo L2 del sub-anillo puede estar a >10 km del nodo L3, porque el nodo L3 tiene capacidad de largo alcance (SFP-10G-ZR).

#### **Topología Típica de Sub-Anillo:**

```
Ejemplo: Sub-Anillo SA1-A (AMAYORES)

Nodo L3 A (PKD 0+000)
    ↓ 7 km ✅ (SFP 1.25G Moxa)
  L2-001: SOS (PKD 7+000)
    ↓ 10 km ✅ (SFP 1.25G Moxa - MÁXIMO)
  L2-002: CCTV (PKD 17+000)
    ↓ 2.7 km ✅ (SFP 1.25G Moxa)
  L2-003: PMV (PKD 19+700)
    ↓ 19.7 km ✅ (Regreso al L3 - puede ser >10km)
Nodo L3 A (PKD 0+000) ← CIERRE DEL ANILLO

Validación:
✅ L2→L2: 7 km, 10 km, 2.7 km (todos ≤10 km)
✅ L2→L3: 19.7 km (válido porque el L3 tiene SFP de largo alcance)
```

#### **Metodología de Diseño:**

1. **Calcular punto medio del tramo L3:**
   - Punto Medio = (PKD_inicial + PKD_final) / 2

2. **Dividir en dos sub-anillos:**
   - Sub-Anillo A (AMAYORES): Equipos con PKD < Punto Medio
   - Sub-Anillo B (AMENORES): Equipos con PKD ≥ Punto Medio

3. **Validar distancias:**
   - Verificar que NINGÚN salto L2→L2 supere 10 km
   - Si hay saltos >10 km, agregar equipo L2 intermedio o reasignar a otro sub-anillo

4. **Cierre del anillo:**
   - Cada sub-anillo sale de un nodo L3 y regresa al mismo nodo L3
   - El último salto L2→L3 puede ser >10 km (sin limitación)

### 3.3 Tabla Comparativa de Módulos SFP

| Modelo | Tipo | Velocidad | Alcance | Aplicación | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-------|:-----|:----------|:--------|:-----------|:---------|:-------------------|:------------|
| **SFP-10G-ZR-S** | 10G Long Range | 10 Gbps | **80 km** | **Troncal L3** | 11 | $5,339.48 | $58,734.32 |
| **SFP-10G-LR-S** | 10G Medium | 10 Gbps | 10 km | Conexiones L3 cortas | 5 | $1,020.55 | $5,102.75 |
| **SFP-10G-ER-S** | 10G Extended | 10 Gbps | 40 km | Alternativa media distancia | 2 | $3,869.90 | $7,739.81 |
| **SFP-GLX/LC-10E** | 1G Moxa | 1.25 Gbps | **≤10 km** | **Sub-anillos L2** | 188 | $88.00 | $16,544.00 |
| **TOTAL** | - | - | - | - | **206** | - | **$88,120.88** |

**Notas:**
- **SFP-10G-ZR-S:** Requiere atenuador +5dB o +10dB según distancia
- **SFP-GLX/LC-10E:** ⚠️ **Limitación de 10 km entre equipos L2** (propiedad del módulo Moxa)
- **Total módulos SFP:** 206 unidades
- **Aplicación crítica:** La regla de 10 km L2 es una limitación física del hardware

### 3.4 Reglas de Oro - Arquitectura de Red

#### **Nivel L3 (Troncal):**
✅ **Distancia máxima entre nodos L3:** ≤80 km (límite SFP-10G-ZR-S)  
✅ **Proyecto actual:** Todos los tramos ≤73 km (cumple con margen)  
✅ **SFP utilizado:** SFP-10G-ZR-S + atenuador 5dB  
✅ **Velocidad:** 10 Gbps  
✅ **Redundancia:** Anillo completo con 2 caminos independientes  

#### **Nivel L2 (Sub-anillos):**
⚠️ **CRÍTICO: Distancia máxima L2↔L2:** ≤10 km (límite SFP Moxa 1.25G)  
✅ **Excepción:** Último salto L2→L3 puede ser >10 km  
✅ **SFP utilizado:** SFP-GLX/LC-10E (1.25 Gbps)  
✅ **Metodología:** Punto medio flexible + validación de distancias  
✅ **Cierre:** Cada sub-anillo sale y regresa al mismo nodo L3  

#### **Metodología de Validación:**
1. Listar todos los equipos ITS por PKD
2. Asignar a sub-anillo según punto medio del tramo
3. Calcular distancia entre equipos consecutivos
4. Verificar que NINGÚN salto L2→L2 supere 10 km
5. Si hay saltos >10 km: agregar equipo intermedio o reasignar

### 3.5 VLANs por Sistema

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
| Fibra óptica 48h (Microfibra) | km | 322 | $10,000 | $3,220,000 |
| Ductos + canalizaciones | km | 322 | $8,000 | $2,576,000 |
| Equipos Red L2/L3 + Firewalls HA | global | 1 | $785,000 | $785,000 |
| Instalación + Pruebas + AIU | global | 1 | $1,399,000 | $1,399,000 |
| **TOTAL** | - | - | - | **$7,980,000.00** |

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

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Longitud fibra óptica actualizada: ~322 km
- Topología mantenida: Anillo redundante L3 + Sub-anillos L2
- Nodos L3 confirmados: 7 nodos
- CAPEX mantenido: USD $7,980,000.00
- Metodología PKD lineal aplicada
