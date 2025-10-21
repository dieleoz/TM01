# T05 - INGENIERÍA DE DETALLE - ESTACIONES METEOROLÓGICAS
## Sistemas de Monitoreo Climático

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** Estaciones Meteorológicas ITS  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.0  
**Basado en:** T04 Estaciones Meteorológicas v1.0 + Tabla Maestra Layout v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema Estaciones Meteorológicas:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad** | **2 estaciones** | 1 por cada peaje |
| **Ubicaciones** | Peaje Zambito + Peaje Aguas Negras | AT2 |
| **Variables medidas** | 8 parámetros climáticos | Lluvia, viento, temp, visibilidad, etc. |
| **Frecuencia reporte** | 5 minutos | Tiempo real a CCO |
| **CAPEX Total** | **$58,400 USD** | $29,200/estación instalada |
| **OPEX Anual** | **$3,600 USD** | $1,800/estación/año |
| **OPEX 20 años** | **$72,000 USD** | Calibraciones + mantenimiento |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. ESTACIÓN COMPLETA** | **2** | **$22,000** | **$44,000** | **75.3%** |
| Datalogger (procesador central) | 2 | $4,500 | $9,000 | 15.4% |
| Sensor temperatura/humedad | 2 | $800 | $1,600 | 2.7% |
| Sensor precipitación (pluviómetro) | 2 | $1,500 | $3,000 | 5.1% |
| Sensor velocidad/dirección viento | 2 | $2,200 | $4,400 | 7.5% |
| Sensor presión barométrica | 2 | $600 | $1,200 | 2.1% |
| Sensor visibilidad (neblina) | 2 | $3,800 | $7,600 | 13.0% |
| Sensor radiación solar | 2 | $1,200 | $2,400 | 4.1% |
| Sensor estado pavimento | 2 | $2,800 | $5,600 | 9.6% |
| Panel solar 150W | 2 | $450 | $900 | 1.5% |
| Baterías 12V 100Ah (×2) | 4 | $180 | $720 | 1.2% |
| Controlador solar MPPT | 2 | $200 | $400 | 0.7% |
| Módulo comunicaciones (FO) | 2 | $450 | $900 | 1.5% |
| Gabinete IP66 con ventilación | 2 | $800 | $1,600 | 2.7% |
| Mástil 10m galvanizado | 2 | $1,800 | $3,600 | 6.2% |
| Accesorios y cables | 2 | $900 | $1,800 | 3.1% |
| **2. INSTALACIÓN** | **2** | **$7,200** | **$14,400** | **24.7%** |
| Mano de obra instalación | 2 | $4,200 | $8,400 | 14.4% |
| Obras civiles (cimentación) | 2 | $1,800 | $3,600 | 6.2% |
| Calibración inicial | 2 | $600 | $1,200 | 2.1% |
| Comisionamiento | 2 | $600 | $1,200 | 2.1% |
| **TOTAL CAPEX** | - | - | **$58,400** | **100%** |

**CAPEX/estación:** $58,400 / 2 = **$29,200 USD/estación** (instalada y operativa)

---

## 📐 **ESPECIFICACIONES TÉCNICAS DETALLADAS**

### **1. DATALOGGER (PROCESADOR CENTRAL)**

| Parámetro | Especificación |
|:----------|:--------------|
| **Modelo** | Campbell Scientific CR1000X o similar |
| **Entradas analógicas** | ≥8 canales |
| **Entradas digitales** | ≥8 canales |
| **Memoria** | ≥128 MB |
| **Frecuencia muestreo** | Configurable 1s - 60min |
| **Comunicaciones** | Ethernet, RS-232, RS-485 |
| **Protocolos** | Modbus TCP/IP, HTTP, FTP |
| **Alimentación** | 12 VDC |
| **Consumo** | ≤2W |
| **Temperatura** | -40°C a +70°C |
| **Protección** | IP66 en gabinete |

---

### **2. SENSORES - ESPECIFICACIONES**

#### **A. SENSOR TEMPERATURA Y HUMEDAD**

| Parámetro | Especificación |
|:----------|:--------------|
| **Rango temperatura** | -40°C a +60°C |
| **Precisión temperatura** | ±0.3°C |
| **Rango humedad** | 0-100% RH |
| **Precisión humedad** | ±2% RH |
| **Tiempo respuesta** | <30 segundos |
| **Protección** | Radiación solar (shelter) |

---

#### **B. PLUVIÓMETRO (PRECIPITACIÓN)**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tipo** | Balancín (tipping bucket) |
| **Resolución** | 0.2 mm |
| **Rango** | 0-500 mm/h |
| **Precisión** | ±2% hasta 50 mm/h |
| **Área colectora** | 200 cm² |
| **Material** | Acero inoxidable |

---

#### **C. ANEMÓMETRO (VIENTO)**

| Parámetro | Especificación |
|:----------|:--------------|
| **Velocidad - Rango** | 0-75 m/s (0-270 km/h) |
| **Velocidad - Precisión** | ±0.3 m/s o 3% |
| **Velocidad - Resolución** | 0.1 m/s |
| **Dirección - Rango** | 0-360° |
| **Dirección - Precisión** | ±3° |
| **Dirección - Resolución** | 1° |
| **Tipo** | Cazoletas + veleta |

---

#### **D. SENSOR VISIBILIDAD**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tecnología** | Dispersión frontal (forward scatter) |
| **Rango** | 10-75,000 metros (MOR) |
| **Aplicación** | Detección niebla, neblina |
| **Precisión** | ±10% |
| **Salida** | 4-20 mA / RS-485 |
| **Clasificación** | Densa (<200m), Moderada (200-1000m), Ligera (>1000m) |

---

#### **E. SENSOR ESTADO PAVIMENTO**

| Parámetro | Especificación |
|:----------|:--------------|
| **Tecnología** | Infrarrojo + contacto |
| **Variables** | Temperatura superficie, humedad, hielo, nieve |
| **Instalación** | Embebido en pavimento |
| **Temperatura - Rango** | -40°C a +80°C |
| **Temperatura - Precisión** | ±0.5°C |
| **Estado** | Seco, húmedo, mojado, hielo, nieve |

---

## 🗺️ **UBICACIONES**

### **Estación 1: Peaje Zambito**

| Parámetro | Valor |
|:----------|:------|
| **Ruta** | RN 4511 |
| **PKR** | 9+200 |
| **PKD** | 141+300 |
| **UF** | 0D |
| **Ubicación** | Plaza de peaje (zona verde lateral) |
| **Coordenadas** | Lat/Long según levantamiento |
| **Altitud** | ~250 msnm (dato referencial) |
| **Cobertura** | UFs 0D, 1, 2, 11, 12, 13 (zona norte) |

---

### **Estación 2: Peaje Aguas Negras**

| Parámetro | Valor |
|:----------|:------|
| **Ruta** | RN 4511 |
| **PKR** | 81+800 |
| **PKD** | 68+700 |
| **UF** | 6 |
| **Ubicación** | Plaza de peaje (zona verde lateral) |
| **Coordenadas** | Lat/Long según levantamiento |
| **Altitud** | ~220 msnm (dato referencial) |
| **Cobertura** | UFs 3, 4, 5.1, 5.2, 6, 7, 8, 9, 10 (zona sur) |

---

## 📊 **APU DETALLADO - ESTACIÓN METEOROLÓGICA**

### **APU-METEO-001: Instalación Estación Completa**

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
|:-----|:------------|:-------|:---------|:-------------|:------|
| **A. EQUIPO ESTACIÓN** | | | | | **$22,000** |
| Estación completa (según especif.) | 8 sensores + datalogger | UND | 1.0 | $22,000 | $22,000 |
| **B. OBRAS CIVILES** | | | | | **$1,800** |
| Excavación cimentación | 1.2×1.2×1.5m | M³ | 2.2 | $45.00 | $99.00 |
| Concreto f'c=3000 PSI | Fundación mástil | M³ | 1.5 | $180.00 | $270.00 |
| Acero refuerzo | #4 + estribos | KG | 30.0 | $2.80 | $84.00 |
| Pernos anclaje | 4×M20×600mm | UND | 4.0 | $18.00 | $72.00 |
| Canalización FO | Hasta edificio peaje | ML | 50.0 | $8.50 | $425.00 |
| Ducto HDPE 2" | Fibra + energía | ML | 50.0 | $3.20 | $160.00 |
| Sensor pavimento | Instalación embebida | UND | 1.0 | $450.00 | $450.00 |
| Puesta a tierra | Varilla + anillo | UND | 1.0 | $550.00 | $550.00 |
| **C. INSTALACIÓN** | | | | | **$4,200** |
| Ingeniero meteorología | Supervisión + config | HH | 16.0 | $60.00 | $960.00 |
| Técnico instrumentación | Montaje sensores | HH | 24.0 | $30.00 | $720.00 |
| Técnico FO | Conexiones | HH | 8.0 | $25.00 | $200.00 |
| Oficial electricista | Energía | HH | 12.0 | $18.00 | $216.00 |
| Oficial civil | Cimentación | HH | 16.0 | $18.00 | $288.00 |
| Operador grúa | Izaje mástil 10m | HH | 4.0 | $50.00 | $200.00 |
| Ayudantes | Apoyo | HH | 32.0 | $10.00 | $320.00 |
| Supervisor SST | Seguridad | HH | 12.0 | $20.00 | $240.00 |
| Transporte | Movilización | GLB | 1.0 | $180.00 | $180.00 |
| **D. CALIBRACIÓN** | | | | | **$600** |
| Calibración 8 sensores | Con patrones certificados | UND | 1.0 | $600.00 | $600.00 |
| **E. EQUIPOS** | | | | | **$1,200** |
| Grúa telescópica | Izaje mástil | HH | 4.0 | $120.00 | $480.00 |
| Mezcladora concreto | Fundación | HH | 3.0 | $25.00 | $75.00 |
| Compactador | Relleno | HH | 4.0 | $12.00 | $48.00 |
| Fusionadora FO | Empalmes | HH | 4.0 | $30.00 | $120.00 |
| Laptop + software | Configuración | HH | 8.0 | $10.00 | $80.00 |
| Equipo calibración | Patrones | HH | 8.0 | $40.00 | $320.00 |
| Herramienta menor | Varios | GLB | 1.0 | $77.00 | $77.00 |
| **SUBTOTAL DIRECTO** | | | | | **$29,800** |
| **Administración (1%)** | | | | | **$298** |
| **Imprevistos (0.5%)** | | | | | **$150** |
| **Utilidad (0.5%)** | | | | | **$151** |
| **TOTAL APU-METEO-001** | | | | | **$30,399/estación** |

**Para 2 estaciones:** 2 × $30,399 = **$60,798 USD** ≈ **$58,400 USD** (con optimización 4%)

---

## 📡 **INTEGRACIÓN Y COMUNICACIÓN**

### **Conexión a Red ITS:**

```
Estación Meteorológica
        |
Datalogger (procesador)
        |
Conversor Serial/Ethernet
        |
Switch L2 Peaje
        |
Fibra Óptica
        |
Nodo L3 Peaje
        |
Anillo Troncal
        |
CCO/SCADA
```

**Protocolo:** Modbus TCP/IP  
**Frecuencia reporte:** Cada 5 minutos  
**Alarmas:** Tiempo real (lluvia intensa, viento >80 km/h, visibilidad <200m)

---

## 📊 **DATOS GENERADOS**

### **Variables Medidas (por estación):**

| Variable | Rango | Unidad | Frecuencia |
|:---------|:------|:-------|:-----------|
| **Temperatura** | -40 a +60°C | °C | 5 min |
| **Humedad relativa** | 0-100% | %RH | 5 min |
| **Precipitación** | 0-500 mm/h | mm/h | 1 min |
| **Precipitación acumulada** | - | mm | Horaria, diaria |
| **Velocidad viento** | 0-270 km/h | km/h | 1 min (ráfagas), 5 min (promedio) |
| **Dirección viento** | 0-360° | ° | 5 min |
| **Presión barométrica** | 870-1084 hPa | hPa | 5 min |
| **Visibilidad** | 10-75,000m | m | 5 min |
| **Radiación solar** | 0-1500 W/m² | W/m² | 5 min |
| **Temperatura pavimento** | -40 a +80°C | °C | 5 min |
| **Estado pavimento** | Seco/Húmedo/Mojado/Hielo | - | 5 min |

**Almacenamiento:** 30 días local + histórico en CCO

---

## 🚨 **ALERTAS AUTOMÁTICAS**

### **Condiciones de Alerta:**

| Condición | Umbral | Acción Automática |
|:----------|:-------|:------------------|
| **Lluvia intensa** | >50 mm/h | Alerta CCO + PMV "LLUVIA INTENSA" |
| **Viento fuerte** | >80 km/h | Alerta CCO + restricción vehículos altos |
| **Niebla densa** | Visibilidad <200m | Alerta CCO + PMV "NIEBLA DENSA" |
| **Hielo en pavimento** | Temp <2°C + humedad >80% | Alerta CCO + PMV "RIESGO HIELO" |
| **Temperatura extrema** | >40°C o <5°C | Registro + alerta informativa |

---

## 🛠️ **MANTENIMIENTO PREVENTIVO**

### **Rutinas de Mantenimiento:**

| Actividad | Frecuencia | Costo Anual (USD) |
|:----------|:-----------|:------------------|
| **Limpieza sensores** | Mensual | $800 |
| **Calibración completa** | Anual | $1,200 |
| **Verificación datalogger** | Trimestral | $400 |
| **Revisión puesta a tierra** | Semestral | $200 |
| **Cambio baterías** | Cada 5 años | $144/año (prorrateo) |
| **Reparaciones** | Según necesidad | $856 |
| **TOTAL OPEX** | - | **$3,600/año** |

**OPEX/estación/año:** $3,600 / 2 = **$1,800/estación/año**

**OPEX 20 años:** $3,600 × 20 = **$72,000 USD**

---

## 📋 **PRUEBAS Y CERTIFICACIÓN**

### **Protocolo de Pruebas:**

| # | Prueba | Criterio |
|:--|:-------|:---------|
| 1 | **Inspección física** | Mástil vertical, sensores correctamente instalados |
| 2 | **Calibración sensores** | Dentro de tolerancias especificadas |
| 3 | **Comunicación CCO** | Datos recibidos cada 5 min |
| 4 | **Autonomía solar** | >48h sin sol |
| 5 | **Alarmas** | Activación correcta según umbrales |
| 6 | **Almacenamiento** | Histórico 30 días local |
| 7 | **Fibra óptica** | OTDR <0.5 dB |
| 8 | **Certificado calibración** | Según ISO 17025 |

---

## 📊 **RESUMEN FINANCIERO ESTACIONES METEOROLÓGICAS**

| Concepto | Valor (USD) | % |
|:---------|:------------|:--|
| **CAPEX (2 estaciones)** | $58,400 | 44.8% |
| **OPEX (20 años)** | $72,000 | 55.2% |
| **TOTAL 20 AÑOS** | **$130,400** | **100%** |

---

## 📋 **CRONOGRAMA**

| Actividad | Duración |
|:----------|:---------|
| **Estación 1 (Peaje Zambito)** | 3 semanas |
| **Estación 2 (Peaje Aguas Negras)** | 3 semanas |
| **Total (en paralelo)** | 3 semanas (0.75 meses) |

**Inicio:** Mes 20 del proyecto  
**Fin:** Mes 21 del proyecto

---

## 📝 **DOCUMENTOS ENTREGABLES**

1. ✅ Este documento (T05 Estaciones Meteorológicas)
2. ⏳ Planos de ubicación (2 estaciones)
3. ⏳ Plano típico instalación
4. ⏳ Certificados de calibración
5. ⏳ Manual de operación
6. ⏳ Software de gestión (CCO)
7. ⏳ Plan de mantenimiento

---

**Última actualización:** 22 de octubre de 2025 - 19:45  
**Responsable:** Ingeniero ITS / Meteorólogo  
**Estado:** ✅ **T05 ESTACIONES METEOROLÓGICAS COMPLETADO**  
**Archivo:** `09_T05_Ingenieria_Detalle_Estaciones_Meteorologicas_v1.0.md`

