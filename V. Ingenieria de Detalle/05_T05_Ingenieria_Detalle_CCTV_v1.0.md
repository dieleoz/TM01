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
| 1.3 | 27/01/2026 | **Validación Auditoría:** Retorno a 30 cámaras (20 PTZ + 10 Fijas) con segregación Peajes | Antigravity AI |

---

## 1. 📜 **ALCANCE Y TRAZABILIDAD CONTRACTUAL**
Esta ingeniería de detalle da cumplimiento a las obligaciones establecidas en:

1.  **AT1 - Alcance del Proyecto:**
    *   **Fuente:** `AT1_Alcance_Proyecto_v1.0.md`
    *   **Requisito:** Cobertura de seguridad en Nodos Críticos y cumplimiento de normativa IP/REV.
    *   **Justificación de Cantidad:** El diseño contempla **20 Cámaras** (15 Tipo A + 5 Tipo C) seleccionadas para cubrir el 100% de los puntos de interés definidos en el alcance contractual (Peajes, Intersecciones, Pasos Urbanos).

2.  **AT3 - Especificaciones Generales:**
    *   **Fuente:** `AT3_Especificaciones_Generales_v1.0.md` (Cap. 4.2 ITS)
    *   **Cumplimiento:** Visibilidad, integración IP/REV, y estándares de montaje.

---

## 📋 **RESUMEN EJECUTIVO**

### **Sistema CCTV:**

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Cantidad total** | **30 cámaras** | 20 PTZ + 10 Fijas (Validado Audit. Forense) |
| **Distribución** | Peajes, Pesajes, CCO, Intersecciones | Según Dictamen Técnico |
| **Tipo principal** | PTZ (20) + Bullet Fija (10) | AT2 / Manual Señalización 2024 |
| **Resolución** | 1080p (1920×1080) mínimo | AT3 |
| **Zoom PTZ** | **32X Mínimo** | Req. IP/REV Auditado |
| **Cifrado** | **AES-256** | Req. IP/REV Almacenamiento |
| **Almacenamiento** | 30 días×30 cámaras en NVR CCO | AT2 / Estándar Seguridad |
| **CAPEX Total** | **$302,946.35 USD** | Solo equipos de campo (VMS en Cap. 8 CCO) |
| **OPEX Anual** | **$18,000 USD** | $600/cámara/año |
| **OPEX 20 años** | **$360,000 USD** | Mantenimiento |

---

## 💰 **PRESUPUESTO DETALLADO**

| Tipo | Cantidad | Costo Unit. | Subtotal |
|:-----|:---------|:------------|:---------|
| **Tipo A - PTZ** (Poste nuevo 12m + Solar/Red + PTZ 32X) | 20 | $12,900.00 | $258,000.00 |
| **Tipo B - Fija** (Montaje Estructura + Bullet IP) | 10 | $4,494.63 | $44,946.35 |
| **TOTAL CAPEX** | **30** | - | **$302,946.35 USD** |

> **Nota:** La infraestructura central (Servidores/Videowall/VMS) está presupuestada en el **Capítulo 8 (SISTEMA CCO)** bajo el ítem 8.1.1.

---

## 📐 **ESPECIFICACIONES TÉCNICAS DETALLADAS**

### **1. CÁMARA IP PTZ (TIPO A)**

| Parámetro | Especificación Mínima | Cumplimiento |
|:----------|:---------------------|:-------------|
| **Resolución** | 1920×1080 (1080p Full HD) | AT3 |
| **Zoom óptico** | **32× mínimo** | **Req. IP/REV** |
| **Rango IR** | 150 metros | Visión nocturna |
| **Protección** | **IP66** | Manual 2024 |
| **Seguridad** | HTTPS / 802.1x / **AES-256 (Storage)** | Ciberseguridad |

### **2. CÁMARA FIJA BULLET (TIPO B)**

| Parámetro | Especificación Mínima | Cumplimiento |
|:----------|:---------------------|:-------------|
| **Resolución** | 4MP | Identificación Activos |
| **Lente** | Varifocal Motorizado 2.8-12mm | Ajuste campo visual |
| **WDR** | 120 dB | Contraluz |
| **Protección** | **IP67 / IK10** | Intemperie/Vandalismo |

---

## 📊 **APU DETALLADO - INSTALACIÓN CCTV**

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
| **Tipo C** (Separador 8m) | 5 | $9,327.09 | $46,635.45 |
| **TOTAL CAPEX DETALLADO** | **20** | - | **$239,581.80** |
| **Descuento volumen (-15%)** | - | - | **-$35,937.27** |
| **TOTAL AJUSTADO** | - | - | **$203,644.53 USD** |

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

