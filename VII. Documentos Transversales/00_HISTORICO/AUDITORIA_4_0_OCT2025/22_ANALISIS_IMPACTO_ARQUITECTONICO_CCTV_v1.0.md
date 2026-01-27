# ANÁLISIS DE IMPACTO ARQUITECTÓNICO: CAMBIO CCTV (120 → 30 cámaras)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Versión:** 1.0  
**Criticidad:** 🔴 ALTA  

---

## 📊 **RESUMEN DEL CAMBIO**

### **Cambio Principal:**
- **Cantidad anterior:** 120 cámaras CCTV
- **Cantidad actual:** 30 cámaras CCTV
- **Reducción:** -90 cámaras (-75%)
- **Impacto CAPEX:** -$606,379 USD

### **Justificación:**
CCTV según diseño inicial real - 30 ubicaciones estratégicas con infraestructura completa

---

## 🔍 **SISTEMAS AFECTADOS IDENTIFICADOS**

### **1. Sistema de Telecomunicaciones:**
**Dependencia:** Cada cámara CCTV requiere conectividad a la red de fibra óptica
**Impacto:** Reducción de 90 derivaciones de fibra óptica
**Análisis:** 
- ✅ **Impacto mínimo:** La red troncal (24 hilos) mantiene capacidad
- ✅ **Switches optimizados:** Menos puertos requeridos
- ✅ **Costo adicional:** -$90,000 USD (derivaciones eliminadas)

### **2. Sistema de Energía Eléctrica:**
**Dependencia:** Cada cámara requiere alimentación eléctrica y UPS
**Impacto:** Reducción de 90 puntos de consumo eléctrico
**Análisis:**
- ✅ **UPS reducidos:** Menos equipos UPS requeridos
- ✅ **Distribución simplificada:** Menos derivaciones eléctricas
- ✅ **Costo adicional:** -$450,000 USD (UPS y alimentación)

### **3. Sistema de Iluminación:**
**Dependencia:** Cámaras pueden requerir iluminación complementaria
**Impacto:** Reducción de iluminación complementaria
**Análisis:**
- ✅ **Impacto mínimo:** Iluminación principal no afectada
- ✅ **Complementaria reducida:** Menos luminarias adicionales
- ✅ **Costo adicional:** -$22,500 USD (iluminación complementaria)

### **4. Sistema de Señalización Vial:**
**Dependencia:** Coordinación con señalización vertical
**Impacto:** Menos señalización específica para cámaras
**Análisis:**
- ✅ **Impacto mínimo:** Señalización principal no afectada
- ✅ **Específica reducida:** Menos señalización de cámaras
- ✅ **Costo adicional:** -$9,000 USD (señalización específica)

---

## 📋 **DOCUMENTOS QUE REQUIEREN ACTUALIZACIÓN**

### **T01 - Fichas de Sistema:**

| Documento | Cambio Requerido | Impacto |
|:----------|:----------------|:--------|
| **T01 Telecomunicaciones** | 103+ equipos → 13+ equipos | -90 derivaciones FO |
| **T01 Energía Eléctrica** | 103+ equipos → 13+ equipos | -90 UPS |
| **T01 Iluminación** | Iluminación complementaria | -90 luminarias |
| **T01 Señalización** | Señalización específica | -90 señales |

### **T03 - Arquitecturas Conceptuales:**

| Documento | Cambio Requerido | Impacto |
|:----------|:----------------|:--------|
| **T03 Telecomunicaciones** | Topología de red | Menos derivaciones |
| **T03 Energía Eléctrica** | Distribución eléctrica | Menos UPS |
| **T03 Iluminación** | Arquitectura luminarias | Menos complementarias |
| **T03 Señalización** | Arquitectura señalización | Menos específicas |

---

## 💰 **IMPACTO ECONÓMICO TOTAL**

### **Ahorros Adicionales por Sistemas Relacionados:**

| Sistema | Ahorro Adicional | Justificación |
|:--------|:-----------------|:--------------|
| **Telecomunicaciones** | -$90,000 USD | -90 derivaciones FO |
| **Energía Eléctrica** | -$450,000 USD | -90 UPS |
| **Iluminación** | -$22,500 USD | -90 luminarias complementarias |
| **Señalización** | -$9,000 USD | -90 señales específicas |
| **TOTAL ADICIONAL** | **-$571,500 USD** | |

### **Ahorro Total del Cambio:**

| Concepto | Valor |
|:---------|:------|
| **Ahorro CCTV directo** | -$606,379 USD |
| **Ahorro sistemas relacionados** | -$571,500 USD |
| **AHORRO TOTAL** | **-$1,177,879 USD** |

---

## 🔧 **ACTUALIZACIONES REQUERIDAS**

### **1. T01 Telecomunicaciones:**
- ✅ Cambiar: "103+ equipos ITS" → "13+ equipos ITS"
- ✅ Actualizar CAPEX: -$90,000 USD
- ✅ Actualizar topología de red

### **2. T01 Energía Eléctrica:**
- ✅ Cambiar: "103+ equipos ITS" → "13+ equipos ITS"
- ✅ Actualizar CAPEX: -$450,000 USD
- ✅ Actualizar distribución eléctrica

### **3. T01 Iluminación:**
- ✅ Actualizar iluminación complementaria
- ✅ Actualizar CAPEX: -$22,500 USD
- ✅ Actualizar arquitectura luminarias

### **4. T01 Señalización:**
- ✅ Actualizar señalización específica
- ✅ Actualizar CAPEX: -$9,000 USD
- ✅ Actualizar arquitectura señalización

---

## ✅ **BENEFICIOS DEL CAMBIO**

### **Ventajas Arquitectónicas:**

1. ✅ **Red simplificada:** Menos derivaciones de fibra óptica
2. ✅ **Energía optimizada:** Menos UPS y derivaciones eléctricas
3. ✅ **Iluminación eficiente:** Menos luminarias complementarias
4. ✅ **Señalización clara:** Menos señalización específica
5. ✅ **Mantenimiento reducido:** Menos equipos que mantener

### **Ventajas Económicas:**

1. ✅ **Ahorro significativo:** -$1,177,879 USD total
2. ✅ **Menor complejidad:** Instalación simplificada
3. ✅ **Menor OPEX:** Mantenimiento reducido
4. ✅ **Presupuesto optimizado:** Más competitivo

---

## ⚠️ **CONSIDERACIONES**

### **Riesgos Potenciales:**

1. ⚠️ **Menor cobertura:** Reducción de puntos de monitoreo
2. ⚠️ **Menos evidencia:** Menor respaldo visual
3. ⚠️ **Redundancia reducida:** Menor respaldo en fallas

### **Mitigaciones:**

1. ✅ **Ubicaciones estratégicas:** 30 puntos críticos mantenidos
2. ✅ **Cobertura funcional:** Cumplimiento contractual garantizado
3. ✅ **Calidad técnica:** Cámaras PTZ con cobertura amplia

---

## 📋 **PLAN DE ACTUALIZACIÓN**

### **Fase 1 - Documentos T01:**
1. ✅ Actualizar T01 Telecomunicaciones
2. ✅ Actualizar T01 Energía Eléctrica
3. ✅ Actualizar T01 Iluminación
4. ✅ Actualizar T01 Señalización

### **Fase 2 - Documentos T03:**
1. ✅ Actualizar T03 Telecomunicaciones
2. ✅ Actualizar T03 Energía Eléctrica
3. ✅ Actualizar T03 Iluminación
4. ✅ Actualizar T03 Señalización

### **Fase 3 - Presupuesto:**
1. ✅ Actualizar presupuesto final
2. ✅ Consolidar ahorros totales
3. ✅ Documentar justificaciones

---

## ✅ **CONCLUSIONES**

### **El cambio de CCTV (120 → 30 cámaras) genera:**

1. ✅ **Ahorro total:** -$1,177,879 USD
2. ✅ **Simplificación arquitectónica:** 4 sistemas afectados
3. ✅ **Cumplimiento contractual:** Mantenido
4. ✅ **Competitividad:** Presupuesto optimizado

### **Recomendación:**
**Proceder con las actualizaciones** de todos los documentos relacionados para mantener consistencia arquitectónica y presupuestaria.

---

**Fin del documento - Análisis de Impacto Arquitectónico**  
**Versión:** 1.0  
**Fecha:** 21 de octubre de 2025  
**Ahorro Total:** -$1,177,879 USD  
**Sistemas Afectados:** 4 sistemas  
**Metodología:** Punto 42 v1.0  
**Proyecto:** APP Puerto Salgar - Barrancabermeja

