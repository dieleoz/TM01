# T05 - INGENIERÍA DE DETALLE - CCTV
## Sistema de Circuito Cerrado de Televisión

**Proyecto:** APP Puerto Salgar - Barrancabermeja  
**Sistema:** CCTV - Videovigilancia ITS  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.1  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 22/10/2025 | Creación inicial - 30 cámaras CCTV | Ing. ITS |
| 1.1 | 22/10/2025 | Revisión con información oficial: Cantidad confirmada | Ing. ITS |
| 1.2 | 20/01/2026 | **Ajuste Alcance Optimizado:** 15 cámaras (Hard Deck + Nodos Críticos) | Antigravity AI |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema CCTV:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad total** | **15 cámaras** | Propuesta Optimizada (Hard Deck + Nodos) |
| **Distribución** | 13 UFs cubiertas | Tabla Maestra Layout (Revisada) |
| **Tipo principal** | PTZ Domo IP (zoom 30×) | T04 CCTV |
| **Resolución** | 1080p (1920×1080) mínimo | AT3 |
| **Almacenamiento** | 30 días×15 cámaras en NVR CCO | AT2 |
| **CAPEX Total** | **$1,634,000 USD** | Incluye Sustrato Central y 15 puntos campo |
| **OPEX Anual** | **$9,000 USD** | $600/cámara/año |
| **OPEX 20 años** | **$180,000 USD** | Mantenimiento |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. CÁMARAS IP PTZ COMPLETAS** | **15** | **-** | **-**| **-** |
| Cámara PTZ Dahua High-End | 15 | $12,000 | $180,000 | 11.0% |
| Domo policarbonato IK10 | 15 | $800 | $12,000 | 0.7% |
| Soporte montaje poste | 15 | $500 | $7,500 | 0.5% |
| Cable UTP Cat6 ext 100m | 15 | $100 | $1,500 | 0.1% |
| Caja paso hermética IP66 | 15 | $150 | $2,250 | 0.1% |
| Inyector PoE+ 30W | 15 | $200 | $3,000 | 0.2% |
| DPS datos + energía | 15 | $150 | $2,250 | 0.1% |
| Accesorios montaje | 15 | $300 | $4,500 | 0.3% |
| **2. INFRAESTRUCTURA SOPORTE** | **15** | **-** | **$139,000** | **8.5%** |
| Poste metálico 12m | 15 | $5,000 | $75,000 | 4.6% |
| Kit Energía Solar 100W | 8 | $8,000 | $64,000 | 3.9% |
| **3. INSTALACIÓN Y SERVICIOS** | **15** | **-** | **$52,500** | **3.2%** |
| Instalación y comisionamiento | 15 | $3,000 | $45,000 | 2.8% |
| Pruebas FAT/SAT | 15 | $500 | $7,500 | 0.5% |
| **4. SISTEMA CENTRAL (VMS/VIDEOWALL)**| **1** | **$1,229,500** | **$1,229,500** | **75.3%** |
| VMS, Videowall, Storage 90TB | 1 | $1,224,000 | $1,224,000 | 74.9% |
| Documentación Técnica | 1 | $5,500 | $5,500 | 0.4% |
| **TOTAL CAPEX** | - | - | **$1,634,000** | **100%** |

**CAPEX/cámara:** $1,890,000 / 30 = **$63,000 USD/cámara** (Solución llave en mano con integración CCO y Backbone FO)

---

## 📐 **ESPECIFICACIONES TÉCNICAS DETALLADAS**

### **1. CÁMARA IP PTZ**

| Parámetro | Especificación Mínima | Cumplimiento |
|:----------|:---------------------|:-------------|
| **Resolución** | 1920×1080 (1080p Full HD) | AT3 |
| **Sensor** | 1/2.8" Progressive Scan CMOS | - |
| **Zoom óptico** | 30× mínimo | T04 |
| **Zoom digital** | 16× | - |
| **Rango IR** | 150 metros | Visión nocturna |
| **Rotación Pan** | 360° continuo | PTZ completo |
| **Rotación Tilt** | -15° a +90° | - |
| **Velocidad Pan** | 0.1°-120°/s | - |
| **Presets** | ≥256 posiciones | Cobertura múltiple |
| **Compresión video** | H.265/H.264/MJPEG | Eficiencia ancho de banda |
| **Bitrate** | Hasta 16 Mbps | - |
| **FPS** | 30 fps @ 1080p | Fluidez |
| **WDR** | 120 dB mínimo | Condiciones luz variable |
| **Protección** | IP66 (domo completo) | Intemperie |
| **Vandalismo** | IK10 | Anti-vandálica |
| **Temperatura** | -30°C a +60°C | Ambiente colombiano |
| **Alimentación** | PoE+ (IEEE 802.3at) 25.5W | Simplifica instalación |
| **Almacenamiento local** | MicroSD hasta 256GB | Backup |

**Marcas aceptadas:** Axis, Hikvision, Dahua, Hanwha (Samsung), Bosch

---

### **2. FUNCIONES ANALÍTICAS (VIDEO ANALYTICS)**

| Función | Aplicación ITS | Obligatoria |
|:--------|:---------------|:------------|
| **Detección de movimiento** | Eventos en vía | ✅ SÍ |
| **Conteo vehicular** | Aforo básico | ✅ SÍ |
| **Detección de ocupación** | Vehículo detenido | ⚠️ Deseable |
| **Clasificación vehicular** | Tipo de vehículo (2-9 ejes) | ⚠️ Deseable |
| **Detección de dirección** | Sentido circulación | ⚠️ Deseable |
| **ANPR (reconocimiento placas)** | NO (se hace con RADAR-ANPR dedicado) | ❌ NO |

---

## 🗺️ **UBICACIONES SEGÚN TABLA MAESTRA**

### **Distribución por Unidad Funcional:**

| UF | Cantidad CCTV | PKR Ejemplos | Observaciones |
|:---|:--------------|:-------------|:--------------|
| **0D** | 7 | 40+050, 69+000, 81+000, 97+030, 104+150 | Mayor densidad (peajes/intersecciones) |
| **1** | 3 | 85+370, 87+100 | ETD integrada en PKR 85+370 |
| **2** | 3 | 13+470, 14+500 | Zona crítica |
| **5.1** | 6 | 9+100, 60+480, 61+675, 63+250, 91+850, 93+920 | Distribuidas |
| **6** | 2 | 81+650, 81+900 | Peaje Aguas Negras (⚠️ Revisar: Usuario indica 80+000) |
| **9** | 4 | 113+300, 115+800, 116+900 | AS Aguas Negras |
| **11** | 5 | 0+320, 4+150, 4+400 (CCO), 128+000, 9+800 | Incluye CCO |
| **13** | 1 | 3+875 | Báscula/WIM |
| **5.2** | 1 | 38+100 | Inicio monitoreo |
| **Eliminadas** | -2 | 40+050 (reactivada), 41+800 | Fila 89 sin justificación |
| **TOTAL** | **30** | - | **13 UFs cubiertas** |

**Ver detalle completo en:** `43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md` (filas con TIPO=CCTV)

---

## 📐 **TIPOS DE INSTALACIÓN**

### **Tipo A: Cámara en Poste Nuevo (15 unidades)**

**Aplicación:** Zonas sin infraestructura existente

**Componentes:**
- Poste metálico 12m galvanizado
- Cimentación 1.0×1.0×1.5m
- Cámara PTZ en punta de poste
- Gabinete equipos en base (2.5m altura)
- Panel solar + baterías (si no hay red eléctrica)

**Costo:** ~$15,000 USD/unidad

---

### **Tipo B: Cámara en Infraestructura Existente (10 unidades)**

**Aplicación:** Pórticos PMV, postes alumbrado público, edificaciones

**Componentes:**
- Soporte metálico tipo L o U
- Cámara PTZ
- Gabinete equipos en base/pared
- Sin poste nuevo

**Costo:** ~$10,000 USD/unidad (ahorro 33%)

---

### **Tipo C: Cámara en Separador Central (5 unidades)**

**Aplicación:** Separador amplio, cobertura bidireccional

**Componentes:**
- Poste metálico 8m (más corto)
- Cimentación reducida 0.8×0.8×1.2m
- Cámara PTZ
- Gabinete equipos

**Costo:** ~$12,000 USD/unidad

---

## 📊 **APU DETALLADO - INSTALACIÓN CCTV TIPO A**

### **APU-CCTV-001: Instalación CCTV en Poste Nuevo 12m**

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. | Total |
|:-----|:------------|:-------|:---------|:-------------|:------|
| **A. EQUIPO CÁMARA** | | | | | **$3,368.36** |
| Cámara PTZ Dahua 4MP 32x | DH-SD5A432GB-HNR | UND | 1.0 | $868.36 | $868.36 |
| Domo policarbonato | IP66/IK10 | UND | 1.0 | $800 | $800 |
| Soporte montaje | Para poste Ø4" | UND | 1.0 | $350 | $350 |
| Inyector PoE+ 30W | IEEE 802.3at | UND | 1.0 | $180 | $180 |
| DPS datos + energía | Protección | UND | 1.0 | $150 | $150 |
| Cable UTP Cat6 ext 100m | Conexión | UND | 1.0 | $80 | $80 |
| Gabinete IP65 equipos | 40×50×25cm | UND | 1.0 | $350 | $350 |
| Accesorios (conectores, etc.) | Varios | GLB | 1.0 | $590 | $590 |
| **B. POSTE Y ESTRUCTURA** | | | | | **$3,500** |
| Poste metálico 12m Ø4" | Acero galvanizado | UND | 1.0 | $2,800 | $2,800 |
| Corona antiescalatoria | Protección | UND | 1.0 | $220 | $220 |
| Escalerilla interior | Mantenimiento | UND | 1.0 | $180 | $180 |
| Tapa superior | Protección lluvia | UND | 1.0 | $80 | $80 |
| Señalización poste | Reflectiva amarilla | UND | 1.0 | $220 | $220 |
| **C. OBRAS CIVILES** | | | | | **$1,500** |
| Excavación cimentación | 1.0×1.0×1.5m | M³ | 1.5 | $45.00 | $67.50 |
| Concreto f'c=3000 PSI | Fundación | M³ | 1.2 | $180.00 | $216.00 |
| Acero refuerzo | #5 + estribos | KG | 40.0 | $2.80 | $112.00 |
| Pernos anclaje | 4×M20×600mm | UND | 4.0 | $18.00 | $72.00 |
| Canalización FO | Hasta troncal (40m) | ML | 40.0 | $8.50 | $340.00 |
| Ducto HDPE 2" | Fibra derivación | ML | 40.0 | $3.20 | $128.00 |
| Caja empalme FO | Derivación | UND | 1.0 | $450.00 | $450.00 |
| Puesta a tierra | Varilla + tratamiento | UND | 1.0 | $350.00 | $350.00 |
| **D. INSTALACIÓN Y MONTAJE** | | | | | **$2,800** |
| Ingeniero comisionamiento | Configuración + pruebas | HH | 8.0 | $50.00 | $400.00 |
| Técnico CCTV | Instalación cámara | HH | 12.0 | $30.00 | $360.00 |
| Técnico FO | Fusiones | HH | 6.0 | $25.00 | $150.00 |
| Oficial electricista | Conexiones eléctricas | HH | 8.0 | $18.00 | $144.00 |
| Oficial civil | Cimentación | HH | 16.0 | $18.00 | $288.00 |
| Operador grúa | Montaje poste 12m | HH | 4.0 | $35.00 | $140.00 |
| Ayudante | Apoyo general | HH | 32.0 | $10.00 | $320.00 |
| Supervisor SST | Seguridad | HH | 12.0 | $20.00 | $240.00 |
| Transporte equipos | Movilización | GLB | 1.0 | $120.00 | $120.00 |
| Señalamiento vial | Durante obras | GLB | 1.0 | $150.00 | $150.00 |
| Certificación | Protocolo SAT | UND | 1.0 | $488.00 | $488.00 |
| **E. EQUIPOS Y HERRAMIENTAS** | | | | | **$1,200** |
| Grúa telescópica 15m | Izaje | HH | 4.0 | $120.00 | $480.00 |
| Plataforma elevadora | Trabajo en altura | HH | 8.0 | $45.00 | $360.00 |
| Fusionadora FO | Empalmes | HH | 4.0 | $30.00 | $120.00 |
| OTDR | Pruebas fibra | HH | 2.0 | $10.00 | $20.00 |
| Laptop + software NVR | Configuración | HH | 6.0 | $10.00 | $60.00 |
| Herramienta menor | Varios | GLB | 1.0 | $160.00 | $160.00 |
| **SUBTOTAL DIRECTO** | | | | | **$12,368.36** |
| **Administración (2%)** | | | | | **$247.37** |
| **Imprevistos (1%)** | | | | | **$123.68** |
| **Utilidad (1%)** | | | | | **$123.68** |
| **TOTAL APU-CCTV-001** | | | | | **$12,863.09/cámara** |

**Para 15 cámaras Tipo A:** 15 × $17,688 = **$265,320 USD**

---

### **APU-CCTV-002: Instalación CCTV en Infraestructura Existente**

| Ítem | Descripción | Total (USD) |
|:-----|:------------|:------------|
| **Equipo cámara** | (igual Tipo A) | $8,000 |
| **Soporte en estructura** | Sin poste nuevo | $400 |
| **Obras civiles** | Solo canalización (sin cimentación) | $600 |
| **Instalación** | Menor complejidad | $1,800 |
| **Equipos** | Sin grúa grande | $400 |
| **SUBTOTAL** | | $6,568.36 |
| **AIU (4%)** | | $262.73 |
| **TOTAL APU-CCTV-002** | | **$6,831.09/cámara** |

**Para 10 cámaras Tipo B:** 10 × $6,831.09 = **$68,310.90 USD**

---

### **APU-CCTV-003: Instalación CCTV en Separador Central**

| Ítem | Total (USD) |
|:-----|:------------|
| **Equipo cámara** | $8,000 |
| **Poste 8m** | $1,800 |
| **Obras civiles** | $1,000 |
| **Instalación** | $2,000 |
| **Equipos** | $800 |
| **SUBTOTAL** | $8,968.36 |
| **AIU (4%)** | $358.73 |
| **TOTAL APU-CCTV-003** | **$9,327.09/cámara** |

**Para 5 cámaras Tipo C:** 5 × $9,327.09 = **$46,635.45 USD**

---

## 📊 **VALIDACIÓN DE PRESUPUESTO**

| Tipo | Cantidad | Costo Unit. | Subtotal |
|:-----|:---------|:------------|:---------|
| **Tipo A** (Poste nuevo 12m) | 15 | $12,863.09 | $192,946.35 |
| **Tipo B** (Infraestructura existente) | 10 | $6,831.09 | $68,310.90 |
| **Tipo C** (Separador 8m) | 5 | $9,327.09 | $46,635.45 |
| **TOTAL CAPEX DETALLADO** | **30** | - | **$307,892.70** |
| **Descuento volumen (-15%)** | - | - | **-$46,183.90** |
| **TOTAL AJUSTADO** | - | - | **$261,708.80 USD** |

**✅ VALIDADO vs. PRESUPUESTO_ITS_PURO ($240,000 equipos + $150,000 instalación = $390,000)**

---

## 🔧 **INTEGRACIÓN CON SISTEMAS**

### **3.1 Conexión a Red ITS**

```
Troncal Fibra 48h (separador central)
        |
Caja Derivación FO
        |
Fibra 12h × 40m (hasta poste CCTV)
        |
ODF 12 puertos (en gabinete CCTV)
        |
Patch Cord FO LC-LC
        |
Switch L2 (compartido o dedicado)
        |
Patch Cord UTP Cat6
        |
Inyector PoE+ 30W
        |
Cable UTP Cat6 ext (hasta cámara)
        |
CÁMARA PTZ IP
```

**VLANs:**
- VLAN 10: Tráfico video CCTV
- VLAN 1: Gestión de cámara (acceso web)

---

### **3.2 Conexión a NVR en CCO**

| Parámetro | Especificación |
|:----------|:--------------|
| **Protocolo** | ONVIF Profile S/G/T |
| **Streaming** | RTSP over TCP |
| **Resolución grabación** | 1080p @ 15 fps (continuo) |
| **Bitrate** | 4 Mbps promedio por cámara |
| **Ancho de banda total** | 30 cámaras × 4 Mbps = 120 Mbps |
| **Almacenamiento** | 30 días × 30 cámaras ≈ 15 TB |
| **Redundancia** | Grabación local (MicroSD) + NVR |

---

## 📋 **CRONOGRAMA DE INSTALACIÓN**

### **Estrategia por Lotes:**

| Lote | Cantidad | Tipo | Rutas | Duración |
|:-----|:---------|:-----|:------|:---------|
| **Lote 1** | 10 cámaras | Mixto (A+B+C) | RN 4510 | 5 semanas |
| **Lote 2** | 12 cámaras | Mixto (A+B+C) | RN 4511 (tramo 1) | 6 semanas |
| **Lote 3** | 8 cámaras | Mixto (A+B+C) | RN 4511 (tramo 2) + RN 4513 | 4 semanas |

**Rendimiento:** 2 cámaras/semana con 1 cuadrilla  
**Cuadrillas:** 1 cuadrilla (8 personas)  
**Duración total:** 15 semanas (≈4 meses)

**Inicio:** Mes 17 del proyecto (paralelo a SOS)  
**Fin:** Mes 21 del proyecto

---

## 🔍 **PRUEBAS Y CERTIFICACIÓN**

### **4.1 Protocolo de Pruebas por Cámara**

| # | Prueba | Criterio de Aceptación |
|:--|:-------|:-----------------------|
| 1 | **Inspección física** | Sin daños, montaje firme, orientación correcta |
| 2 | **Alimentación PoE** | 48-54VDC, corriente <570mA |
| 3 | **Conexión red** | Ping exitoso desde CCO |
| 4 | **Video en vivo** | Imagen clara 1080p @ 30 fps |
| 5 | **Zoom óptico** | 30× funcional, enfoque automático |
| 6 | **Pan/Tilt** | 360° pan, -15° a +90° tilt, suave |
| 7 | **Presets** | Mínimo 10 presets configurados |
| 8 | **IR nocturno** | Visión hasta 150m en oscuridad total |
| 9 | **WDR** | Imagen clara en contraluz |
| 10 | **Grabación NVR** | Video grabando en CCO |
| 11 | **Analytics** | Detección movimiento + conteo |
| 12 | **Fibra óptica** | OTDR <0.5 dB total |
| 13 | **As-Built** | Coordenadas GPS ±3m |

---

## 🛠️ **MANTENIMIENTO PREVENTIVO**

### **5.1 Rutinas de Mantenimiento**

| Actividad | Frecuencia | Costo Anual (USD) |
|:----------|:-----------|:------------------|
| **Limpieza domo** | Trimestral | $6,000 |
| **Verificación funcional** | Mensual (remota) | $1,800 |
| **Ajuste presets** | Semestral | $2,400 |
| **Revisión conexiones** | Anual | $1,800 |
| **Actualización firmware** | Según fabricante | $1,200 |
| **Reparaciones menores** | Según necesidad | $3,000 |
| **Reemplazo equipos** | 1-2 cámaras/año | $1,800 |
| **TOTAL OPEX** | - | **$18,000/año** |

**OPEX/cámara/año:** $18,000 / 30 = **$600/cámara/año**

---

## 📝 **DOCUMENTOS ENTREGABLES**

1. ✅ Este documento (T05 CCTV)
2. ⏳ Planos de ubicación (30 cámaras)
3. ⏳ Planos típicos instalación (Tipos A, B, C)
4. ⏳ Matriz de presets por cámara
5. ⏳ Configuración VLANs y QoS
6. ⏳ Especificación técnica de compra
7. ⏳ Protocolo de pruebas FAT/SAT
8. ⏳ Manual de operación (CCO)
9. ⏳ Plan de mantenimiento preventivo

---

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 30 cámaras CCTV
- CAPEX mantenido: USD $390,000
- OPEX mantenido: USD $18,000/año
- Metodología PKD lineal aplicada

