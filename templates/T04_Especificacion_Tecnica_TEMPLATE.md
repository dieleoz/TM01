# T04: ESPECIFICACIÓN TÉCNICA - [NOMBRE DEL EQUIPO/COMPONENTE]
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** [DD/MM/AAAA]  
**Equipo:** [Nombre específico del equipo/componente]  
**Responsable:** [Ingeniero Responsable]  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|-------|-------|
| **Equipo** | [Nombre del equipo] |
| **Cantidad estimada** | [X] unidades |
| **Ubicación** | [Dónde se instalará] |
| **Sistema asociado** | [Sistema principal] |
| **Criticidad** | [Alta / Media / Baja] |
| **Fabricante referencia** | [Marca / Modelo] |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal
[Descripción de para qué sirve el equipo]

### 2.2 Capacidades Requeridas
- [Capacidad 1]
- [Capacidad 2]
- [...]

### 2.3 Modos de Operación
- **Modo Normal:** [Descripción]
- **Modo Degradado:** [Descripción]
- **Modo Emergencia:** [Descripción]

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Especificaciones Generales

| Parámetro | Especificación Mínima | Preferible | Unidad |
|:----------|:---------------------|:-----------|:-------|
| [Parámetro 1] | [Valor mínimo] | [Valor deseable] | [Unidad] |
| [Parámetro 2] | [Valor mínimo] | [Valor deseable] | [Unidad] |
| [Parámetro 3] | [Valor mínimo] | [Valor deseable] | [Unidad] |

**Ejemplo para Cámara CCTV:**
| Resolución | 1080p (1920x1080) | 4K (3840x2160) | pixeles |
| Frame Rate | 25 fps | 30 fps | fps |
| Compresión | H.264 | H.265 | - |

### 3.2 Especificaciones Eléctricas

| Parámetro | Especificación |
|:----------|:---------------|
| **Alimentación** | [Voltaje, corriente, tipo] |
| **Consumo máximo** | [X] W |
| **Factor de potencia** | > [X] |
| **Protección** | [Tipo de protección eléctrica] |

**Ejemplo:**
- Alimentación: PoE+ (IEEE 802.3at) 48 VDC
- Consumo máximo: 30W
- Protección: Surge protection 6 kV

### 3.3 Especificaciones de Comunicación

| Parámetro | Especificación |
|:----------|:---------------|
| **Protocolo** | [TCP/IP, ONVIF, Modbus, etc.] |
| **Interface física** | [RJ45, Fibra, RS485, etc.] |
| **Velocidad** | [10/100/1000 Mbps, etc.] |
| **Ancho de banda** | [X] Mbps |

### 3.4 Especificaciones Ambientales

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Temperatura operación** | -[X]°C a +[Y]°C |
| **Humedad** | 0% a [X]% RH (sin condensación) |
| **Grado IP** | IP[XX] mínimo |
| **Grado IK** | IK[XX] mínimo |
| **Altitud** | Hasta [X] msnm |
| **Certificaciones** | CE, FCC, UL, RoHS |

**Ejemplo:**
- Temperatura: -30°C a +60°C
- IP66 (totalmente sellado)
- IK10 (resistencia al vandalismo)

---

## 4. FUNCIONALIDADES AVANZADAS

### 4.1 Características Obligatorias
- [Característica 1]
- [Característica 2]
- [...]

### 4.2 Características Deseables
- [Característica 1]
- [Característica 2]
- [...]

### 4.3 Gestión y Monitoreo
- [Monitoreo remoto vía X]
- [Configuración remota vía Y]
- [Actualización de firmware]
- [Diagnóstico automático]
- [Soporte SNMP]

---

## 5. ACCESORIOS Y MONTAJE

### 5.1 Accesorios Incluidos

| Accesorio | Especificación | Cantidad |
|:----------|:---------------|:---------|
| [Accesorio 1] | [Especificación] | [X] |
| [Accesorio 2] | [Especificación] | [X] |

### 5.2 Materiales de Montaje

| Material | Especificación | Cantidad |
|:---------|:---------------|:---------|
| [Material 1] | [Especificación] | [X] |
| [Material 2] | [Especificación] | [X] |

**Ejemplo:**
- Poste: Acero galvanizado, altura 8m, espesor 4mm, 1 unidad
- Brazo: Acero inoxidable A4, ajustable, 1 unidad
- Tornillería: Acero inoxidable A4, kit completo

---

## 6. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación | Cumplimiento |
|:------|:-----------|:-------------|
| [Norma 1] | [Qué parte del equipo] | Obligatorio / Deseable |
| [Norma 2] | [Aplicación] | Obligatorio / Deseable |

**Ejemplo:**
- ONVIF: Interoperabilidad de cámaras IP, Obligatorio
- IEC 62676: Sistemas CCTV, Obligatorio
- INVIAS: Especificaciones locales, Obligatorio

---

## 7. INSTALACIÓN Y PUESTA EN MARCHA

### 7.1 Requisitos de Instalación

- [Requisito 1: Ej. Mano de obra certificada]
- [Requisito 2: Ej. Herramientas especiales]
- [Requisito 3: Ej. Trabajo en altura]

### 7.2 Procedimiento de Instalación (Resumen)

1. [Paso 1]
2. [Paso 2]
3. [Paso 3]
4. [...]

### 7.3 Pruebas de Aceptación

- [ ] [Prueba 1: Verificación de X]
- [ ] [Prueba 2: Prueba de Y]
- [ ] [Prueba 3: Validación de Z]
- [ ] [...]

**Ejemplo para CCTV:**
- [ ] Verificación de resolución y calidad de imagen
- [ ] Prueba de PTZ (presets, tours)
- [ ] Prueba de IR nocturna
- [ ] Prueba de comunicación con NVR
- [ ] Prueba de PoE y consumo energético

---

## 8. MANTENIMIENTO

### 8.1 Mantenimiento Preventivo

**Frecuencia:** [Mensual / Trimestral / Semestral / Anual]

**Actividades:**
- [Actividad 1]
- [Actividad 2]
- [...]

**Tiempo estimado:** [X] horas

### 8.2 Mantenimiento Correctivo

**Tiempo de respuesta:** [X] horas máximo (según AT4)  
**Repuestos críticos:** [Lista de repuestos a mantener en stock]

### 8.3 Mantenimiento Extraordinario

**Frecuencia:** [Cada X años]  
**Actividades:** [Reemplazo, renovación mayor, etc.]

---

## 9. GARANTÍA Y SOPORTE

| Aspecto | Requisito Mínimo |
|:--------|:-----------------|
| **Garantía del fabricante** | [X] años mínimo |
| **Soporte técnico** | 24/7 durante concesión |
| **Disponibilidad de repuestos** | Durante toda la concesión ([Y] años) |
| **Capacitación** | Personal de O&M (incluida) |
| **Manuales** | En español, formato digital + impreso |

---

## 10. PROVEEDORES PRELIMINARES

| Proveedor | Modelo Referencia | Cumplimiento Specs | Costo Aprox. (USD) |
|:----------|:------------------|:-------------------|:-------------------|
| [Proveedor 1] | [Modelo] | ✅ / ⚠️ / ❌ | $[XXX,XXX] |
| [Proveedor 2] | [Modelo] | ✅ / ⚠️ / ❌ | $[XXX,XXX] |
| [Proveedor 3] | [Modelo] | ✅ / ⚠️ / ❌ | $[XXX,XXX] |

**Ejemplo para Cámaras:**
- Axis Communications: AXIS Q6155-E, ✅, $4,500
- Hikvision: DS-2DE7A245IW-AE, ✅, $2,800
- Dahua: SD6CE245U-HNI, ✅, $2,500

---

## 11. ESTIMACIÓN DE COSTOS

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| Equipo principal | [X] | $[XXX,XXX] | $[X,XXX,XXX] |
| Accesorios de montaje | [X] | $[X,XXX] | $[XX,XXX] |
| Instalación (mano de obra) | [X] | $[X,XXX] | $[XX,XXX] |
| Configuración y puesta en marcha | [X] | $[X,XXX] | $[XX,XXX] |
| Capacitación | [1] lote | $[X,XXX] | $[X,XXX] |
| **TOTAL** | | | **$[X,XXX,XXX]** |

---

## 12. PRÓXIMOS PASOS

- [ ] Validar especificaciones con fabricantes
- [ ] Solicitar cotizaciones formales (mínimo 3 proveedores)
- [ ] Realizar pruebas piloto (si aplica)
- [ ] Finalizar diseño de ubicaciones
- [ ] Elaborar planos de instalación
- [ ] Actualizar estimación de costos (T05)

---

## 13. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | [DD/MM/AAAA] | [Ingeniero] | Especificación técnica inicial |

---

**Versión:** 1.0  
**Estado:** ✅ Especificación Lista para Cotización  
**Fecha:** [DD/MM/AAAA]  
**Responsable:** [Nombre del Ingeniero]

