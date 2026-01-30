# T04: ESPECIFICACIONES TÉCNICAS - GÁLIBOS (SISTEMA DE CONTROL DE ALTURA)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Gálibos - Sistema de Control de Altura  
**Responsable:** Ing. Civil / Ing. ITS  
**Versión:** 2.0 (RECONCILIACIÓN NODOS)  
**Referencia Validación:** 36_VALIDACION_CONTRACTUAL_GALIBOS_v1.0  
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 25 unidades estimadas | Ing. Civil |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** 8 unidades confirmadas | Ing. Civil |
| 2.0 | 22/10/2025 | **RECONCILIACIÓN NODOS:** Validación con Backbone 322 km y RETIE 2024 | Ing. ITS |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Gálibos - Detección de Altura |
| **Cantidad** | **8 unidades** |
| **CAPEX** | **USD $280,000** (35,000 USD/unidad) |
| **Tecnología** | **Óptica/Láser** (NO mecánica) |

> ⚠️ **RECONCILIACIÓN NODOS:** Diseño compatible con Backbone de Fibra Óptica de 322 km (T04 Telecom v30.0).
> ⚠️ **RETIE 2024:** Todo componente eléctrico debe contar con Dictamen de Inspección bajo Resolución 40117/2024 vigente.

---

## 2. NORMATIVA

### Nacional
- **AT2 §3.3.4.6** - Control de altura (altura máx. 5.10 m)
- **RETIE** - Instalaciones eléctricas
- **Manual Diseño Geométrico INVIAS** - Gálibo vial

### Internacional
- **ISO TC-204** - ITS
- **IEC 60529** - IP65 mínimo

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Sistema de Detección Óptico/Láser

| Parámetro | Especificación |
|:----------|:---------------|
| **Tecnología** | **Láser clase 1** (seguro para ojos) o cortina óptica |
| **Altura detección** | **5.10 m** (configurable) |
| **Precisión** | ±5 cm |
| **Rango** | ≥50 m antes del obstáculo |
| **Tiempo respuesta** | <1 segundo |
| **Ancho detección** | 2 carriles mínimo |

### 3.2 Sistema de Alerta Local (PMV Gálibo)

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | PMV pequeño (LED rojo/verde) |
| **Tamaño** | Mínimo 1.5 m × 1.0 m |
| **Mensaje** | "PARE - ALTURA EXCEDIDA" (rojo) / "PASO LIBRE" (verde) |
| **Visibilidad** | 200 m mínimo |
| **Activación** | Automática al detectar vehículo alto |

### 3.3 Integración CCO

- ✅ Alarma automática en SCADA
- ✅ Transmisión de imagen (si hay cámara asociada)
- ✅ Registro de eventos
- ✅ Protocolo SNMP v3

---

## 4. UBICACIONES

**Tabla Maestra de Ubicaciones (8 unidades):**

| RUTA | UF | LADO | PK | Observación |
| :--- | :--- | :--- | :--- | :--- |
| **4510** | OD | DERECHA | **K41+350** | |
| **4510** | OD | IZQUIERDA | **K116+200** | |
| **4511** | OD | DERECHA | **K3+600** | |
| **4511** | 5,1 | IZQUIERDA | **K16+550** | |
| **4511** | 5,1 | DERECHA | **K72+890** | |
| **4511** | 6 | IZQUIERDA | **K82+800** | |
| **4511** | 11 | DERECHA | **K127+250** | |
| **4513** | 13 | IZQUIERDA | **K5+900** | |

**Lote 2 En Validación (17 unidades):**
- A definir en análisis geométrico completo

---

## 5. COMPONENTES PRINCIPALES

| Componente | Especificación | Fabricante Ref. |
|:-----------|:---------------|:----------------|
| **Sensor láser** | Clase 1, rango 50 m | SICK, Pepperl+Fuchs |
| **PMV local** | LED 1.5×1 m | SWARCO, Daktronics |
| **Controller** | IP65, SNMP v3 | - |
| **Energía** | Solar + batería 72h | - |

---

## 6. PRUEBAS (FAT/SAT)

### FAT
- Precisión ±5 cm
- Tiempo respuesta <1 seg
- Activación PMV automática

### SAT
- Detección en campo
- Alarma en CCO
- Visibilidad PMV 200 m

---

## 7. PRESUPUESTO

| Ítem | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:---------|:-------------------|:------------|
| Gálibo óptico completo | 8 | $25,000 | $200,000 |
| PMV local pequeño | 8 | $5,000 | $40,000 |
| Instalación | 8 | $3,000 | $24,000 |
| Otros | - | - | $16,000 |
| **TOTAL** | - | - | **$280,000** |

---

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad actualizada: 8 unidades
- CAPEX actualizado: USD $280,000
- Tecnología confirmada: Óptica/Láser
- Metodología PKD lineal aplicada
