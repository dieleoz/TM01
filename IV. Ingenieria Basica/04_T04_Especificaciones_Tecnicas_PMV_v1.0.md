# T04: ESPECIFICACIONES TÉCNICAS - PMV (PANELES DE MENSAJE VARIABLE)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 22/10/2025  
**Sistema:** PMV - Paneles de Mensaje Variable (Manual de Señalización Vial 2024)  
**Responsable:** Ing. ITS / Administrador Contractual EPC  
**Versión:** 2.0  
**Referencia T01:** T01_Ficha_Sistema_ITS_v1.2  
**Referencia T03:** T03_Arquitectura_Conceptual_ITS_v1.2  
**Referencia Validación:** 38_VALIDACION_CONTRACTUAL_PMV_v2.0  
**Referencia Layout:** 42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v2.0  

---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 28 PMV (2 por peaje + separación 20 km) | Adm. Contractual EPC |
| 1.1 | 22/10/2025 | Revisión con información oficial: 28 PMV | Adm. Contractual EPC |
| 2.0 | 22/10/2025 | **Alineación Manual 2024:** Optimización a 14 unidades (Decision Points). Carácter 400mm. Estructura CCP-14. Tiempos de respuesta AT4. | Adm. Contractual EPC |

---

## 1. IDENTIFICACIÓN Y ALCANCE

### 1.1 Identificación del Sistema

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | PMV - Paneles de Mensaje Variable |
| **Categoría** | ITS - Información Variable al Usuario |
| **Código interno** | T04-PMV-004-v2.0 |
| **Cantidad total** | **14 unidades** (Optimizado a Puntos de Decisión) |
| **CAPEX estimado** | **USD $1,190,000** ($85,000/panel instalado - Full Matrix 400mm) |
| **Documentos base** | Manual 2024, CCP-14, AT2, AT4 |

### 1.2 Distribución por Tipo de Panel

| Tipo | Cantidad | Descripción | Ubicación Típica |
|:-----|:---------|:------------|:-----------------|
| **PMV Fijo (Pórtico)** | 14 | Full Matrix 2024, Carácter 400mm, Pórtico | Puntos de Decisión / Peajes |
| **PMV Móvil (Remolque)** | 0 | No contemplado en diseño | - |
| **TOTAL** | **14** | - | - |

### 1.3 Alcance de las Especificaciones

**Este documento especifica:**
- ✅ Características técnicas de PMV tipo PASA-VÍAS
- ✅ Requisitos de visibilidad y legibilidad
- ✅ Protocolo NTCIP 1202 (obligatorio)
- ✅ Integración con CCO y SCADA
- ✅ Ubicaciones estratégicas (referencia a layout)
- ✅ 28 ubicaciones justificadas (2 por peaje + estratégicos)

**Este documento NO especifica:**
- ❌ Diseño estructural de pórticos (ver T05)
- ❌ Contenido específico de mensajes (ver Manual de Operación)

---

## 2. MARCO NORMATIVO Y CONTRACTUAL

### 2.1 Referencias Contractuales

| Documento | Sección | Requisito Clave |
|:----------|:--------|:----------------|
| **Apéndice Técnico 2** | §3.3.4.8 "Sistemas de Información Variable" | Antes/después de peajes, información en tiempo real |
| **Apéndice Técnico 3** | Cap. IV "Sistemas ITS" | Protocolo NTCIP, integración CCO |
| **Resolución 546/2018** | IP/REV | Información a usuarios en peajes |

### 2.2 Normativa Aplicable

#### Normativa Nacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **Manual Señalización 2024** | Manual de Señalización Vial 2024 (Cap. 2 - Sec. 2.7.4) | **NORMA RECTORA** - PMV |
| **CCP-14** | Norma Colombiana de Diseño de Puentes LRFD 2014 | **OBLIGATORIO** - Estructura Pórtico |
| **RETIE 2024** | Reglamento Técnico de Instalaciones Eléctricas | Conexión, protecciones |
| **Resolución 546/2018** | Interoperabilidad de Peajes (IP/REV) | Información a usuarios |

#### Normativa Internacional

| Norma | Título | Aplicación |
|:------|:-------|:-----------|
| **UNE-EN 12966** | Paneles de Mensaje Variable - Rendimiento visual | **L3 Luminancia**, Color, Ángulo |
| **NTCIP 1202/1203** | Dynamic Message Signs Standard | **OBLIGATORIO** - Protocolo |
| **IEC 60529 / 62262** | IP Code / IK Code | **IP65 / IK08** |
| **AASHTO LRFD (Signs)** | Structural Supports for Highway Signs | Diseño estructural |

### 2.3 Certificaciones Requeridas

| Certificación | Organismo | Obligatoria | Aplicación |
|:--------------|:----------|:------------|:-----------|
| **NTCIP 1202** | NEMA/AASHTO/ITE | ✅ **SÍ** | **Protocolo obligatorio** |
| **CE** | Conformidad Europea | ✅ Sí | Equipos electrónicos |
| **FCC** | USA | ✅ Sí | Equipos electrónicos |
| **IP65** | IEC 60529 | ✅ Sí | Gabinete controller |
| **ISO 9001:2015** | Organismo certificador | ✅ Sí | Fabricante |

---

## 3. ESPECIFICACIONES TÉCNICAS GENERALES

### 3.1 Características Ambientales

| Parámetro | Especificación Mínima | Referencia |
|:----------|:---------------------|:-----------|
| **Temperatura de operación** | -10°C a +60°C | Condiciones tropicales + sol directo |
| **Humedad relativa** | 0-95% sin condensación | IEC 60068-2-78 |
| **Protección display** | IP54 mínimo (frontal) | IEC 60529 |
| **Protección controller** | IP65 mínimo (posterior) | IEC 60529 |
| **Resistencia a viento** | 150 km/h | Zona tropical |
| **Altitud operación** | 0-500 msnm | Magdalena Medio |
| **Resistencia UV** | Mín. 10 años sin decoloración | ASTM G154 |

### 3.2 Requisitos Eléctricos

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tensión nominal** | 120 VAC o 208 VAC trifásica, 60 Hz | RETIE |
| **Variación de tensión** | ±10% | RETIE |
| **Consumo máximo** | **800 W** (panel completo encendido 100%) | - |
| **Consumo típico** | 300-500 W (operación normal) | - |
| **Factor de potencia** | ≥0.9 | RETIE |
| **Respaldo UPS** | **4 horas mínimo** | AT2 |
| **Sistema de tierras** | <10 Ω | RETIE |

### 3.3 Requisitos de Comunicaciones

| Parámetro | Especificación | Protocolo |
|:----------|:---------------|:----------|
| **Medio físico** | **Fibra óptica monomodo 9/125 μm** | ITU-T G.652 |
| **Velocidad** | 100 Mbps mínimo | IEEE 802.3 |
| **Protocolo de red** | TCP/IP | RFC 791, RFC 793 |
| **Protocolo aplicación** | **NTCIP 1202** (obligatorio) | NEMA/AASHTO/ITE |
| **Protocolo secundario** | SNMP v3 (monitoreo) | - |
| **Disponibilidad** | **≥99% anual** | AT2, AT4 |
| **Latencia máxima** | <200 ms | - |

---

## 4. ESPECIFICACIONES DEL PANEL DE MENSAJE VARIABLE

### 4.1 Tipo de Panel: PASA-VÍAS (Full-Matrix Color)

#### 4.1.1 Descripción General

Panel de mensaje variable tipo PASA-VÍAS, montado sobre pórtico que cruza la vía, con tecnología LED de color completo (RGB), matriz completa programable, legible a alta velocidad (≥100 km/h), control remoto desde CCO vía protocolo NTCIP 1202.

#### 4.1.2 Especificaciones de la Pantalla LED

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Tecnología** | LED RGB de color completo | Inspección visual |
| **Tipo de matriz** | **Matriz completa** (full-matrix) | Verificación técnica |
| **Tamaño del panel** | **3.0 m (ancho) × 2.0 m (alto)** mínimo | Medición física |
| **Resolución de matriz** | **Mínimo 64×32 píxeles** (2048 píxeles totales) | Inspección técnica |
| **Pitch de píxeles** | 25-50 mm | Medición |
| **Brillo** | **≥7,000 cd/m²** (luz día) | Luxómetro |
| **Ajuste automático brillo** | Sensor de luz ambiente | Prueba día/noche |
| **Colores** | Mínimo 7 colores (RGB completo) | Inspección visual |
| **Uniformidad** | ≥90% | Prueba fotométrica |
| **Vida útil LEDs** | ≥100,000 horas | Certificado fabricante |

#### 4.1.3 Especificaciones de Legibilidad

| Parámetro | Especificación Mínima | Método de Verificación |
|:----------|:---------------------|:-----------------------|
| **Distancia de lectura** | **≥410 m** (Calculado para 400mm ch.) | Prueba de campo |
| **Altura de carácter** | **Mínimo 400 mm** (Manual 2024 Speed 120) | Medición en imagen |
| **Ancho de carácter** | Proporcional (ratio 5:7 o 7:9) | Configuración software |
| **Espaciado entre car.** | Mínimo 60 mm | Configuración software |
| **Líneas de texto** | Mínimo 3 líneas | Configuración software |
| **Caracteres por línea** | Mínimo 12-15 caracteres (Full Matrix) | Configuración software |
| **Pictogramas** | Biblioteca Manual 2024 / UNE-EN 12966 | Verificación software |

#### 4.1.4 Controlador del Panel

| Componente | Especificación Mínima |
|:-----------|:---------------------|
| **Procesador** | ARM o x86, 1 GHz mínimo |
| **Memoria RAM** | 512 MB mínimo |
| **Almacenamiento** | 4 GB flash (mensajes, logs) |
| **Sistema operativo** | Linux embebido o equivalente |
| **Interfaz de red** | Ethernet 10/100 Mbps |
| **Protocolos** | **NTCIP 1202** (obligatorio), SNMP v3 |
| **Backup de configuración** | Automático en memoria no volátil |

#### 4.1.5 Funcionalidades del Controlador

- ✅ **Gestión de mensajes:** Biblioteca de mensajes predefinidos + personalizados
- ✅ **Programación horaria:** Mensajes automáticos según hora/fecha
- ✅ **Mensajes por eventos:** Activación automática desde SCADA
- ✅ **Multi-idioma:** Español (obligatorio), pictogramas (recomendado)
- ✅ **Autodiagnóstico:** Verificación LEDs, fuente, comunicación
- ✅ **Registro de eventos:** Log de mensajes enviados, fallos
- ✅ **Control de brillo:** Ajuste automático según luz ambiente

#### 4.1.6 Fabricantes de Referencia

**Fabricantes aceptables:**

1. **Daktronics** (USA)
   - Modelo: VF-3020 (Full-Matrix LED)
   - Certificación: NTCIP 1202, líder mundial

2. **SWARCO** (Austria/Alemania)
   - Modelo: FCOS DMS
   - Certificación: NTCIP, CE, usado en Europa

3. **Aldridge Traffic Systems** (UK)
   - Modelo: Matrix Sign
   - Certificación: NTCIP, usado en APP UK

4. **EFACEC** (Portugal)
   - Modelo: Smart DMS
   - Certificación: NTCIP, usado en Iberoamérica

5. **Messagemaker** (UK)
   - Modelo: eVMS Series
   - Certificación: NTCIP, color completo

6. **O equivalente** que cumpla NTCIP 1202 y especificaciones

---

## 5. ESPECIFICACIONES DEL PÓRTICO Y ESTRUCTURA

### 5.1 Pórtico Tipo PASA-VÍAS

#### 5.1.1 Configuración Estructural

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | Pórtico tipo bandera o pórtico completo |
| **Ancho libre** | Según ancho de calzadas (12-18 m típico) |
| **Altura libre** | 5.5 m mínimo (gálibo vial) |
| **Material** | Acero estructural ASTM A36, galvanizado en caliente |
| **Acabado** | Galvanizado + pintura epóxica (opcional) |
| **Cimentaciones** | Zapatas de concreto f'c=28 MPa |

#### 5.1.2 Ubicación del Panel en Pórtico

| Parámetro | Especificación |
|:----------|:---------------|
| **Altura sobre calzada** | 5.0-6.5 m (centro del panel) |
| **Lateralidad** | Centrado sobre carril de alta velocidad |
| **Ángulo de inclinación** | 5-10° hacia abajo (mejor visibilidad) |
| **Sistema de montaje** | Ajustable, con amortiguadores de viento |

---

## 6. INTEGRACIÓN Y COMPATIBILIDAD

### 6.1 Integración con Sistema Central (CCO)

| Aspecto | Requisito | Verificación |
|:--------|:----------|:-------------|
| **Conexión a CCO** | **Protocolo NTCIP 1202** obligatorio | Prueba de comandos NTCIP |
| **Software de gestión** | Compatible con SCADA del proyecto | Integración funcional |
| **Tiempo de respuesta** | Cambio de mensaje <5 segundos | Prueba cronometrada |
| **Control remoto** | 100% funciones remotas desde CCO | Verificación operador |
| **Disponibilidad** | ≥99% anual | Monitoreo 30 días |

### 6.2 Protocolo NTCIP 1202

**Comandos Mínimos Soportados:**

| Comando | Función | Obligatorio |
|:--------|:--------|:------------|
| **dmsMessageMultiString** | Enviar mensaje al panel | ✅ Sí |
| **dmsMessageTimeRemaining** | Duración del mensaje | ✅ Sí |
| **dmsSignAccess** | Prioridad de mensajes | ✅ Sí |
| **dmsBrightnessCom** | Control de brillo | ✅ Sí |
| **dmsStatus** | Estado del panel | ✅ Sí |
| **dmsTestMode** | Modo de prueba | ✅ Sí |
| **dmsGraphicTable** | Biblioteca de gráficos | ✅ Sí |

**Formato de mensajes:**
- MULTI tag syntax (estándar NTCIP)
- Soporte para texto + pictogramas
- Múltiples páginas por mensaje

### 6.3 Interfaz con Otros Sistemas

| Sistema | Tipo de Interfaz | Datos Intercambiados |
|:--------|:-----------------|:---------------------|
| **Telecomunicaciones** | Fibra óptica (backbone) | Comandos NTCIP, estado |
| **Energía Eléctrica** | Acometida 120/208 VAC | Alimentación |
| **CCO** | NTCIP 1202 + SNMP | Mensajes, control, estado |
| **SCADA** | SNMP v3 | Estado operativo, alarmas |
| **Radares/ETD** | API (indirecto vía SCADA) | Activación automática por eventos |

---

## 7. REQUISITOS DE INSTALACIÓN Y OPERACIÓN

### 7.1 Ubicaciones Estratégicas (Puntos de Decisión)

**Referencia:** `42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v2.0.md`

**Optimización a 14 PMV:**
1.  **Entradas al Proyecto (2):** Puerto Salgar (N), Río Sogamoso (S).
2.  **Peajes (4):** Zambito (2), Aguas Negras (2) - Antes/Después.
3.  **Intersecciones de Decisión (4):** Puerto Berrío, Puerto Araujo, Cimitarra, La Lizama.
4.  **Variantes Críticas (4):** San Pedro de la Paz, Palmas de Guayabito.

### 7.2 Parámetros Operativos (AT2 / AT4)

| Parámetro | Requisito Mínimo | Referencia |
|:----------|:-----------------|:-----------|
| **Berma (Shoulder)** | **2.50 metros** mínimo | AT1 / Diseño Geométrico |
| **Respuesta Señalización** | **20 minutos** | AT4 Indicador O5 |
| **Respuesta Ambulancia** | **30 minutos** | AT4 Indicador O5 |
| **Respuesta Grúa** | **60 minutos** | AT4 Indicador O5 |
| **Disponibilidad SICC** | **99.0%** | AT4 Indicador O6 |

### 7.3 Montaje Típico - PMV en Pórtico (CCP-14)

**Configuración:**

```
Vista en Planta:

Calzada [═══════════════════════════════════════]
                    ↓
            [=====PÓRTICO=====]
                    ↓
               [PMV 3×2 m]
                    ↓
            Separador Central

Vista Frontal (desde vehículo):

        |                        |
        |    [■■■ PMV ■■■]      |
        |      3.0 m × 2.0 m    |
        |                        |
        |                        |
     Columna                 Columna
     izq.                    der.
        ↓                        ↓
    [Zapata]                [Zapata]
```

**Elementos:**
- Pórtico metálico galvanizado
- Panel PMV suspendido en centro
- Altura del panel: 5.5-6.5 m sobre calzada
- Gabinete controller al pie de columna
- SPT independiente en cada zapata

### 7.3 Obras Civiles Requeridas

| Elemento | Especificación | Norma |
|:---------|:---------------|:------|
| **Cimentaciones** | Zapatas 1.5×1.5×1.5 m (cada columna), f'c=28 MPa | NSR-10 |
| **Profundidad** | 1.5 m bajo nivel terreno | NSR-10 |
| **Estructura pórtico** | Acero ASTM A36, galvanizado ASTM A123 | AASHTO |
| **Ancho libre** | Según ancho calzada (típico 12-16 m) | Planos específicos |
| **Altura libre mínima** | 5.5 m (gálibo vial) | Manual Diseño Geométrico INVIAS |
| **Canalizaciones** | HDPE Ø4" (100 mm), profundidad 0.80 m | RETIE |
| **Caja de registro** | 80×80×100 cm, tapa de concreto | - |
| **Tierras** | SPT por columna, <10 Ω cada una | RETIE |

---

## 8. PRUEBAS Y CRITERIOS DE ACEPTACIÓN

### 8.1 Pruebas en Fábrica (FAT)

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección dimensional** | Verificar tamaño panel | 3.0 m × 2.0 m ±5% |
| **Inspección visual** | LEDs, carcasa, acabados | Sin LEDs muertos, acabado uniforme |
| **Prueba de brillo** | Verificar luminosidad | ≥7,000 cd/m² en luz día |
| **Prueba de uniformidad** | Balance de brillo | ≥90% uniformidad |
| **Prueba de colores** | Verificar RGB | 7 colores mínimo correctos |
| **Prueba de legibilidad** | Distancia de lectura | Legible a 300 m |
| **Prueba NTCIP 1202** | Protocolo estándar | Comandos estándar funcionando 100% |
| **Prueba de mensajes** | Texto + pictogramas | Biblioteca completa funcional |
| **Prueba de sensor luz** | Ajuste automático brillo | Brillo ajustado día/noche |
| **Prueba de autodiagnóstico** | Detección de fallos | Reporta LEDs muertos, fallos |

### 8.2 Pruebas en Sitio (SAT)

| Prueba | Objetivo | Criterio de Aceptación |
|:-------|:---------|:-----------------------|
| **Inspección estructural** | Pórtico, montaje, verticalidad | Vertical ±1°, instalación segura |
| **Prueba de tierras** | Verificar SPT | <10 Ω cada columna |
| **Prueba de conectividad** | Fibra óptica al CCO | Ping <200 ms, 0% pérdida |
| **Prueba de visibilidad real** | Legibilidad desde vehículo | Legible a 300 m a 100 km/h |
| **Prueba de control remoto** | Envío de mensaje desde CCO | Mensaje cambia en <5 segundos |
| **Prueba NTCIP en vivo** | Todos los comandos | 100% comandos funcionando |
| **Prueba de pictogramas** | Despliegue de símbolos | Todos los pictogramas legibles |
| **Prueba nocturna** | Visibilidad de noche | Legible sin deslumbramiento |
| **Prueba de integración SCADA** | Variables en SCADA | Estado, alarmas visibles |
| **Prueba de UPS** | Autonomía real | ≥4 horas operación |

---

## 9. DOCUMENTACIÓN REQUERIDA

### 9.1 Documentos del Fabricante

| Documento | Descripción | Idioma | Cantidad |
|:----------|:------------|:-------|:---------|
| **Ficha técnica** | Especificaciones panel, LEDs, controller | **Español** | 3 copias + PDF |
| **Manual de instalación** | Procedimiento montaje, conexiones | **Español** | 2 copias + PDF |
| **Manual de operación** | Creación mensajes, NTCIP, software | **Español** | 3 copias + PDF |
| **Manual de mantenimiento** | Preventivo, correctivo, reemplazo LEDs | **Español** | 2 copias + PDF |
| **Planos estructurales pórtico** | Dimensiones, cargas, cimentaciones | - | PDF + DWG |
| **Diagramas eléctricos** | Unifilar, esquemático | - | PDF + DWG |
| **Biblioteca de mensajes** | Mensajes pre-configurados + pictogramas | **Español** | PDF + archivo config |
| **Certificado NTCIP 1202** | Conformidad con protocolo | Inglés/Español | PDF |

### 9.2 Certificados Requeridos

| Certificado | Emisor | Vigencia | Observaciones |
|:------------|:-------|:---------|:--------------|
| **Certificado NTCIP 1202** | Laboratorio ITE o similar | - | **OBLIGATORIO** |
| **Certificado ISO 9001:2015** | Organismo acreditado | Vigente | Fabricante |
| **Certificado CE** | Laboratorio notificado | - | Equipos |
| **Certificado FCC** | FCC o equivalente | - | Equipos |
| **Certificado IP65** | Lab. IEC 60529 | - | Gabinete controller |
| **Prueba fotométrica** | Laboratorio acreditado | - | Brillo ≥7,000 cd/m² |
| **Declaración RETIE** | Fabricante/importador | - | Instalaciones eléctricas |

---

## 10. PRESUPUESTO Y CANTIDADES

### 10.1 Resumen de Cantidades

| Ítem | Descripción | Unidad | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:------------|:-------|:---------|:-------------------|:------------|
| 1 | Panel PMV LED color completo 3×2 m (64×32 px) | und | 28 | $22,000 | $616,000 |
| 2 | Pórtico metálico galvanizado (típico 15 m ancho) | und | 28 | $8,000 | $224,000 |
| 3 | Instalación y puesta en servicio | und | 28 | $3,000 | $84,000 |
| 4 | Obras civiles (zapatas, canalizaciones) | und | 28 | $2,000 | $56,000 |
| 5 | Fibra óptica y conectividad | und | 28 | $1,000 | $28,000 |
| 6 | Software de gestión PMV (licencias) | lic | 28 | $500 | $14,000 |
| 7 | Capacitación y documentación | global | 1 | $15,000 | $15,000 |
| 8 | Repuestos iniciales (módulos LED, controllers) | global | 1 | $30,000 | $30,000 |
| | | | | **TOTAL** | **$1,067,000** |

**Precio unitario promedio:** $38,107 USD/PMV instalado

> **Nota:** El presupuesto del proyecto contempla $1,010,000 USD (28 PMV × $36,071 USD). El desglose detallado con instalación es $1,067,000 USD.

### 10.2 Desglose por Ruta

| Ruta | Cantidad | CAPEX (USD) | Observaciones |
|:-----|:---------|:------------|:--------------|
| **RN 4510** | 10 | $381,071 | 2 en peaje + 8 estratégicos |
| **RN 4511** | 16 | $577,143 | 2 en peaje + 14 estratégicos |
| **RN 4513** | 2 | $72,143 | 2 estratégicos |
| **TOTAL** | **28** | **$1,030,357** | - |

---

## 11. MANTENIMIENTO

### 11.1 Mantenimiento Preventivo

| Actividad | Frecuencia | Responsable | Tiempo Est. |
|:----------|:-----------|:------------|:------------|
| **Limpieza de pantalla LED** | **Mensual** | Contratista | 1 hora/panel |
| **Verificación funcional (mensajes, brillo)** | Semanal | Contratista | 15 min/panel |
| **Inspección visual (LEDs muertos)** | Mensual | Contratista | 30 min/panel |
| **Limpieza interna (ventilación, filtros)** | Trimestral | Contratista | 2 horas/panel |
| **Verificación pórtico (corrosión, soldaduras)** | Semestral | Contratista | 1 hora/pórtico |
| **Actualización de firmware** | Anual o según fabricante | Fabricante autorizado | 1 hora/panel |
| **Prueba de comunicación NTCIP** | Trimestral | Contratista | 30 min/panel |

### 11.2 Repuestos Críticos

| Componente | Cantidad en Stock | Plazo Entrega |
|:-----------|:------------------|:--------------|
| **Módulo LED completo (20×20 cm)** | 10 unidades | 45 días |
| **Controller panel (CPU + tarjeta)** | 3 unidades | 60 días |
| **Fuente de alimentación (redundante)** | 5 unidades | 30 días |
| **Sensor de luz ambiente** | 5 unidades | 30 días |
| **Ventilador/sistema de enfriamiento** | 5 unidades | 30 días |
| **DPS Clase I + II (juego completo)** | 5 juegos | 15 días |

---

## 12. REQUISITOS DE CAPACITACIÓN

### 12.1 Capacitación de Operación CCO

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Software de gestión PMV** | 8 horas | Operadores CCO (8 personas) | CCO |
| **Protocolo NTCIP 1202** | 4 horas | Operadores CCO + Técnicos | CCO |
| **Creación de mensajes** | 8 horas | Operadores CCO | CCO |
| **Biblioteca de pictogramas** | 4 horas | Operadores CCO | CCO |
| **Gestión de eventos automáticos** | 4 horas | Operadores CCO | CCO |

### 12.2 Capacitación de Mantenimiento

| Tema | Duración | Audiencia | Ubicación |
|:-----|:---------|:----------|:----------|
| **Mantenimiento preventivo** | 8 horas | Técnicos (6 personas) | Taller + Campo |
| **Diagnóstico de fallos** | 8 horas | Técnicos ITS | Taller + Campo |
| **Reemplazo de módulos LED** | 8 horas | Técnicos especializados | Campo |
| **Configuración de controller** | 8 horas | Técnicos ITS | CCO + Campo |

---

## 13. CRONOGRAMA

### 13.1 Hitos Principales

| Hito | Fecha Estimada | Duración | Responsable |
|:-----|:---------------|:---------|:------------|
| **Aprobación T04** | T+0 | - | Interventoría/ANI |
| **Licitación** | T+30 días | 4 semanas | Contratista |
| **Orden de compra** | T+35 días | - | Contratista |
| **Fabricación** | T+35 a T+155 días | 16 semanas | Fabricante |
| **FAT** | T+155 a T+170 días | 2 semanas | Fabricante/Interventoría |
| **Transporte** | T+170 a T+185 días | 2 semanas | Logística |
| **Instalación (lote 1: 10 und)** | T+185 a T+225 días | 6 semanas | Contratista |
| **Instalación (lote 2: 18 und)** | T+205 a T+265 días | 8 semanas | Contratista |
| **SAT** | T+265 a T+280 días | 2 semanas | Contratista/Interventoría |
| **Puesta en servicio** | T+280 días | - | Contratista/ANI |

**Tiempo total:** ~9-10 meses

---

## 14. ANEXOS

### Anexo A: Planos
- Plano de ubicaciones (ver layout)
- Plano estructural pórtico típico
- Plano de montaje de panel
- Plano de cimentaciones
- Diagrama de conexiones

### Anexo B: Biblioteca de Mensajes

**Mensajes Predefinidos (mínimo 50):**
- Condiciones de tráfico (fluido, lento, congestionado)
- Alertas de accidentes
- Alertas de obras
- Información de peajes
- Eventos especiales
- Condiciones climáticas
- Velocidades recomendadas

---

## 15. REFERENCIAS

### 15.1 Documentos del Proyecto

| Código | Título | Versión |
|:-------|:-------|:--------|
| T01-ITS | Ficha de Sistema ITS | v1.2 |
| T03-ITS | Arquitectura Conceptual ITS | v1.0 |
| VAL-PMV | Validación Contractual PMV | v1.0 |
| LAYOUT-ITS | Layout Georreferenciado | v1.0 |

### 15.2 Normativa Citada

- **NTCIP 1202** - Dynamic Message Signs (OBLIGATORIO)
- ISO TC-204 - Intelligent Transport Systems
- Resolución 546/2018 - Interoperabilidad Peajes (IP/REV)
- Manual de Señalización Vial 2015
- RETIE - Instalaciones Eléctricas
- IEC 60529 - IP Code
- ASTM A36 - Acero estructural
- NSR-10 - Sismo resistencia

---

**Elaborado por:** Administrador Contractual EPC  
**Revisado por:** Ing. ITS / Ing. Estructural  
**Aprobado por:** Gerente Técnico

**Fecha de elaboración:** 21/10/2025  

---

**FIN DEL DOCUMENTO T04 - ESPECIFICACIONES TÉCNICAS PMV v1.1**

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 28 PMV
- CAPEX mantenido: $1,010,000 USD
- Distribución por tipo validada con información oficial
- Metodología PKD lineal aplicada
