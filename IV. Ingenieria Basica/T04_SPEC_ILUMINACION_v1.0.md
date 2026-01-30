# T04: ESPECIFICACIONES TÉCNICAS - SISTEMA DE ILUMINACIÓN
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Sistema:** Iluminación Vial LED  
**Responsable:** Ing. Eléctrico / Ing. Iluminación  
**Versión:** 2.0 (RECONCILIACIÓN NODOS)  

> ⚠️ **NORMATIVA CRÍTICA:** Todo diseño y prueba DEBE cumplir con el **RETIE Resolución 40117 de 2024**. Las referencias a RETIE 2013 se consideran derogadas.
---

## 📋 **CONTROL DE CAMBIOS**

| Versión | Fecha | Cambios | Autor |
|:--------|:------|:--------|:------|
| 1.0 | 21/10/2025 | Creación inicial - 572 luminarias | Ing. Eléctrico |
| 1.1 | 22/10/2025 | **Revisión con información oficial:** 410 luminarias | Ing. Eléctrico |
| 2.0 | 22/10/2025 | **RECONCILIACIÓN NODOS:** Validación con Backbone 322 km y RETIE 2024 | Ing. ITS |

---

## 1. IDENTIFICACIÓN

| Campo | Valor |
|:------|:------|
| **Sistema** | Iluminación Vial LED |
| **Cantidad** | **410 luminarias** |
| **CAPEX** | **USD $1,339,240** |

> ⚠️ **RECONCILIACIÓN NODOS:** Diseño compatible con Backbone de Fibra Óptica de 322 km (T04 Telecom v30.0).
> ⚠️ **RETIE 2024:** Todo componente eléctrico debe contar con Dictamen de Inspección bajo Resolución 40117/2024 vigente.

---

## 2. DISTRIBUCIÓN

| Tipo | Cantidad | Potencia | Ubicación |
|:-----|:---------|:---------|:----------|
| **Vial 150W** | 220 | 150 W | Intersecciones, curvas |
| **Vial 100W** | 140 | 100 W | Tramos rectos |
| **Vial 50W** | 50 | 50 W | Accesos |
| **TOTAL** | **410** | - | - |

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Luminarias LED Viales

| Parámetro | Especificación | Norma |
|:----------|:---------------|:------|
| **Tecnología** | LED COB o SMD |
| **Potencia** | 50W / 100W / 150W |
| **Flujo luminoso** | 6,000-18,000 lm |
| **Eficacia** | ≥120 lm/W |
| **Temperatura color** | 4000-5000 K (blanco neutro) |
| **CRI** | ≥70 |
| **Vida útil** | ≥50,000 horas (L70) |
| **Protección** | IP65 |
| **Óptica** | Asimétrica vial (tipo II o III) |

### 3.2 Posteación

| Parámetro | Especificación |
|:----------|:---------------|
| **Altura** | 8-12 m según ubicación |
| **Material** | Acero galvanizado o concreto |
| **Brazo** | 1.5-2.5 m proyección |
| **Separación** | 25-35 m según diseño fotométrico |

### 3.3 Control

| Función | Especificación |
|:--------|:---------------|
| **Encendido/apagado** | Fotocelda + reloj astronómico |
| **Regulación** | Dimming 0-100% (opcional) |
| **Monitoreo** | SCADA (opcional, solo puntos críticos) |

---

## 4. PRESUPUESTO

| Ítem | Cantidad | Precio Unit. (USD) | Total (USD) |
|:-----|:---------|:-------------------|:------------|
| Luminaria LED 150W | 342 | $450 | $153,900 |
| Luminaria LED 100W | 180 | $350 | $63,000 |
| Luminaria LED 50W | 50 | $250 | $12,500 |
| Postes + brazos | 572 | $800 | $457,600 |
| Transformadores 15 kVA | 13 | $8,000 | $104,000 |
| Instalación | global | - | $400,000 |
| Otros | - | - | $148,240 |
| **TOTAL** | - | - | **$1,339,240** |

---

## 5. PRUEBAS

### FAT
- Flujo luminoso ≥especificación
- CRI ≥70
- IP65

### SAT
- Niveles de iluminación según RETILAP
- Uniformidad ≥0.4
- Control funcionando

---

## 6. FABRICANTES

- **Philips Lighting** (Signify)
- **Schreder**
- **GE Current**
- **Cree Lighting**

---

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad actualizada: 410 luminarias
- Distribución simplificada: Solo luminarias viales
- CAPEX mantenido: USD $1,339,240
- Metodología PKD lineal aplicada
