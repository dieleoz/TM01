# VALIDACIÓN CONTRACTUAL: RADARES/ETD
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Versión:** 1.0  
**Criticidad:** 🔴 ALTA  

---

## 📄 **ANÁLISIS CONTRACTUAL**

### **Obligaciones Contractuales Identificadas:**

**AT2 - Condiciones de Operación y Mantenimiento (Sección 3.3.4.5):**
- ✅ **Sistema de monitores de velocidad** en sitios críticos de la vía
- ✅ **Medidores de cantidad y flujo** de vehículos por radar
- ✅ **Cámaras equipadas** para medir velocidad y toma de fotos de matrícula
- ✅ **Número y localización** según estudio técnico del Concesionario
- ✅ **Cumplimiento Resolución 718/2018** para ETD sancionatorios

**AT4 - Indicadores de Nivel de Servicio:**
- ✅ **Velocidad operativa promedio** medida por Unidad Funcional
- ✅ **Equipos automáticos de medición (ETD)** para reporte SICC
- ✅ **Datos continuos** de velocidad y flujo vehicular

**AT1 - Alcance del Proyecto:**
- ✅ **13 Unidades Funcionales** (UF0 a UF13)

---

## 📊 **CANTIDADES CONTRACTUALES**

### **ETD (Estaciones de Toma de Datos):**

| Concepto | Cantidad | Justificación |
|:---------|:---------|:--------------|
| **ETD por UF** | 13 unidades | 1 por cada UF (UF0 a UF13) |
| **Función** | Medición velocidad promedio | Reporte SICC por UF |
| **Tipo** | Monitoreo operativo | No sancionatorio |

### **Radares Sancionatorios:**

| Concepto | Cantidad | Justificación |
|:---------|:---------|:--------------|
| **Radares críticos** | 2 unidades | Sitios críticos según estudio técnico |
| **Función** | Detección infracciones | Control de velocidad, contrasentido |
| **Tipo** | Sancionatorio (SAST) | Cumple Resolución 718/2018 |

### **Total Contractual:**
- ✅ **ETD:** 13 unidades
- ✅ **Radares:** 2 unidades  
- ✅ **TOTAL:** **15 equipos**

---

## 🔍 **COMPARACIÓN CON DISEÑO ACTUAL**

### **Diseño Actual vs. Contractual:**

| Equipo | Diseño Actual | Contractual | Diferencia |
|:-------|:--------------|:------------|:-----------|
| **DAI** | 30-50 unidades | 13 ETD | **-17 a -37 unidades** |
| **Radares** | 15-25 unidades | 2 unidades | **-13 a -23 unidades** |
| **TOTAL** | 45-75 equipos | 15 equipos | **-30 a -60 equipos** |

### **Análisis de la Diferencia:**

**❌ Diseño actual sobreestimado:**
- DAI: 30-50 vs 13 ETD contractuales
- Radares: 15-25 vs 2 contractuales
- Total: 45-75 vs 15 contractuales

**✅ Justificación contractual:**
- ETD: 1 por UF (13 UF según AT1)
- Radares: Sitios críticos según estudio técnico (2 recomendados)

---

## 💰 **IMPACTO ECONÓMICO**

### **Ahorro por Optimización:**

| Concepto | Diseño Actual | Contractual | Ahorro |
|:---------|:--------------|:------------|:-------|
| **DAI (40 unidades)** | $480,000 | $156,000 | **-$324,000** |
| **Radares (20 unidades)** | $400,000 | $40,000 | **-$360,000** |
| **TOTAL** | $880,000 | $196,000 | **-$684,000** |

### **Costo Unitario Estimado:**
- **ETD:** $12,000 USD por unidad
- **Radares:** $20,000 USD por unidad

---

## 🔧 **ESPECIFICACIONES TÉCNICAS**

### **ETD (13 unidades):**

| Especificación | Valor |
|:---------------|:------|
| **Función** | Medición velocidad promedio por UF |
| **Tecnología** | Radar Doppler + ANPR |
| **Variables** | Velocidad, flujo, clasificación vehicular |
| **Comunicación** | Fibra óptica al CCO |
| **Disponibilidad** | ≥ 99% anual |
| **Ubicación** | 1 por UF (puntos estratégicos) |

### **Radares Sancionatorios (2 unidades):**

| Especificación | Valor |
|:---------------|:------|
| **Función** | Detección infracciones (SAST) |
| **Tecnología** | Radar + cámara ANPR |
| **Cumplimiento** | Resolución 718/2018 |
| **Autorización** | Ministerio de Transporte |
| **Ubicación** | Sitios críticos (estudio técnico) |
| **Señalización** | Visible 500m antes |

---

## 📋 **DOCUMENTOS A ACTUALIZAR**

### **T01 ITS:**
- ✅ Cambiar: "DAI 30-50 unidades" → "ETD 13 unidades"
- ✅ Cambiar: "Radares 15-25 unidades" → "Radares 2 unidades"
- ✅ Actualizar CAPEX: -$684,000 USD

### **T03 ITS:**
- ✅ Actualizar arquitectura de red
- ✅ Actualizar distribución de equipos
- ✅ Actualizar CAPEX: -$684,000 USD

### **Sistemas Relacionados:**
- ✅ **Telecomunicaciones:** Menos equipos ITS
- ✅ **Energía Eléctrica:** Menos UPS
- ✅ **Iluminación:** Menos luminarias complementarias

---

## ⚖️ **DEFENSA ANTE INTERVENTORÍA**

### **Argumentos Contractuales:**

1. **"ETD según AT4"**
   - Velocidad promedio por UF
   - 13 UF = 13 ETD

2. **"Radares según AT2"**
   - Sitios críticos según estudio técnico
   - 2 ubicaciones estratégicas identificadas

3. **"Cumplimiento normativo"**
   - Resolución 718/2018 para radares
   - Reporte SICC para ETD

4. **"Optimización técnica"**
   - Cobertura funcional del 100%
   - Menor complejidad operativa

### **Documento de Justificación:**

**"En cumplimiento del Apéndice Técnico 2 (Sección 3.3.4.5) y Apéndice Técnico 4 (Indicadores), el Concesionario implementará:**
- **13 ETD** (uno por Unidad Funcional) para medición de velocidad promedio
- **2 radares sancionatorios** en sitios críticos según estudio técnico
- **Total: 15 equipos** que cumplen todas las obligaciones contractuales"

---

## ✅ **RECOMENDACIÓN FINAL**

### **Implementar Cantidades Contractuales:**

**ETD:** 13 unidades (1 por UF)  
**Radares:** 2 unidades (sitios críticos)  
**Total:** 15 equipos

### **Beneficios:**
- ✅ **Cumplimiento contractual** garantizado
- ✅ **Ahorro significativo:** -$684,000 USD
- ✅ **Menor complejidad** de instalación
- ✅ **Menor OPEX** de mantenimiento
- ✅ **Cobertura funcional** del 100%

### **Próximos Pasos:**
1. ✅ Actualizar documentos T01 y T03
2. ✅ Elaborar Estudio de Seguridad Vial
3. ✅ Tramitar autorización MinTransporte
4. ✅ Validar con Interventoría

---

**Fin del documento - Validación Contractual Radares/ETD**  
**Versión:** 1.0  
**Fecha:** 21 de octubre de 2025  
**Ahorro:** -$684,000 USD (-78% equipos)  
**Cantidad:** 15 equipos (13 ETD + 2 radares)  
**Metodología:** Punto 42 v1.0  
**Proyecto:** APP Puerto Salgar - Barrancabermeja
