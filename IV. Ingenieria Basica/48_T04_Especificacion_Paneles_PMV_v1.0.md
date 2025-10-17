# T04: ESPECIFICACIÓN TÉCNICA - PANELES DE MENSAJE VARIABLE (PMV)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Panel de Mensaje Variable Full-Color para Autopista  
**Responsable:** Ing. de Sistemas ITS  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Panel de Mensaje Variable (PMV) Full-Color |
| **Cantidad estimada** | 20 - 30 unidades |
| **Ubicación** | Antes de peajes, túneles, y en puntos estratégicos del corredor |
| **Sistema asociado** | ITS (Subsistema de Información al Usuario) |
| **Criticidad** | 🔴 Alta |
| **Documentos de Referencia** | `31_T02_Analisis_Requisitos_ITS_v1.0.md`, Resolución 546/2018 |

---

## 2. ESPECIFICACIONES FUNCIONALES

- Desplegar mensajes de texto, gráficos y animaciones para informar a los conductores sobre condiciones de la vía, incidentes, tiempos de viaje y campañas de seguridad.
- Ser controlable remotamente desde el CCO con un tiempo de actualización de mensaje inferior a 5 segundos.
- Operar de forma continua 24/7/365 con una disponibilidad mínima del 99%.

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Panel y Visualización

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tecnología** | LED Full-Color (RGB) |
| **Resolución (Matriz)** | Mínimo 48 x 120 píxeles |
| **Pixel Pitch (Distancia entre píxeles)** | ≤ 20 mm |
| **Luminancia** | ≥ 9,000 cd/m² (ajustable automáticamente) |
| **Ángulo de Visibilidad Horizontal** | ≥ 30° |
| **Distancia de Legibilidad** | ≥ 300 metros |
| **Vida Útil de los LEDs** | ≥ 100,000 horas |
| **Contraste** | Mínimo 10:1 en condiciones diurnas |
| **Capacidad de Caracteres** | Mínimo 3 líneas de 20 caracteres por línea |

### 3.2 Controlador y Comunicaciones

| Parámetro | Especificación |
|:----------|:----------------|
| **Protocolo de Control** | NTCIP (National Transportation Communications for ITS Protocol) |
| **Interfaz de Comunicación Primaria** | Ethernet (Fibra Óptica) |
| **Interfaz de Comunicación Secundaria** | Celular 4G/LTE (como respaldo) |
| **Memoria Interna** | Capacidad para almacenar al menos 100 mensajes predefinidos |
| **Diagnóstico Remoto** | Monitoreo de estado de LEDs, fuentes de poder y temperatura |

### 3.3 Estructura y Protección

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Material del Gabinete** | Aluminio con pintura electrostática |
| **Grado de Protección IP** | **IP66** (Protección total contra polvo y chorros de agua potentes) |
| **Grado de Protección IK** | **IK08** |
| **Resistencia al Viento** | Soportar vientos de hasta 150 km/h |
| **Vida Útil Estructura** | ≥ 20 años (con tratamiento anticorrosivo) |
| **Temperatura de Operación** | -20°C a +70°C |
| **Ventilación** | Sistema de ventilación forzada con control termostático |
| **Acceso para Mantenimiento** | Acceso frontal o trasero con cerraduras de seguridad |

### 3.4 Energía

| Parámetro | Especificación |
|:----------|:----------------|
| **Alimentación** | 120/240 VAC, 60 Hz |
| **Consumo Máximo** | < 3,000 W (a máxima intensidad) |
| **Protección Eléctrica** | Supresores de sobretensión para alimentación y datos |

---

## 4. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación | Cumplimiento |
|:------|:------------|:--------------|
| **Resolución 546/2018 (MinTransporte)** | Especificaciones técnicas para PMV en Colombia | 🔴 Obligatorio |
| **NTCIP 1203** | Estándar de comunicación para PMV | 🔴 Obligatorio |
| **NEMA TS 4** | Estándares para equipos de ITS | 🔴 Obligatorio |
| **RETIE** | Instalación eléctrica | 🔴 Obligatorio |

---

## 5. PRUEBAS DE ACEPTACIÓN (SAT)

- [ ] Verificación de legibilidad a 300 metros en condiciones diurnas y nocturnas.
- [ ] Prueba de actualización de mensaje desde el CCO (< 5 segundos).
- [ ] Prueba de todos los píxeles (no se aceptan píxeles muertos).
- [ ] Verificación del ajuste automático de brillo según la luz ambiental.
- [ ] Prueba de conmutación a comunicación de respaldo (4G) al desconectar la fibra.
- [ ] Prueba de estanqueidad (chorro de agua potente para verificar IP66).
- [ ] Verificación de reportes de diagnóstico en el CCO.

---

## 6. GARANTÍA Y SOPORTE

| Aspecto | Requisito Mínimo |
|:--------|:-------------------|
| **Garantía del Fabricante** | 5 años en todos los componentes |
| **Soporte Técnico** | Local en Colombia, 24/7 |
| **Disponibilidad de Repuestos** | Garantizada por 10 años |

---

## 7. PROVEEDORES PRELIMINARES

| Proveedor | País de Origen |
|:----------|:----------------|
| Daktronics | EE. UU. |
| SWARCO | Austria |
| Messagemaker | Reino Unido |
| Telegra | Croacia |

---

**Versión:** 1.0  
**Estado:** ✅ Especificación Lista para Cotización  
**Fecha:** 18/10/2025
