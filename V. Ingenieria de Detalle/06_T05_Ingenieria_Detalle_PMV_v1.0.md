# T05 - INGENIERÍA DE DETALLE - PMV
## Paneles de Mensaje Variable

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** PMV - Paneles de Mensaje Variable  
**Fecha:** 21 de Enero 2026  
**Versión:** 1.5 MVP (Alineado Normativa 2024)  
**Basado en:** T04 PMV v1.5 (Manual 2024) + Layout v3.0  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - 28 PMV | Ing. ITS |
| 1.1 | 22/10/2025 | Revisión con información oficial | Ing. ITS |
| 2.0 | 22/10/2025 | **Optimización Manual 2024:** 14 unidades (400mm). Estructura CCP-14. Grid-Powered. | Ing. ITS |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema PMV:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad total** | **14 paneles** | Puntos de Decisión Críticos |
| **Separación** | Estratégica | Manual 2024 (Decision Support) |
| **Peajes** | 4 PMV (2 por peaje × 2 peajes) | Obligatorio AT2 |
| **Estratégicos** | 10 PMV en corredor | Variantes e Intersecciones |
| **CAPEX estimado** | **USD $1,190,000** ($85,000/panel instalado - Full Matrix) | Budget Optimizado |
| **OPEX Anual** | **$35,700 USD** | ~3% del CAPEX |
| **OPEX 20 años** | **$714,000 USD** | Mantenimiento + Repuestos |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. PANEL PMV FULL MATRIX** | **14 und** | **$45,000** | **$630,000** | **52.9%** |
| Matriz 2024 (Carácter 400mm), L3, Color | 14 und | $45,000 | $630,000 | - |
| **2. ESTRUCTURA PÓRTICO (CCP-14)**| **14 und** | **$30,000** | **$420,000** | **35.3%** |
| Diseño sismo-resistente + Cimentación | 14 und | $30,000 | $420,000 | - |
| **3. ACOMETIDA ELÉCTRICA (RETIE)** | **14 und** | **$8,000** | **$112,000** | **9.4%** |
| Red + UPS Online + Protecciones | 14 und | $8,000 | $112,000 | - |
| **4. PUESTA A TIERRA (SPT)** | **14 und** | **$2,000** | **$28,000** | **2.4%** |
| Varillas + Pararrayos (Protección Panel) | 14 und | $2,000 | $28,000 | - |
| **TOTAL CAPEX** | **14 und** | **$85,000** | **$1,190,000** | **100%** |

**Nota:** Se elimina solución solar por alto consumo del panel de 400mm (Manual 2024).

---

## 📐 **ESPECIFICACIONES TÉCNICAS DETALLADAS**

### **1. PANEL LED MATRIZ**

| Parámetro | Especificación Mínima | Cumplimiento |
|:----------|:---------------------|:------------|
| **Dimensiones Totales** | 5.120 mm (L) × 1.440 mm (A) (Área Texto) | Modelo P20 1G |
| **Dimensiones Gráfica** | 1.280 mm × 1.280 mm | RGB |
| **Tecnología** | LED SMD Full Matrix RGB | - |
| **Pitch** | 20 mm | - |
| **Resolución** | 256×72 px (Texto) / 64x64 px (Gráfico) | - |
| **Líneas/Caracteres** | 3 líneas de 12 caracteres (H: 450 mm) | - |
| **Colores** | Ámbar (Texto) + RGB (16.7M Grafico) | - |
| **Brillo** | Luminosidad L3 (Según EN 12966) | - |
| **Ángulo Visión** | Clase B6 | - |
| **Peso** | 810 KG | Requiere estructura reforzada |
| **Consumo** | Max 1.7 KW / Promedio 720W | - |
| **Protección** | IP65, EN 12966 | - |
| **Temp. Operación** | -50°C a +65°C | - |
| **Comunicación** | Ethernet IP, ModBus RS485/TCP, NTCIP 1203 | - |
| **Alimentación** | 110-220 VAC 60Hz | - |

**Marcas aceptadas:** Daktronics, SWARCO, Messagemaker, Ver-Mac, Econolite

---

### **2. CONTROLADOR PMV**

| Parámetro | Especificación |
|:----------|:--------------|
| **Protocolo** | NTCIP 1203 v3 (estándar ITS) |
| **Interfaz red** | Ethernet 10/100 Mbps |
| **Gestión remota** | Web + SNMP + API REST |
| **Mensajes almacenables** | ≥256 mensajes preprogramados |
| **Memoria** | ≥4 GB flash |
| **Edición en tiempo real** | ✅ Desde CCO |
| **Fuentes** | Mínimo 5 fuentes de texto |
| **Gráficos** | Soporte de iconos/símbolos |
| **Multilingüe** | Español + pictogramas |
| **Alimentación** | 12-24 VDC |
| **Protección** | Gabinete IP65 |

---

## 🗺️ **UBICACIONES Y DISTRIBUCIÓN**

### **PMV por Sentido de Circulación:**

| Sentido | Cantidad | Tipo Estructura | Observaciones |
|:--------|:---------|:----------------|:--------------|
| **Izquierda** | 14 | 7 bidireccionales + 7 unidireccionales | Calzada Izquierda |
| **Derecha** | 14 | 7 bidireccionales + 7 unidireccionales | Calzada Derecha |
| **TOTAL** | **28** | 14 pórticos + 14 postes | - |



---

### **APU-PMV-001: PMV Bidireccional (Pórtico)**

| Componente | Total (USD) |
|:-----------|:------------|
| **Panel PMV P20** | $45,000.00 |
| **Estructura Pórtico** | $40,000.00 |
| **Sistema de Energía y Enlace** | $15,000.00 |
| **TOTAL APU-PMV-001 (Pórtico)** | **$100,000.00/panel** |

**Para 7 PMV bidireccionales:** 7 × $100,000 = **$700,000 USD**

---

### **APU-PMV-002: PMV Unidireccional (Poste)**

| Componente | Total (USD) |
|:-----------|:------------|
| **Panel PMV P20** | $35,000.00 |
| **Estructura Poste** | $15,000.00 |
| **Sistema de Energía y Enlace** | $10,000.00 |
| **TOTAL APU-PMV-002 (Poste)** | **$60,000.00/panel** |

**Para 7 PMV unidireccionales:** 7 × $60,000 = **$420,000 USD**

---

### **Gestión Centralizada e Integración**
- **Sistema de Gestión e Integración:** **$70,000 USD**
- **TOTAL SISTEMA PMV** | **-** | **-** | **$1,190,000.00** |

---

## 📋 **PRESUPUESTO WBS CONSOLIDADO**

| Componente | Cantidad | Costo Unit. | Total |
|:-----------|:---------|:------------|:------|
| PMV P20 1G 64x64 (Suministro) | 28 | $26,180.00 | $733,040.00 |
| Factor Imprevistos + AIU (Panel) | 28 | $17,174.08 | $480,874.24 |
| Estructura Pórtico (Soporte PMV) | 28 | $72,167.24 | $2,020,682.72 |
| Kit Solar Off-Grid | 28 | $18,162.00 | $508,536.00 |
| Factor Imprevistos + AIU (Solar) | 28 | $11,914.62 | $333,609.36 |
| Sistema Puesta a Tierra (SPT) | 28 | $2,384.00 | $66,752.00 |
| Factor Imprevistos + AIU (SPT) | 28 | $1,563.94 | $43,790.32 |
| **TOTAL SISTEMA PMV** | **-** | **-** | **$4,187,284.64** |



---

## 📐 **ESPECIFICACIONES TÉCNICAS**

### **1. PANEL LED**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tipo** | Full Matrix LED (RGB 2024) |
| **Dimensiones activas** | 4.5 × 1.8 metros (Aprox) |
| **Píxeles** | Matriz completa (Mín 64x32 para 400mm) |
| **Brillo** | L3 (≥8,500 cd/m² típico en sol directo) |
| **Colores** | RGB Full Color |
| **Caracteres** | 3 líneas |
| **Altura caracteres** | **400 mm** (Mínimo Manual 2024) |
| **Legibilidad** | ≥410 metros |
| **Ángulo visión** | Clase B6 / B7 |
| **Consumo** | Max 2.5 KW (Pico) / Promedio 900W |
| **Vida útil LED** | ≥100,000 horas |
| **Protocolo** | NTCIP 1202 / 1203 |
| **Protección** | IP65 / IK08 |
| **Sismo** | **CCP-14** |

---

### **2. MENSAJES TIPO**

| Tipo | Ejemplo | Aplicación |
|:-----|:--------|:-----------|
| **Advertencia** | "ATENCIÓN / ACCIDENTE / PK 85+370" | Eventos en vía |
| **Información** | "VELOCIDAD / MÁXIMA / 80 KM/H" | Regulación tráfico |
| **Clima** | "LLUVIA / REDUZCA / VELOCIDAD" | Condiciones meteorológicas |
| **Desvíos** | "DESVÍO / PRÓXIMA / SALIDA" | Rutas alternas |
| **Peajes** | "PEAJE / 15 KM / PREPÁRESE" | Antes de peaje |
| **Genéricos** | "BUEN VIAJE / CONDUZCA / SEGURO" | Información general |

**Total mensajes preprogramables:** ≥256 en biblioteca

---

### **Distribución de Paneles (14 unidades):**

| # | PKR | Ruta | UF | Ubicación | Tipo |
|:--|:----|:-----|:---|:----------|:-----|
| 1 | 9+200 | 4510 | 1 | Peaje Zambito | Pórtico |
| 2 | 11+000 | 4510 | 1 | Peaje Zambito | Poste |
| 3 | 40+000 | 4510 | 2 | Estratégico | Pórtico |
| 4 | 70+000 | 4510 | 3 | Estratégico | Poste |
| 5 | 80+200 | 4510 | 4 | Peaje Aguas Negras | Pórtico |
| 6 | 82+000 | 4510 | 4 | Peaje Aguas Negras | Poste |
| 7 | 110+000 | 4510 | 5 | Estratégico | Pórtico |
| 8 | 10+000 | 4511 | 6 | Estratégico | Poste |
| 9 | 40+000 | 4511 | 7 | Estratégico | Pórtico |
| 10 | 70+000 | 4511 | 8 | Estratégico | Poste |
| 11 | 100+000 | 4511 | 9 | Estratégico | Pórtico |
| 12 | 130+000 | 4511 | 10 | Centro de Control | Poste |
| 13 | 146+580 | 4511 | 12 | Final Ruta | Pórtico |
| 14 | 5+900 | 4513 | 11 | Conexión CCO | Poste |

---

## 📊 **INTEGRACIÓN CON RADAR/ETD**

### **PMV con ETD Integrada (2 unidades):**

| PKR | Ruta | Equipo | Observación |
|:----|:-----|:-------|:------------|
| 106+580 | 4511 | PMV Izquierda + ETD | Pórtico compartido |
| 126+580 | 4511 | PMV Izquierda + ETD | Pórtico compartido |

**Ventaja:** Ahorro en estructura (1 pórtico para 2 sistemas)  
**Costo incremental ETD:** +$8,000 USD por pórtico (reforzamiento)

---

## 🔧 **INSTALACIÓN Y MONTAJE**

### **Proceso Tipo A (Pórtico Bidireccional):**

**Duración:** 5 días/pórtico

| Día | Actividad |
|:----|:----------|
| **1-2** | Excavación + fundición cimentación |
| **3** | Fraguado concreto (espera) |
| **4** | Montaje estructura pórtico (grúa) |
| **5** | Montaje panel LED + conexiones |
| **6** | Pruebas y comisionamiento |

**Rendimiento:** 1 pórtico/semana con 1 cuadrilla  
**Cuadrillas:** 1 cuadrilla (12 personas)  
**Duración total:** 14 semanas para pórticos + 10 semanas para postes = **24 semanas (6 meses)**

---

## 📋 **PRUEBAS Y CERTIFICACIÓN**

### **Protocolo de Pruebas PMV:**

| # | Prueba | Criterio de Aceptación |
|:--|:-------|:-----------------------|
| 1 | **Inspección estructura** | Vertical, estable, pintura completa |
| 2 | **Inspección panel** | Sin píxeles muertos (<0.5%) |
| 3 | **Brillo diurno** | ≥8,000 cd/m² (medido con luxómetro) |
| 4 | **Legibilidad** | Legible a 200m (prueba campo) |
| 5 | **Conexión red** | Ping desde CCO <20 ms |
| 6 | **Protocolo NTCIP** | Comandos NTCIP 1203 funcionales |
| 7 | **Mensajes** | Desplegar 10 mensajes tipo |
| 8 | **Respuesta remota** | Cambio mensaje desde CCO <5s |
| 9 | **Puesta a tierra** | <10Ω |
| 10 | **As-Built** | Coordenadas GPS + foto |

---

## 📝 **MENSAJES PREPROGRAMADOS (256 mínimo)**

### **Categorías de Mensajes:**

| Categoría | Cantidad | Ejemplos |
|:----------|:---------|:---------|
| **Emergencias** | 50 | Accidentes, cierres vía, ambulancias |
| **Meteorológicas** | 30 | Lluvia, niebla, viento, deslizamientos |
| **Regulatorias** | 40 | Velocidades, desvíos, restricciones |
| **Informativas** | 60 | Distancias, peajes, áreas servicio |
| **Eventos** | 40 | Obras, mantenimientos, eventos especiales |
| **Genéricas** | 36 | Saludos, consejos, buen viaje |

**Idioma:** Español + pictogramas internacionales

---

## 🛠️ **MANTENIMIENTO**

| Actividad | Frecuencia | Costo Anual |
|:----------|:-----------|:------------|
| **Limpieza panel** | Trimestral | $5,600 |
| **Verificación LEDs** | Semestral | $4,200 |
| **Prueba mensajes** | Mensual | $2,800 |
| **Revisión estructural** | Anual | $2,100 |
| **Actualización firmware** | Según fabricante | $1,400 |
| **Reparaciones** | Según necesidad | $700 |
| **TOTAL OPEX** | - | **$16,800/año** |

**OPEX 20 años:** **$336,000 USD**

---

## 📊 **RESUMEN FINANCIERO PMV**

| Concepto | Valor (USD) |
|:---------|:------------|
| **CAPEX (14 paneles)** | $1,190,000.00 | 78.0% |
| **OPEX (20 años)** | $336,000.00 | 22.0% |
| **TOTAL 20 AÑOS** | **$1,526,000.00** | **100%** |

---

**Última actualización:** 22 de octubre de 2025 - 19:00  
**Responsable:** Ingeniero ITS / Especialista PMV  
**Estado:** ✅ **T05 PMV COMPLETADO**  
**Archivo:** `06_T05_Ingenieria_Detalle_PMV_v1.0.md`

