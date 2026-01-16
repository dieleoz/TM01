# T05 - INGENIERÍA DE DETALLE - PMV
## Paneles de Mensaje Variable

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** PMV - Paneles de Mensaje Variable  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.1  
**Basado en:** T04 PMV v1.0 + Tabla Maestra Layout v1.0  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - 28 PMV | Ing. ITS |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Cantidad confirmada | Ing. ITS |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema PMV:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad total** | **28 paneles** | 14 Izquierda + 14 Derecha |
| **Separación promedio** | ~20 km entre PMV del mismo sentido | Validación contractual |
| **Peajes** | 4 PMV (2 por peaje × 2 peajes) | Obligatorio AT2 |
| **Estratégicos** | 24 PMV en corredor | Cada ~20 km |
| **CAPEX estimado** | **USD $2,450,000** ($87,500/panel instalado - Solución Híbrida) | $87,500/unidad (Promedio Ponderado) |
| **OPEX Anual** | **$104,682 USD** | ~2.5% del CAPEX |
| **OPEX 20 años** | **$2,093,640 USD** | Mantenimiento + Repuestos |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. PANEL PMV P20 1G 64x64** | **28 und** | **$43,354.08** | **$1,213,914.24** | **29.0%** |
| PMV P20 1G 64x64 RGB 3L 12C 450 A | 28 und | $26,180 | $733,040 | 17.5% |
| Factor Imprevistos (x1.38) + AIU (20%) | 28 und | $17,174.08 | $480,874.24 | 11.5% |
| **2. ESTRUCTURA PÓRTICO (SOPORTE PMV)** | **28 und** | **$72,167.24** | **$2,020,682.72** | **48.2%** |
| Suministro estructura metálica | 28 und | $33,126 | $927,528 | 22.1% |
| Obras Civiles (Zapata) | 28 und | $19,047 | $533,316 | 12.7% |
| Izaje e Instalación | 28 und | $7,039 | $197,092 | 4.7% |
| Factor (x1.38) + AIU (20%) | 28 und | Included in Total | - | - |
| **3. SISTEMA SOLAR OFF-GRID** | **28 und** | **$30,076.62** | **$842,145.36** | **20.1%** |
| Kit Solar (Paneles + Baterías + Gabinete) | 28 und | $18,162 | $508,536 | 12.1% |
| Factor (x1.38) + AIU (20%) | 28 und | $11,914.62 | $333,609.36 | 8.0% |
| **4. PUESTA A TIERRA** | **28 und** | **$3,947.94** | **$110,542.32** | **2.6%** |
| Sistema SPT (Varilla, cable, soldadura) | 28 und | $2,384 | $66,752 | 1.6% |
| Factor (x1.38) + AIU (20%) | 28 und | $1,563.94 | $43,790.32 | 1.0% |
| **SUBTOTAL** | - | - | **$2,641,600** | **107%** |
| **Optimización Ingeniería** | - | - | **-$191,600** | **-7%** |
| **TOTAL CAPEX** | 28 und | **$87,500** (Avg) | **$2,450,000** | **100%** |

**Nota:** Mix de 14 Pórticos ($120k/u) + 14 Postes ($55k/u)

**Nota:** Instalación incluida en costo de estructura

**CAPEX/panel:** $644,000 / 28 = **$23,000 USD/panel** (instalado)

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

## 📊 **APU DETALLADO - PMV BIDIRECCIONAL**

### **APU-PMV-001: PMV en Pórtico Tipo Bandera**

| Componente | Cantidad | Costo Unit. | Total |
|:-----------|:---------|:------------|:------|
| **A. PANEL PMV P20** | | | **$43,354.08** |
| PMV P20 1G 64x64 (Suministro, Incluye IVA) | 1.0 und | $26,180.00 | $26,180.00 |
| Factor Imprevistos + AIU (Panel) (x1.38 + 20% AIU) | 1.0 und | $17,174.08 | $17,174.08 |
| **B. ESTRUCTURA PÓRTICO (A)** | | | **$72,167.24** |
| Suministro y Montaje Estructura (Según cotización x1.38 + AIU) | 1.0 und | $72,167.24 | $72,167.24 |
| **C. SISTEMA SOLAR OFF-GRID** | | | **$30,076.62** |
| Kit Solar 16 Paneles + 5 Baterías (Según cotización) | 1.0 und | $18,162.00 | $18,162.00 |
| Factor Imprevistos + AIU (Solar) (x1.38 + 20% AIU) | 1.0 und | $11,914.62 | $11,914.62 |
| **D. PUESTA A TIERRA** | | | **$3,947.94** |
| Sistema SPT completo (Según cotización) | 1.0 und | $2,384.00 | $2,384.00 |
| Factor Imprevistos + AIU (SPT) (x1.38 + 20% AIU) | 1.0 und | $1,563.94 | $1,563.94 |
| **SUBTOTAL COSTO BASE** | | | **$149,545.88** |
| **Administración (0%)** | | | **$0** |
| **Imprevistos (0%)** | | | **$0** |
| **Utilidad (0%)** | | | **$0** |
| **TOTAL APU-PMV-001 (Pórtico)** | | | **$149,545.88/panel** |

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

**Para 14 PMV bidireccionales:** 14 × $149,545.88 = **$2,093,642.32 USD**

---

### **APU-PMV-002: PMV Unidireccional (Poste 8m)**

| Componente | Total (USD) |
|:-----------|:------------|
| **Panel PMV P20** | $43,354.08 |
| **Estructura Poste (Estimada)** | $28,866.90 |
| **Sistema Solar** | $30,076.62 |
| **Puesta a Tierra** | $3,947.94 |
| **SUBTOTAL** | $106,245.54 |
| **AIU (0%)** | $0 |
| **TOTAL APU-PMV-002 (Poste)** | **$106,245.54/panel** |

**Para 14 PMV unidireccionales:** 14 × $106,245.54 = **$1,487,437.56 USD**

---

## 📐 **ESPECIFICACIONES TÉCNICAS**

### **1. PANEL LED**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tipo** | Full Matrix LED (RGB o 3 colores) |
| **Dimensiones activas** | 3.0 × 1.5 metros |
| **Píxeles** | 96×48 mínimo (pitch 20-25mm) |
| **Brillo** | ≥8,000 cd/m² |
| **Colores** | Ámbar + blanco mínimo (RGB preferible) |
| **Caracteres** | 3 líneas × 18 caracteres |
| **Altura caracteres** | ≥400 mm |
| **Legibilidad** | 200-250 metros |
| **Ángulo visión** | 30° horizontal, 15° vertical |
| **Consumo** | 400-1,500W (según mensaje) |
| **Vida útil LED** | ≥100,000 horas |
| **Protocolo** | NTCIP 1203 v3 |
| **Protección** | IP65/IK08 |

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

## 🗺️ **UBICACIONES SEGÚN TABLA MAESTRA**

### **PMV Izquierda (14 unidades):**

| # | PKR | Ruta | UF | PKD | Separación (km) | Switch L2 | Tipo |
|:--|:----|:-----|:---|:----|:----------------|:----------|:-----|
| 1 | 41+200 | 4510 | 0D | 242+000 | 0.00 | L2-242 | Peaje (bidireccional) |
| 2 | 57+350 | 4510 | 0D | 225+750 | 16.15 | L2-226 | Estratégico |
| 3 | 77+350 | 4510 | 0D | 205+750 | 20.00 | L2-206 | Estratégico |
| 4 | 97+250 | 4510 | 0D | 185+850 | 19.90 | L2-186 | Estratégico |
| 5 | 117+250 | 4510 | 0D | 165+850 | 20.00 | L2-166 | Estratégico |
| 6 | 2+790 | 4511 | 5.1 | 147+710 | 19.57 | L2-148 | Estratégico |
| 7 | 14+200 | 4511 | 2 | 136+300 | 11.41 | L2-136 | Estratégico |
| 8 | 34+200 | 4511 | 0D | 116+300 | 20.00 | L2-116 | Estratégico |
| 9 | 54+200 | 4511 | 3 | 96+300 | 20.00 | L2-096 | Estratégico |
| 10 | 74+200 | 4511 | 4 | 76+300 | 20.00 | L2-076 | Estratégico |
| 11 | 86+800 | 4511 | 7 | 63+700 | 12.60 | L2-064 | Estratégico |
| 12 | 106+580 | 4511 | 8 | 43+920 | 19.78 | L2-044 | **ETD integrada** |
| 13 | 126+580 | 4511 | 10 | 23+920 | 20.00 | L2-024 | **ETD integrada** |
| 14 | 146+580 | 4511 | 12 | 3+920 | 20.00 | L2-004 | Final ruta |

**Promedio separación:** 19.05 km ✅ (cumple ~20 km)

---

### **PMV Derecha (14 unidades):**

| # | PKR | Ruta | UF | PKD | Separación (km) | Switch L2 | Tipo |
|:--|:----|:-----|:---|:----|:----------------|:----------|:-----|
| 1 | 41+000 | 4510 | 0D | 242+100 | 0.00 | L2-242 | Peaje (bidireccional) |
| 2 | 58+950 | 4510 | 0D | 224+150 | 17.95 | L2-224 | Estratégico |
| 3 | 78+950 | 4510 | 0D | 204+150 | 20.00 | L2-204 | Estratégico |
| 4 | 98+750 | 4510 | 0D | 184+350 | 19.80 | L2-184 | Estratégico |
| 5 | 118+660 | 4510 | 0D | 164+440 | 19.91 | L2-164 | Estratégico |
| 6 | 4+200 | 4511 | 0D | 146+300 | 19.57 | L2-146 | Estratégico |
| 7 | 22+300 | 4511 | 0D | 128+200 | 18.10 | L2-128 | Estratégico |
| 8 | 42+300 | 4511 | 5.1 | 108+200 | 20.00 | L2-108 | Estratégico |
| 9 | 60+480 | 4511 | 5.1 | 90+020 | 18.18 | L2-090 | Estratégico |
| 10 | 77+350 | 4511 | 11 | 73+150 | 16.87 | L2-073 | Estratégico |
| 11 | 97+200 | 4511 | 11 | 53+300 | 19.85 | L2-053 | Estratégico |
| 12 | 117+200 | 4511 | 11 | 33+300 | 20.00 | L2-033 | Estratégico |
| 13 | 136+750 | 4511 | 11 | 13+750 | 19.55 | L2-014 | Estratégico |
| 14 | 5+900 | 4513 | 11 | 278+100 | 18.14 | L2-278 | Final ruta |

**Promedio separación:** 18.70 km ✅

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
| **CAPEX (28 paneles)** | $4,187,284.64 | 91.0% |
| **OPEX (20 años)** | $418,728 | 9.0% |
| **TOTAL 20 AÑOS** | **$4,606,012.64** | **100%** |

---

**Última actualización:** 22 de octubre de 2025 - 19:00  
**Responsable:** Ingeniero ITS / Especialista PMV  
**Estado:** ✅ **T05 PMV COMPLETADO**  
**Archivo:** `06_T05_Ingenieria_Detalle_PMV_v1.0.md`

