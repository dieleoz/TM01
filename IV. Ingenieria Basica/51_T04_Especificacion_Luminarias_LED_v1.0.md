# T04: ESPECIFICACIÓN TÉCNICA - LUMINARIAS LED
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Luminarias LED para Iluminación Vial  
**Responsable:** Ing. Eléctrico / Especialista en Iluminación  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Luminarias LED para Vías, Peajes, Áreas de Servicio |
| **Cantidad estimada** | 650 luminarias (300x150W, 200x100W, 150x50W) |
| **Ubicación** | Peajes, CCO, Áreas de Servicio, Intersecciones |
| **Sistema asociado** | Iluminación Vial |
| **Criticidad** | 🟡 Media |
| **Documentos de Referencia** | `58_T03_Arquitectura_Conceptual_Iluminacion_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

Proporcionar iluminación eficiente, uniforme y de alta calidad en zonas críticas del corredor vial para garantizar la seguridad y visibilidad durante las horas nocturnas.

### 2.2 Capacidades Requeridas

- Iluminación continua durante horarios nocturnos (18:00 - 06:00)
- Encendido/apagado automático mediante fotocélula
- Control remoto desde CCO (SCADA)
- Alta eficiencia energética (> 100 lm/W)
- Vida útil prolongada (> 50,000 horas)

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Luminaria LED 150W (Alta Intensidad)

| Parámetro | Especificación Mínima | Preferible |
|:----------|:----------------------|:-----------|
| **Potencia** | 150W | 150W |
| **Flujo Luminoso** | 15,000 lúmenes | 18,000 lúmenes |
| **Eficacia Luminosa** | ≥ 100 lm/W | ≥ 120 lm/W |
| **Temperatura de Color** | 4000K (blanco neutro) | 4000-5000K |
| **Índice de Reproducción Cromática (IRC)** | ≥ 70 | ≥ 80 |
| **LED** | Tecnología SMD/COB, Marca: Philips Lumileds, Osram, Cree, Samsung | Philips Lumileds |
| **Driver** | Integrado, Regulable (0-10V, DALI opcional) | Con protección contra sobretensiones |
| **Factor de Potencia** | ≥ 0.90 | ≥ 0.95 |
| **Distorsión Armónica Total (THD)** | < 20% | < 15% |

### 3.2 Luminaria LED 100W (Media Intensidad)

| Parámetro | Especificación |
|:----------|:---------------|
| **Potencia** | 100W |
| **Flujo Luminoso** | 10,000 - 12,000 lúmenes |
| **Eficacia Luminosa** | ≥ 100 lm/W |
| **Características** | Similares a 150W con menor potencia |

### 3.3 Luminaria LED 50W (Baja Intensidad - Peatonal)

| Parámetro | Especificación |
|:----------|:---------------|
| **Potencia** | 50W |
| **Flujo Luminoso** | 5,000 - 6,000 lúmenes |
| **Eficacia Luminosa** | ≥ 100 lm/W |
| **Uso** | Áreas peatonales, estacionamientos |

---

## 4. PROTECCIÓN Y AMBIENTE

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Grado de Protección IP** | **IP66** (protección total contra polvo y chorros de agua) |
| **Grado de Protección IK** | **IK10** (20 joules, resistencia alta a impactos) |
| **Temperatura de Operación** | -10°C a +50°C |
| **Humedad Relativa** | 10% a 95% sin condensación |
| **Carcasa** | Aluminio inyectado de alta presión, con tratamiento anticorrosión |
| **Difusor** | Vidrio templado, alta transmitancia (> 90%) |
| **Junta** | Silicona resistente a UV y altas temperaturas |

---

## 5. ÓPTICA Y DISTRIBUCIÓN LUMÍNICA

| Parámetro | Especificación |
|:----------|:---------------|
| **Distribución Fotométrica** | Tipo II Medium (IESNA), asimétrica para vías |
| **ULOR (Upward Light Output Ratio)** | 0% (sin contaminación lumínica hacia el cielo) |
| **Uniformidad** | Uo ≥ 0.4 (según CIE 115) |
| **Deslumbramiento** | TI (Threshold Increment) ≤ 10% |

---

## 6. CUMPLIMIENTO NORMATIVO

| Norma | Descripción |
|:------|:------------|
| **RETILAP** | Reglamento Técnico de Iluminación y Alumbrado Público (Colombia) |
| **CIE 115:2010** | Guía para iluminación de vías |
| **IEC 62031** | LED Modules for General Lighting |
| **IEC 60598-1** | Luminarias - Requisitos generales y ensayos |
| **IEEE C62.41** | Protección contra sobretensiones |

---

## 7. MONTAJE Y ACCESORIOS

| Componente | Especificación |
|:-----------|:---------------|
| **Brazo de Montaje** | Compatible con postes de 60-76 mm de diámetro |
| **Tipo de Montaje** | Post-top (poste), Side-mount (brazo lateral) |
| **Material** | Aluminio o acero galvanizado |
| **Protección contra Sobretensiones** | DPS integrado (10 kV mínimo) |

---

## 8. GARANTÍA Y VIDA ÚTIL

| Parámetro | Especificación |
|:----------|:---------------|
| **Vida Útil LED (L70)** | ≥ 50,000 horas (mantiene 70% del flujo inicial) |
| **Vida Útil LED (L80)** | ≥ 40,000 horas |
| **Garantía del Fabricante** | Mínimo 5 años (luminaria completa) |
| **Garantía Driver** | Mínimo 5 años |
| **Depreciación Lumínica** | < 30% a las 50,000 horas |

---

## 9. PROVEEDORES SUGERIDOS

| Proveedor | Línea de Producto | Observaciones |
|:----------|:------------------|:--------------|
| **Philips (Signify)** | Roadstar, CitySpirit, Iridium | Líder mundial, alta calidad, costoso |
| **Schréder** | Teceo, Iridium, Omnistar | Especialista en alumbrado vial |
| **GE Current (Daintree)** | Evolve LED, Vela LED | Alta eficiencia |
| **Cree Lighting** | XSP Series | Excelente rendimiento lumínico |
| **Fabricantes locales (Colombia)** | Varias marcas | Menor costo, verificar certificaciones |

---

## 10. CRITERIOS DE EVALUACIÓN

| Criterio | Peso | Evaluación |
|:---------|:-----|:-----------|
| **Eficacia luminosa (lm/W)** | 25% | > 120 lm/W = 5 puntos |
| **Marca LED (Tier 1)** | 20% | Philips, Osram, Cree = 5 puntos |
| **Garantía** | 15% | ≥ 7 años = 5 puntos |
| **Certificaciones (RETILAP, IEC)** | 15% | Todas = 5 puntos |
| **Precio** | 15% | Menor precio = 5 puntos |
| **Disponibilidad local** | 10% | Stock Colombia = 5 puntos |

---

## 11. COSTOS ESTIMADOS

| Tipo de Luminaria | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:------------------|:---------|:---------------------|:------------------|
| LED 150W | 300 | $350 | $105,000 |
| LED 100W | 200 | $280 | $56,000 |
| LED 50W | 150 | $200 | $30,000 |
| **TOTAL** | **650** | - | **$191,000** |

**Nota:** Precios referenciales, solicitar cotización formal.

---

## 12. PRÓXIMOS PASOS

- [ ] Solicitar cotizaciones a Philips, Schréder, GE Current, Cree
- [ ] Realizar estudios fotométricos con DIALux o AGI32
- [ ] Especificar postes metálicos galvanizados (8-12m)
- [ ] Diseñar sistema de control y monitoreo (SCADA)

---

## 13. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de luminarias LED |

---

**Fin del documento - T04 Especificación Técnica Luminarias LED**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

