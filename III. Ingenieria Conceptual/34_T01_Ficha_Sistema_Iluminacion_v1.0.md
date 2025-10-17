# T01: FICHA DE SISTEMA - ILUMINACIÓN VIAL
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Sistema:** Iluminación Vial  
**Responsable:** Ing. Sistemas Eléctricos  
**Versión:** 1.0  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | Sistema de Iluminación Vial |
| **Categoría** | Infraestructura Eléctrica / Seguridad Vial |
| **Prioridad** | Alta |
| **Fase contractual** | Construcción / O&M |
| **AT relacionados** | AT1, AT2, AT4 |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

Garantizar la adecuada iluminación de todas las zonas críticas del corredor vial para asegurar la **seguridad operacional** y el **confort visual** de los usuarios durante la operación nocturna y en condiciones de baja visibilidad.

### 2.2 Alcance del Sistema

- **Sistemas incluidos:**
  - Iluminación de Estaciones de Peaje (2 estaciones: Zambito, Aguas Negras)
  - Iluminación de Estaciones de Pesaje
  - Iluminación del Centro de Control de Operaciones (CCO)
  - Iluminación de Áreas de Servicio (14 UFs)
  - Iluminación de Intersecciones a Nivel y Desnivel
  - Iluminación de Paraderos y Puentes Peatonales
  - Iluminación de accesos y zonas de estacionamiento
  
- **Cobertura geográfica:** 259.6 km (Subsectores 1.1 y 1.2)
- **Integración con:** Sistema Eléctrico Principal, CCO (monitoreo remoto), ITS (cámaras CCTV nocturnas)

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 6.3.4 - Iluminación:**

> "El Concesionario se obliga a asegurar la **adecuada iluminación** de todas y cada una de las **Estaciones de Pesaje, Estaciones de Peaje, Centros de Control de Operación, intersecciones a nivel y a desnivel, paraderos y pasos peatonales, y Áreas de Servicio** de la(s) vía(s), con el fin de dar seguridad a la Operación en estos sitios."

> "El Concesionario deberá igualmente asegurar el **Mantenimiento de la iluminación** que pueda existir en otras zonas de la(s) vía(s), exceptuando los Pasos Nacionales."

### 3.2 Requisitos de Apéndices Técnicos

**Según AT1, Tablas de Alcance del Proyecto:**

| Ubicación | Alcance de Iluminación |
|:----------|:-----------------------|
| **Estaciones de Peaje** | Iluminación completa de plazas, casetas, accesos, bahías |
| **Estaciones de Pesaje** | Iluminación de plataformas, oficinas, accesos |
| **CCO** | Iluminación interior/exterior, estacionamientos, perímetro |
| **Áreas de Servicio** | Iluminación de zonas de parqueo, sanitarios, accesos |
| **Intersecciones** | Iluminación según diseño geométrico y velocidad de diseño |
| **Puentes Peatonales** | Iluminación de escaleras, rampas, y paso superior |

**Según AT4 (Indicadores):**

| Indicador ID | Descripción | Valor Mínimo Aceptación |
|:-------------|:------------|:------------------------|
| **E14** | Iluminación | 80% de puntos luminosos operativos en cada sitio |

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **RETILAP** | Reglamento Técnico de Iluminación y Alumbrado Público | Niveles de iluminancia, uniformidad, deslumbramiento |
| **NTC 900** | Código Eléctrico Colombiano | Instalaciones eléctricas, seguridad |
| **NTC 2050** | Instalaciones eléctricas (adopción del NEC) | Cableado, protecciones, tableros |
| **CIE 115:2010** | Lighting of Roads for Motor and Pedestrian Traffic | Estándares internacionales de iluminación vial |

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad Estimada | Ubicación | Función |
|:-----------|:-----------------|:----------|:--------|
| **Luminarias LED Viales (150W)** | 300 unidades | Peajes, Pesaje, Intersecciones | Iluminación de áreas de alta intensidad (plazas de peaje) |
| **Luminarias LED Viales (100W)** | 200 unidades | Áreas de servicio, CCO, Paraderos | Iluminación de zonas de mediana intensidad |
| **Luminarias LED Peatonales (50W)** | 150 unidades | Puentes peatonales, accesos | Iluminación de circulación peatonal |
| **Postes metálicos galvanizados (8-12m)** | 650 unidades | Todo el corredor (sitios críticos) | Soporte de luminarias |
| **Transformadores (15-30 kVA)** | 25 unidades | Subestaciones locales | Alimentación eléctrica |
| **Tableros de control y protección** | 25 unidades | Cada zona iluminada | Control, protección, medición |
| **Sistema de control y monitoreo (SCADA)** | 1 sistema central | CCO | Monitoreo remoto, control on/off, alarmas |
| **Cableado subterráneo (Cu 3x10 AWG)** | 35 km | Interconexión | Alimentación y control |
| **Bancos de ductos y canalizaciones** | 35 km | Subterráneo | Protección de cableado |

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO** | Red IP / SCADA | Modbus TCP/IP, Fibra Óptica | Estado on/off, consumo energético, alarmas |
| **ITS - CCTV** | Coordinación Operacional | N/A | Iluminación debe soportar visibilidad nocturna de cámaras |
| **Sistema Eléctrico Principal** | Acometida AC | 13.2 kV / 220V | Energía eléctrica trifásica |
| **Peajes** | Integración Física | Cableado dedicado | Iluminación de casetas y plazas |
| **Emergencias** | Operacional | Radio/IP | Activación de iluminación adicional en incidentes nocturnos |

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| Luminarias LED 150W | 300 | $450 | $135,000 |
| Luminarias LED 100W | 200 | $350 | $70,000 |
| Luminarias LED 50W (peatonales) | 150 | $250 | $37,500 |
| Postes metálicos galvanizados | 650 | $800 | $520,000 |
| Transformadores (15-30 kVA) | 25 | $5,000 | $125,000 |
| Tableros de control | 25 | $3,500 | $87,500 |
| Sistema SCADA de monitoreo | 1 | $80,000 | $80,000 |
| Cableado y canalizaciones | 35 km | $15,000/km | $525,000 |
| Ingeniería, montaje, pruebas | Global | 20% subtotal | $312,000 |
| **TOTAL CAPEX** | | | **$1,892,000** |

**Conversión a COP (TRM 4,000):** COP 7,568,000,000 (~7.6 mil millones)

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) |
|:-----|:------------------|
| Mantenimiento preventivo (limpieza, inspección) | $45,000 |
| Mantenimiento correctivo (reposición 5% anual) | $95,000 |
| Repuestos (luminarias, balastos, fusibles) | $35,000 |
| Energía eléctrica (650 luminarias x 100W x 12h x 365d x $0.12/kWh) | $171,300 |
| Personal operación (2 técnicos dedicados) | $48,000 |
| Monitoreo SCADA (software, licencias) | $8,000 |
| **TOTAL OPEX/año** | **$402,300** |

**OPEX anual en COP:** COP 1,609,200,000 (~1.6 mil millones/año)  
**OPEX 25 años:** USD 10,057,500

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| Vandalismo/robo de luminarias | Media | Alto | Carcasas antivandalismo, CCTV, patrullaje nocturno |
| Sobretensiones (tormentas eléctricas) | Media | Alto | Protecciones DPS (dispositivos de protección contra sobretensiones) |
| Falla de transformadores | Baja | Alto | Mantenimiento preventivo, transformadores redundantes en sitios críticos |
| Obsolescencia tecnológica (15-20 años) | Alta | Medio | LED con garantía >50,000 hrs, planificación de reposición gradual |
| Consumo energético > presupuestado | Media | Medio | Sistema de control inteligente, apagado parcial en horarios de bajo tráfico |
| Interferencia con obras civiles | Media | Medio | Coordinación con WBS 2.0 (Obras Civiles), diseño coordinado |

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

**Según AT4:**

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición |
|:-------------|:------------|:------------------------|:--------------------|
| **E14** | Iluminación | ≥ 80% de puntos luminosos operativos en cada sitio | Mensual |
| **O6** | Respuesta a fallas de iluminación | Reposición en < 24 horas | Por evento |

**KPIs Adicionales Propuestos:**

| KPI | Descripción | Meta |
|:----|:------------|:-----|
| **Disponibilidad del sistema** | % de horas con iluminación operativa | ≥ 98% |
| **Consumo energético mensual** | kWh consumidos vs. presupuestado | ±10% del target |
| **MTBF (Mean Time Between Failures)** | Tiempo medio entre fallas de luminarias | > 15,000 hrs |
| **Nivel de iluminancia (Lux)** | Cumplimiento RETILAP en puntos de medición | 100% de puntos conforme |

---

## 9. PRÓXIMOS PASOS

- [x] Desarrollar ficha de sistema (Template T01) ✅
- [ ] Desarrollar análisis de requisitos detallado (Template T02)
- [ ] Definir arquitectura conceptual con planos unifilares (Template T03)
- [ ] Elaborar especificaciones técnicas de luminarias LED (Template T04)
- [ ] Solicitar cotizaciones a proveedores (Philips, Schréder, Schreder, GE Lighting)
- [ ] Realizar estudios de iluminancia y modelación (DIALux, AGI32)
- [ ] Validar con interventoría y ANI
- [ ] Integrar con diseño geométrico de intersecciones (WBS 2.0)

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

- **Tecnología LED:** Se asume uso de luminarias LED de >50,000 horas de vida útil, eficiencia >100 lm/W.
- **Vida útil:** 15-20 años para postes y estructuras, 10-12 años para luminarias LED.
- **Horario de operación:** 12 horas nocturnas promedio (18:00 - 06:00), 365 días/año.
- **Tarifa eléctrica:** $0.12 USD/kWh promedio (tarifa industrial Colombia).
- **Nivel de iluminancia:** Según RETILAP para vías Tipo 1 (autopistas), intersecciones (20-30 lux promedio).

### 10.2 Dependencias

- **Sistema Eléctrico Principal:** Disponibilidad de acometidas de 13.2 kV en cada sitio crítico.
- **Red de Telecomunicaciones:** Fibra óptica para integración con SCADA del CCO.
- **Diseño Geométrico:** Ubicación definitiva de intersecciones, puentes peatonales, peajes.
- **Predial:** Acceso a terrenos para instalación de postes y subestaciones.

### 10.3 Restricciones

- **Excepciones:** NO se incluye iluminación de Pasos Nacionales (responsabilidad de municipios/INVIAS).
- **Normativa ambiental:** Minimizar contaminación lumínica hacia zonas ecológicas sensibles.
- **Contractual:** Cumplir con indicador E14 (≥80% operativo) en todo momento para evitar deducciones.
- **Presupuestal:** CAPEX limitado a USD 2M, optimizar mediante diseño eficiente.

---

## 11. REFERENCIAS CRUZADAS

**Documentos relacionados:**
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md)
- [AT2 - Operación y Mantenimiento, Sección 6.3.4](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md)
- [AT4 - Indicadores de Desempeño, E14](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md)
- [WBS Preliminar - Elemento 2.6 (Iluminación)](../IX.%20WBS%20y%20Planificacion/WBS_Preliminar_v1.0.md)

---

**Versión:** 1.0  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 16/10/2025  
**Responsable:** Ing. Sistemas Eléctricos EPC  
**Próxima revisión:** Fase T02 (Análisis de Requisitos)

---

**CHANGELOG:**
- v1.0 (16/10/2025): Creación inicial de ficha de sistema Iluminación

