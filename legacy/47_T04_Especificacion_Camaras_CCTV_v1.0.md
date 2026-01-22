# T04: ESPECIFICACIÓN TÉCNICA - CÁMARAS CCTV
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Cámara IP PTZ para Vigilancia Vial Exterior  
**Responsable:** Ing. de Sistemas ITS / Ing. de Seguridad Electrónica  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Cámara IP PTZ Exterior para Corredor Vial |
| **Cantidad estimada** | 120 - 150 unidades |
| **Ubicación** | A lo largo del corredor (cada 2-3 km), peajes, áreas de servicio, puntos críticos |
| **Sistema asociado** | ITS (Subsistema CCTV) |
| **Criticidad** | 🔴 Alta |
| **Documentos de Referencia** | `31_T02_Analisis_Requisitos_ITS_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

Captura de video en alta definición para la supervisión del tráfico, detección de incidentes, apoyo en emergencias y registro de evidencia en el corredor vial.

### 2.2 Capacidades Requeridas

- Captura de video continua 24/7/365.
- Movimiento PTZ (Pan-Tilt-Zoom) controlable remotamente desde el CCO.
- Operación en condiciones climáticas adversas (lluvia, sol intenso, noche).
- Integración con el sistema de Detección Automática de Incidentes (DAI).

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Cámara y Video

| Parámetro | Especificación Mínima | Preferible |
|:----------|:----------------------|:-----------|
| **Resolución** | 1080p (1920x1080) | 4K (3840x2160) |
| **Sensor** | 1/2.8" CMOS de escaneo progresivo | 1/1.8" CMOS |
| **Frame Rate** | 25 fps @ 1080p | 30 fps @ 4K |
| **Compresión** | H.265, H.264 | H.265+ |
| **WDR (Amplio Rango Dinámico)** | 120 dB True WDR | 140 dB |
| **Iluminación Mínima (Color)** | 0.01 lux | 0.005 lux |
| **Iluminación Mínima (B/N)** | 0.001 lux | 0.0005 lux |
| **Iluminador IR Inteligente** | Rango de 150 metros | Rango de 200 metros |

### 3.2 Lente y PTZ

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Zoom Óptico** | 30x |
| **Zoom Digital** | 16x |
| **Rango de Paneo (Pan)** | 360° continuo |
| **Rango de Inclinación (Tilt)** | -15° a 90° (con auto-flip) |
| **Velocidad de Paneo** | 0.1° a 300°/s |
| **Presets** | 256 mínimo |
| **Tours/Patrullas** | 8 mínimo |
| **Auto-tracking** | Sí, con seguimiento de vehículos y personas |

### 3.3 Red e Interfaces

| Parámetro | Especificación |
|:----------|:----------------|
| **Protocolos** | TCP/IP, UDP, HTTP, HTTPS, RTSP, **ONVIF Profile S, G, T** |
| **Interfaz** | 1x RJ45 10/100/1000 Base-T |
| **Alimentación** | PoE+ (IEEE 802.3at) o superior |
| **Seguridad de Red** | Cifrado HTTPS, IEEE 802.1X, filtrado de IP |
| **Almacenamiento Local** | Ranura para tarjeta microSD/SDHC/SDXC, hasta 256 GB |

### 3.4 Protección y Ambiente

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Grado de Protección IP** | **IP66** (protección contra polvo y chorros de agua potentes) |
| **Grado de Protección IK** | **IK10** (protección antivandalismo) |
| **Temperatura de Operación** | -30°C a +65°C |
| **Humedad Relativa** | 0% a 95% (sin condensación) |
| **Protección contra Sobretensiones** | TVS 6000V para rayos y transitorios |

---

## 4. FUNCIONALIDADES AVANZADAS (Requerido)

- **Analítica de Video a Bordo:**
  - Detección de intrusión en zona.
  - Detección de cruce de línea.
  - Detección de objeto abandonado/removido.
  - **Detección de vehículo detenido (para DAI).**
  - **Detección de tráfico en contraflujo (para DAI).**
- **Estabilización de Imagen Electrónica (EIS):** Para mitigar vibraciones por viento o tráfico.
- **Limpiador de Lente (Wiper):** Deseable para zonas de alta precipitación.

---

## 5. ACCESORIOS Y MONTAJE

| Ítem | Especificación |
|:-----|:----------------|
| **Poste/Estructura** | Poste de acero galvanizado, altura de 8-12 metros. |
| **Brazo de Montaje** | Compatible con montaje en poste, de acero inoxidable o aluminio. |
| **Caja de Conexiones** | Estanca (IP66), para proteger conexiones de red y alimentación. |

---

## 6. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación | Cumplimiento |
|:------|:------------|:--------------|
| **ONVIF Profile S, G, T** | Interoperabilidad con VMS y NVRs | 🔴 Obligatorio |
| **IEC 62676** | Estándar para sistemas de videovigilancia | 🔴 Obligatorio |
| **RETIE** | Instalación eléctrica | 🔴 Obligatorio |
| **ISO/IEC 27001** | Principios de seguridad de la información | 🟡 Deseable |

---

## 7. PRUEBAS DE ACEPTACIÓN (SAT)

- [ ] Verificación de resolución y frame rate en el CCO.
- [ ] Prueba completa de funcionalidades PTZ (presets, tours, auto-tracking).
- [ ] Verificación del alcance y claridad del iluminador IR en condiciones nocturnas.
- [ ] Prueba de latencia de video (debe ser < 500 ms).
- [ ] Prueba de analíticas de video (simulación de vehículo detenido).
- [ ] Verificación de grabación y recuperación de video en el NVR.
- [ ] Inspección física de protección IP66 e IK10.

---

## 8. GARANTÍA Y SOPORTE

| Aspecto | Requisito Mínimo |
|:--------|:-------------------|
| **Garantía del Fabricante** | 5 años |
| **Soporte Técnico** | Local en Colombia, 24/7 |
| **Disponibilidad de Repuestos** | Garantizada por 10 años |

---

## 9. PROVEEDORES PRELIMINARES

| Proveedor | Modelo de Referencia |
|:----------|:-----------------------|
| Axis Communications | Serie Q61 o similar |
| Hikvision | Serie Pro (DarkFighterX) |
| Dahua | Serie WizMind o Ultra |
| Bosch | Serie MIC o AUTODOME |

---

**Versión:** 1.0  
**Estado:** ✅ Especificación Lista para Cotización  
**Fecha:** 18/10/2025

