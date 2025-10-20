# T04: ESPECIFICACIONES TÉCNICAS - GÁLIBOS (SISTEMA DE CONTROL DE ALTURA)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Gálibos - Sistema de Control de Altura  
**Responsable:** Ing. Civil / Ing. ITS  
**Versión:** 1.0  
**Referencia Validación:** 36_VALIDACION_CONTRACTUAL_GALIBOS_v1.0  
**Referencia Layout:** 42_LAYOUT_GEORREFERENCIADO_EQUIPOS_ITS_v1.0  

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Gálibos - Detección de Altura |
| **Cantidad** | **25 unidades** (8 confirmadas + 17 estimadas) |
| **CAPEX** | **USD $875,000** (35,000 USD/unidad) |
| **Tecnología** | **Óptica/Láser** (NO mecánica) |

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

**Lote 1 Confirmado (8 unidades):**
- RN 4510: PK 41+350, PK 116+200
- RN 4511: PK 3+600, PK 16+550, PK 72+890, PK 82+800, PK 127+250
- RN 4513: PK 5+900

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
| Gálibo óptico completo | 25 | $25,000 | $625,000 |
| PMV local pequeño | 25 | $5,000 | $125,000 |
| Instalación | 25 | $3,000 | $75,000 |
| Otros | - | - | $50,000 |
| **TOTAL** | - | - | **$875,000** |

---

**FIN T04 GÁLIBOS v1.0**
