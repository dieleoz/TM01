# T04: ESPECIFICACIONES TÉCNICAS - POSTES SOS (SISTEMA DE TELEFONÍA DE EMERGENCIA)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Postes SOS - Sistema de Telefonía de Emergencia  
**Responsable:** Ing. ITS / Administrador Contractual EPC  
**Versión:** 1.1  
**Referencia T01:** T01_Ficha_Sistema_ITS_v1.2  
**Referencia T03:** T03_Arquitectura_Conceptual_ITS_v1.0  
**Referencia Validación:** 34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0  
**Referencia Layout:** 42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0  

---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial basada en validación contractual | Adm. Contractual EPC |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** SOS #88 RN 4513, cantidad total 88 unidades | Adm. Contractual EPC |
| v1.2 | 15/01/2026 | **Revisión Contractual:** Escalado a 98 unidades (1 c/3km en 293km) | Administrador Contractual EPC |
| **v1.3** | **15/01/2026** | **Certificación Fase 0.5 Update:** Definición final en 88 unidades (Corrección de 98) | **Administrador Contractual EPC** |

---

## 1. IDENTIFICACIÓN Y ALCANCE

### 1.1 Identificación del Sistema

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | Postes SOS - Sistema de Telefonía de Emergencia |
| **Categoría** | ITS (Intelligent Transportation Systems) |
| **Código interno** | T04-SOS-001-v1.0 |
| **Cantidad Total** | **88 unidades** | AT1 - Alcance (Validado 45+50+1) |
| **Longitud Corredor** | **293.0 km** | AT1 - Alcance |
| **CAPEX estimado** | **USD $1,176,000** (12,000 USD/unidad) |
| **Documentos base** | T01 v1.2, T03 v1.0, Validación Contractual v1.0, Layout v1.0 |

### 1.2 Alcance de las Especificaciones

**Este documento especifica:**
- ✅ Características técnicas mínimas de postes SOS
- ✅ Requisitos de desempeño y disponibilidad
- ✅ Normativa nacional e internacional aplicable
- ✅ Criterios de aceptación (FAT/SAT)
- ✅ Procedimientos de prueba y certificación
- ✅ Ubicaciones exactas (referencia a layout georreferenciado)

**Este documento NO especifica:**
- ❌ Detalles constructivos de cimentaciones (ver T05)
- ❌ Cronograma detallado de instalación (ver Plan de Obra)
- ❌ Proveedores específicos (referencias orientativas únicamente)

---

## 2. MARCO NORMATIVO Y CONTRACTUAL

### 2.1 Referencias Contractuales

| Documento | Sección | Requisito Clave |
|:----------|:--------|:----------------|
| **Apéndice Técnico 1** | Capítulo 3 "Sistemas de comunicación y postes SOS" (pág. 48-50) | Distancia máxima 3 km, alternados en bermas externas |
| **Apéndice Técnico 2** | Sección 3.3.4.5 "Sistemas ITS" | Integración con CCO, comunicación gratuita |
| **Apéndice Técnico 3** | Capítulo IV "Sistemas ITS" | Especificaciones mínimas de equipos |
| **Apéndice Técnico 4** | Indicadores de Nivel de Servicio | Disponibilidad ≥99%, tiempo de respuesta <3 segundos |

### 2.2 Normativa Aplicable

#### Normativa Nacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **RETIE** | Reglamento Técnico de Instalaciones Eléctricas | Alimentación eléctrica, tierras, protecciones |
| **Resolución 2273/2014** | Plan Nacional de Seguridad Vial | Dispositivos de seguridad en carreteras |
| **Manual de Señalización Vial 2015** | Dispositivos uniformes de regulación del tránsito | Señalización de postes SOS |
| **Decreto 1079/2015** | Decreto Único Reglamentario del Sector Transporte | Requisitos de seguridad vial |

#### Normativa Internacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **ISO TC-204** | Intelligent Transport Systems | Sistemas ITS en general |
| **ITU-T H.550-H.569** | Vehicular gateways and ITS | Arquitectura y protocolos ITS |
| **IEC 60529** | Degrees of protection (IP Code) | Protección IP65 mínima |
| **IEEE 802.3** | Ethernet | Comunicaciones por fibra óptica |

### 2.3 Certificaciones Requeridas

| Certificación | Organismo | Obligatoria | Aplicación |
|:--------------|:----------|:------------|:-----------|
| **CE** | Conformidad Europea | ✅ Sí | Equipos electrónicos importados |
| **FCC** | Federal Communications Commission | ✅ Sí | Equipos de comunicaciones |
| **IP65** | IEC 60529 | ✅ Sí | Gabinete exterior |
| **ISO 9001:2015** | Sistema de Gestión de Calidad | ✅ Sí | Fabricante |
| **RETIE** | Cumplimiento eléctrico Colombia | ✅ Sí | Instalaciones eléctricas |

---

## 3. ESPECIFICACIONES TÉCNICAS GENERALES

### 3.1 Características Ambientales

| Parámetro | Especificación Mínima | Referencia |
|:----------|:---------------------|:-----------|
| **Temperatura de operación** | -10°C a +50°C | Condiciones tropicales |
| **Humedad relativa** | 0-95% sin condensación | IEC 60068-2-78 |
| **Protección IP** | **IP65 mínimo** | IEC 60529 |
| **Resistencia a viento** | 120 km/h | Zona tropical |
| **Altitud operación** | 0-500 msnm | Magdalena Medio |
| **Resistencia UV** | Mín. 10 años | ASTM G154 |

**Condiciones específicas del proyecto:**
- ✅ Clima tropical húmedo (Magdalena Medio)
- ✅ Temperatura promedio: 27-32°C
- ✅ Humedad promedio: 70-85%
- ✅ Exposición directa al sol
- ✅ Lluvias intensas frecuentes

### 3.2 Requisitos Eléctricos

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tensión nominal** | 120 VAC, 60 Hz | RETIE |
| **Variación de tensión** | ±10% | RETIE |
| **Consumo máximo** | **50 W** | - |
| **Consumo en espera** | <10 W | - |
| **Factor de potencia** | ≥0.9 | RETIE |
| **Respaldo UPS** | **2 horas mínimo** | AT2 |
| **Sistema de tierras** | <10 Ω | RETIE |

### 3.3 Requisitos de Comunicaciones

| Parámetro | Especificación | Protocolo |
|:----------|:---------------|:----------|
| **Medio físico** | **Fibra óptica monomodo 9/125 μm** | ITU-T G.652 |
| **Velocidad** | 100 Mbps mínimo | IEEE 802.3 |
| **Protocolo de red** | TCP/IP | RFC 791, RFC 793 |
| **Protocolo VoIP** | SIP / H.323 | ITU-T |
| **Codec de audio** | G.711 / G.729 | ITU-T |
| **Disponibilidad** | **≥99% anual** | AT2, AT4 |
| **Latencia máxima** | <150 ms | - |
| **Jitter** | <30 ms | - |

---

## 4. ESPECIFICACIONES POR COMPONENTE

### 4.1 Poste SOS (Unidad Completa)

#### 4.1.1 Descripción General

El poste SOS es un dispositivo de comunicación de emergencia que permite a los usuarios del corredor vial establecer contacto directo y gratuito con el Centro de Control de Operaciones (CCO) en caso de emergencia, incidente o requerimiento de asistencia.

**Sistema "Tres Bolillos":**
- Instalación **alternada** entre calzadas (izquierda/derecha)
- SOS impar (1, 3, 5...): Berma externa izquierda
- SOS par (2, 4, 6...): Berma externa derecha
- Cobertura efectiva: ~1.5 km por calzada

#### 4.1.2 Especificaciones Técnicas del Poste

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Altura total** | 2.5 m (±5 cm) | Inspección dimensional |
| **Ancho (base)** | 40 cm mínimo | Inspección dimensional |
| **Profundidad (base)** | 35 cm mínimo | Inspección dimensional |
| **Peso total** | 80-120 kg | Pesaje |
| **Visibilidad nocturna** | 500 m mínimo | Prueba fotométrica |
| **Resistencia impacto** | IK10 | IEC 62262 |
| **Protección IP** | IP65 exterior, IP54 interior | IEC 60529 |

#### 4.1.3 Materiales y Construcción

| Elemento | Material | Acabado | Norma |
|:---------|:---------|:--------|:------|
| **Estructura principal** | Acero galvanizado ASTM A36 | Pintura epóxica RAL 7035 (gris) | ASTM A123 |
| **Puerta frontal** | Acero inoxidable AISI 304 | Pulido satinado | ASTM A240 |
| **Panel frontal** | Policarbonato antivandalismo | Transparente UV-resistente | - |
| **Botón de emergencia** | Acero inoxidable o aluminio anodizado | Color rojo RAL 3020 | - |
| **Bisagras y cerraduras** | Acero inoxidable AISI 316 | - | ASTM A240 |

#### 4.1.4 Dimensiones y Pesos

| Dimensión | Valor | Tolerancia |
|:----------|:------|:-----------|
| **Alto total (sobre nivel terreno)** | 2.50 m | ±50 mm |
| **Ancho frontal** | 400 mm | ±10 mm |
| **Profundidad** | 350 mm | ±10 mm |
| **Altura del botón SOS** | 1.20 m (desde piso) | ±50 mm |
| **Peso estructura** | 85 kg | ±10 kg |
| **Peso con equipos** | 110 kg | ±15 kg |

#### 4.1.5 Señalización y Visibilidad

| Elemento | Especificación |
|:---------|:---------------|
| **Letrero "SOS"** | Tamaño mínimo: 30 cm × 15 cm, retrorefléctivo Tipo IX |
| **Pictograma teléfono** | 20 cm × 20 cm mínimo, según Manual Señalización Vial 2015 |
| **Iluminación LED** | Color ámbar o blanco, visible 500 m, encendido nocturno automático |
| **Cinta retrorefléctiva** | Perímetro del poste, franjas amarillas/negras 10 cm |

### 4.2 Sistema de Comunicación de Voz

#### 4.2.1 Descripción General

Sistema de comunicación bidireccional full-duplex que permite conversación en tiempo real entre el usuario en campo y el operador del CCO.

#### 4.2.2 Especificaciones Técnicas

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Tipo de comunicación** | Full-duplex (habla y escucha simultáneos) | Prueba funcional |
| **Tiempo de establecimiento llamada** | **<3 segundos** | Prueba con cronómetro |
| **Calidad de audio** | Inteligibilidad ≥90% | Prueba MOS (Mean Opinion Score) |
| **Cancelación de eco** | Sí, automática | Prueba funcional |
| **Supresión de ruido ambiente** | ≥15 dB | Prueba acústica |
| **Rango de frecuencia** | 300-3400 Hz | Análisis espectral |
| **Nivel de presión sonora (altavoz)** | 80-90 dB @ 1 m | Sonómetro |
| **Sensibilidad micrófono** | -45 dB @ 1 kHz | Prueba de laboratorio |

#### 4.2.3 Funcionalidades Requeridas

- ✅ **Llamada automática al CCO** al presionar botón SOS
- ✅ **Identificación automática** de ubicación (PK, ruta, sentido)
- ✅ **Registro de llamadas** (hora, duración, ubicación)
- ✅ **Grabación de conversaciones** (almacenamiento mínimo 90 días)
- ✅ **Llamada prioritaria** (interrumpe otras comunicaciones si es necesario)
- ✅ **Supervisión remota** de estado operativo (conectado/desconectado)
- ✅ **Prueba periódica automática** (diaria, sin intervención humana)

### 4.3 Equipos Electrónicos Internos

#### 4.3.1 Unidad de Control Principal

| Componente | Especificación Mínima |
|:-----------|:---------------------|
| **Procesador** | ARM Cortex-A7 o superior, 1 GHz |
| **Memoria RAM** | 512 MB mínimo |
| **Almacenamiento** | 8 GB flash mínimo (para logs y grabaciones) |
| **Sistema operativo** | Linux embebido o similar |
| **Interfaz de red** | Ethernet 10/100 Mbps |
| **Protocolos** | TCP/IP, SIP, SNMP v3 |

#### 4.3.2 Conversor de Medios (Media Converter)

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | Fibra óptica (SC/APC) a Ethernet (RJ45) |
| **Velocidad** | 100 Mbps full-duplex |
| **Distancia máxima** | 20 km (fibra monomodo) |
| **Longitud de onda** | 1310 nm o 1550 nm |
| **Sensibilidad receptora** | -30 dBm mínimo |
| **Potencia de transmisión** | -15 a -8 dBm |

#### 4.3.3 Sistema de Respaldo (UPS)

| Parámetro | Especificación |
|:----------|:---------------|
| **Capacidad** | **2 horas mínimo** a carga completa |
| **Tecnología** | Baterías de ciclo profundo (AGM o gel) |
| **Tensión** | 12 VDC |
| **Capacidad mínima** | 20 Ah @ 12V |
| **Tiempo de recarga** | <8 horas |
| **Vida útil** | >5 años |
| **Indicador de estado** | LED o display local + remoto vía SNMP |

#### 4.3.4 Sistema de Protección Eléctrica

| Componente | Especificación |
|:-----------|:---------------|
| **DPS (Supresor de Picos)** | Clase II, 20 kA mínimo |
| **Breaker principal** | 10 A, curva C |
| **Fusibles secundarios** | Según consumo de cada equipo |
| **Tierras** | SPT independiente, <10 Ω |

### 4.4 Fabricantes de Referencia

**Fabricantes aceptables (sin orden de preferencia):**

1. **SWARCO** (Austria/Alemania)
   - Modelo: EFA-S2 Emergency Phone
   - Sitio: www.swarco.com

2. **COMARK** (España)
   - Modelo: PTU-200 Series
   - Sitio: www.comark.es

3. **Siemens Mobility** (Alemania)
   - Modelo: Wayside Communication System
   - Sitio: www.mobility.siemens.com

4. **GAI-TRONICS** (USA)
   - Modelo: Commander Highway Emergency Telephone
   - Sitio: www.gai-tronics.com

5. **TELERGON** (España)
   - Modelo: TGN-SOS Series
   - Sitio: www.telergon.es

6. **O equivalente** que cumpla o supere las especificaciones

> **Nota:** La lista es referencial. El contratista puede proponer alternativas que cumplan o superen las especificaciones mediante documentación técnica y certificaciones.

---

## 5. INTEGRACIÓN Y COMPATIBILIDAD

### 5.1 Integración con Sistema Central (CCO)

| Aspecto | Requisito | Verificación |
|:--------|:----------|:-------------|
| **Conexión a CCO** | VoIP (SIP), 100 Mbps, fibra óptica | Prueba de conectividad |
| **Tiempo de establecimiento llamada** | <3 segundos | Prueba cronometrada |
| **Disponibilidad** | ≥99% anual | Monitoreo 30 días piloto |
| **Identificación automática** | PK, ruta, sentido automático | Verificación en pantalla CCO |
| **Registro de eventos** | Todos los eventos en SCADA | Consulta base de datos |

### 5.2 Integración con SCADA

| Parámetro | Requisito |
|:----------|:----------|
| **Protocolo** | SNMP v3 o Modbus TCP/IP |
| **Variables monitoreadas** | Estado (online/offline), fallas, llamadas activas, batería |
| **Frecuencia de actualización** | 60 segundos máximo |
| **Alarmas** | Falla de comunicación, batería baja, puerta abierta |

### 5.3 Interfaz con Otros Sistemas

| Sistema | Tipo de Interfaz | Datos Intercambiados |
|:--------|:-----------------|:---------------------|
| **Telecomunicaciones** | Fibra óptica (backbone) | Voz VoIP, datos de estado |
| **Energía Eléctrica** | Acometida 120 VAC | Alimentación eléctrica |
| **CCO** | VoIP + SNMP | Voz, eventos, alarmas, estado |
| **SCADA** | SNMP v3 | Variables de operación |

---

## 6. REQUISITOS DE INSTALACIÓN

### 6.1 Ubicaciones Exactas

**Referencia:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md`

**Distribución por ruta:**
| Ruta | Cantidad | PK Inicial | PK Final | Observaciones |
|:-----|:---------|:-----------|:---------|:--------------|
| **RN 4510** | 37 | PK 41+180 | PK 131+700 | Sistema tres bolillos |
| **RN 4511** | 56 | PK 0+650 | PK 147+385 | Sistema tres bolillos |
| **RN 4513** | 5 | PK 1+240 | PK 9+000 | Acceso CCO/Báscula + SOS #88 |
| **TOTAL** | **98** | - | - | 293.0 km cubiertos |

**Criterio de separación:**
- ✅ Máximo 3 km entre postes consecutivos
- ✅ Alternados en bermas externas (izquierda/derecha)
- ✅ Cobertura efectiva: ~1.5 km por calzada

### 6.2 Obras Civiles Requeridas

| Elemento | Especificación | Norma |
|:---------|:---------------|:------|
| **Cimentación** | Dados de concreto 60×60×80 cm, f'c=21 MPa | NSR-10 |
| **Profundidad** | 80 cm bajo nivel de terreno | NSR-10 |
| **Pernos de anclaje** | 4 unid., Ø1/2", L=50 cm, galvanizados | ASTM A307 |
| **Canalizaciones** | HDPE Ø2" (50 mm), profundidad 0.80 m | RETIE |
| **Caja de registro** | 40×40×60 cm, tapa de concreto | - |
| **Tierras** | SPT independiente, varilla copperweld 5/8"×2.4 m, <10 Ω | RETIE |

### 6.3 Conexiones

#### 6.3.1 Acometida Eléctrica

| Parámetro | Especificación |
|:----------|:---------------|
| **Tensión** | 120 VAC, 60 Hz |
| **Corriente máxima** | 5 A |
| **Calibre conductor** | AWG 12, THHN/THWN |
| **Protección** | Breaker 10 A + DPS Clase II 20 kA |
| **Ducto** | PVC Ø3/4" desde poste más cercano |

#### 6.3.2 Conectividad (Fibra Óptica)

| Parámetro | Especificación |
|:----------|:---------------|
| **Medio** | Fibra óptica SM 9/125 μm, OS2 |
| **Ruta** | Desde berma externa → cruce subterráneo → separador central (backbone) |
| **Ducto** | HDPE Ø2" (50 mm) |
| **Profundidad cruce** | 0.80 m bajo calzada |
| **Conectores** | SC/APC |
| **ODF más cercano** | Variable según ubicación (ver layout) |
| **Atenuación máxima** | <2 dB total (incluyendo conectores y empalmes) |

---

## 7. PRUEBAS Y CRITERIOS DE ACEPTACIÓN

### 7.1 Pruebas en Fábrica (FAT)

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección dimensional** | Verificar dimensiones según plano | Dentro de tolerancias (±5%) |
| **Inspección visual** | Verificar acabados, soldaduras, pintura | Sin defectos visibles, pintura uniforme |
| **Prueba eléctrica** | Verificar consumo y protección | Consumo <50 W, DPS funcional |
| **Prueba de hermeticidad** | Verificar IP65 | Prueba con chorro de agua (12.5 L/min, 3 min) |
| **Prueba de audio** | Verificar calidad de voz | Inteligibilidad ≥90%, cancelación de eco OK |
| **Prueba de comunicación** | Simular llamada a CCO | Establecimiento <3 seg, comunicación clara |
| **Prueba de UPS** | Verificar autonomía | ≥2 horas a carga completa |
| **Prueba de iluminación** | Verificar LED y retroreflectividad | Visible 500 m, retroreflectividad según norma |

### 7.2 Pruebas en Sitio (SAT)

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección de instalación** | Verificar verticalidad, cimentación, tierras | Vertical ±2°, cimentación según plano, SPT <10 Ω |
| **Prueba de conectividad** | Verificar comunicación con CCO | Ping <150 ms, sin pérdida de paquetes |
| **Prueba de llamada real** | Verificar funcionamiento end-to-end | Llamada establecida <3 seg, audio claro ambos sentidos |
| **Prueba de identificación** | Verificar datos en pantalla CCO | PK, ruta, sentido correctos |
| **Prueba de grabación** | Verificar almacenamiento de audio | Grabación clara, audible, recuperable |
| **Prueba de alimentación** | Verificar acometida eléctrica | 120 VAC ±10%, protecciones funcionando |
| **Prueba de UPS** | Verificar autonomía en sitio | Desconectar red, funcionamiento >2 horas |
| **Prueba de integración SCADA** | Verificar monitoreo remoto | Todas las variables visibles en SCADA |
| **Prueba de visibilidad** | Verificar iluminación nocturna | Visible 500 m de noche |

### 7.3 Protocolos de Prueba

#### 7.3.1 Protocolo de Prueba FAT

**Documento:** `PROTOCOLO-FAT-SOS-XXX`  
**Contenido mínimo:**
1. **Identificación del equipo:** Marca, modelo, serial, cantidad
2. **Lista de verificación dimensional:** Tabla con dimensiones vs. plano
3. **Lista de verificación funcional:** Checklist con resultado OK/NO OK
4. **Registro de mediciones:** Consumo, autonomía, audio, iluminación
5. **Registro fotográfico:** Mínimo 10 fotos (frontal, lateral, interior, detalles)
6. **Certificados:** CE, FCC, IP65, ISO 9001
7. **Firmas:** Fabricante / Contratista / Interventoría

#### 7.3.2 Protocolo de Prueba SAT

**Documento:** `PROTOCOLO-SAT-SOS-PKXX+XXX`  
**Contenido mínimo:**
1. **Identificación y ubicación:** PK exacto, ruta, sentido, coordenadas GPS
2. **Verificación de instalación:** Cimentación, verticalidad, tierras, cableado
3. **Pruebas funcionales:** Llamada, audio, grabación, UPS
4. **Pruebas de integración:** CCO, SCADA, identificación automática
5. **Registro fotográfico as-built:** Mínimo 15 fotos (panorámica, detalle instalación, interior, conexiones)
6. **Plano as-built:** Ubicación exacta, conexiones, rutas de fibra
7. **Firmas:** Contratista / Interventoría / ANI

---

## 8. DOCUMENTACIÓN REQUERIDA

### 8.1 Documentos del Fabricante

| Documento | Descripción | Idioma | Cantidad |
|:----------|:------------|:-------|:---------|
| **Ficha técnica** | Especificaciones detalladas del equipo | **Español** | 3 copias impresas + PDF |
| **Manual de instalación** | Procedimiento paso a paso, planos, conexiones | **Español** | 2 copias impresas + PDF |
| **Manual de operación** | Guía de usuario para operadores CCO | **Español** | 3 copias impresas + PDF |
| **Manual de mantenimiento** | Procedimientos preventivos y correctivos | **Español** | 2 copias impresas + PDF |
| **Planos de taller** | Dimensiones, ensamble, conexiones | - | PDF + DWG |
| **Diagramas eléctricos** | Unifilar, esquemático | - | PDF + DWG |
| **Lista de repuestos** | Repuestos recomendados con códigos | **Español** | PDF |

### 8.2 Certificados Requeridos

| Certificado | Emisor | Vigencia | Observaciones |
|:------------|:-------|:---------|:--------------|
| **Certificado de origen** | Fabricante | - | Original |
| **Certificado ISO 9001:2015** | Organismo acreditado | Vigente | Copia certificada |
| **Certificado CE** | Laboratorio notificado | - | Original o copia certificada |
| **Certificado FCC** | FCC (USA) o equivalente | - | Original o copia certificada |
| **Certificado IP65** | Laboratorio acreditado IEC 60529 | - | Original o copia certificada |
| **Declaración RETIE** | Fabricante o importador | - | Original firmada |
| **Certificado de calibración** | Laboratorio acreditado (si aplica) | Vigente | Original |

### 8.3 Garantías

| Elemento | Garantía Mínima | Observaciones |
|:---------|:----------------|:--------------|
| **Equipos electrónicos** | **24 meses** | Desde puesta en servicio, incluye mano de obra |
| **Estructura metálica** | **60 meses** | Contra corrosión y defectos de fabricación |
| **Pintura** | **24 meses** | Contra descascaramiento y decoloración |
| **Batería UPS** | **12 meses** | Reemplazo gratuito si falla antes |
| **Software** | **24 meses** | Actualizaciones incluidas |

---

## 9. MANTENIMIENTO

### 9.1 Mantenimiento Preventivo

| Actividad | Frecuencia | Responsable | Tiempo Est. |
|:----------|:-----------|:------------|:------------|
| **Limpieza externa** | Mensual | Contratista | 30 min/und |
| **Verificación funcional (llamada de prueba)** | Semanal | Contratista | 5 min/und |
| **Inspección visual (estructura, pintura)** | Trimestral | Contratista | 15 min/und |
| **Limpieza interna (equipos, ventilación)** | Semestral | Contratista | 1 hora/und |
| **Verificación de tierras (SPT)** | Anual | Contratista | 30 min/und |
| **Mantenimiento mayor (batería, lubricación)** | Anual | Fabricante autorizado | 2 horas/und |

### 9.2 Repuestos Críticos

| Componente | Cantidad Mínima en Stock | Plazo de Entrega |
|:-----------|:-------------------------|:-----------------|
| **Batería UPS (12V 20Ah)** | 10 unidades | 15 días |
| **Conversor de medios (fiber to ethernet)** | 5 unidades | 30 días |
| **Botón de emergencia completo** | 5 unidades | 30 días |
| **Micrófono y altavoz** | 5 juegos | 30 días |
| **LED de iluminación** | 10 unidades | 15 días |
| **DPS (supresor de picos)** | 10 unidades | 15 días |
| **Breakers 10A** | 10 unidades | 15 días |

### 9.3 Indicadores de Mantenimiento

| Indicador | Meta | Medición |
|:----------|:-----|:---------|
| **Disponibilidad** | ≥99% | Tiempo online / Tiempo total |
| **MTBF (Mean Time Between Failures)** | ≥8760 horas (1 año) | Tiempo operativo / # fallas |
| **MTTR (Mean Time To Repair)** | ≤4 horas | Tiempo reparación promedio |
| **Llamadas exitosas** | ≥99% | Llamadas completadas / Llamadas intentadas |

---

## 10. REQUISITOS DE CAPACITACIÓN

### 10.1 Capacitación de Instalación

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Instalación mecánica** | 4 horas | Técnicos instaladores | Sitio |
| **Instalación eléctrica y tierras** | 4 horas | Electricistas | Sitio |
| **Instalación de fibra óptica** | 4 horas | Técnicos telecom | Sitio |
| **Puesta en servicio** | 4 horas | Técnicos instaladores | Sitio |

### 10.2 Capacitación de Operación

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Operación desde CCO** | 8 horas | Operadores CCO | CCO |
| **Interpretación de alarmas** | 4 horas | Operadores CCO | CCO |
| **Procedimientos de emergencia** | 4 horas | Operadores CCO | CCO |

### 10.3 Capacitación de Mantenimiento

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Mantenimiento preventivo** | 8 horas | Técnicos mantenimiento | Taller + Campo |
| **Diagnóstico de fallas** | 8 horas | Técnicos mantenimiento | Taller + Campo |
| **Reemplazo de componentes** | 4 horas | Técnicos mantenimiento | Taller |

### 10.4 Entregables de Capacitación

- ✅ Presentaciones en PowerPoint (español)
- ✅ Videos tutoriales (español, mínimo 1080p)
- ✅ Manuales de capacitación impresos
- ✅ Certificados de asistencia para cada participante
- ✅ Evaluaciones de aprendizaje (mínimo 80% aprobación)

---

## 11. PRESUPUESTO Y CANTIDADES

### 11.1 Resumen de Cantidades

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:------------|:-------|:---------|:-------------------|:------------|
| 1 | Poste SOS completo (equipo) | und | 98 | $18,000 | $1,764,000 |
| 2 | Instalación y puesta en servicio | und | 98 | $4,000 | $392,000 |
| 3 | Obras civiles (cimentación, canalizaciones) | und | 98 | $2,000 | $196,000 |
| 4 | Fibra óptica y conectividad | und | 98 | $1,500 | $147,000 |
| 5 | Capacitación y documentación | global | 1 | $24,000 | $24,000 |
| 6 | Repuestos iniciales (2 años) | global | 1 | $20,000 | $20,000 |
| | | | | **TOTAL** | **$2,543,000** |

**Precio unitario promedio:** $26,000 USD/poste (instalado y operativo)

### 11.2 Desglose por Ruta

**Ver:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md` (detalle completo con PKs exactos)

| Ruta | Tramo | Cantidad | CAPEX (USD) | Observaciones |
|:-----|:------|:---------|:------------|:--------------|
| **RN 4510** | PK 41+180 → PK 131+700 | 37 | $962,000 | Sistema tres bolillos |
| **RN 4511** | PK 0+650 → PK 147+385 | 56 | $1,456,000 | Sistema tres bolillos |
| **RN 4513** | PK 1+240 → PK 9+000 | 5 | $130,000 | Acceso CCO/Báscula + SOS #88 |
| **TOTAL** | - | **98** | **$2,548,000** | - |

---

## 12. CRONOGRAMA DE SUMINISTRO E INSTALACIÓN

### 12.1 Hitos Principales

| Hito | Fecha Estimada | Duración | Responsable |
|:-----|:---------------|:---------|:------------|
| **Aprobación especificaciones T04** | T+0 | - | Interventoría/ANI |
| **Licitación y adjudicación** | T+30 días | 4 semanas | Contratista |
| **Orden de compra** | T+35 días | - | Contratista |
| **Fabricación** | T+35 a T+95 días | 8 semanas | Fabricante |
| **FAT (Factory Acceptance Test)** | T+95 a T+105 días | 10 días | Fabricante/Interventoría |
| **Transporte y entrega en sitio** | T+105 a T+120 días | 2 semanas | Logística |
| **Instalación (lote 1: 30 und)** | T+120 a T+160 días | 6 semanas | Contratista |
| **Instalación (lote 2: 30 und)** | T+140 a T+180 días | 6 semanas | Contratista |
| **Instalación (lote 3: 28 und)** | T+160 a T+195 días | 5 semanas | Contratista |
| **SAT (Site Acceptance Test)** | T+195 a T+210 días | 2 semanas | Contratista/Interventoría |
| **Puesta en servicio total** | T+210 días | - | Contratista/ANI |

**Tiempo total:** ~7 meses desde aprobación de especificaciones

---

## 13. ANEXOS

### Anexo A: Planos de Referencia
- **Plano de ubicaciones:** Ver `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0.md`
- **Plano de cimentación típica:** A suministrar por contratista
- **Plano de conexiones eléctricas:** A suministrar por contratista
- **Plano de conexiones de fibra óptica:** A suministrar por contratista

### Anexo B: Hojas de Datos Técnicos
- Datasheet del poste SOS (fabricante)
- Datasheet del conversor de medios
- Datasheet de la batería UPS
- Datasheet del DPS

### Anexo C: Certificaciones
- Certificado ISO 9001:2015 del fabricante
- Certificado CE del equipo
- Certificado FCC del equipo
- Certificado IP65 del gabinete
- Declaración de conformidad RETIE

### Anexo D: Protocolos de Prueba
- Formato protocolo FAT (PROTOCOLO-FAT-SOS-TEMPLATE.xlsx)
- Formato protocolo SAT (PROTOCOLO-SAT-SOS-TEMPLATE.xlsx)

---

## 14. REFERENCIAS

### 14.1 Documentos del Proyecto

| Código | Título | Versión |
|:-------|:-------|:--------|
| T01-ITS | Ficha de Sistema ITS | v1.2 |
| T02-ITS | Análisis de Requisitos ITS | v1.0 |
| T03-ITS | Arquitectura Conceptual ITS | v1.0 |
| VAL-SOS | Validación Contractual Postes SOS | v1.0 |
| LAYOUT-ITS | Layout Georreferenciado Equipos ITS | v1.0 |

### 14.2 Normativa Citada

#### Nacional
- RETIE - Reglamento Técnico de Instalaciones Eléctricas (Resolución 90708/2013)
- Manual de Señalización Vial - Dispositivos uniformes para la regulación del tránsito (2015)
- Resolución 2273/2014 - Plan Nacional de Seguridad Vial
- Decreto 1079/2015 - Decreto Único Reglamentario del Sector Transporte
- NSR-10 - Reglamento Colombiano de Construcción Sismo Resistente

#### Internacional
- ISO TC-204 - Intelligent Transport Systems
- ITU-T H.550-H.569 - Vehicular gateways and ITS
- IEC 60529 - Degrees of protection provided by enclosures (IP Code)
- IEEE 802.3 - Ethernet
- ASTM A36 - Standard Specification for Carbon Structural Steel
- ASTM A240 - Standard Specification for Chromium and Chromium-Nickel Stainless Steel Plate
- ASTM A123 - Standard Specification for Zinc (Hot-Dip Galvanized) Coatings on Iron and Steel Products
- IEC 62262 - Degrees of protection provided by enclosures for electrical equipment against external mechanical impacts (IK code)

---

**Elaborado por:** Administrador Contractual EPC  
**Revisado por:** Ing. ITS / Ing. Telecomunicaciones  
**Aprobado por:** Gerente Técnico

**Fecha de elaboración:** 21/10/2025  
**Fecha de revisión:** Pendiente  
**Fecha de aprobación:** Pendiente  

---

**FIN DEL DOCUMENTO T04 - ESPECIFICACIONES TÉCNICAS POSTES SOS v1.1**

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad total actualizada: 98 unidades (incluye SOS #88 RN 4513)
- CAPEX actualizado: $2,543,000 USD
- Distribución por ruta actualizada con información oficial
- Metodología PKD lineal aplicada
