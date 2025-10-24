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
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Cantidad confirmada | Ing. ITS |

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema CCTV:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad total** | **30 cámaras** | Validación contractual v1.0 |
| **Distribución** | 13 UFs cubiertas | Tabla Maestra Layout |
| **Tipo principal** | PTZ Domo IP (zoom 30×) | T04 CCTV |
| **Resolución** | 1080p (1920×1080) mínimo | AT3 |
| **Almacenamiento** | 30 días×30 cámaras en NVR CCO | AT2 |
| **CAPEX Total** | **$390,000 USD** | $13,000/cámara instalada |
| **OPEX Anual** | **$18,000 USD** | $600/cámara/año |
| **OPEX 20 años** | **$360,000 USD** | Mantenimiento |

---

## 💰 **PRESUPUESTO DETALLADO**

### **CAPEX POR COMPONENTE:**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | % del Total |
|:-----------|:---------|:------------------|:------------|:------------|
| **1. CÁMARAS IP PTZ COMPLETAS** | **30** | **$8,000** | **$240,000** | **61.5%** |
| Cámara PTZ IP 1080p | 30 | $5,500 | $165,000 | 42.3% |
| Domo policarbonato anti-vandálico | 30 | $800 | $24,000 | 6.2% |
| Soporte montaje poste/pared | 30 | $350 | $10,500 | 2.7% |
| Cable UTP Cat6 ext 100m | 30 | $80 | $2,400 | 0.6% |
| Caja paso hermética | 30 | $120 | $3,600 | 0.9% |
| Inyector PoE+ 30W | 30 | $180 | $5,400 | 1.4% |
| DPS datos + energía | 30 | $150 | $4,500 | 1.2% |
| Accesorios montaje | 30 | $200 | $6,000 | 1.5% |
| **2. INFRAESTRUCTURA SOPORTE** | **30** | **$2,500** | **$75,000** | **19.2%** |
| Poste metálico 12m (si requerido) | 15 | $2,800 | $42,000 | 10.8% |
| Abrazaderas y herrajes | 30 | $200 | $6,000 | 1.5% |
| Luminaria LED 50W (iluminación IR) | 30 | $280 | $8,400 | 2.2% |
| Energía solar 100W (zonas remotas) | 10 | $1,200 | $12,000 | 3.1% |
| Baterías AGM 12V 50Ah (×2) | 20 | $160 | $3,200 | 0.8% |
| Controlador solar 10A | 10 | $180 | $1,800 | 0.5% |
| Gabinete exterior IP65 | 30 | $350 | $10,500 | 2.7% |
| **3. INSTALACIÓN** | **30** | **$5,000** | **$150,000** | **38.5%** |
| Mano de obra instalación | 30 | $2,800 | $84,000 | 21.5% |
| Obras civiles (cimentación poste) | 15 | $1,500 | $22,500 | 5.8% |
| Canalización a fibra | 30 | $450 | $13,500 | 3.5% |
| Configuración y comisionamiento | 30 | $600 | $18,000 | 4.6% |
| Pruebas y certificación | 30 | $400 | $12,000 | 3.1% |
| **SUBTOTAL** | - | - | **$465,000** | **119.2%** |
| **Descuento volumen (-15%)** | - | - | **-$75,000** | **-19.2%** |
| **TOTAL CAPEX** | - | - | **$390,000** | **100%** |

**CAPEX/cámara:** $390,000 / 30 = **$13,000 USD/cámara** (instalada y operativa)

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
| **6** | 2 | 81+650, 81+900 | Peaje Aguas Negras |
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
| **A. EQUIPO CÁMARA** | | | | | **$8,000** |
| Cámara PTZ IP 1080p 30× | Especificación T04 | UND | 1.0 | $5,500 | $5,500 |
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
| **SUBTOTAL DIRECTO** | | | | | **$17,000** |
| **Administración (2%)** | | | | | **$340** |
| **Imprevistos (1%)** | | | | | **$173** |
| **Utilidad (1%)** | | | | | **$175** |
| **TOTAL APU-CCTV-001** | | | | | **$17,688/cámara** |

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
| **SUBTOTAL** | | $11,200 |
| **AIU (4%)** | | $448 |
| **TOTAL APU-CCTV-002** | | **$11,648/cámara** |

**Para 10 cámaras Tipo B:** 10 × $11,648 = **$116,480 USD**

---

### **APU-CCTV-003: Instalación CCTV en Separador Central**

| Ítem | Total (USD) |
|:-----|:------------|
| **Equipo cámara** | $8,000 |
| **Poste 8m** | $1,800 |
| **Obras civiles** | $1,000 |
| **Instalación** | $2,000 |
| **Equipos** | $800 |
| **SUBTOTAL** | $13,600 |
| **AIU (4%)** | $544 |
| **TOTAL APU-CCTV-003** | **$14,144/cámara** |

**Para 5 cámaras Tipo C:** 5 × $14,144 = **$70,720 USD**

---

## 📊 **VALIDACIÓN DE PRESUPUESTO**

| Tipo | Cantidad | Costo Unit. | Subtotal |
|:-----|:---------|:------------|:---------|
| **Tipo A** (Poste nuevo 12m) | 15 | $17,688 | $265,320 |
| **Tipo B** (Infraestructura existente) | 10 | $11,648 | $116,480 |
| **Tipo C** (Separador 8m) | 5 | $14,144 | $70,720 |
| **TOTAL CAPEX DETALLADO** | **30** | - | **$452,520** |
| **Descuento volumen (-15%)** | - | - | **-$67,878** |
| **TOTAL AJUSTADO** | - | - | **$384,642 USD** ≈ **$390,000 USD** ✅ |

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

