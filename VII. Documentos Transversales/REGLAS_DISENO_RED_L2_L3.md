# REGLAS DE DISEÑO - ARQUITECTURA DE RED L2 Y L3
## Proyecto APP Puerto Salgar - Barrancabermeja

**Versión:** 1.1  
**Fecha:** 21 de octubre de 2025  
**Documento Técnico:** Resumen Ejecutivo de Criterios de Diseño

---

## 📋 **RESUMEN EJECUTIVO**

Este documento consolida las **reglas críticas de diseño** para la arquitectura de red de telecomunicaciones del proyecto, basadas en las limitaciones físicas de los módulos SFP y la topología de anillo redundante.

---

## 🔧 **NIVEL L3 - TRONCAL PRINCIPAL**

### **Especificaciones Técnicas**

| Parámetro | Especificación |
|:----------|:---------------|
| **Equipos** | Cisco Catalyst 9200 (switches L3) |
| **Velocidad** | 10 Gigabit Ethernet |
| **SFP Módulo** | SFP-10G-ZR-S (10GBASE-ZR) |
| **Alcance máximo** | **80 km** |
| **Longitud de onda** | 1550 nm |
| **Fibra** | Monomodo OS2 9/125 μm |
| **Atenuadores** | +5dB (<60 km) o +10dB (60-80 km) |

### **✅ REGLAS DE DISEÑO L3**

**REGLA 1:** Distancia máxima entre nodos L3 ≤80 km
- Limitación: SFP-10G-ZR-S
- Proyecto actual: Todos los tramos ≤73 km ✅

**REGLA 2:** Redundancia completa
- Topología: Anillo cerrado con 7 nodos L3
- Dual-path: 2 caminos independientes entre cualquier par de nodos

**REGLA 3:** Atenuación según distancia
- <60 km: Atenuador +5dB
- 60-80 km: Atenuador +10dB

### **Topología del Anillo L3**

```
N1 (CCO) ←─────→ N2 (Zambito) ←─────→ N4 (Aguas Negras) ←─────→ N6 (AS Zambito)
  39.45km          73.00km               70.85km
  SFP-10G-ZR       SFP-10G-ZR            SFP-10G-ZR
  +5dB             +5dB                  +5dB

N7 (BUNKER 02) ←─────→ N5 (AS Aguas Negras) ←─────→ N3 (BUNKER 01) ←─────→ N1 (CCO)
  49.85km               39.20km                      31.65km              70.45km
  SFP-10G-ZR            SFP-10G-ZR                   SFP-10G-ZR           SFP-10G-ZR
  +5dB                  +5dB                         +5dB                 +5dB
```

**Validación:**
- ✅ Tramo más largo: 73 km (<80 km límite)
- ✅ Redundancia: 2 caminos N1↔N7
- ✅ Total: 283 km de fibra óptica

---

## 🔌 **NIVEL L2 - SUB-ANILLOS DE CAMPO**

### **Especificaciones Técnicas**

| Parámetro | Especificación |
|:----------|:---------------|
| **Equipos** | Advantech EKI-7706G / 7710E / 7712G |
| **Velocidad** | 1.25 Gigabit Ethernet |
| **SFP Módulo** | SFP-GLX/LC-10E (1000Base-LX) |
| **Alcance máximo** | **≤10 km** ⚠️ |
| **Longitud de onda** | 1310 nm |
| **Fibra** | Monomodo OS2 9/125 μm |
| **Temperatura** | -40°C a +85°C (industrial) |

### **⚠️ REGLAS CRÍTICAS DE DISEÑO L2**

**REGLA 1 (CRÍTICA):** Distancia máxima L2↔L2 ≤10 km
- **Limitación:** SFP-GLX/LC-10E Moxa (propiedad del módulo)
- **NO NEGOCIABLE:** Esta distancia NO puede superarse
- **Causa:** Presupuesto óptico y especificaciones del SFP industrial

**REGLA 2:** Excepción para salto final L2→L3
- El último equipo L2 del sub-anillo **PUEDE** estar a >10 km del nodo L3
- Razón: El nodo L3 tiene SFP-10G-ZR (alcance 80 km)

**REGLA 3:** Metodología punto medio
- Cada tramo L3 se divide en 2 sub-anillos (AMAYORES/AMENORES)
- Punto medio = (PKD_inicial + PKD_final) / 2
- Punto medio es **FLEXIBLE** (respeta ubicaciones fijas de equipos ITS)

**REGLA 4:** Cierre de sub-anillos
- Cada sub-anillo sale de un nodo L3 y regresa al mismo nodo L3
- Topología: N_L3 → L2-1 → L2-2 → ... → L2-n → N_L3 (cierre)

### **Ejemplo Práctico**

```
Sub-Anillo SA1-A (AMAYORES):

N1 (PKD 0+000) [L3]
    ↓ 5 km ✅ (SFP 1.25G Moxa)
  SOS-01 (PKD 5+000) [L2]
    ↓ 5 km ✅ (SFP 1.25G Moxa)
  PMV-01 (PKD 10+000) [L2]
    ↓ 5 km ✅ (SFP 1.25G Moxa)
  CCTV-01 (PKD 15+000) [L2]
    ↓ 3.5 km ✅ (SFP 1.25G Moxa)
  SOS-02 (PKD 18+500) [L2]
    ↓ 18.5 km ✅ (Regreso al L3 - puede ser >10km)
N1 (PKD 0+000) [L3] ← CIERRE DEL ANILLO

Validación:
✅ Saltos L2→L2: 5 km, 5 km, 5 km, 3.5 km (todos ≤10 km)
✅ Salto L2→L3: 18.5 km (válido porque va al nodo L3)
```

---

## 📊 **TABLA COMPARATIVA DE SFPs**

| Modelo | Velocidad | Alcance | Aplicación | Cantidad |
|:-------|:----------|:--------|:-----------|:---------|
| **SFP-10G-ZR-S** | 10 Gbps | **80 km** | **Troncal L3** (nodo a nodo) | 11 |
| **SFP-10G-LR-S** | 10 Gbps | 10 km | Conexiones L3 cortas | 5 |
| **SFP-10G-ER-S** | 10 Gbps | 40 km | Alternativa media distancia | 2 |
| **SFP-GLX/LC-10E** | 1.25 Gbps | **≤10 km** | **Sub-anillos L2** (equipo a equipo) | 188 |
| **15216-ATT-LC-5** | - | - | Atenuador L3 (<60 km) | 16 |
| **15216-ATT-LC-10** | - | - | Atenuador L3 (60-80 km) | 3 |
| **TOTAL** | - | - | - | **225** |

**Notas:**
- Total switches L2: 112 unidades (81+15+16)
- Total SFP modules: 206 unidades (11+5+2+188)
- Costo total SFPs + Atenuadores: **$90,379.04 USD**

---

## ✅ **CRITERIOS DE VALIDACIÓN**

### **Para Diseño de Sub-Anillos L2:**

| Condición | Validación | Acción Requerida |
|:----------|:-----------|:-----------------|
| Distancia L2↔L2 ≤10 km | ✅ Verde | OK - Cumple especificación |
| Distancia L2↔L2 10-12 km | ⚠️ Amarillo | En límite - Evaluar agregar equipo intermedio |
| Distancia L2↔L2 >12 km | ❌ Rojo | NO CUMPLE - Agregar equipo L2 intermedio obligatorio |
| Distancia L2→L3 >10 km | ✅ Verde | OK - El L3 tiene capacidad de largo alcance |

### **Proceso de Validación:**

1. **Listar todos los equipos ITS** por PKD en orden ascendente
2. **Asignar a sub-anillo** según punto medio del tramo L3
3. **Calcular distancias** entre equipos consecutivos en el sub-anillo
4. **Verificar que NINGÚN salto L2→L2 supere 10 km**
5. **Si hay saltos >10 km:** Agregar equipo L2 intermedio o reasignar a otro sub-anillo

---

## 🎯 **REGLAS DE ORO (RESUMEN)**

### **Nivel L3:**
✅ **Distancia máxima:** ≤80 km entre nodos L3
✅ **SFP utilizado:** SFP-10G-ZR-S + atenuador 5dB/10dB
✅ **Velocidad:** 10 Gbps
✅ **Topología:** Anillo completo con redundancia dual-path

### **Nivel L2:**
⚠️ **CRÍTICO: Distancia máxima L2↔L2:** ≤10 km (límite SFP Moxa)
✅ **Excepción:** Salto final L2→L3 puede ser >10 km
✅ **SFP utilizado:** SFP-GLX/LC-10E (1.25 Gbps)
✅ **Metodología:** Punto medio flexible + validación de distancias
✅ **Cierre:** Cada sub-anillo regresa al mismo nodo L3

---

## 📝 **DOCUMENTOS RELACIONADOS**

1. **08_T04_Especificaciones_Tecnicas_Telecomunicaciones_v1.0.md**
   - Arquitectura completa de red L2 y L3
   - Tabla comparativa de SFPs
   - Especificaciones técnicas detalladas

2. **42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md**
   - Ubicación PKD de todos los equipos ITS
   - Tabla de integración con validación de distancias
   - Asignación de switches L2 por sub-anillo

3. **REGLAS_DISENO_RED_L2_L3.md** (este documento)
   - Resumen ejecutivo de reglas críticas
   - Guía rápida de validación
   - Tabla comparativa de SFPs

---

## ⚠️ **ADVERTENCIAS CRÍTICAS**

### **🔴 ALTA PRIORIDAD**

1. **La regla de 10 km L2↔L2 NO puede violarse**
   - Es una limitación física del hardware (SFP Moxa)
   - NO es negociable ni ajustable
   - Cualquier diseño que supere 10 km entre equipos L2 FALLARÁ

2. **Validar ANTES de proceder a ingeniería de detalle**
   - Revisar todas las distancias L2↔L2 en el layout actual
   - Identificar cualquier salto >10 km
   - Agregar equipos L2 intermedios donde sea necesario

3. **Coherencia entre documentos**
   - T04: Especificaciones técnicas
   - Layout ITS: Ubicaciones reales
   - Ambos deben estar alineados con estas reglas

---

**Última actualización:** 21 de octubre de 2025 (19:00)  
**Responsable:** Ing. Telecomunicaciones / Arquitecto de Redes  
**Estado:** ✅ Aprobado para diseño de ingeniería de detalle

**FIN DEL DOCUMENTO**

