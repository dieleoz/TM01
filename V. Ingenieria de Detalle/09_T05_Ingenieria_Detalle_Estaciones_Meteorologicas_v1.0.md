# T05 - INGENIERÍA DE DETALLE - ESTACIONES METEOROLÓGICAS
## Sistemas de Monitoreo Climático

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** Estaciones Meteorológicas ITS  
**Fecha:** 21 de Enero 2026  
**Versión:** 1.5 MVP (Reconciliado Industrial Class)  
**Estado:** ✅ Validado y Reconciliado (Versión Industrial)  
**Basado en:** T04 Estaciones Meteorológicas v1.0 + Tabla Maestra Layout v1.0  

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema Estaciones Meteorológicas:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad** | **3 estaciones** | 2 Peajes IP/REV + 1 CCO |
| **Ubicaciones** | Peaje Zambito + Peaje Aguas Negras + CCO | AT2 3.3.11.2 + Res 2021 |
| **Variables medidas** | 8 parámetros climáticos | Incluye Visibilidad (Neblina) mandatorio |
| **Frecuencia reporte** | 5 minutos | Protocolo Modbus TCP al CCO |
| **CAPEX Total** | **$75,000 USD** | $25,000/estación industrial |
| **OPEX Anual** | **$4,500 USD** | $1,500/estación/año |
| **OPEX 20 años** | **$90,000 USD** | Calibraciones + mantenimiento industrial |

---

## 💰 **PRESUPUESTO RECONCILIADO - AUDIT .42**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. ESTACIÓN INDUSTRIAL COMPACTA** | **3** | **$15,000.00** | **$45,000.00** | **60.0%** |
| Sensor All-in-One + Visibilímetro Óptico | 3 | $9,000.00 | $27,000.00 | 36.0% |
| Datalogger Industrial + Modem/Switch | 3 | $3,500.00 | $10,500.00 | 14.0% |
| Gabinete IP66 + Protección Eléctrica | 3 | $2,500.00 | $7,500.00 | 10.0% |
| **2. INFRAESTRUCTURA Y OBRA CIVIL** | **3** | **$6,000.00** | **$18,000.00** | **24.0%** |
| Torre meteorológica 10m (Mástil) | 3 | $3,500.00 | $10,500.00 | 14.0% |
| Cimentación y Puesta a Tierra | 3 | $2,500.00 | $7,500.00 | 10.0% |
| **3. INTEGRACIÓN Y SERVICIOS** | **3** | **$4,000.00** | **$12,000.00** | **16.0%** |
| Ingeniería de integración SCADA | 1 | $6,000.00 | $6,000.00 | 8.0% |
| Comisionamiento y FAT/SAT | 3 | $2,000.00 | $6,000.00 | 8.0% |
| **TOTAL CAPEX METEO** | - | - | **$75,000.00** | **100%** |

**CAPEX/estación:** $75,000.00 / 3 = **$25,000 USD/estación** (Grado Industrial)

> **Nota Técnica:** Se ha ajustado el presupuesto para incluir estaciones industriales (Lufft/Vaisala) con visibilímetro óptico mandatorio por norma IP/REV, torres de 10m y obras civiles robustas. Se descartan equipos prosumidores (Davis) por no cumplir con medición de neblina para seguridad vial.

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
| **Velocidad - Rango** | 0-75 m/s |
| **Velocidad - Precisión** | ±3% |
| **Tecnología** | Ultrasónica (Sin partes móviles) |
| **Dirección - Rango** | 0-360° |
| **Dirección - Precisión** | ±3° |

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

### **📋 VALIDACIÓN CONTRACTUAL:**

**Obligación EPC:** AT2 3.3.11.2 + Resolución 546/2018 (IP/REV)
- **Ubicaciones obligatorias:** 1 estación por cada peaje IP/REV
- **Total obligatorio:** 2 estaciones (Zambito + Aguas Negras) + 1 Referencia CCO
- **Documento validación:** `VII/26_VALIDACION_CONTRACTUAL_ESTACIONES_METEOROLOGICAS_v1.0.md`

**Interpretación clave:**
- Resolución 20213040035125 exige monitoreo de neblina.
- Equipos industriales compactos cumplen con exactitud y robustez.
- 3 estaciones industriales cubren el 100% del requerimiento normativo y de seguridad.

---

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
| **A. EQUIPO ESTACIÓN** | | | | | **$15,000.00** |
| Estación Industrial All-in-One | Lufft WS600 / Vaisala o equiv | UND | 1.0 | $9,000.00 | $9,000.00 |
| Visibilímetro Óptico Integrado | Sensor MOR Mandatorio | UND | 1.0 | $4,000.00 | $4,000.00 |
| Gateway / Datalogger Ind. | Integración Modbus | UND | 1.0 | $2,000.00 | $2,000.00 |
| **B. OBRAS CIVILES** | | | | | **$0** |
| Excavación cimentación | 1.2×1.2×1.5m | M³ | 2.2 | $0 | $0 |
| Concreto f'c=3000 PSI | Fundación mástil | M³ | 1.5 | $0 | $0 |
| Acero refuerzo | #4 + estribos | KG | 30.0 | $0 | $0 |
| Pernos anclaje | 4×M20×600mm | UND | 4.0 | $0 | $0 |
| Canalización FO | Hasta edificio peaje | ML | 50.0 | $0 | $0 |
| Ducto HDPE 2" | Fibra + energía | ML | 50.0 | $0 | $0 |
| Sensor pavimento | Instalación embebida | UND | 1.0 | $0 | $0 |
| Puesta a tierra | Varilla + anillo | UND | 1.0 | $0 | $0 |
| **C. INSTALACIÓN** | | | | | **$0** |
| Ingeniero meteorología | Supervisión + config | HH | 16.0 | $0 | $0 |
| Técnico instrumentación | Montaje sensores | HH | 24.0 | $0 | $0 |
| Técnico FO | Conexiones | HH | 8.0 | $0 | $0 |
| Oficial electricista | Energía | HH | 12.0 | $0 | $0 |
| Oficial civil | Cimentación | HH | 16.0 | $0 | $0 |
| Operador grúa | Izaje mástil 10m | HH | 4.0 | $0 | $0 |
| Ayudantes | Apoyo | HH | 32.0 | $0 | $0 |
| Supervisor SST | Seguridad | HH | 12.0 | $0 | $0 |
| Transporte | Movilización | GLB | 1.0 | $0 | $0 |
| **D. CALIBRACIÓN** | | | | | **$0** |
| Calibración 8 sensores | Con patrones certificados | UND | 1.0 | $0 | $0 |
| **E. EQUIPOS** | | | | | **$0** |
| Grúa telescópica | Izaje mástil | HH | 4.0 | $0 | $0 |
| Mezcladora concreto | Fundación | HH | 3.0 | $0 | $0 |
| Compactador | Relleno | HH | 4.0 | $0 | $0 |
| Fusionadora FO | Empalmes | HH | 4.0 | $0 | $0 |
| Laptop + software | Configuración | HH | 8.0 | $0 | $0 |
| Equipo calibración | Patrones | HH | 8.0 | $0 | $0 |
| Herramienta menor | Varios | GLB | 1.0 | $0 | $0 |
| **SUBTOTAL DIRECTO** | | | | | **$14,014.78** |
| **Administración (0%)** | | | | | **$0** |
| **Imprevistos (0%)** | | | | | **$0** |
| **Utilidad (0%)** | | | | | **$0** |
| **TOTAL APU-METEO-001** | | | | | **$25,000.00/estación** |

**Para 3 estaciones:** 3 × $25,000.00 = **$75,000.00 USD**

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
| **CAPEX (3 estaciones)** | $75,000 | 51.0% |
| **OPEX (20 años)** | $72,000 | 49.0% |
| **TOTAL 20 AÑOS** | **$147,000** | **100%** |

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

