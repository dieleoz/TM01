# T04: ESPECIFICACIÓN TÉCNICA - TRANSFORMADORES ELÉCTRICOS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Transformadores de Distribución  
**Responsable:** Ing. Eléctrico / Especialista en Potencia  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Transformadores de Distribución Trifásicos y Monofásicos |
| **Cantidad estimada** | 40-50 transformadores (peajes, CCO, iluminación, ITS) |
| **Ubicación** | Peajes, CCO, Áreas de Servicio, Estaciones de Iluminación |
| **Sistema asociado** | Energía Eléctrica |
| **Criticidad** | 🔴 Alta |
| **Documentos de Referencia** | `57_T03_Arquitectura_Conceptual_Energia_Electrica_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

Transformar la tensión de media tensión (13.2 kV o 11.4 kV) a baja tensión (220/127 V o 208/120 V) para alimentar los diferentes sistemas del proyecto.

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Transformador Tipo 1: CCO y Peajes (Alta Capacidad)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Capacidad** | 150-300 kVA Trifásico |
| **Tensión Primaria** | 13,200 V / 11,400 V (según red local) |
| **Tensión Secundaria** | 220/127 V o 208/120 V, 4 hilos (3F+N) |
| **Frecuencia** | 60 Hz |
| **Grupo de Conexión** | Dyn5 o Dyn11 (Delta-Estrella con neutro) |
| **Impedancia** | 4% - 6% |
| **Tipo de Refrigeración** | ONAN (Oil Natural Air Natural) |
| **Regulación de Tensión** | ±2.5%, ±5% (taps sin carga) |
| **Clase de Aislamiento** | 105°C (Clase A) o 150°C (Clase B) |
| **BIL (Basic Impulse Level)** | 95 kV (para 13.2 kV) |

### 3.2 Transformador Tipo 2: Iluminación (Media Capacidad)

| Parámetro | Especificación |
|:----------|:---------------|
| **Capacidad** | 15-30 kVA Monofásico o Trifásico |
| **Tensión Primaria** | 13,200 V |
| **Tensión Secundaria** | 220/127 V |
| **Uso** | Alimentación de 25-50 luminarias LED |

### 3.3 Transformador Tipo 3: Gabinetes ITS (Baja Capacidad)

| Parámetro | Especificación |
|:----------|:---------------|
| **Capacidad** | 5-10 kVA Monofásico |
| **Tensión Primaria** | 13,200 V |
| **Tensión Secundaria** | 220/127 V o 120 V |
| **Uso** | Alimentación de cámaras CCTV, PMV, controladores |

---

## 4. PROTECCIONES Y ACCESORIOS

| Componente | Especificación |
|:-----------|:---------------|
| **Pararrayos MT** | Clase distribución 10 kA, 10 kV MCOV |
| **Seccionadores Fusibles MT** | 100-200 A, 15 kV |
| **Protección BT** | Breaker principal 3P, protección diferencial (si aplica) |
| **Termómetro** | Indicador de temperatura del aceite (>75 kVA) |
| **Indicador de Nivel de Aceite** | Visual |
| **Válvula de Sobrepresión** | Para transformadores en aceite |
| **Puesta a Tierra** | < 10 Ω resistencia |

---

## 5. CONSTRUCCIÓN Y AMBIENTE

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo de Instalación** | Pedestal (pad-mounted) o Poste (pole-mounted para <30 kVA) |
| **Tipo de Núcleo** | Hierro-Silicio de grano orientado |
| **Aislamiento** | Aceite mineral o vegetal, o Seco (resina epóxica) |
| **Carcasa** | Acero ASTM A36, galvanizado, IP23 (exterior) |
| **Altitud** | < 1,000 msnm (sin derating) |
| **Temperatura Ambiente** | -5°C a +40°C |
| **Cumplimiento Ambiental** | Sin PCB (Bifenilos Policlorados) |

---

## 6. CUMPLIMIENTO Y ESTÁNDARES

| Norma | Descripción |
|:------|:------------|
| **IEC 60076** | Power transformers |
| **IEEE C57.12** | Standard General Requirements for Liquid-Immersed Distribution Transformers |
| **NTC 618 / NTC 2050** | Colombia - Instalaciones eléctricas |
| **RETIE** | Reglamento Técnico de Instalaciones Eléctricas (Colombia) |

---

## 7. PROVEEDORES SUGERIDOS

| Proveedor | Observaciones |
|:----------|:--------------|
| **ABB** | Líder mundial, alta calidad |
| **Siemens** | Excelente confiabilidad |
| **Schneider Electric** | Transformadores secos y aceite |
| **Toshiba** | Tecnología japonesa |
| **INATRA (Colombia)** | Fabricante local, buena relación precio-calidad |
| **RYMEL (Colombia)** | Especialista en transformadores de distribución |

---

## 8. COSTOS ESTIMADOS

| Tipo | Capacidad | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:----------|:---------|:---------------------|:------------------|
| Tipo 1 (CCO/Peajes) | 150-300 kVA | 5 | $12,000 | $60,000 |
| Tipo 2 (Iluminación) | 15-30 kVA | 25 | $3,500 | $87,500 |
| Tipo 3 (ITS) | 5-10 kVA | 15 | $2,000 | $30,000 |
| **TOTAL** | - | **45** | - | **$177,500** |

---

## 9. PRÓXIMOS PASOS

- [ ] Solicitar cotizaciones a ABB, Siemens, Schneider, INATRA
- [ ] Verificar tensión nominal de red local con operadores
- [ ] Diseñar sistema de puesta a tierra
- [ ] Coordinación de protecciones (fusibles, breakers)

---

## 10. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de transformadores |

---

**Fin del documento - T04 Especificación Técnica Transformadores Eléctricos**  
*Metodología Punto 42 v1.0*

