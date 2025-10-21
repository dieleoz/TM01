# T05 - INGENIERÍA DE DETALLE - PMV
## Paneles de Mensaje Variable

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** PMV - Paneles de Mensaje Variable  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.0  
**Basado en:** T04 PMV v1.0 + Tabla Maestra Layout v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema PMV:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad total** | **28 paneles** | 14 Izquierda + 14 Derecha |
| **Separación promedio** | ~20 km entre PMV del mismo sentido | Validación contractual |
| **Peajes** | 4 PMV (2 por peaje × 2 peajes) | Obligatorio AT2 |
| **Estratégicos** | 24 PMV en corredor | Cada ~20 km |
| **CAPEX Total** | **$644,000 USD** | $23,000/panel instalado |
| **OPEX Anual** | **$16,800 USD** | $600/panel/año |
| **OPEX 20 años** | **$336,000 USD** | Mantenimiento |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. PANEL PMV COMPLETO** | **28** | **$15,000** | **$420,000** | **65.2%** |
| Panel LED matriz 3×1.5m | 28 | $10,000 | $280,000 | 43.5% |
| Controlador PMV | 28 | $2,500 | $70,000 | 10.9% |
| Gabinete control IP65 | 28 | $800 | $22,400 | 3.5% |
| Conversor FO/Ethernet | 28 | $150 | $4,200 | 0.7% |
| Fuente alimentación 24VDC 15A | 28 | $350 | $9,800 | 1.5% |
| DPS (datos + energía) | 28 | $150 | $4,200 | 0.7% |
| Cable UTP Cat6 ext 50m | 28 | $60 | $1,680 | 0.3% |
| Accesorios y conectores | 28 | $200 | $5,600 | 0.9% |
| **2. ESTRUCTURA SOPORTE** | **28** | **$8,000** | **$224,000** | **34.8%** |
| Pórtico metálico tipo bandera | 14 | $12,000 | $168,000 | 26.1% |
| Poste metálico 8m (PMV unidireccional) | 14 | $4,000 | $56,000 | 8.7% |
| **SUBTOTAL** | - | - | **$644,000** | **100%** |

**Nota:** Instalación incluida en costo de estructura

**CAPEX/panel:** $644,000 / 28 = **$23,000 USD/panel** (instalado)

---

## 📐 **ESPECIFICACIONES TÉCNICAS DETALLADAS**

### **1. PANEL LED MATRIZ**

| Parámetro | Especificación Mínima | Cumplimiento |
|:----------|:---------------------|:------------|
| **Dimensiones** | 3.0 × 1.5 metros (ancho × alto) | AT3 |
| **Tecnología** | LED Full Matrix (RGB) | - |
| **Pitch (espaciado píxeles)** | 20-25 mm | Legibilidad 200m |
| **Resolución** | 96×48 píxeles mínimo | - |
| **Colores** | RGB (16.7M colores) o 3 colores mínimo | - |
| **Brillo** | ≥8,000 cd/m² (nits) | Legible pleno sol |
| **Vida útil LED** | ≥100,000 horas | ~11 años 24/7 |
| **Consumo máximo** | 1,500W (todos LEDs encendidos) | - |
| **Consumo típico** | 400-600W (mensaje estándar) | - |
| **Protección frontal** | IP65 mínimo | Intemperie |
| **Protección posterior** | IP54 mínimo | Acceso mantenimiento |
| **Vandalismo** | IK08 mínimo | Resistente impactos |
| **Temperatura** | -20°C a +60°C | Ambiente colombiano |
| **Viento** | Resistente hasta 140 km/h | NSR-10 |
| **Alimentación** | 110-220 VAC o 24 VDC | - |

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

### **Distribución por Tipo de Instalación:**

| Tipo | Estructura | Cantidad | Costo Unit. | Total |
|:-----|:-----------|:---------|:------------|:------|
| **A - Bidireccional** | Pórtico tipo bandera sobre separador | 14 | $27,000 | $378,000 |
| **B - Unidireccional** | Poste metálico 8m en berma | 14 | $19,000 | $266,000 |
| **TOTAL** | - | **28** | - | **$644,000** |

---

## 📊 **APU DETALLADO - PMV BIDIRECCIONAL**

### **APU-PMV-001: PMV en Pórtico Tipo Bandera**

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
|:-----|:------------|:-------|:---------|:-------------|:------|
| **A. PANEL PMV** | | | | | **$15,000** |
| Panel LED 3×1.5m (según especif.) | Equipo completo | UND | 1.0 | $15,000 | $15,000 |
| **B. PÓRTICO METÁLICO** | | | | | **$12,000** |
| Estructura pórtico tipo bandera | Acero A36 galvanizado | UND | 1.0 | $8,500 | $8,500 |
| Brazo voladizo 6m | Para panel 3m + margen | UND | 1.0 | $2,200 | $2,200 |
| Cables tensor | Estabilización | UND | 2.0 | $180.00 | $360.00 |
| Corona antiescalatoria | Protección | UND | 1.0 | $250.00 | $250.00 |
| Pintura tráfico amarilla | Acabado | GLB | 1.0 | $350.00 | $350.00 |
| Señalización reflectiva | Franjas blancas | GLB | 1.0 | $340.00 | $340.00 |
| **C. OBRAS CIVILES** | | | | | **$3,500** |
| Excavación cimentación | 1.5×1.5×2.0m | M³ | 4.5 | $45.00 | $202.50 |
| Concreto f'c=4000 PSI | Fundación reforzada | M³ | 3.5 | $200.00 | $700.00 |
| Acero refuerzo | #6 + estribos | KG | 120.0 | $2.80 | $336.00 |
| Pernos anclaje | 8×M24×800mm | UND | 8.0 | $28.00 | $224.00 |
| Canalización FO/energía | Hasta troncal | ML | 50.0 | $8.50 | $425.00 |
| Ducto HDPE 2"+3" | FO + energía | ML | 50.0 | $6.00 | $300.00 |
| Cajas paso (FO + eléctrica) | 2 cajas | UND | 2.0 | $500.00 | $1,000.00 |
| Puesta a tierra | Varillas + anillo | UND | 1.0 | $550.00 | $550.00 |
| **D. INSTALACIÓN** | | | | | **$8,000** |
| Ingeniero proyecto | Supervisión técnica | HH | 16.0 | $50.00 | $800.00 |
| Ingeniero estructural | Montaje pórtico | HH | 12.0 | $45.00 | $540.00 |
| Técnico PMV | Config + comisionamiento | HH | 16.0 | $35.00 | $560.00 |
| Técnico FO | Fusiones y conexiones | HH | 8.0 | $25.00 | $200.00 |
| Oficial electricista | Conexiones | HH | 16.0 | $18.00 | $288.00 |
| Oficial civil | Cimentación | HH | 24.0 | $18.00 | $432.00 |
| Soldador | Estructura metálica | HH | 20.0 | $22.00 | $440.00 |
| Operador grúa | Izaje pórtico | HH | 8.0 | $50.00 | $400.00 |
| Ayudantes | Apoyo general | HH | 80.0 | $10.00 | $800.00 |
| Supervisor SST | Seguridad altura | HH | 24.0 | $20.00 | $480.00 |
| Transporte | Movilización | GLB | 1.0 | $350.00 | $350.00 |
| Señalamiento vial | Durante obras | GLB | 1.0 | $250.00 | $250.00 |
| Certificación | Pruebas + as-built | UND | 1.0 | $1,200.00 | $1,200.00 |
| **E. EQUIPOS** | | | | | **$3,500** |
| Grúa telescópica 25m | Izaje pórtico | HH | 8.0 | $180.00 | $1,440.00 |
| Plataforma elevadora 15m | Trabajo altura | HH | 16.0 | $60.00 | $960.00 |
| Equipo soldadura | Estructura | HH | 12.0 | $15.00 | $180.00 |
| Mezcladora concreto | Fundación | HH | 6.0 | $25.00 | $150.00 |
| Compactador | Relleno | HH | 8.0 | $12.00 | $96.00 |
| Fusionadora FO | Empalmes | HH | 4.0 | $30.00 | $120.00 |
| Generador 15kVA | Energía temporal | HH | 24.0 | $18.00 | $432.00 |
| Herramienta menor | Varios | GLB | 1.0 | $122.00 | $122.00 |
| **SUBTOTAL DIRECTO** | | | | | **$42,000** |
| **Administración (3%)** | | | | | **$1,260** |
| **Imprevistos (2%)** | | | | | **$865** |
| **Utilidad (2%)** | | | | | **$881** |
| **TOTAL APU-PMV-001** | | | | | **$45,006/panel** |

**Para 14 PMV bidireccionales:** 14 × $45,006 = **$630,084 USD**

---

### **APU-PMV-002: PMV Unidireccional (Poste 8m)**

| Componente | Total (USD) |
|:-----------|:------------|
| **Panel PMV** | $15,000 |
| **Poste 8m** | $4,000 |
| **Obras civiles** | $2,000 |
| **Instalación** | $4,500 |
| **Equipos** | $2,000 |
| **SUBTOTAL** | $27,500 |
| **AIU (4%)** | $1,100 |
| **TOTAL APU-PMV-002** | **$28,600/panel** |

**Para 14 PMV unidireccionales:** 14 × $28,600 = **$400,400 USD**

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
| **CAPEX (28 paneles)** | $644,000 |
| **OPEX (20 años)** | $336,000 |
| **TOTAL 20 AÑOS** | **$980,000** |

---

**Última actualización:** 22 de octubre de 2025 - 19:00  
**Responsable:** Ingeniero ITS / Especialista PMV  
**Estado:** ✅ **T05 PMV COMPLETADO**  
**Archivo:** `06_T05_Ingenieria_Detalle_PMV_v1.0.md`

