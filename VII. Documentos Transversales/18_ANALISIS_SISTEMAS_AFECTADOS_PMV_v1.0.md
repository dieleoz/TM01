# ANÁLISIS DE SISTEMAS AFECTADOS POR CAMBIO DE PMV (25→28)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Versión:** 1.0  
**Criticidad:** 🔴 ALTA  

---

## 🔍 **SISTEMAS IDENTIFICADOS COMO AFECTADOS**

### **1. SISTEMA DE TELECOMUNICACIONES** 🔴 **CRÍTICO**

**Impacto:** Los PMV requieren conexión de fibra óptica y puertos de switch

**Análisis actual:**
- **Equipos ITS conectados:** "100+ equipos distribuidos (CCTV, PMV, WIM, SOS, Meteo, Radares)"
- **Switches totales:** 48 (4 core + 5 agregación + 37 acceso campo + 2 peaje)
- **Puertos por switch:** 24-48 puertos típicos

**Cambio requerido:**
- **PMV adicionales:** +3 PMV
- **Puertos adicionales:** +3 puertos (1 por PMV)
- **Derivaciones FO:** +3 derivaciones de fibra óptica

**Impacto en costos:**
- Puertos adicionales: **Mínimo** (switches tienen capacidad)
- Derivaciones FO: **~$3,000 USD** (3 × $1,000)
- **Impacto total:** **+$3,000 USD** (0.05% del CAPEX Telecom)

---

### **2. SISTEMA DE ENERGÍA ELÉCTRICA** 🔴 **CRÍTICO**

**Impacto:** Cada PMV requiere alimentación eléctrica (~3kW por PMV)

**Análisis actual:**
- **Equipos ITS alimentados:** "100+ Equipos ITS (CCTV, PMV, SOS, WIM, Meteo)"
- **Potencia total instalada:** ~650 kW
- **Transformadores:** Dimensionados para carga actual

**Cambio requerido:**
- **PMV adicionales:** +3 PMV
- **Potencia adicional:** +9 kW (3 × 3kW)
- **UPS adicionales:** +3 UPS (1 por PMV)

**Impacto en costos:**
- Potencia adicional: **Mínimo** (650 kW → 659 kW, +1.4%)
- UPS adicionales: **~$15,000 USD** (3 × $5,000)
- **Impacto total:** **+$15,000 USD** (0.3% del CAPEX Energía)

---

### **3. SISTEMA DE ILUMINACIÓN** 🟡 **MODERADO**

**Impacto:** PMV pueden requerir iluminación complementaria nocturna

**Análisis actual:**
- **Luminarias totales:** 410 luminarias LED
- **Cobertura:** Estaciones de peaje, áreas de servicio, intersecciones

**Cambio requerido:**
- **PMV adicionales:** +3 PMV
- **Iluminación complementaria:** +3 luminarias (1 por PMV)

**Impacto en costos:**
- Luminarias adicionales: **~$6,000 USD** (3 × $2,000)
- Instalación: **~$1,500 USD** (3 × $500)
- **Impacto total:** **+$7,500 USD** (0.2% del CAPEX Iluminación)

---

### **4. SISTEMA DE SEÑALIZACIÓN VIAL** 🟡 **MODERADO**

**Impacto:** PMV deben coordinarse con señalización fija existente

**Análisis actual:**
- **Señales verticales:** Dimensionadas para corredor
- **Señales horizontales:** Pintura termoplástica

**Cambio requerido:**
- **PMV adicionales:** +3 PMV
- **Coordinación:** Revisión de ubicaciones para evitar conflictos

**Impacto en costos:**
- **Mínimo** (solo coordinación de diseño)
- **Impacto total:** **+$0 USD** (solo tiempo de diseño)

---

## 📊 **RESUMEN DE IMPACTO**

| Sistema | Impacto | Costo Adicional | % del CAPEX Sistema |
|:--------|:--------|:----------------|:-------------------|
| **Telecomunicaciones** | 🔴 Crítico | +$3,000 USD | 0.05% |
| **Energía Eléctrica** | 🔴 Crítico | +$15,000 USD | 0.3% |
| **Iluminación** | 🟡 Moderado | +$7,500 USD | 0.2% |
| **Señalización Vial** | 🟡 Moderado | +$0 USD | 0% |
| **TOTAL** | | **+$25,500 USD** | **0.04%** |

---

## ✅ **SISTEMAS NO AFECTADOS**

### **Sistemas Independientes:**
- ✅ **CCO:** No cambia (solo recibe más datos)
- ✅ **Peajes:** No cambia (cantidad fija: 2)
- ✅ **WIM:** No cambia (cantidad fija: 1 estación)
- ✅ **Áreas de Servicio:** No cambia (cantidad fija: 2)
- ✅ **Emergencias:** No cambia (SOS independientes)
- ✅ **Gestión:** No cambia (administrativo)

### **Sistemas con Capacidad Suficiente:**
- ✅ **CCTV:** Switches tienen puertos suficientes
- ✅ **Meteorológicas:** Cantidad independiente
- ✅ **SOS:** Cantidad independiente

---

## 🔧 **AJUSTES REQUERIDOS**

### **1. Telecomunicaciones (T03)**
**Cambios necesarios:**
- ✅ Agregar 3 derivaciones FO adicionales
- ✅ Confirmar capacidad de switches (ya tienen puertos suficientes)
- ✅ Actualizar diagrama de red

**Costo:** +$3,000 USD

### **2. Energía Eléctrica (T03)**
**Cambios necesarios:**
- ✅ Agregar 3 UPS adicionales (1 por PMV)
- ✅ Confirmar capacidad de transformadores (ya tienen margen)
- ✅ Actualizar cálculo de carga total

**Costo:** +$15,000 USD

### **3. Iluminación (T03)**
**Cambios necesarios:**
- ✅ Agregar 3 luminarias complementarias
- ✅ Actualizar cálculo de luminarias totales
- ✅ Coordinar ubicaciones con PMV

**Costo:** +$7,500 USD

---

## 💰 **IMPACTO EN PRESUPUESTO TOTAL**

### **CAPEX Adicional por Sistema:**

| Sistema | CAPEX Actual | CAPEX Nuevo | Cambio |
|:--------|:-------------|:------------|:-------|
| **Telecomunicaciones** | $6,109,000 | $6,112,000 | +$3,000 |
| **Energía Eléctrica** | $4,832,500 | $4,847,500 | +$15,000 |
| **Iluminación** | $3,500,000 | $3,507,500 | +$7,500 |
| **TOTAL ADICIONAL** | | | **+$25,500** |

### **Presupuesto Total Actualizado:**
- **Presupuesto actual:** $57,593,046 USD
- **Ajuste PMV:** +$25,500 USD
- **Nuevo total:** **$57,618,546 USD**
- **Incremento:** +0.04% del presupuesto total

---

## 🎯 **RECOMENDACIONES**

### **1. Prioridad Alta (Críticos)**
- ✅ **Telecomunicaciones:** Actualizar derivaciones FO
- ✅ **Energía Eléctrica:** Agregar UPS adicionales

### **2. Prioridad Media (Moderados)**
- ✅ **Iluminación:** Agregar luminarias complementarias
- ✅ **Señalización:** Coordinar ubicaciones

### **3. No Requiere Cambios**
- ✅ **CCO, Peajes, WIM, Áreas de Servicio, Emergencias, Gestión**

---

## 📋 **PRÓXIMOS PASOS**

1. ✅ **Actualizar T03 Telecomunicaciones** con +3 derivaciones FO
2. ✅ **Actualizar T03 Energía Eléctrica** con +3 UPS
3. ✅ **Actualizar T03 Iluminación** con +3 luminarias
4. ✅ **Actualizar Presupuesto Final** con +$25,500 USD
5. ✅ **Validar con Interventoría** los ajustes propuestos

---

## ✅ **CONCLUSIONES**

### **Impacto Mínimo:**
- ✅ Solo 3 sistemas afectados de 13 sistemas totales
- ✅ Incremento de solo 0.04% del presupuesto total
- ✅ Capacidad de infraestructura existente suficiente

### **Cambios Justificados:**
- ✅ **Telecomunicaciones:** Derivaciones FO necesarias
- ✅ **Energía:** UPS críticos para PMV
- ✅ **Iluminación:** Complementaria para visibilidad nocturna

### **Sistemas Robustos:**
- ✅ La mayoría de sistemas no se ven afectados
- ✅ Infraestructura base tiene capacidad suficiente
- ✅ Cambios son incrementales y manejables

---

**Fin del documento - Análisis Sistemas Afectados PMV**  
**Versión:** 1.0  
**Fecha:** 21 de octubre de 2025  
**Impacto total:** +$25,500 USD (+0.04%)  
**Metodología:** Punto 42 v1.0  
**Proyecto:** APP Puerto Salgar - Barrancabermeja
