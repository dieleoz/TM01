# T04: ESPECIFICACIONES TÉCNICAS - CCTV (CIRCUITO CERRADO DE TELEVISIÓN)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** CCTV - Sistema de Circuito Cerrado de Televisión  
**Responsable:** Ing. ITS / Ing. Seguridad / Administrador Contractual EPC  
**Versión:** 1.1  
**Referencia T01:** T01_Ficha_Sistema_ITS_v1.2  
**Referencia T03:** T03_Arquitectura_Conceptual_ITS_v1.0  
**Referencia Validación:** 37_VALIDACION_CONTRACTUAL_CCTV_v1.0  
**Referencia Layout:** 42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0  

---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 30 cámaras estratégicas con nota de optimización futura | Adm. Contractual EPC |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** Cantidad confirmada 30 cámaras | Adm. Contractual EPC |

---

## 1. IDENTIFICACIÓN Y ALCANCE

### 1.1 Identificación del Sistema

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | CCTV - Sistema de Circuito Cerrado de Televisión |
| **Categoría** | ITS (Intelligent Transportation Systems) - Videovigilancia |
| **Código interno** | T04-CCTV-003-v1.0 |
| **Cantidad total** | **30 cámaras** |
| **CAPEX estimado** | **USD $1,071,960** (35,732 USD/cámara instalada) |
| **Documentos base** | T01 v1.2, T03 v1.0, Validación v1.0, Layout v1.0 |

### 1.2 Distribución por Tipo de Cámara

| Tipo | Cantidad | Función | Ubicación Típica |
|:-----|:---------|:--------|:-----------------|
| **PTZ (Pan-Tilt-Zoom)** | 20 | Monitoreo dinámico, control remoto | Separador central, postes altos |
| **Fijas** | 10 | Monitoreo estático específico | Peajes, áreas de servicio |
| **TOTAL** | **30** | - | - |

### 1.3 Alcance de las Especificaciones

**Este documento especifica:**
- ✅ Características técnicas mínimas de cámaras PTZ y fijas
- ✅ Requisitos de desempeño (resolución, fps, zoom, visión nocturna)
- ✅ Normativa nacional e internacional aplicable
- ✅ Criterios de aceptación (FAT/SAT)
- ✅ Integración con CCO, SCADA, VMS (Video Management System)
- ✅ Ubicaciones estratégicas (referencia a layout georreferenciado)

**Nota de Optimización Futura:**
> "El diseño actual contempla 30 cámaras estratégicas. Existe potencial de optimización a **12 cámaras** mediante análisis de cobertura y redundancia, lo cual podría generar un ahorro de ~$180,000 USD. Esta optimización se evaluará en fase de ingeniería de detalle (T05)."

---

## 2. MARCO NORMATIVO Y CONTRACTUAL

### 2.1 Referencias Contractuales

| Documento | Sección | Requisito Clave |
|:----------|:--------|:----------------|
| **Apéndice Técnico 2** | §3.3.4.7 "Sistemas de Videovigilancia" | Puntos críticos, peajes, áreas de servicio |
| **Apéndice Técnico 3** | Cap. IV "Sistemas ITS" | Resolución mínima 320×240 px, 10 fps |
| **Apéndice Técnico 4** | "Indicadores Nivel Servicio" | Disponibilidad ≥99%, monitoreo continuo |

### 2.2 Normativa Aplicable

#### Normativa Nacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **Ley 1581/2012** | Protección de Datos Personales | Tratamiento de imágenes de personas/vehículos |
| **Decreto 1377/2013** | Reglamentación Ley 1581 | Procedimientos de protección de datos |
| **RETIE** | Reglamento Técnico Instalaciones Eléctricas | Alimentación eléctrica, tierras |
| **Resolución 2273/2014** | Plan Nacional de Seguridad Vial | Sistemas de vigilancia en carreteras |

#### Normativa Internacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **ISO TC-204** | Intelligent Transport Systems | Sistemas ITS |
| **ITU-T H.550-H.569** | Vehicular gateways and ITS | Comunicaciones video ITS |
| **ONVIF** | Open Network Video Interface Forum | Interoperabilidad de cámaras IP |
| **H.264 / H.265** | Compresión de video | Codecs de video |
| **IEC 60529** | Degrees of protection (IP Code) | Protección IP65/IP66 |
| **IEEE 802.3af/at** | Power over Ethernet (PoE/PoE+) | Alimentación por Ethernet |

### 2.3 Certificaciones Requeridas

| Certificación | Organismo | Obligatoria | Aplicación |
|:--------------|:----------|:------------|:-----------|
| **ONVIF Profile S/T** | ONVIF | ✅ Sí | Interoperabilidad |
| **CE** | Conformidad Europea | ✅ Sí | Equipos importados |
| **FCC** | USA | ✅ Sí | Equipos electrónicos |
| **IP65/IP66** | IEC 60529 | ✅ Sí | Cámaras exteriores |
| **ISO 9001:2015** | Organismo certificador | ✅ Sí | Fabricante |

---

## 3. ESPECIFICACIONES TÉCNICAS GENERALES

### 3.1 Características Ambientales

| Parámetro | Especificación Mínima | Referencia |
|:----------|:---------------------|:-----------|
| **Temperatura de operación** | -10°C a +50°C | Condiciones tropicales |
| **Humedad relativa** | 0-95% sin condensación | IEC 60068-2-78 |
| **Protección IP** | **IP66 recomendado** (IP65 mínimo) | IEC 60529 |
| **Resistencia a viento** | 150 km/h | Zona tropical |
| **Altitud operación** | 0-500 msnm | Magdalena Medio |
| **Resistencia UV** | Mín. 10 años | ASTM G154 |
| **Protección contra rayos** | Integrada o externa | IEC 61643-11 |

### 3.2 Requisitos Eléctricos

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tensión nominal** | 120 VAC, 60 Hz **o PoE+ (IEEE 802.3at)** | RETIE / IEEE |
| **Variación de tensión** | ±10% | RETIE |
| **Consumo máximo (PTZ)** | **30 W** (con PoE+) o 60 W (AC) | - |
| **Consumo máximo (Fija)** | **15 W** (con PoE) o 30 W (AC) | - |
| **Factor de potencia** | ≥0.9 (si AC) | RETIE |
| **Respaldo UPS (local)** | 4 horas mínimo | AT2 |
| **Sistema de tierras** | <10 Ω | RETIE |

### 3.3 Requisitos de Comunicaciones y Video

| Parámetro | Especificación | Protocolo/Norma |
|:----------|:---------------|:----------------|
| **Medio físico** | Fibra óptica + Ethernet (PoE) | IEEE 802.3 |
| **Velocidad de red** | 1 Gbps (switch) / 100 Mbps (cámara) | IEEE 802.3 |
| **Protocolo de red** | TCP/IP | RFC 791, RFC 793 |
| **Protocolo de video** | RTSP / ONVIF | ONVIF Profile S/T |
| **Codec de video** | **H.265 (HEVC)** recomendado, H.264 mínimo | ITU-T |
| **Codec de audio** | AAC o G.711 | - |
| **Bitrate** | 2-8 Mbps (ajustable según resolución) | - |
| **Disponibilidad** | **≥99% anual** | AT2, AT4 |

---

## 4. ESPECIFICACIONES POR COMPONENTE

### 4.1 Cámara PTZ (Pan-Tilt-Zoom) - 20 unidades

#### 4.1.1 Descripción General

Cámara IP motorizada con capacidad de movimiento horizontal (pan), vertical (tilt) y zoom óptico, controlable remotamente desde el CCO. Ubicación preferente: separador central en postes de 12-15 m de altura para visión panorámica de ambas calzadas.

#### 4.1.2 Especificaciones Técnicas de la Cámara

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Sensor de imagen** | CMOS 1/2.8" o superior | Inspección técnica |
| **Resolución** | **≥1920×1080 (Full HD)** | Inspección de imagen |
| **Velocidad de cuadros** | **≥25 fps @ Full HD** | Verificación de video |
| **Rango dinámico** | WDR (Wide Dynamic Range) ≥120 dB | Prueba en contraluz |
| **Iluminación mínima** | <0.01 lux (color) / <0.001 lux (B&N con IR) | Prueba en oscuridad |

#### 4.1.3 Especificaciones de Movimiento (PTZ)

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Pan (horizontal)** | 360° continuo | Prueba funcional |
| **Tilt (vertical)** | -90° a +90° (180° total) | Prueba funcional |
| **Velocidad Pan** | 0.1-120°/seg (ajustable) | Cronómetro |
| **Velocidad Tilt** | 0.1-80°/seg (ajustable) | Cronómetro |
| **Presets** | Mínimo 256 posiciones programables | Configuración |
| **Tours** | Mínimo 8 tours automáticos | Configuración |
| **Precisión posicionamiento** | ±0.1° | Prueba de repetibilidad |

#### 4.1.4 Especificaciones de Zoom

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Zoom óptico** | **30x mínimo** | Inspección técnica |
| **Zoom digital** | 12x (opcional, no crítico) | Inspección técnica |
| **Distancia focal** | 4.3-129 mm (ejemplo 30x) | Datasheet fabricante |
| **Enfoque** | Automático + manual | Prueba funcional |
| **Iris** | Automático (P-Iris o DC-Iris) | Prueba con cambios de luz |

#### 4.1.5 Visión Nocturna

| Parámetro | Especificación |
|:----------|:---------------|
| **Tecnología** | LED infrarrojos (IR) 850 nm |
| **Rango IR** | 150 m mínimo |
| **Conmutación día/noche** | Automática (filtro ICR removible) |
| **Modo nocturno** | Blanco y negro con IR |

#### 4.1.6 Funciones Inteligentes (Opcionales Recomendadas)

| Función | Descripción | Prioridad |
|:--------|:------------|:----------|
| **Detección de movimiento** | Alarma por movimiento en zona definida | 🟡 Media |
| **Autotracking** | Seguimiento automático de vehículos | 🟢 Baja |
| **Detección de intrusión** | Alarma por cruce de línea virtual | 🟡 Media |
| **Detección de objetos abandonados** | Alarma por objetos estáticos | 🟢 Baja |

#### 4.1.7 Fabricantes de Referencia (PTZ)

**Fabricantes aceptables:**

1. **Axis Communications** (Suecia)
   - Modelo: AXIS Q6155-E PTZ
   - Certificación: ONVIF, ISO, líder mundial

2. **Hikvision** (China)
   - Modelo: DS-2DE7432IW-AE
   - 32x zoom, Full HD, IR 200m

3. **Dahua** (China)
   - Modelo: SD6CE245U-HNI
   - 45x zoom, 4 MP, StarLight

4. **Bosch** (Alemania)
   - Modelo: MIC IP fusion 9000i
   - Alta calidad, extremadamente robusta

5. **Hanwha (Samsung)** (Corea del Sur)
   - Modelo: PNP-9200RH
   - 32x zoom, Full HD, WiseNet P

6. **O equivalente** que cumpla especificaciones

---

### 4.2 Cámara Fija (Bullet/Dome) - 10 unidades

#### 4.2.1 Descripción General

Cámara IP fija de alta resolución para monitoreo de puntos específicos (entradas/salidas de peajes, áreas de servicio, puntos de acceso). Menor costo que PTZ pero sin capacidad de movimiento.

#### 4.2.2 Especificaciones Técnicas

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Sensor de imagen** | CMOS 1/2.8" o superior | Inspección técnica |
| **Resolución** | **≥1920×1080 (Full HD)** | Inspección de imagen |
| **Velocidad de cuadros** | **≥25 fps @ Full HD** | Verificación de video |
| **Rango dinámico** | WDR ≥120 dB | Prueba en contraluz |
| **Iluminación mínima** | <0.01 lux (con IR) | Prueba nocturna |
| **Lente** | Focal fija 3.6-12 mm (varifocal preferible) | Inspección |
| **Ángulo de visión** | 90-110° (horizontal) | Cálculo óptico |
| **Protección IP** | IP66 mínimo | IEC 60529 |
| **Visión nocturna IR** | 30-50 m | Prueba nocturna |

#### 4.2.3 Fabricantes de Referencia (Fijas)

1. **Axis Communications** - Modelo: AXIS M3067-P
2. **Hikvision** - Modelo: DS-2CD2143G2-I
3. **Dahua** - Modelo: IPC-HFW5442E-ZE
4. **Bosch** - Modelo: FLEXIDOME IP starlight 8000i
5. **Hanwha** - Modelo: PNO-9080R
6. **O equivalente** que cumpla especificaciones

---

### 4.3 Sistema de Grabación y Almacenamiento (NVR)

#### 4.3.1 Descripción General

Grabadores de video en red (NVR) para almacenamiento local en cada nodo principal (peajes, CCO, áreas de servicio). Redundancia con almacenamiento centralizado en CCO.

#### 4.3.2 Especificaciones Técnicas

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Canales** | 16 canales IP | Inspección técnica |
| **Resolución grabación** | Hasta 12 MP por canal | Configuración |
| **Velocidad grabación** | 25 fps por canal @ Full HD | Verificación |
| **Almacenamiento** | **90 días mínimo** @ Full HD, 25 fps | Cálculo de capacidad |
| **Discos duros** | Enterprise SATA 6 TB × 4 (RAID 5/6) | Inspección |
| **Capacidad total** | ~18 TB útiles (RAID 5) | - |
| **Redundancia** | RAID 5 o RAID 6 | Configuración |
| **Hot-swap** | Sí (discos reemplazables en caliente) | Prueba |

#### 4.3.3 Funcionalidades del NVR

| Función | Requisito |
|:--------|:----------|
| **Grabación continua** | 24/7 todas las cámaras |
| **Grabación por eventos** | Alarmas, detección movimiento |
| **Búsqueda inteligente** | Por fecha/hora, evento, cámara |
| **Exportación** | MP4, AVI, formatos estándar |
| **Backup** | USB, red, nube |
| **Salidas HDMI/VGA** | 2 salidas mínimo (1080p cada una) |
| **Interfaz web** | Acceso remoto vía navegador |

### 4.4 Video Management System (VMS) - Software CCO

#### 4.4.1 Plataforma de Gestión Centralizada

| Característica | Especificación |
|:---------------|:---------------|
| **Arquitectura** | Cliente-servidor |
| **Cámaras soportadas** | ≥100 simultáneas |
| **Usuarios concurrentes** | ≥10 operadores |
| **Visualización** | Videowall + estaciones de trabajo |
| **Mapas GIS** | Integración con mapa del corredor |
| **Grabación centralizada** | Opcional (redundancia con NVRs) |

#### 4.4.2 Funcionalidades del VMS

- ✅ **Visualización multi-cámara:** Grid configurable (1x1 hasta 6×6)
- ✅ **Control PTZ remoto:** Pan, tilt, zoom desde CCO
- ✅ **Secuenciación automática:** Tours de cámaras
- ✅ **Alarmas y eventos:** Integración con SCADA
- ✅ **Búsqueda de video:** Por fecha, hora, cámara, evento
- ✅ **Exportación de evidencia:** Formato legal con timestamp
- ✅ **Gestión de usuarios:** Roles, permisos, auditoría de accesos

#### 4.4.3 Software Recomendado

1. **Milestone XProtect** (Dinamarca) - Líder mundial
2. **Genetec Security Center** (Canadá) - Muy robusto
3. **Avigilon Control Center** (Motorola) - Con IA integrada
4. **Hikvision iVMS** (China) - Incluido con cámaras
5. **Dahua SmartPSS** (China) - Incluido con cámaras
6. **O equivalente** con licencia perpetua

---

## 5. INTEGRACIÓN Y COMPATIBILIDAD

### 5.1 Integración con Sistema Central (CCO)

| Aspecto | Requisito | Verificación |
|:--------|:----------|:-------------|
| **Conexión a CCO** | VMS centralizado, fibra óptica | Prueba de conectividad |
| **Latencia de video** | <500 ms (tiempo real) | Prueba cronometrada |
| **Disponibilidad** | ≥99% anual | Monitoreo 30 días piloto |
| **Control PTZ remoto** | Todas las cámaras PTZ controlables desde CCO | Prueba funcional |
| **Visualización en videowall** | Hasta 12 cámaras simultáneas | Configuración |

### 5.2 Integración con SCADA

| Parámetro | Requisito |
|:----------|:----------|
| **Protocolo** | SNMP v3 o API REST |
| **Variables monitoreadas** | Estado (online/offline), eventos, almacenamiento |
| **Alarmas** | Falla cámara, pérdida video, disco lleno |
| **Eventos ITS** | Activación automática de cámaras por eventos SCADA |

### 5.3 Interfaz con Otros Sistemas

| Sistema | Tipo de Interfaz | Datos Intercambiados |
|:--------|:-----------------|:---------------------|
| **Telecomunicaciones** | Fibra óptica (backbone) | Streams de video, control PTZ |
| **Energía Eléctrica** | 120 VAC o PoE+ | Alimentación |
| **CCO** | VMS + SCADA | Video, eventos, alarmas |
| **Radares/ETD** | API o eventos | Activación por eventos de tráfico |

---

## 6. REQUISITOS DE INSTALACIÓN

### 6.1 Ubicaciones Exactas

**Referencia:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md`

**Distribución de 30 cámaras:**

| Ubicación Tipo | Cantidad | Cámaras PTZ | Cámaras Fijas | Prioridad |
|:---------------|:---------|:------------|:--------------|:----------|
| **Peajes (2 estaciones)** | 8 | 4 | 4 | 🔴 Alta |
| **Áreas de Servicio (2 complejos)** | 4 | 4 | 0 | 🔴 Alta |
| **Intersecciones críticas** | 6 | 6 | 0 | 🔴 Alta |
| **Puentes principales** | 4 | 0 | 4 | 🟡 Media |
| **Túneles / Pasos deprimidos** | 2 | 2 | 0 | 🔴 Alta |
| **Zonas de accidentalidad** | 4 | 4 | 0 | 🔴 Alta |
| **CCO / Báscula WIM** | 2 | 0 | 2 | 🔴 Alta |
| **TOTAL** | **30** | **20** | **10** | - |

### 6.2 Montaje Típico - Cámaras PTZ (Separador Central)

**Configuración:**

```
Vista en Corte:

                    [Cámara PTZ]
                         ↓
                    [Brazo 1.5m]
                         |
                    [Poste 12-15m]
                         |
Separador Central  [====|====]
                         |
                    [Cimentación]
                         |
                    [Zapata + SPT]
```

**Elementos:**
- Poste metálico galvanizado, altura 12-15 m
- Brazo de montaje 1.5 m (proyección lateral)
- Cámara PTZ en extremo de brazo
- Gabinete al pie del poste (switch, UPS, protecciones)
- Cimentación: zapata 1×1×1.2 m
- SPT independiente

### 6.3 Montaje Típico - Cámaras Fijas (Peajes/Áreas)

**Configuración:**
- Montaje en pared o poste existente
- Altura: 3-5 m
- Orientación fija hacia punto de interés
- Cableado UTP Cat6 con PoE+ (desde switch local)

### 6.4 Obras Civiles Requeridas (PTZ en Postes Nuevos)

| Elemento | Especificación | Norma |
|:---------|:---------------|:------|
| **Cimentación** | Zapata 1.0×1.0×1.2 m, f'c=21 MPa | NSR-10 |
| **Poste metálico** | Galvanizado, altura 12-15 m, Ø8" | AASHTO |
| **Brazo de montaje** | Galvanizado, proyección 1.5 m | - |
| **Canalizaciones** | HDPE Ø2" (50 mm), profundidad 0.80 m | RETIE |
| **Caja de registro** | 60×60×80 cm, tapa de concreto | - |
| **Tierras** | SPT independiente, varilla 5/8"×2.4 m, <10 Ω | RETIE |

---

## 7. PRUEBAS Y CRITERIOS DE ACEPTACIÓN

### 7.1 Pruebas en Fábrica (FAT)

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección dimensional** | Verificar dimensiones | Dentro de tolerancias |
| **Inspección visual** | Acabados, lentes, carcasa | Sin defectos, lente limpia |
| **Prueba de resolución** | Verificar Full HD | 1920×1080 @ 25 fps mínimo |
| **Prueba PTZ** | Movimiento Pan/Tilt/Zoom | Rango completo, precisión ±0.1° |
| **Prueba de zoom** | Verificar zoom óptico | 30x mínimo funcional |
| **Prueba de visión nocturna** | Operación en oscuridad | Imagen clara hasta 150 m con IR |
| **Prueba de WDR** | Contraluz fuerte | Imagen balanceada, sin zonas quemadas |
| **Prueba de comunicación** | Streaming RTSP/ONVIF | Stream estable, latencia <500 ms |
| **Prueba de PoE** | Alimentación por Ethernet | Operación normal con PoE+ (25 W) |

### 7.2 Pruebas en Sitio (SAT)

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección de montaje** | Poste, brazo, cámara, gabinete | Vertical ±2°, instalación segura |
| **Prueba de tierras** | Verificar SPT | <10 Ω |
| **Prueba de conectividad** | Red y fibra óptica | Ping <100 ms, 0% pérdida |
| **Prueba de visualización CCO** | Video en VMS del CCO | Imagen clara, sin cortes |
| **Prueba de control PTZ remoto** | Control desde CCO | Movimiento suave, precisión OK |
| **Prueba de presets** | Guardar y recuperar posiciones | 100% presets funcionando |
| **Prueba de tours automáticos** | Secuencias programadas | Tours ejecutándose correctamente |
| **Prueba de visión nocturna** | Operación sin luz ambiente | Imagen útil hasta 150 m |
| **Prueba de grabación NVR** | Almacenamiento local | Grabación continua, reproducción OK |
| **Prueba de cobertura** | Verificar campo de visión | Cubre área requerida |

---

## 8. PRESUPUESTO Y CANTIDADES

### 8.1 Resumen de Cantidades

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:------------|:-------|:---------|:-------------------|:------------|
| 1 | Cámara PTZ IP (Full HD, 30x zoom, IR 150m) | und | 20 | $2,500 | $50,000 |
| 2 | Cámara Fija IP (Full HD, IR 50m) | und | 10 | $800 | $8,000 |
| 3 | NVR 16 canales (18 TB útiles, RAID 5) | und | 2 | $3,500 | $7,000 |
| 4 | Poste metálico 15 m + brazo (para PTZ en separador) | und | 15 | $4,000 | $60,000 |
| 5 | Switch PoE+ 24 puertos (para cámaras locales) | und | 8 | $1,200 | $9,600 |
| 6 | Software VMS (30 licencias) | lic | 30 | $150 | $4,500 |
| 7 | Instalación y configuración | und | 30 | $1,500 | $45,000 |
| 8 | Obras civiles (cimentaciones, canalizaciones) | global | 1 | $25,000 | $25,000 |
| 9 | Fibra óptica y conectividad | global | 1 | $15,000 | $15,000 |
| 10 | Capacitación y documentación | global | 1 | $12,000 | $12,000 |
| 11 | Repuestos iniciales (2 años) | global | 1 | $25,000 | $25,000 |
| | | | | **TOTAL** | **$261,100** |

**Precio unitario promedio:** $8,703 USD/cámara instalada

> **Nota:** El presupuesto actual del proyecto contempla $1,071,960 USD total para CCTV (~$35,732/cámara). Esto sugiere un sistema más robusto o incluye infraestructura adicional. Revisar desglose detallado en presupuesto maestro.

### 8.2 Desglose por Ruta

| Ruta | Cantidad | CAPEX (USD) | Observaciones |
|:-----|:---------|:------------|:--------------|
| **RN 4510** | 10 | $87,033 | Peaje Zambito + intersecciones |
| **RN 4511** | 18 | $643,176 | Peaje Aguas Negras + puntos estratégicos |
| **RN 4513** | 2 | $71,464 | CCO + Báscula |
| **TOTAL** | **30** | **$801,673** | - |

---

## 9. MANTENIMIENTO

### 9.1 Mantenimiento Preventivo

| Actividad | Frecuencia | Responsable | Tiempo Est. |
|:----------|:-----------|:------------|:------------|
| **Limpieza de lentes y carcasa** | **Mensual** | Contratista | 20 min/cámara |
| **Verificación funcional (PTZ, zoom, IR)** | Mensual | Contratista | 15 min/cámara |
| **Limpieza interna (ventilador, filtros)** | Trimestral | Contratista | 30 min/cámara |
| **Verificación de NVR (discos, RAID)** | Mensual | Contratista | 30 min/NVR |
| **Actualización de firmware** | Semestral | Contratista | 30 min/cámara |
| **Calibración PTZ (presets)** | Anual | Contratista | 1 hora/PTZ |
| **Prueba de grabación y reproducción** | Trimestral | Contratista | 1 hora/NVR |

### 9.2 Repuestos Críticos

| Componente | Cantidad en Stock | Plazo Entrega |
|:-----------|:------------------|:--------------|
| **Cámara PTZ completa** | 2 unidades | 45 días |
| **Cámara Fija completa** | 3 unidades | 30 días |
| **Lentes (PTZ)** | 2 unidades | 30 días |
| **Iluminación IR (PTZ)** | 5 unidades | 30 días |
| **Motores PTZ (kit)** | 1 kit | 45 días |
| **Discos duros 6 TB Enterprise** | 8 unidades | 15 días |
| **Switch PoE+ 24 puertos** | 2 unidades | 30 días |
| **Fuentes PoE (injector)** | 5 unidades | 15 días |

---

## 10. REQUISITOS DE CAPACITACIÓN

### 10.1 Capacitación de Operación CCO

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Operación VMS** | 16 horas | Operadores CCO (8 personas) | CCO |
| **Control PTZ remoto** | 8 horas | Operadores CCO | CCO |
| **Gestión de alarmas y eventos** | 8 horas | Operadores CCO | CCO |
| **Búsqueda y exportación de video** | 8 horas | Operadores CCO + Legal | CCO |
| **Protección de datos personales** | 4 horas | Operadores CCO + Legal | CCO |

### 10.2 Capacitación de Mantenimiento

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Mantenimiento preventivo** | 8 horas | Técnicos (6 personas) | Taller + Campo |
| **Diagnóstico de fallas** | 12 horas | Técnicos ITS | Taller + Campo |
| **Configuración de cámaras IP** | 8 horas | Técnicos ITS | CCO |
| **Gestión de NVR y almacenamiento** | 8 horas | Técnicos ITS | CCO |

---

## 11. ANEXOS

### Anexo A: Planos de Referencia
- Plano de ubicaciones (ver layout georreferenciado)
- Plano típico de poste PTZ en separador
- Plano típico de montaje en pared (cámaras fijas)
- Diagrama de red CCTV
- Arquitectura VMS

### Anexo B: Hojas de Datos Técnicos
- Datasheet cámara PTZ
- Datasheet cámara fija
- Datasheet NVR
- Datasheet software VMS
- Datasheet switch PoE+

### Anexo C: Protocolos de Prueba
- Protocolo FAT cámaras (PROTOCOLO-FAT-CCTV-TEMPLATE.xlsx)
- Protocolo SAT por ubicación (PROTOCOLO-SAT-CCTV-PKXX+XXX.xlsx)
- Checklist de instalación
- Formato de registro fotográfico

---

## 12. REFERENCIAS

### 12.1 Documentos del Proyecto

| Código | Título | Versión |
|:-------|:-------|:--------|
| T01-ITS | Ficha de Sistema ITS | v1.2 |
| T03-ITS | Arquitectura Conceptual ITS | v1.0 |
| VAL-CCTV | Validación Contractual CCTV | v1.0 |
| LAYOUT-ITS | Layout Georreferenciado | v1.0 |

### 12.2 Normativa Citada

- Ley 1581/2012 - Protección de Datos Personales
- Decreto 1377/2013 - Reglamentación Ley 1581
- RETIE - Reglamento Técnico Instalaciones Eléctricas
- ISO TC-204 - Intelligent Transport Systems
- ONVIF Profile S/T - Interoperabilidad cámaras IP
- IEC 60529 - IP Code
- IEEE 802.3af/at - Power over Ethernet

---

**Elaborado por:** Administrador Contractual EPC  
**Revisado por:** Ing. ITS / Ing. Seguridad  
**Aprobado por:** Gerente Técnico

**Fecha de elaboración:** 21/10/2025  
**Fecha de revisión:** Pendiente  
**Fecha de aprobación:** Pendiente  

---

**FIN DEL DOCUMENTO T04 - ESPECIFICACIONES TÉCNICAS CCTV v1.1**

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 30 cámaras CCTV
- CAPEX mantenido: $1,071,960 USD
- Distribución por tipo validada con información oficial
- Metodología PKD lineal aplicada
