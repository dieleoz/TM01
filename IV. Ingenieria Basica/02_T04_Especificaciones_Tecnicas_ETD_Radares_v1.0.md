# T04: ESPECIFICACIONES TÉCNICAS - ETD Y RADARES (ESTACIONES DE TOMA DE DATOS)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** ETD (Estaciones de Toma de Datos) + Radares Sancionatorios  
**Responsable:** Ing. ITS / Administrador Contractual EPC  
**Versión:** 1.2  
**Referencia T01:** T01_Ficha_Sistema_ITS_v1.2  
**Referencia T03:** T03_Arquitectura_Conceptual_ITS_v1.0  
**Referencia Validación:** 35_VALIDACION_CONTRACTUAL_ETD_RADARES_v1.0  
**Referencia Layout:** 42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0  

---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - Separación ETD vs Radares según función | Adm. Contractual EPC |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** 16 equipos (14 ETD + 2 Radares), CAPEX actualizado | Adm. Contractual EPC |
| 1.2 | 31/10/2025 | **Corrección según validación contractual:** 15 equipos (13 ETD + 2 Radares), CAPEX actualizado | Adm. Contractual EPC |

---

## 1. IDENTIFICACIÓN Y ALCANCE

### 1.1 Identificación del Sistema

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | ETD (Estaciones de Toma de Datos) + Radares Sancionatorios |
| **Categoría** | ITS (Intelligent Transportation Systems) - Control de Tráfico |
| **Código interno** | T04-ETD-RAD-002-v1.0 |
| **Cantidad total** | **15 unidades** (13 ETD + 2 Radares) |
| **CAPEX estimado** | **USD $1,650,000** ($110,000/equipo instalado - Solución Completa) |
| **Documentos base** | T01 v1.0 MVP, T03 v1.0, Validación v1.0, Layout v1.0 |

### 1.2 Distinción Funcional

| Tipo | Cantidad | Función Principal | Certificación |
|:-----|:---------|:------------------|:--------------|
| **ETD (Monitoreo)** | 13 | Velocidad promedio, flujo, clasificación (una por UF) | ISO TC-204 |
| **Radares (Sancionatorios)** | 2 | Detección infracciones, registro fotográfico | Res. 718/2018 + ONAC |
| **TOTAL** | **15** | - | - |

> **Nota Crítica:** El proyecto contempla **15 equipos** (13 ETD + 2 Radares) que cubren todas las Unidades Funcionales del corredor. Los ETD proporcionan monitoreo estadístico (una por cada UF1-UF13) y los 2 radares sancionatorios se habilitarán con el Ministerio de Transporte.

### 1.3 Alcance de las Especificaciones

**Este documento especifica:**
- ✅ Características técnicas mínimas de ETD y radares
- ✅ Distinción entre equipos de monitoreo vs. sancionatorios
- ✅ Normativa nacional (Res. 718/2018, Ley 1581/2012) e internacional
- ✅ Criterios de aceptación (FAT/SAT)
- ✅ Interoperabilidad con SIMIT (capacidad técnica, no obligación)
- ✅ Ubicaciones exactas (referencia a layout georreferenciado)

**Este documento NO especifica:**
- ❌ Ubicaciones definitivas de radares sancionatorios (requiere estudio de seguridad vial)
- ❌ Procedimientos de autorización ante MinTransporte
- ❌ Integración operativa con SIMIT (solo capacidad técnica)

---

## 2. MARCO NORMATIVO Y CONTRACTUAL

### 2.1 Referencias Contractuales

| Documento | Sección | Requisito Clave |
|:----------|:--------|:----------------|
| **Apéndice Técnico 2** | §3.3.4.5 "Sistemas de Monitoreo" | Medición velocidad, flujo, detección infracciones |
| **Apéndice Técnico 3** | Cap. IV "Sistemas ITS" | Especificaciones de sensores, precisión, comunicación |
| **Apéndice Técnico 4** | "Indicadores Nivel Servicio" | Velocidad promedio por UF, disponibilidad ≥99% |

### 2.2 Normativa Aplicable

#### Normativa Nacional (Radares Sancionatorios)

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **Resolución 718/2018** | Criterios técnicos para instalación y operación de SAST | **OBLIGATORIA** para radares sancionatorios |
| **Resolución 20223040040565/2022** | Complemento Res. 718 en calibración y certificación | Radares sancionatorios |
| **Ley 769/2002** | Código Nacional de Tránsito | Marco legal de infracciones |
| **Ley 1581/2012** | Protección de Datos Personales | Tratamiento de imágenes y matrículas |
| **Decreto 1079/2015** | Reglamento del Sector Transporte | Requisitos operativos |

#### Normativa Internacional (Todos los Equipos)

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **ISO TC-204** | Intelligent Transport Systems | **OBLIGATORIA** para ETD y radares |
| **ISO 21217** | ITS Communications Access for Land Mobiles (CALM) | Comunicaciones ITS |
| **ISO 14813** | ITS Reference Model Architecture | Arquitectura de sistemas ITS |
| **IEC 60529** | Degrees of protection (IP Code) | Protección **IP65 mínima** |
| **IEEE 802.3** | Ethernet | Comunicaciones por fibra óptica |

### 2.3 Certificaciones Requeridas

#### Para ETD (Monitoreo)

| Certificación | Organismo | Obligatoria | Aplicación |
|:--------------|:----------|:------------|:-----------|
| **ISO TC-204** | ISO | ✅ Sí | Sistemas ITS |
| **CE / FCC** | UE / USA | ✅ Sí | Equipos electrónicos |
| **IP65** | IEC 60529 | ✅ Sí | Gabinete exterior |
| **ISO 9001:2015** | Organismo certificador | ✅ Sí | Fabricante |

#### Para Radares Sancionatorios (Adicionales)

| Certificación | Organismo | Obligatoria | Aplicación |
|:--------------|:----------|:------------|:-----------|
| **Homologación ONAC** | ONAC Colombia | ✅ Sí | Certificación metrológica |
| **Resolución 718/2018** | MinTransporte | ✅ Sí | Autorización de operación |
| **Calibración anual** | Laboratorio acreditado | ✅ Sí | Trazabilidad metrológica |

> **⚠️ IMPORTANTE:** NO se exige IP66 ni certificaciones UL, CSA o similares. **IP65 es suficiente** cuando los equipos estén a la intemperie.

---

## 3. ESPECIFICACIONES TÉCNICAS GENERALES

### 3.1 Características Ambientales

| Parámetro | Especificación Mínima | Referencia |
|:----------|:---------------------|:-----------|
| **Temperatura de operación** | -40°C a +74°C | AT3 Cap. IV |
| **Humedad relativa** | 0-95% sin condensación | AT3 Cap. IV |
| **Protección IP** | **IP65 mínimo** | IEC 60529 |
| **Resistencia a lluvia** | Hasta 5.08 cm/h (2 in/h) | AT3 Cap. IV |
| **Resistencia a viento** | 120 km/h | Zona tropical |
| **Altitud operación** | 0-500 msnm | Magdalena Medio |
| **Resistencia UV** | Mín. 10 años | ASTM G154 |

**Condiciones específicas del proyecto:**
- ✅ Clima tropical húmedo (lluvia, niebla, polvo)
- ✅ Cambios bruscos de temperatura
- ✅ Cambios de iluminación (amanecer/atardecer)
- ✅ Humedad alta constante (70-85%)

### 3.2 Requisitos Eléctricos

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tensión nominal** | 120 VAC, 60 Hz | RETIE |
| **Variación de tensión** | ±10% | RETIE |
| **Consumo máximo** | **200 W** (por equipo completo) | - |
| **Consumo en espera** | <50 W | - |
| **Factor de potencia** | ≥0.9 | RETIE |
| **Respaldo UPS** | **4 horas mínimo** | AT2 |
| **Sistema de tierras** | <10 Ω | RETIE |

### 3.3 Requisitos de Comunicaciones

| Parámetro | Especificación | Protocolo |
|:----------|:---------------|:----------|
| **Medio físico** | **Fibra óptica monomodo 9/125 μm** | ITU-T G.652 |
| **Velocidad** | 1 Gbps recomendado (100 Mbps mínimo) | IEEE 802.3 |
| **Protocolo de red** | TCP/IP | RFC 791, RFC 793 |
| **Protocolo aplicación** | **SNMP v3, API REST, MQTT** | - |
| **Disponibilidad** | **≥99% anual** | AT2, AT4 |
| **Latencia máxima** | <100 ms | - |
| **Sincronización horaria** | **NTP o GPS** (precisión <1 seg) | Res. 718/2018 |

---

## 4. ESPECIFICACIONES POR COMPONENTE

### 4.1 ETD (Estación de Toma de Datos) - Monitoreo NO Sancionatorio

#### 4.1.1 Descripción General

Equipo de medición automática para monitoreo continuo de velocidad promedio, flujo vehicular, densidad y clasificación de tráfico por Unidad Funcional. **NO requiere cámara ANPR** (solo sensor radar o microondas).

#### 4.1.2 Especificaciones Técnicas del Sensor

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Tecnología** | Radar Doppler o microondas | Inspección técnica |
| **Cobertura** | Multipista (≥3 carriles simultáneos) | Prueba funcional |
| **Rango de detección** | ≥150 m | Prueba de campo |
| **Precisión velocidad** | **±3 km/h** | Calibración con patrón |
| **Rango de velocidad** | 10-200 km/h | Prueba funcional |
| **Frecuencia de actualización** | ≤1 segundo | Verificación de datos |
| **Clasificación vehicular** | Livianos / Pesados (por longitud) | Prueba con vehículos conocidos |

#### 4.1.3 Variables Medidas

| Variable | Descripción | Unidad | Precisión |
|:---------|:------------|:-------|:----------|
| **Volumen** | Cantidad de vehículos | veh/hora | ±2% |
| **Velocidad instantánea** | Velocidad de cada vehículo | km/h | ±3 km/h |
| **Velocidad promedio** | Promedio del período | km/h | ±2 km/h |
| **Ocupación** | % tiempo con vehículos | % | ±5% |
| **Clasificación** | Livianos vs Pesados | - | ≥90% acierto |
| **Tiempo entre vehículos** | Intervalo promedio | segundos | ±1 seg |

#### 4.1.4 Unidad de Control y Procesamiento

| Componente | Especificación Mínima |
|:-----------|:---------------------|
| **Procesador** | ARM Cortex-A9 o superior, 1.5 GHz |
| **Memoria RAM** | 2 GB mínimo |
| **Almacenamiento** | 32 GB flash mínimo (datos históricos 90 días) |
| **Sistema operativo** | Linux embebido o equivalente |
| **Interfaz de red** | Ethernet 1 Gbps |
| **Protocolos** | TCP/IP, SNMP v3, API REST, MQTT |
| **NTP/GPS** | Sincronización horaria automática |

#### 4.1.5 Fabricantes de Referencia (ETD)

**Fabricantes aceptables:**

1. **Wavetronix** (USA)
   - Modelo: SmartSensor HD
   - Tecnología: Radar Doppler

2. **Miovision** (Canadá)
   - Modelo: Scout Video Detection
   - Tecnología: Video analítico + radar

3. **FLIR Systems** (USA)
   - Modelo: ThermiCam AI
   - Tecnología: Térmico + radar

4. **Siemens Mobility** (Alemania)
   - Modelo: SITRAFFIC® Concert
   - Tecnología: Radar + IA

5. **O equivalente** que cumpla especificaciones

---

### 4.2 RADAR-ANPR (Sancionatorio) - Detección de Infracciones

#### 4.2.1 Descripción General

Equipo de detección automática de infracciones de tránsito (exceso de velocidad, contrasentido, invasión de carril) con capacidad de registro fotográfico de matrícula. Cumple **Resolución 718/2018** del Ministerio de Transporte.

#### 4.2.2 Especificaciones Técnicas del Sensor Radar

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Tecnología** | Radar Doppler o LIDAR | Inspección técnica |
| **Cobertura** | Multipista (≥3 carriles simultáneos) | Prueba funcional |
| **Rango de detección** | ≥150 m | Prueba de campo |
| **Precisión velocidad** | **±2 km/h** | Calibración ONAC |
| **Rango de velocidad** | 10-250 km/h | Prueba funcional |
| **Frecuencia de medición** | ≤0.5 segundos | Verificación |
| **Detección múltiple** | Hasta 32 vehículos simultáneos | Prueba con tráfico |

#### 4.2.3 Especificaciones de Cámara ANPR

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Resolución** | **≥1920×1080 px (Full HD)** | Inspección de imagen |
| **Tasa de captura** | ≥30 fps | Verificación de video |
| **Reconocimiento de placa** | **≥95% acierto** | Prueba con 100 vehículos |
| **Visión nocturna** | IR o iluminación LED, hasta 50 m | Prueba nocturna |
| **Velocidad de obturación** | 1/1000 seg mínimo | Inspección técnica |
| **Campo de visión** | Ajustable, 3 carriles mínimo | Configuración |
| **Almacenamiento local** | **≥30 días** de evidencias | Cálculo de capacidad |

#### 4.2.4 Unidad de Procesamiento (Edge Computing)

| Componente | Especificación Mínima |
|:-----------|:---------------------|
| **Procesador** | Intel Core i5 o superior (8ª gen mínimo) |
| **Memoria RAM** | 8 GB DDR4 mínimo |
| **Almacenamiento SSD** | 512 GB mínimo (evidencias 30 días) |
| **Sistema operativo** | Linux o Windows Server |
| **GPU** | Opcional pero recomendada (procesamiento IA) |
| **Interfaz de red** | Ethernet 1 Gbps (dual NIC) |
| **Sincronización horaria** | **GPS integrado + NTP** |

#### 4.2.5 Software de Gestión

**Funcionalidades obligatorias:**

| Función | Descripción | Obligatoria |
|:--------|:------------|:------------|
| **Captura de evidencias** | Imagen con datos superpuestos (fecha, hora, velocidad, placa, PK) | ✅ Sí |
| **Reconocimiento de placa (OCR)** | Algoritmo ANPR ≥95% precisión | ✅ Sí |
| **Generación de eventos** | Infracciones automáticas con evidencia | ✅ Sí |
| **Almacenamiento encriptado** | Hash SHA-256, firma digital | ✅ Sí |
| **Transmisión a CCO** | En tiempo real o batch | ✅ Sí |
| **Módulo administración** | Consulta, reporte, exportación | ✅ Sí |
| **Interoperabilidad SIMIT** | **Capacidad técnica** (protocolo webservice) | ⚠️ Capacidad, no obligación |
| **Auditabilidad** | Log de eventos, accesos, cambios | ✅ Sí |

#### 4.2.6 Gabinete y Protección

| Elemento | Especificación |
|:---------|:---------------|
| **Material** | Acero inoxidable AISI 304 o aluminio anodizado |
| **Protección IP** | **IP65 mínimo** (exterior) |
| **Control de temperatura** | Ventilación forzada o A/A, -10°C a +50°C interior |
| **Protección contra descargas** | DPS Clase I (40 kA) + Clase II (20 kA) |
| **Cerradura** | Antivandalismo, acceso restringido |
| **Dimensiones típicas** | 80×60×40 cm (alto×ancho×prof) |

#### 4.2.7 Fabricantes de Referencia (RADAR-ANPR)

**Fabricantes aceptables:**

1. **Jenoptik** (Alemania)
   - Modelo: VECTOR SR
   - Certificación: Res. 718 aprobada en Colombia

2. **Vitronic** (Alemania)
   - Modelo: PoliScan Speed
   - Certificación: ONAC Colombia

3. **Kapsch TrafficCom** (Austria)
   - Modelo: EcoTrafiX
   - Certificación: Internacional

4. **Tattile** (Italia)
   - Modelo: Vega Smart HD
   - Certificación: ANPR líder mundial

5. **Hikvision** (China)
   - Modelo: iDS-TCV900 Series
   - Certificación: Homologado múltiples países

6. **O equivalente** que cumpla Resolución 718/2018 y tenga homologación ONAC

---

## 5. INTEGRACIÓN Y COMPATIBILIDAD

### 5.1 Integración con Sistema Central (CCO)

| Aspecto | Requisito | Verificación |
|:--------|:----------|:-------------|
| **Conexión a CCO** | API REST o SNMP v3, fibra óptica | Prueba de conectividad |
| **Tiempo de respuesta** | <5 segundos (envío evento) | Prueba cronometrada |
| **Disponibilidad** | ≥99% anual | Monitoreo 30 días piloto |
| **Transmisión de datos** | Eventos en tiempo real + estadísticas horarias | Verificación en CCO |
| **Almacenamiento local** | Buffer 72 horas si falla comunicación | Prueba de desconexión |

### 5.2 Integración con SCADA

| Parámetro | Requisito |
|:----------|:----------|
| **Protocolo** | SNMP v3 o Modbus TCP/IP |
| **Variables monitoreadas** | Estado (online/offline), eventos/hora, fallas, almacenamiento |
| **Frecuencia actualización** | 60 segundos máximo |
| **Alarmas** | Falla comunicación, disco lleno, cámara fuera de servicio |

### 5.3 Interoperabilidad con SIMIT (Solo Radares Sancionatorios)

**Cláusula de Interoperabilidad:**

> "Los equipos Radar–SAST deberán incluir **capacidad técnica** de conexión al sistema nacional de gestión de infracciones (SIMIT) conforme a la Resolución 718 de 2018 del Ministerio de Transporte. No obstante, la transmisión efectiva de información sancionatoria o datos personales al SIMIT **no será obligatoria**, y solo se efectuará si el Concesionario o la ANI lo determinan posteriormente, previo análisis de costos y responsabilidades. El contratista deberá garantizar que los equipos y software queden **habilitados** para dicha interoperabilidad, sin que implique su activación inmediata ni costos adicionales automáticos para el Concesionario."

**Requisitos técnicos de capacidad:**

| Requisito | Especificación |
|:----------|:---------------|
| **Protocolo webservice** | SOAP o REST según especificaciones SIMIT |
| **Formato de datos** | XML o JSON según SIMIT |
| **Campos obligatorios** | Placa, fecha/hora, velocidad, foto, ubicación |
| **Encriptación** | TLS 1.2 o superior |
| **Autenticación** | Certificado digital |

> **⚠️ IMPORTANTE:** La habilitación de la conexión SIMIT es **opcional** y queda sujeta a decisión futura del Concesionario/ANI. El costo de operación SIMIT (si se activa) NO está incluido en CAPEX.

### 5.4 Interfaz con Otros Sistemas

| Sistema | Tipo de Interfaz | Datos Intercambiados |
|:--------|:-----------------|:---------------------|
| **Telecomunicaciones** | Fibra óptica (backbone) | Datos de tráfico, eventos, imágenes |
| **Energía Eléctrica** | Acometida 120 VAC | Alimentación eléctrica |
| **CCO** | API REST + SNMP | Eventos, estadísticas, alarmas |
| **SCADA** | SNMP v3 | Estado operativo, variables |
| **SICC (ANI)** | API | Velocidad promedio por UF, volumen |

---

## 6. ESPECIFICACIONES DIFERENCIADAS

### 6.1 Componentes MÍNIMOS por Tipo

#### **ETD (Monitoreo) - 14 unidades**

| Componente | Obligatorio | Observaciones |
|:-----------|:------------|:--------------|
| Sensor radar/microondas | ✅ Sí | Multipista, ±3 km/h |
| Unidad de control | ✅ Sí | Edge computing |
| Gabinete IP65 | ✅ Sí | Protección exterior |
| UPS ≥4 horas | ✅ Sí | Respaldo energía |
| Comunicación fibra | ✅ Sí | TCP/IP, SNMP, API |
| **Cámara ANPR** | ❌ **NO** | **NO requerida para monitoreo estadístico** |

#### **Radares Sancionatorios (SAST) - 2 unidades**

| Componente | Obligatorio | Observaciones |
|:-----------|:------------|:--------------|
| Sensor radar/LIDAR | ✅ Sí | Multipista, ±2 km/h, homologado ONAC |
| **Cámara ANPR** | ✅ **SÍ** | **Full HD, ≥95% reconocimiento, visión nocturna** |
| Unidad procesamiento | ✅ Sí | Edge computing, almacenamiento ≥30 días |
| Gabinete IP65 | ✅ Sí | Control temperatura |
| UPS ≥4 horas | ✅ Sí | Respaldo energía |
| Comunicación fibra | ✅ Sí | TCP/IP, SNMP, API |
| **Sincronización GPS** | ✅ **SÍ** | **Obligatoria para evidencia legal** |
| **Software evidencia** | ✅ **SÍ** | **Encriptación, firma digital, trazabilidad** |

---

## 7. REQUISITOS DE INSTALACIÓN

### 7.1 Ubicaciones Exactas

**Referencia:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md`

**Distribución actual (12 RADAR-ANPR en proyecto real):**

| Ruta | Cantidad | PK Ejemplo | Tipo | Observaciones |
|:-----|:---------|:-----------|:-----|:--------------|
| **RN 4510** | 2 pares | PK 54+000, PK 116+200 | Bidireccional | Pórticos sobre ambas calzadas |
| **RN 4511** | 5 pares | PK 37+400, PK 46+900, PK 65+900, PK 95+800, PK 143+900 | Bidireccional | Pórticos sobre ambas calzadas |
| **TOTAL** | **12 unidades** | - | 6 pares | - |

**⚠️ Nota contractual:** El contrato requiere **15 equipos (13 ETD + 2 Radares)**. El proyecto real tiene 12 RADAR-ANPR. **Faltan 3 equipos** o justificación técnica.

**Propuesta de ajuste:**
- **Opción 1:** Agregar 3 ETD (sin cámara) en UFs faltantes
- **Opción 2:** Justificar que 12 RADAR-ANPR cubren las 13 UFs (algunos cubren 2 UFs)

### 7.2 Configuración Bidireccional

**Patrón típico (pórtico sobre separador central):**

```
Vista en Planta:

Calzada Izquierda  [═══════════════════════════════════════]
                                    ↓ mide sentido Norte
                    
Separador Central  [--------[PÓRTICO]--------]
                    
Calzada Derecha    [═══════════════════════════════════════]
                                    ↑ mide sentido Sur

Pórtico:
- Altura: 6-7 m
- Ancho: según ancho calzadas + bermas (típicamente 15-18 m)
- 2 radares enfrentados (1 por sentido)
- 2 cámaras ANPR (1 por sentido)
- Switch central, fibra óptica
```

### 7.3 Obras Civiles Requeridas

| Elemento | Especificación | Norma |
|:---------|:---------------|:------|
| **Cimentación pórtico** | Zapatas 1.5×1.5×1.2 m, f'c=28 MPa (cada lado) | NSR-10 |
| **Estructura pórtico** | Acero estructural ASTM A36, galvanizado | AASHTO |
| **Altura libre** | 5.5 m mínimo (gálibo vial) | Manual Diseño Geométrico INVIAS |
| **Ancho pórtico** | Según ancho de calzadas (típ. 16 m) | Planos específicos |
| **Canalizaciones** | HDPE Ø4" (100 mm), profundidad 0.80-1.0 m | RETIE |
| **Caja de registro** | 60×60×80 cm, tapa de concreto | - |
| **Tierras** | SPT independiente, <10 Ω | RETIE |

### 7.4 Conexiones

#### 7.4.1 Acometida Eléctrica

| Parámetro | Especificación |
|:----------|:---------------|
| **Tensión** | 120 VAC, 60 Hz (monofásico) |
| **Corriente máxima** | 20 A |
| **Calibre conductor** | AWG 10, THHN/THWN |
| **Protección** | Breaker 30 A + DPS Clase I (40 kA) + DPS Clase II (20 kA) |
| **Ducto** | PVC Ø1" desde acometida más cercana |

#### 7.4.2 Conectividad (Fibra Óptica)

| Parámetro | Especificación |
|:----------|:---------------|
| **Medio** | Fibra óptica SM 9/125 μm, OS2 |
| **Ruta** | Pórtico central → backbone en separador central |
| **Ducto** | HDPE Ø2" (50 mm) |
| **Conectores** | SC/APC |
| **Switch en pórtico** | Managed, 8 puertos Gigabit, PoE+ (opcional) |
| **Atenuación máxima** | <3 dB total |

---

## 8. PRUEBAS Y CRITERIOS DE ACEPTACIÓN

### 8.1 Pruebas en Fábrica (FAT) - ETD

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección dimensional** | Verificar dimensiones | Dentro de tolerancias |
| **Inspección visual** | Verificar acabados | Sin defectos visibles |
| **Prueba de detección** | Verificar sensor radar | Detección ≥150 m, 3 carriles simultáneos |
| **Prueba de precisión** | Calibración con patrón | ±3 km/h |
| **Prueba de clasificación** | Vehículos livianos/pesados | ≥90% acierto |
| **Prueba de comunicación** | Transmisión de datos | API funcional, latencia <100 ms |
| **Prueba de software** | Interfaz de administración | 100% funciones operativas |

### 8.2 Pruebas en Fábrica (FAT) - RADAR-ANPR

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección dimensional** | Verificar dimensiones | Dentro de tolerancias |
| **Inspección visual** | Verificar acabados, cámaras | Sin defectos, lentes limpias |
| **Prueba de detección radar** | Verificar sensor | Detección ≥150 m, ±2 km/h |
| **Prueba de ANPR diurna** | Reconocimiento de placa (día) | ≥95% acierto en 100 vehículos |
| **Prueba de ANPR nocturna** | Reconocimiento de placa (noche) | ≥95% acierto en 100 vehículos |
| **Prueba de captura de evidencia** | Imagen con datos superpuestos | Datos correctos, imagen nítida |
| **Prueba de almacenamiento** | Capacidad y encriptación | ≥30 días, hash SHA-256 OK |
| **Prueba de GPS/NTP** | Sincronización horaria | Precisión <1 segundo |
| **Prueba de interoperabilidad SIMIT** | Webservice (si aplica) | Formato correcto, envío exitoso |

### 8.3 Pruebas en Sitio (SAT) - Comunes

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección de pórtico** | Verificar estructura, verticalidad | Vertical ±1°, sin defectos, galvanizado OK |
| **Prueba de tierras** | Verificar SPT | <10 Ω |
| **Prueba de conectividad** | Verificar fibra óptica | Ping <100 ms, 0% pérdida paquetes |
| **Prueba de detección real** | Tráfico real del corredor | Detección 100% vehículos, clasificación ≥90% |
| **Prueba de precisión in situ** | Velocidad con patrón certificado | Dentro de tolerancia (±2 o ±3 km/h) |
| **Prueba de ANPR in situ** | Reconocimiento placas reales | ≥95% acierto en muestra 100 veh |
| **Prueba de integración CCO** | Datos en pantalla CCO | Eventos visibles en tiempo real |
| **Prueba de integración SCADA** | Variables en SCADA | Todas las variables actualizadas |
| **Prueba de UPS** | Autonomía con carga real | ≥4 horas continuidad |

### 8.4 Pruebas Específicas - Radares Sancionatorios

| Prueba | Objetivo | Criterio | Responsable |
|:-------|:---------|:---------|:------------|
| **Calibración ONAC** | Certificación metrológica oficial | Certificado vigente | Laboratorio acreditado ONAC |
| **Prueba de evidencia legal** | Verificar cadena de custodia digital | Hash, firma, timestamp correctos | Interventoría |
| **Prueba de señalización** | Verificar señalización 500 m antes | Señales visibles, retrorefléctivas | Interventoría |

---

## 9. DOCUMENTACIÓN REQUERIDA

### 9.1 Documentos del Fabricante

| Documento | Descripción | Idioma | Cantidad |
|:----------|:------------|:-------|:---------|
| **Ficha técnica** | Especificaciones detalladas (sensor, cámara, software) | **Español** | 3 copias + PDF |
| **Manual de instalación** | Procedimiento, planos, conexiones | **Español** | 2 copias + PDF |
| **Manual de operación** | Guía usuario CCO, configuración | **Español** | 3 copias + PDF |
| **Manual de mantenimiento** | Preventivo, correctivo, calibración | **Español** | 2 copias + PDF |
| **Manual de software** | Administración, consultas, reportes | **Español** | 2 copias + PDF |
| **Planos de montaje** | Pórtico, gabinetes, cámaras | - | PDF + DWG |
| **Diagramas eléctricos** | Unifilar, esquemático | - | PDF + DWG |
| **Lista de repuestos** | Códigos, precios, tiempos entrega | **Español** | PDF |

### 9.2 Certificados Requeridos

#### Comunes (ETD + Radares)

| Certificado | Emisor | Vigencia | Observaciones |
|:------------|:-------|:---------|:--------------|
| **Certificado ISO 9001:2015** | Organismo acreditado | Vigente | Fabricante |
| **Certificado CE** | Laboratorio notificado | - | Equipos |
| **Certificado FCC** | FCC o equivalente | - | Equipos comunicaciones |
| **Certificado IP65** | Lab. acreditado IEC 60529 | - | Gabinetes |
| **Declaración RETIE** | Fabricante/importador | - | Instalaciones eléctricas |

#### Específicos Radares Sancionatorios

| Certificado | Emisor | Vigencia | Observaciones |
|:------------|:-------|:---------|:--------------|
| **Homologación ONAC** | ONAC Colombia | **Anual** | **OBLIGATORIA** para radares |
| **Certificado calibración inicial** | Lab. acreditado ONAC | Válido inicio operación | **OBLIGATORIO** |
| **Autorización MinTransporte** | Ministerio de Transporte | Según Res. 718/2018 | **OBLIGATORIO** si se activa función sancionatoria |

### 9.3 Garantías

| Elemento | Garantía Mínima | Observaciones |
|:---------|:----------------|:--------------|
| **Equipos electrónicos** | **24 meses** | Desde puesta en servicio |
| **Cámara ANPR** | **24 meses** | Incluye sensor y lente |
| **Software** | **24 meses** | Actualizaciones incluidas |
| **Estructura pórtico** | **60 meses** | Contra corrosión |
| **Calibración anual** | **Incluida primer año** | Para radares sancionatorios |

---

## 10. MANTENIMIENTO

### 10.1 Mantenimiento Preventivo

| Actividad | Frecuencia | Responsable | Tiempo Est. |
|:----------|:-----------|:------------|:------------|
| **Limpieza de lentes (cámaras)** | Mensual | Contratista | 30 min/und |
| **Verificación funcional (ETD)** | Semanal | Contratista | 15 min/und |
| **Inspección visual (estructura, gabinete)** | Trimestral | Contratista | 30 min/und |
| **Limpieza interna (equipos, ventilación)** | Semestral | Contratista | 2 horas/und |
| **Verificación de tierras** | Anual | Contratista | 30 min/und |
| **Calibración (radares sancionatorios)** | **Anual** | **Lab. ONAC acreditado** | 4 horas/und |
| **Actualización de software** | Semestral o según fabricante | Fabricante autorizado | 2 horas/und |

### 10.2 Repuestos Críticos

| Componente | Cantidad Mínima en Stock | Plazo de Entrega |
|:-----------|:-------------------------|:-----------------|
| **Batería UPS (12V 100Ah)** | 5 unidades | 30 días |
| **Cámara ANPR completa** | 2 unidades | 60 días |
| **Lente cámara** | 2 unidades | 30 días |
| **Iluminación IR/LED** | 5 unidades | 30 días |
| **Unidad de control (repuesto)** | 1 unidad | 60 días |
| **DPS Clase I y II** | 5 juegos | 15 días |
| **Breakers** | 10 unidades | 15 días |
| **Switch Ethernet** | 2 unidades | 30 días |

### 10.3 Indicadores de Mantenimiento

| Indicador | Meta | Medición |
|:----------|:-----|:---------|
| **Disponibilidad** | ≥99% | Tiempo online / Tiempo total |
| **Tasa de reconocimiento ANPR** | ≥95% | Placas correctas / Placas totales |
| **Precisión de velocidad** | Dentro de tolerancia | Calibración anual |
| **Eventos generados** | >0 (si hay infracciones) | Verificación mensual |

---

## 11. REQUISITOS DE CAPACITACIÓN

### 11.1 Capacitación de Instalación

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Instalación de pórtico** | 8 horas | Técnicos estructuras | Sitio |
| **Instalación eléctrica** | 4 horas | Electricistas | Sitio |
| **Instalación de fibra óptica** | 4 horas | Técnicos telecom | Sitio |
| **Configuración de equipos** | 8 horas | Técnicos ITS | Sitio + CCO |
| **Puesta en servicio** | 8 horas | Equipo completo | Sitio + CCO |

### 11.2 Capacitación de Operación

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Operación desde CCO** | 12 horas | Operadores CCO | CCO |
| **Interpretación de datos de tráfico** | 8 horas | Operadores CCO | CCO |
| **Gestión de infracciones** | 8 horas | Operadores CCO + Legal | CCO |
| **Procedimientos de evidencia** | 4 horas | Operadores CCO + Legal | CCO |

### 11.3 Capacitación de Mantenimiento

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Mantenimiento preventivo** | 8 horas | Técnicos mantenimiento | Taller + Campo |
| **Diagnóstico de fallas** | 12 horas | Técnicos ITS | Taller + Campo |
| **Calibración de radares** | 8 horas | Técnicos certificados | Campo |
| **Limpieza de cámaras y lentes** | 4 horas | Técnicos mantenimiento | Campo |

### 11.4 Entregables de Capacitación

- ✅ Presentaciones en PowerPoint (español)
- ✅ Videos tutoriales (español, Full HD)
- ✅ Simulador de operación CCO (software)
- ✅ Manuales de capacitación impresos
- ✅ Certificados de asistencia
- ✅ Evaluaciones de aprendizaje (≥80% aprobación)

---

## 12. PRESUPUESTO Y CANTIDADES

### 12.1 Resumen de Cantidades (Proyecto Real)

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:------------|:-------|:---------|:-------------------|:------------|
| 1 | ETD completo (sensor + procesador) | und | 14 | $7,470 | $104,580 |
| 2 | RADAR-ANPR completo (sensor + cámara + procesador) | und | 2 | $32,484 | $64,968 |
| 3 | Pórtico metálico galvanizado (típico 16 m) | und | 8 | $8,000 | $64,000 |
| 4 | Instalación y puesta en servicio | und | 16 | $5,000 | $80,000 |
| 5 | Obras civiles (cimentaciones, canalizaciones) | und | 8 | $6,000 | $48,000 |
| 6 | Fibra óptica y conectividad | und | 8 | $3,000 | $24,000 |
| 7 | Capacitación y documentación | global | 1 | $15,000 | $15,000 |
| 8 | Repuestos iniciales (2 años) | global | 1 | $30,000 | $30,000 |
| 9 | Calibración ONAC (2 radares, primer año) | und | 2 | $3,000 | $6,000 |
| | | | | **TOTAL** | **$436,548** |

**Precio unitario promedio:** $27,284 USD/equipo instalado

> **Nota:** El presupuesto actualizado contempla **15 equipos** (13 ETD + 2 RADAR-ANPR) con un total de **$1,650,000 USD**. Los ETD proporcionan monitoreo estadístico y los 2 radares sancionatorios se habilitarán con el Ministerio de Transporte.

### 12.2 Desglose por Tipo (Propuesta Ajustada)

**Si se ajusta a contrato (16 equipos: 14 ETD + 2 Radares):**

| Tipo | Cantidad | Precio Unit. (USD) | Total (USD) | Función |
|:-----|:---------|:-------------------|:------------|:--------|
| **ETD (sin cámara)** | 14 | $7,470 | $104,580 | Monitoreo estadístico por UF |
| **RADAR-ANPR** | 2 | $32,484 | $64,968 | Detección infracciones |
| **Instalación ETD** | 14 | $14,000 | $196,000 | Pórticos, cimentaciones, fibra |
| **TOTAL** | **16** | - | **$365,548** | - |

### 12.3 Desglose por Ruta (Proyecto Real - 12 equipos)

**Ver:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md` (detalle completo con PKs exactos)

| Ruta | Tramo | Cantidad | CAPEX (USD) | Observaciones |
|:-----|:------|:---------|:------------|:--------------|
| **RN 4510** | PK 54+000, PK 116+200 | 4 | $142,928 | 2 pares bidireccionales |
| **RN 4511** | PKs distribuidos | 8 | $285,856 | 4 pares bidireccionales |
| **TOTAL** | - | **12** | **$428,784** | 6 pares total |

---

## 13. CRONOGRAMA DE SUMINISTRO E INSTALACIÓN

### 13.1 Hitos Principales

| Hito | Fecha Estimada | Duración | Responsable |
|:-----|:---------------|:---------|:------------|
| **Aprobación especificaciones T04** | T+0 | - | Interventoría/ANI |
| **Estudio de Seguridad Vial (radares)** | T+0 a T+60 días | 8 semanas | Contratista |
| **Autorización MinTransporte (radares)** | T+60 a T+120 días | 8 semanas | MinTransporte |
| **Licitación y adjudicación** | T+30 días | 4 semanas | Contratista |
| **Orden de compra** | T+35 días | - | Contratista |
| **Fabricación** | T+35 a T+125 días | 12 semanas | Fabricante |
| **FAT** | T+125 a T+140 días | 2 semanas | Fabricante/Interventoría |
| **Transporte y entrega** | T+140 a T+155 días | 2 semanas | Logística |
| **Instalación (lote 1: 6 equipos)** | T+155 a T+185 días | 4 semanas | Contratista |
| **Instalación (lote 2: 6 equipos)** | T+175 a T+205 días | 4 semanas | Contratista |
| **SAT** | T+205 a T+225 días | 3 semanas | Contratista/Interventoría |
| **Calibración ONAC (radares)** | T+225 a T+240 días | 2 semanas | Lab. ONAC |
| **Puesta en servicio** | T+240 días | - | Contratista/ANI |

**Tiempo total:** ~8 meses (incluyendo autorizaciones)

---

## 14. CONSIDERACIONES ESPECIALES

### 14.1 Distinción ETD vs Radares

#### **ETD (Estaciones de Toma de Datos)**

**Propósito:** Monitoreo estadístico de tráfico  
**Función:** Medir velocidad promedio por UF para indicadores  
**Componentes:**
- ✅ Sensor radar o microondas
- ✅ Unidad de procesamiento
- ❌ **NO requiere cámara ANPR**

**Normativa:**
- ISO TC-204 (ITS)
- AT3, AT4 del contrato
- **NO aplica Resolución 718/2018**

#### **Radares Sancionatorios (SAST)**

**Propósito:** Detección y registro de infracciones  
**Función:** Generar evidencia legal de violaciones  
**Componentes:**
- ✅ Sensor radar de alta precisión (±2 km/h)
- ✅ **Cámara ANPR obligatoria** (≥95% reconocimiento)
- ✅ Software de evidencia (encriptación, firma digital)
- ✅ Sincronización GPS

**Normativa:**
- **Resolución 718/2018** (OBLIGATORIA)
- Ley 1581/2012 (Protección datos)
- Homologación ONAC (OBLIGATORIA)
- Calibración anual (OBLIGATORIA)

### 14.2 Interoperabilidad SIMIT

**Capacidad técnica vs. Obligación operativa:**

| Aspecto | Requisito | Estado |
|:--------|:----------|:-------|
| **Capacidad técnica** | Equipos y software habilitados para SIMIT | ✅ Obligatorio |
| **Integración operativa** | Transmisión activa de datos a SIMIT | ⚠️ Opcional (decisión futura) |
| **Costo operación SIMIT** | No incluido en CAPEX | 💰 A evaluar si se activa |

**Justificación:**
> "La transmisión efectiva de información sancionatoria o datos personales al SIMIT no será obligatoria, y solo se efectuará si el Concesionario o la ANI lo determinan posteriormente, previo análisis de costos y responsabilidades."

### 14.3 Señalización Obligatoria (Radares Sancionatorios)

**Según Resolución 718/2018:**

| Señal | Ubicación | Características |
|:------|:----------|:----------------|
| **Preventiva "Control Electrónico"** | 500 m antes del radar | Tamaño: 75×75 cm, retrorefléctiva Tipo IX |
| **Informativa "Velocidad Máxima"** | 500 m antes del radar | Tamaño según Manual Señalización Vial |
| **Demarcación horizontal** | Zona de detección | Líneas amarillas, leyenda "RADAR" |

---

## 15. ANEXOS

### Anexo A: Planos de Referencia
- **Plano de ubicaciones:** Ver `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md`
- **Plano típico de pórtico:** A suministrar por contratista (estructural)
- **Plano de cimentaciones:** A suministrar por contratista (civil)
- **Plano de conexiones eléctricas:** A suministrar por contratista (eléctrico)
- **Plano de conexiones fibra óptica:** A suministrar por contratista (telecom)

### Anexo B: Hojas de Datos Técnicos
- Datasheet sensor radar
- Datasheet cámara ANPR
- Datasheet unidad de procesamiento
- Datasheet UPS
- Datasheet switch de comunicaciones

### Anexo C: Certificaciones
- Certificado ISO 9001:2015 del fabricante
- Certificado CE del equipo
- Certificado FCC del equipo
- Certificado IP65 del gabinete
- **Homologación ONAC (radares sancionatorios)**
- **Certificado calibración inicial (radares sancionatorios)**
- Declaración de conformidad RETIE

### Anexo D: Protocolos de Prueba
- Formato protocolo FAT-ETD (PROTOCOLO-FAT-ETD-TEMPLATE.xlsx)
- Formato protocolo FAT-RADAR (PROTOCOLO-FAT-RADAR-TEMPLATE.xlsx)
- Formato protocolo SAT-ETD (PROTOCOLO-SAT-ETD-PKXX+XXX.xlsx)
- Formato protocolo SAT-RADAR (PROTOCOLO-SAT-RADAR-PKXX+XXX.xlsx)
- Formato protocolo calibración ONAC (PROTOCOLO-CALIBRACION-ONAC.xlsx)

### Anexo E: Documentos Normativos
- Resolución 718 de 2018 (Ministerio de Transporte)
- Resolución 20223040040565 de 2022 (complementaria)
- Ley 1581 de 2012 (Protección de Datos Personales)
- Ley 769 de 2002 (Código Nacional de Tránsito)
- Formato de solicitud autorización MinTransporte

---

## 16. REFERENCIAS

### 16.1 Documentos del Proyecto

| Código | Título | Versión |
|:-------|:-------|:--------|
| T01-ITS | Ficha de Sistema ITS | v1.2 |
| T02-ITS | Análisis de Requisitos ITS | v1.0 |
| T03-ITS | Arquitectura Conceptual ITS | v1.0 |
| VAL-ETD-RAD | Validación Contractual ETD y Radares | v1.0 |
| LAYOUT-ITS | Layout Georreferenciado Equipos ITS | v1.0 |

### 16.2 Normativa Citada

#### Nacional
- **Resolución 718/2018** - Ministerio de Transporte (Criterios SAST)
- **Resolución 20223040040565/2022** - Ministerio de Transporte (Calibración)
- **Ley 769/2002** - Código Nacional de Tránsito
- **Ley 1581/2012** - Protección de Datos Personales
- **Decreto 1079/2015** - Decreto Único Reglamentario Sector Transporte
- **RETIE** - Reglamento Técnico de Instalaciones Eléctricas
- **NSR-10** - Reglamento Colombiano de Construcción Sismo Resistente

#### Internacional
- **ISO TC-204** - Intelligent Transport Systems
- **ISO 21217** - ITS Communications (CALM)
- **ISO 14813** - ITS Reference Model Architecture
- **IEC 60529** - Degrees of protection (IP Code)
- **IEEE 802.3** - Ethernet
- **ASTM A36** - Carbon Structural Steel (pórticos)

---

**Elaborado por:** Administrador Contractual EPC  
**Revisado por:** Ing. ITS / Ing. Telecomunicaciones / Asesor Legal  
**Aprobado por:** Gerente Técnico

**Fecha de elaboración:** 21/10/2025  
**Fecha de revisión:** Pendiente  
**Fecha de aprobación:** Pendiente  

---

**FIN DEL DOCUMENTO T04 - ESPECIFICACIONES TÉCNICAS ETD Y RADARES v1.1**

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad total actualizada: 16 unidades (14 ETD + 2 Radares)
- CAPEX actualizado: $436,548 USD
- Distribución funcional actualizada según información oficial
- Metodología PKD lineal aplicada
