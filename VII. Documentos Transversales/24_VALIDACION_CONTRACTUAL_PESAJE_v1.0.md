# VALIDACIÓN CONTRACTUAL: ESTACIONES DE PESAJE
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 20 de enero de 2026  
**Versión:** 2.0 (RECONCILIACIÓN AUDIT .42)  
**Criticidad:** 🔴 ALTA  

---

## 📄 **ANÁLISIS CONTRACTUAL**

### **Obligaciones Contractuales Identificadas:**

**AT1 - Alcance del Proyecto (Adenda 4, páginas 46-47):**
- ✅ **1 estación de pesaje** en PKR 3+875 RN 4513 (Alineado con Layout/CCO)
- ✅ **Funcionamiento bidireccional** (2 WIM + 2 Estáticas)
- ✅ **Adecuar, operar y mantener** la estación existente
- ✅ **Especificaciones arquitectónicas** y operativas mínimas

**AT2 - Condiciones de Operación y Mantenimiento (Sección 3.3.9):**
- ✅ **Control de sobrecargas** conforme normas técnicas
- ✅ **Integración con CCO** y sistema ITS
- ✅ **Calibración anual** y registro de datos
- ✅ **Procedimientos aprobados** por ANI

---

## ⚙️ **CONFIGURACIÓN TÉCNICA REQUERIDA**

### **Interpretación Técnica:**

**"Funcione para ambos sentidos"** implica capacidad de control de peso en los dos sentidos de circulación.

**Configuración práctica según normas INVÍAS/NTC 5371:**

| Componente | Cantidad | Función | Ubicación |
|:-----------|:---------|:---------|:----------|
| **Pesaje Dinámico (WIM)** | 2 plataformas | Detección preliminar y clasificación | 1 por sentido |
| **Pesaje Estático** | 2 plataformas | Verificación y sanción | 1 por sentido |
| **TOTAL** | **4 plataformas** | **1 estación bidireccional** | PR4+0100 RN 4513 |

### **Especificaciones Técnicas:**

| Parámetro | Valor |
|:---------|:------|
| **Capacidad máxima** | ≥ 100 toneladas |
| **Error máximo (WIM)** | Clase 5-10 OIML R134 (Res. 100/2024) |
| **Error máximo (Estática)** | Clase III NTC 2031 |
| **Integración** | CCO y sistema ITS (Modbus/JSON) |
| **Calibración** | Anual obligatoria (ONAC) |
| **Normas principales** | **Resolución 100/2024**, NTC 2031, OIML R134 |

---

## 📊 **COMPARACIÓN CON DISEÑO ACTUAL**

### **Diseño Actual vs. Contractual:**

| Concepto | Diseño Inicial | Reconciliado (Audit .42) | Diferencia |
|:---------|:--------------|:------------|:-----------|
| **Configuración** | 8-10 Estaciones | 1 Estación (4 Plat) | **-7 Estaciones** |
| **CAPEX WIM** | $1,600,000 | $551,425 | **-$1,048,575** |

### **Análisis de la Diferencia:**

**❌ Diseño actual sobreestimado:**
- WIM: 5-10 estaciones vs 2 plataformas contractuales
- WIM (costo): 8 estaciones vs 2 plataformas contractuales
- Total: 5-10 vs 2 plataformas

**✅ Justificación contractual:**
- 1 estación de pesaje bidireccional
- 2 plataformas WIM (1 por sentido)
- 2 plataformas estáticas (1 por sentido)

---

## 💰 **IMPACTO ECONÓMICO**

### **Ahorro por Optimización:**

| Concepto | Diseño Inicial | Reconciliado | Ahorro |
|:---------|:--------------|:------------|:-------|
| **Sistema Pesaje** | $1,600,000 | $551,425 | **-$1,048,575** |
| **TOTAL** | $1,600,000 | $551,425 | **-$1,048,575** |

### **Costo Unitario Estimado:**
- **WIM:** $150,000 USD por plataforma
- **Estática:** $100,000 USD por plataforma
- **Infraestructura:** $50,000 USD por estación

---

## 🔧 **ESPECIFICACIONES TÉCNICAS**

### **WIM (2 plataformas):**

| Especificación | Valor |
|:---------------|:------|
| **Función** | Detección preliminar de sobrepeso |
| **Tecnología** | Sensores piezoeléctricos |
| **Precisión** | ±5% (preliminar) |
| **Velocidad** | Hasta 80 km/h |
| **Integración** | Sistema ITS y CCO |
| **Ubicación** | PR4+0100 RN 4513 (ambos sentidos) |

### **Pesaje Estático (2 plataformas):**

| Especificación | Valor |
|:---------------|:------|
| **Función** | Verificación y sanción de sobrepeso |
| **Tecnología** | Báscula de precisión |
| **Precisión** | ±1% (final) |
| **Capacidad** | ≥ 100 toneladas |
| **Calibración** | Anual obligatoria |
| **Ubicación** | PR4+0100 RN 4513 (ambos sentidos) |

---

## 📋 **DOCUMENTOS A ACTUALIZAR**

### **T01 ITS:**
- ✅ Cambiar: "WIM 5-10 estaciones" → "WIM 2 plataformas"
- ✅ Cambiar: "WIM 8 estaciones" → "WIM 2 plataformas"
- ✅ Actualizar CAPEX: -$900,000 USD

### **T03 ITS:**
- ✅ Actualizar arquitectura de red
- ✅ Actualizar distribución de equipos
- ✅ Actualizar CAPEX: -$900,000 USD

### **Sistemas Relacionados:**
- ✅ **Telecomunicaciones:** Menos equipos ITS
- ✅ **Energía Eléctrica:** Menos UPS
- ✅ **Iluminación:** Menos luminarias complementarias

---

## ⚖️ **DEFENSA ANTE INTERVENTORÍA**

### **Argumentos Contractuales:**

1. **"1 estación según AT1"**
   - PR4+0100 RN 4513
   - Funcionamiento bidireccional

2. **"Configuración técnica"**
   - 2 WIM + 2 estáticas = 4 plataformas
   - Cumple funcionamiento bidireccional

3. **"Cumplimiento normativo"**
   - INVÍAS/NTC 5371
   - Integración con CCO

4. **"Optimización técnica"**
   - Cobertura funcional del 100%
   - Menor complejidad operativa

### **Documento de Justificación:**

**"En cumplimiento del Apéndice Técnico 1 (Adenda 4) y Apéndice Técnico 2 (Sección 3.3.9), el Concesionario implementará:**
- **1 estación de pesaje bidireccional** en PR4+0100 RN 4513
- **2 plataformas WIM** (1 por sentido) para detección preliminar
- **2 plataformas estáticas** (1 por sentido) para verificación y sanción
- **Total: 4 plataformas** que cumplen todas las obligaciones contractuales"

---

## ✅ **RECOMENDACIÓN FINAL**

### **Implementar Cantidades Contractuales:**

**WIM:** 2 plataformas (1 por sentido)  
**Estáticas:** 2 plataformas (1 por sentido)  
**Total:** 4 plataformas (1 estación bidireccional)

### **Beneficios:**
- ✅ **Cumplimiento contractual** garantizado
- ✅ **Ahorro significativo:** -$1,050,000 USD
- ✅ **Menor complejidad** de instalación
- ✅ **Menor OPEX** de mantenimiento
- ✅ **Cobertura funcional** del 100%

### **Próximos Pasos:**
1. ✅ Actualizar documentos T01 y T03
2. ✅ Elaborar diseño técnico detallado
3. ✅ Coordinar con Interventoría
4. ✅ Validar integración con CCO

---

**Fin del documento - Validación Contractual Estaciones de Pesaje**  
**Versión:** 1.0  
**Fecha:** 21 de octubre de 2025  
**Ahorro:** -$1,050,000 USD (-75% equipos)  
**Cantidad:** 4 plataformas (1 estación bidireccional)  
**Metodología:** Punto 42 v1.0  
**Proyecto:** APP Puerto Salgar - Barrancabermeja
