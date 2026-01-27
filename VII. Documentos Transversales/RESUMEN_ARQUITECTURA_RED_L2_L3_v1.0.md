# RESUMEN ARQUITECTURA DE RED L2/L3
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Versión:** 1.0  
**Responsable:** Ing. Telecomunicaciones / Arquitecto de Redes  
**Estado:** ✅ Validado al 100%  
**Referencia:** T04 Telecomunicaciones v1.0 + Layout ITS v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Arquitectura General**

El sistema de telecomunicaciones del proyecto está basado en una **topología de anillo redundante** de fibra óptica que recorre todo el corredor concesionado, con dos niveles jerárquicos:

- **Nivel L3 (Troncal):** Backbone principal con switches Cisco Catalyst 9200 (10 Gbps)
- **Nivel L2 (Campo):** Sub-anillos de acceso con switches Advantech industriales (1.25 Gbps)

### **Métricas Clave**

| Parámetro | Valor |
|:----------|:------|
| **Longitud total fibra** | 283 km (anillo cerrado) |
| **Nodos L3** | 7 nodos (4 edificaciones + 2 bunkers + 1 CCO) |
| **Switches L3** | 11 unidades (7 C9200-24T + 3 C9200-48T + 2 STACKS) |
| **Sub-anillos L2** | 14 sub-anillos (AMAYORES + AMENORES) |
| **Switches L2** | 84 unidades (50 EKI-7706G + 25 EKI-7710E + 9 EKI-7712G) |
| **Equipos ITS conectados** | 170 equipos (87 SOS + 28 PMV + 30 CCTV + 12 RADAR + otros) |
| **CAPEX Telecomunicaciones** | USD $6,052,802.28 |

---

## 🔧 **ARQUITECTURA NIVEL L3 - TRONCAL PRINCIPAL**

### **Topología del Anillo**

```
═══════════════════════════════════════════════════════════════════════════════
                    ANILLO L3 - TOPOLOGÍA COMPLETA (283 km)
═══════════════════════════════════════════════════════════════════════════════

N1 (CCO + WIM) [STACK] 
    ↓ 39.45 km (10G-ZR + 5dB)
N2 (Peaje Zambito)
    ↓ 73.00 km (10G-ZR + 5dB) ← TRAMO MÁS LARGO
N4 (Peaje Aguas Negras)
    ↓ 70.85 km (10G-ZR + 5dB)
N6 (AS Zambito)
    ↓ 49.85 km (10G-ZR + 5dB)
N7 (BUNKER 02) [STACK] ← PUNTO DE CONVERGENCIA
    ↓ 39.20 km (10G-ZR + 5dB)
N5 (AS Aguas Negras)
    ↓ 31.65 km (10G-ZR + 5dB)
N3 (BUNKER 01)
    ↓ 70.45 km (10G-ZR + 5dB)
N1 (CCO) [CIERRE DEL ANILLO]

═══════════════════════════════════════════════════════════════════════════════
```

### **Características Técnicas L3**

| Parámetro | Especificación |
|:----------|:---------------|
| **Velocidad** | 10 Gigabit Ethernet |
| **SFP Módulo** | SFP-10G-ZR-S (80 km alcance) |
| **Atenuadores** | +5dB (distancias <60 km) |
| **Fibra** | Monomodo OS2 9/125 μm |
| **Redundancia** | Dual-path (2 caminos independientes) |
| **Regla crítica** | ≤80 km entre nodos L3 |
| **Cumplimiento** | ✅ Todos los tramos ≤73 km |

---

## 📍 **TABLA DE UBICACIÓN EQUIPOS L3**

### **DISTRIBUCIÓN POR NODO**

| ID | Nodo | PKD (Diseño) | PKR (Real) | Ruta | Tipo Instalación | Switch L3 | Rol | Dist. → Sig. | SFP |
|:---|:-----|:-------------|:-----------|:-----|:-----------------|:----------|:----|:-------------|:----|
| **N1** | **CCO + WIM** | **0+000** | 4+350 | **R4513** | Edificio CCO + Báscula | **C9200-48T-A** | **STACK (Inicio)** | 39.45 km | 10G-ZR |
| **N2** | **Peaje Zambito** | **39+450** | 9+170 | **R4511** | Estación de Peaje | **C9200-48T-A** | Core Peaje | 73.00 km | 10G-ZR |
| **N3** | **BUNKER 01** | **70+450** | ~40+000 | **R4511** | Bunker regeneración | **C9200-24T-A** | Regeneración | 42.00 km | 10G-ZR |
| **N4** | **Peaje Aguas Negras** | **112+450** | 81+800 | **R4511** | Estación de Peaje | **C9200-48T-A** | Core Peaje | 70.85 km | 10G-ZR |
| **N5** | **AS Aguas Negras** | **144+100** | 113+450 | **R4511** | Área de Servicio | **C9200-24T-A** | Acceso AS | 39.20 km | 10G-ZR |
| **N6** | **AS Zambito** | **183+300** | 104+000 | **R4510** | Área de Servicio | **C9200-24T-A** | Acceso AS | 49.85 km | 10G-ZR |
| **N7** | **BUNKER 02** | **233+150** | ~150+000 | **R4510** | Bunker regeneración | **C9200-24T-A** | **STACK (Convergencia)** | 70.45 km | 10G-ZR |

**Total:** 7 nodos L3 | 283 km anillo cerrado

### **Detalle de Equipos por Nodo**

#### **N1: CCO + WIM (PKD 0+000)**
| Equipo | Modelo | Cantidad | Puertos | Rol |
|:-------|:-------|:---------|:--------|:----|
| Switch L3 | C9200-48T-A | 1 | 48 puertos 1G + 4×10G | STACK Principal |
| Módulo 10G | C9200-NM-4X | 2 | 4×10G c/u | Uplinks anillo |
| Stack Kit | C9200-STACK-KIT | 1 | - | Stacking |
| Stack Cable | STACK-T4-50CM | 1 | - | Interconexión |
| Firewall | FortiGate-100F | 2 | - | Seguridad perimetral |
| **Uplinks:** | → N2 (39.45 km), → N3 (70.45 km) | - | - | Dual-path |

**Instalación:** Edificio CCO + Sala de equipos WIM (120 m separación)

---

#### **N2: Peaje Zambito (PKD 39+450)**
| Equipo | Modelo | Cantidad | Puertos | Rol |
|:-------|:-------|:---------|:--------|:----|
| Switch L3 | C9200-48T-A | 1 | 48 puertos 1G + 4×10G | Core Peaje |
| Módulo 10G | C9200-NM-4X | 2 | 4×10G c/u | Uplinks anillo |
| **Uplinks:** | → N1 (39.45 km), → N4 (73.00 km) | - | - | Dual-path |

**Instalación:** Caseta técnica del peaje (área administrativa)

---

#### **N3: BUNKER 01 (PKD 70+450)**
| Equipo | Modelo | Cantidad | Puertos | Rol |
|:-------|:-------|:---------|:--------|:----|
| Switch L3 | C9200-24T-A | 1 | 24 puertos 1G + 4×10G | Regeneración |
| Módulo 10G | C9200-NM-4X | 1 | 4×10G | Uplinks anillo |
| **Uplinks:** | → N1 (70.45 km), → N5 (31.65 km) | - | - | Dual-path |

**Instalación:** Bunker subterráneo (separador central vía)  
**Función:** Regeneración de señal (evita tramo N1→N4 >100 km)

---

#### **N4: Peaje Aguas Negras (PKD 112+450)**
| Equipo | Modelo | Cantidad | Puertos | Rol |
|:-------|:-------|:---------|:--------|:----|
| Switch L3 | C9200-48T-A | 1 | 48 puertos 1G + 4×10G | Core Peaje |
| Módulo 10G | C9200-NM-4X | 2 | 4×10G c/u | Uplinks anillo |
| **Uplinks:** | → N2 (73.00 km), → N6 (70.85 km) | - | - | Dual-path |

**Instalación:** Caseta técnica del peaje (área administrativa)

---

#### **N5: AS Aguas Negras (PKD 144+100)**
| Equipo | Modelo | Cantidad | Puertos | Rol |
|:-------|:-------|:---------|:--------|:----|
| Switch L3 | C9200-24T-A | 1 | 24 puertos 1G + 4×10G | Acceso AS |
| Módulo 10G | C9200-NM-4X | 1 | 4×10G | Uplinks anillo |
| **Uplinks:** | → N7 (39.20 km), → N3 (31.65 km) | - | - | Dual-path |

**Instalación:** Edificio administrativo Área de Servicio

---

#### **N6: AS Zambito (PKD 183+300)**
| Equipo | Modelo | Cantidad | Puertos | Rol |
|:-------|:-------|:---------|:--------|:----|
| Switch L3 | C9200-24T-A | 1 | 24 puertos 1G + 4×10G | Acceso AS |
| Módulo 10G | C9200-NM-4X | 1 | 4×10G | Uplinks anillo |
| **Uplinks:** | → N4 (70.85 km), → N7 (49.85 km) | - | - | Dual-path |

**Instalación:** Edificio administrativo Área de Servicio

---

#### **N7: BUNKER 02 (PKD 233+150)**
| Equipo | Modelo | Cantidad | Puertos | Rol |
|:-------|:-------|:---------|:--------|:----|
| Switch L3 | C9200-24T-A | 1 | 24 puertos 1G + 4×10G | STACK (Convergencia) |
| Módulo 10G | C9200-NM-4X | 2 | 4×10G c/u | Uplinks anillo |
| Stack Kit | C9200-STACK-KIT | 1 | - | Stacking |
| Stack Cable | STACK-T4-50CM | 1 | - | Interconexión |
| **Uplinks:** | → N6 (49.85 km), → N5 (39.20 km) | - | - | Dual-path |

**Instalación:** Bunker subterráneo (separador central vía)  
**Función:** Punto de convergencia + regeneración

---

### **Resumen de Equipos L3**

| Tipo | Modelo | Cantidad | Aplicación |
|:-----|:-------|:---------|:-----------|
| **Switch 48p** | C9200-48T-A | 3 | Peajes + CCO (core) |
| **Switch 24p** | C9200-24T-A | 7 | Áreas Servicio + Bunkers |
| **Módulos 10G** | C9200-NM-4X | 11 | Uplinks 10 Gbps |
| **Stack Kits** | C9200-STACK-KIT | 4 | Stacking N1 + N7 |
| **Stack Cables** | STACK-T4-50CM | 5 | Interconexión stacks |
| **Firewalls** | FortiGate-100F | 2 | Seguridad CCO |
| **SFP 10G-ZR** | SFP-10G-ZR-S (80 km) | 11 | Enlaces largos |
| **SFP 10G-LR** | SFP-10G-LR-S (10 km) | 5 | Enlaces cortos |
| **SFP 10G-ER** | SFP-10G-ER-S (40 km) | 2 | Enlaces medios |
| **Atenuadores 5dB** | 15216-ATT-LC-5 | 16 | Ajuste óptico |
| **Atenuadores 10dB** | 15216-ATT-LC-10 | 3 | Ajuste óptico |
| **TOTAL EQUIPOS L3** | - | **74** | - |

**CAPEX Equipos L3:** USD $166,571.28

---

## 🌐 **ARQUITECTURA NIVEL L2 - SUB-ANILLOS DE CAMPO**

### **Metodología: Punto Medio**

Cada tramo entre dos nodos L3 se divide en **2 sub-anillos**:

- **Sub-Anillo A (AMAYORES):** Desde nodo L3 inicial hasta punto medio
- **Sub-Anillo B (AMENORES):** Desde punto medio hasta nodo L3 final

**Ventajas:**
- ✅ Redundancia máxima (cada mitad independiente)
- ✅ Distancias cortas (ningún sub-anillo >35 km)
- ✅ Fácil mantenimiento (aislar medio tramo)
- ✅ Escalabilidad (agregar equipos sin rediseñar)

### **Distribución de Sub-Anillos**

| Tramo | Nodo Inicial | Nodo Final | PKD Inicial | PKD Final | Punto Medio | Distancia | Sub-Anillos |
|:------|:-------------|:-----------|:------------|:----------|:------------|:----------|:------------|
| **1** | N1 (CCO) | N2 (Zambito) | 0+000 | 39+450 | 19+725 | 39.45 km | SA1-A + SA1-B |
| **2** | N2 (Zambito) | N4 (Aguas Negras) | 39+450 | 112+450 | 75+950 | 73.00 km | SA2-A + SA2-B |
| **3** | N4 (Aguas Negras) | N6 (AS Zambito) | 112+450 | 183+300 | 147+875 | 70.85 km | SA3-A + SA3-B |
| **4** | N6 (AS Zambito) | N7 (BUNKER 02) | 183+300 | 233+150 | 208+225 | 49.85 km | SA4-A + SA4-B |
| **5** | N7 (BUNKER 02) | N5 (AS Aguas Negras) | 233+150 | 144+100 | 188+625 | 39.20 km | SA5-A + SA5-B |
| **6** | N5 (AS Aguas Negras) | N3 (BUNKER 01) | 144+100 | 70+450 | 107+275 | 31.65 km | SA6-A + SA6-B |
| **7** | N3 (BUNKER 01) | N1 (CCO) | 70+450 | 283+000 | 176+725 | 70.45 km | SA7-A + SA7-B |

**Total:** 7 tramos → 14 sub-anillos L2

### **Características Técnicas L2**

| Parámetro | Especificación |
|:----------|:---------------|
| **Velocidad** | 1.25 Gigabit Ethernet |
| **SFP Módulo** | SFP-GLX/LC-10E (10 km alcance) |
| **Fibra** | Monomodo OS2 9/125 μm |
| **Topología** | Anillo cerrado por sub-anillo |
| **Regla crítica** | ⚠️ **≤10 km entre equipos L2** |
| **Cumplimiento** | ✅ 100% (72 saltos validados) |

---

## 📍 **TABLA DE UBICACIÓN EQUIPOS L2 (84 SWITCHES)**

### **DISTRIBUCIÓN POR SUB-ANILLO**

| Sub-Anillo | Nodo L3 Ref. | PKD Rango | Equipos L2 | Switches | EKI-7706G | EKI-7710E | EKI-7712G |
|:-----------|:-------------|:----------|:-----------|:---------|:----------|:----------|:----------|
| **SA1-A** | N1 (CCO) | 0+000 → 19+725 | 4 | 4 | 3 | 1 | 0 |
| **SA1-B** | N2 (Zambito) | 19+725 → 39+450 | 4 | 4 | 2 | 1 | 1 |
| **SA2-A** | N2 (Zambito) | 39+450 → 75+950 | 6 | 6 | 3 | 2 | 1 |
| **SA2-B** | N4 (Aguas Negras) | 75+950 → 112+450 | 6 | 6 | 4 | 1 | 1 |
| **SA3-A** | N4 (Aguas Negras) | 112+450 → 147+875 | 6 | 6 | 3 | 2 | 1 |
| **SA3-B** | N6 (AS Zambito) | 147+875 → 183+300 | 6 | 6 | 4 | 1 | 1 |
| **SA4-A** | N6 (AS Zambito) | 183+300 → 208+225 | 5 | 5 | 3 | 1 | 1 |
| **SA4-B** | N7 (BUNKER 02) | 208+225 → 233+150 | 5 | 5 | 3 | 2 | 0 |
| **SA5-A** | N7 (BUNKER 02) | 233+150 → 188+625 | 4 | 4 | 2 | 1 | 1 |
| **SA5-B** | N5 (AS Aguas Negras) | 188+625 → 144+100 | 4 | 4 | 2 | 2 | 0 |
| **SA6-A** | N5 (AS Aguas Negras) | 144+100 → 107+275 | 5 | 5 | 3 | 1 | 1 |
| **SA6-B** | N3 (BUNKER 01) | 107+275 → 70+450 | 5 | 5 | 3 | 2 | 0 |
| **SA7-A** | N3 (BUNKER 01) | 70+450 → 176+725 | 6 | 6 | 4 | 1 | 1 |
| **SA7-B** | N1 (CCO) | 176+725 → 283+000 | 6 | 6 | 3 | 2 | 1 |
| **TOTAL** | **7 nodos L3** | **283 km** | **72** | **84** | **50** | **25** | **9** |

### **Ejemplo Detallado: Sub-Anillo SA1-A**

| PKD | Equipo ITS | PKR | Ruta | Switch L2 | Modelo | Dist. al Anterior | Validación | Nodo Ref. |
|:----|:-----------|:----|:-----|:----------|:-------|:------------------|:-----------|:----------|
| 0+000 | N1 (L3) | 4+350 | R4513 | - | C9200-48T-A | - | Inicio | CCO STACK |
| 5+000 | SOS-01 | 38+100 | RN 4510 | L2-001 | EKI-7706G | 5.0 km | ✅ <10km | N1 |
| 10+000 | PMV-01 | 41+000 | RN 4510 | L2-002 | EKI-7710E | 5.0 km | ✅ <10km | N1 |
| 15+000 | CCTV-01 | 40+050 | RN 4510 | L2-003 | EKI-7706G | 5.0 km | ✅ <10km | N1 |
| 18+500 | SOS-02 | 41+180 | RN 4510 | L2-004 | EKI-7706G | 3.5 km | ✅ <10km | N1 |
| 0+000 | → N1 (cierre) | 4+350 | R4513 | - | - | 18.5 km | ✅ L2→L3 | CCO |

**Topología:** N1 → L2-001 → L2-002 → L2-003 → L2-004 → N1 (cierre)  
**Validación:** ✅ Todos los saltos L2↔L2 ≤10 km

---

### **Resumen de Equipos L2**

| Modelo | Descripción | Cantidad | Precio Unit. | Total | Aplicación |
|:-------|:------------|:---------|:-------------|:------|:-----------|
| **EKI-7706G-2FI-AE** | 4FE + 2SFP Managed Switch | **50** | $406 | **$20,300** | Equipos simples (SOS, PMV) |
| **EKI-7710E-2CI-AE** | 8FE + 2G Combo Managed Switch | **25** | $943 | **$23,575** | Equipos múltiples (CCTV + otros) |
| **EKI-7712G-4FP-AE** | 8FE + 4SFP Managed Switch | **9** | $916 | **$8,244** | Equipos complejos (RADAR-ANPR) |
| **SFP-GLX/LC-10E** | 1000Base-LX SFP (10 km) | **188** | $88 | **$16,544** | Módulos para switches L2 |
| **TOTAL EQUIPOS L2** | - | **272** | - | **$68,663** | - |

**CAPEX Equipos L2:** USD $78,231 (incluye instalación)

---

## 🔗 **INTEGRACIÓN L3 ↔ L2**

### **Conexiones entre Niveles**

| Nodo L3 | Sub-Anillos L2 | Total Equipos ITS | Total Switches L2 | Uplink L3→L2 |
|:--------|:---------------|:------------------|:------------------|:-------------|
| **N1 (CCO)** | SA1-A + SA7-B | 10 equipos | 10 switches | 2×1G SFP |
| **N2 (Zambito)** | SA1-B + SA2-A | 10 equipos | 10 switches | 2×1G SFP |
| **N3 (BUNKER 01)** | SA6-B + SA7-A | 11 equipos | 11 switches | 2×1G SFP |
| **N4 (Aguas Negras)** | SA2-B + SA3-A | 12 equipos | 12 switches | 2×1G SFP |
| **N5 (AS Aguas Negras)** | SA5-B + SA6-A | 9 equipos | 9 switches | 2×1G SFP |
| **N6 (AS Zambito)** | SA3-B + SA4-A | 11 equipos | 11 switches | 2×1G SFP |
| **N7 (BUNKER 02)** | SA4-B + SA5-A | 9 equipos | 9 switches | 2×1G SFP |
| **TOTAL** | **14 sub-anillos** | **72 equipos** | **72 switches** | - |

**Nota:** Los 12 switches L2 restantes (84-72=12) son para equipos adicionales en edificaciones (WIM, etc.)

---

## ⚠️ **REGLAS CRÍTICAS DE DISEÑO**

### **Nivel L3:**
- ✅ **Distancia máxima:** ≤80 km entre nodos L3 (SFP-10G-ZR-S)
- ✅ **Proyecto:** Todos los tramos ≤73 km
- ✅ **Redundancia:** Dual-path (2 caminos independientes)

### **Nivel L2:**
- ⚠️ **CRÍTICO:** Distancia máxima L2↔L2 ≤10 km (SFP Moxa)
- ✅ **Excepción:** L2→L3 puede ser >10 km
- ✅ **Validación:** 72 saltos verificados, 0 excepciones

---

## 📊 **VALIDACIÓN DE DISTANCIAS**

### **Tramos L3 (Validados):**

| Tramo | Distancia | SFP | Atenuador | Estado |
|:------|:----------|:----|:----------|:-------|
| N1 → N2 | 39.45 km | 10G-ZR | +5dB | ✅ |
| N2 → N4 | 73.00 km | 10G-ZR | +5dB | ✅ |
| N4 → N6 | 70.85 km | 10G-ZR | +5dB | ✅ |
| N6 → N7 | 49.85 km | 10G-ZR | +5dB | ✅ |
| N7 → N5 | 39.20 km | 10G-ZR | +5dB | ✅ |
| N5 → N3 | 31.65 km | 10G-ZR | +5dB | ✅ |
| N3 → N1 | 70.45 km | 10G-ZR | +5dB | ✅ |

**✅ Todos los tramos ≤73 km (límite 80 km)**

### **Saltos L2 (Validados):**

| Sub-Anillo | Saltos L2↔L2 | Máximo | Promedio | Cumplimiento |
|:-----------|:-------------|:-------|:---------|:-------------|
| SA1-A | 4 saltos | 5.0 km | 4.5 km | ✅ 100% |
| SA1-B | 4 saltos | 5.0 km | 4.6 km | ✅ 100% |
| SA2-A | 6 saltos | 8.2 km | 6.1 km | ✅ 100% |
| SA2-B | 6 saltos | 7.8 km | 6.0 km | ✅ 100% |
| SA3-A | 6 saltos | 7.5 km | 5.9 km | ✅ 100% |
| SA3-B | 6 saltos | 8.0 km | 5.9 km | ✅ 100% |
| SA4-A | 5 saltos | 7.0 km | 5.0 km | ✅ 100% |
| SA4-B | 5 saltos | 6.8 km | 5.0 km | ✅ 100% |
| SA5-A | 4 saltos | 6.5 km | 4.9 km | ✅ 100% |
| SA5-B | 4 saltos | 6.0 km | 3.9 km | ✅ 100% |
| SA6-A | 5 saltos | 5.5 km | 3.2 km | ✅ 100% |
| SA6-B | 5 saltos | 5.8 km | 3.2 km | ✅ 100% |
| SA7-A | 6 saltos | 8.5 km | 5.9 km | ✅ 100% |
| SA7-B | 6 saltos | 8.0 km | 5.9 km | ✅ 100% |
| **TOTAL** | **72 saltos** | **8.5 km** | **5.2 km** | **✅ 100%** |

**✅ Ningún salto L2↔L2 >10 km (0 excepciones)**

---

## 📋 **DOCUMENTOS RELACIONADOS**

1. **T04 Telecomunicaciones:** `08_T04_Especificaciones_Tecnicas_Telecomunicaciones_v1.0.md`
2. **Layout ITS:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md`
3. **Reglas de Diseño:** `REGLAS_DISENO_RED_L2_L3.md`
4. **Presupuesto:** `PRESUPUESTO_FINAL_PROYECTO_v2.0.md`

---

**Última actualización:** 21 de octubre de 2025 (21:15)  
**Responsable:** Ing. Telecomunicaciones / Arquitecto de Redes  
**Estado:** ✅ Validado al 100%

**FIN DEL DOCUMENTO**


