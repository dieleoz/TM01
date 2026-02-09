# 📋 TABLA COMPARATIVA: OBSERVACIONES AL TDR PMV

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def pmv.md` (TDR Asesor Externo)  
**Fecha:** 09 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría

---

## 📌 RESUMEN EJECUTIVO

Se han identificado **observaciones críticas** en el TDR de PMV que requieren corrección antes de proceder a licitación:

### Categorías de Observaciones:

| Categoría | Cantidad | Impacto |
|:----------|:---------|:--------|
| **Cantidades y alcance** | 2 | Confusión entre PMV ITS vs PMV Peaje |
| **Sobre-especificaciones técnicas** | 3 | Encarecen sin beneficio contractual |
| **Normas no aplicables** | 5 | Generan confusión (UNE españolas) |
| **Ambigüedades de alcance** | 2 | SCADA, RADAR ANPR |
| **Riesgos contractuales** | 1 | RETIE sin condiciones claras |

---

## 🔍 ESPECIFICACIONES TÉCNICAS: TDR vs CONTRACTUAL

| # | Ítem | TDR Asesor (Actual) | Especificación Correcta | Fundamento Contractual |
|:--|:-----|:--------------------|:------------------------|:-----------------------|
| 1 | **Cantidad PMV** | 25 unidades (solo vía) | **43 unidades TOTAL:**<br>- 29 PMV ITS (Vía)<br>- 14 PMV Peaje (Tarifarios) | AT1 3.8: "Mínimo 25 PMV"<br>AT2 3.3.5.1: "2 por peaje"<br>Res. IP/REV: "Panel tarifa por carril" |
| 2 | **Segregación** | No distingue ITS vs Peaje | **Separar obligatoriamente:**<br>- WBS 3.01: PMV ITS<br>- WBS 5.01: PMV Peaje | Subsistemas diferentes con funciones distintas |
| 3 | **Altura Carácter** | 450 mm | **400 mm mínimo** | Manual Señalización 2024: "400mm para v>90km/h"<br>450mm sobre-especifica |
| 4 | **Distancia Lectura** | 180 m | **Eliminar especificación fija** | Depende de altura carácter (400mm) y velocidad vía |
| 5 | **Normativa** | NTC 2050, RETIE, NTC 2031, UNE (españolas), Res. 77506 (SIC), EIA/TIA-606 | **Solo:**<br>- RETIE 2024<br>- NTC 2050<br>- UNE-EN 12966 (PMV)<br>- Manual Señalización 2024 | Contrato AT3 cita RETIE/NTC.<br>UNE españolas NO aplican excepto UNE-EN 12966 (específica para PMV) |
| 6 | **Gabinetes** | IP65, UNE 4826, UNE-EN 2409, UNE 20-501-2-34, RAL 7035, 400 Kg | **Simplificar:**<br>- IP65 mínimo<br>- RETIE 2024<br>- Capacidad según equipos | Eliminar normas UNE de gabinetes (niebla salina, vibraciones, color específico, carga excesiva) |
| 7 | **RADAR ANPR** | Incluido en 12 PMV | **Aclarar alcance:**<br>¿Es obligatorio?<br>¿Quién lo provee? | No está en AT1/AT2. Si es adicional, debe ser ítem separado |
| 8 | **Integración SCADA** | "Plena integración con SCADA" | **Protocolos estándar:**<br>- NTCIP 1203<br>- Documentación API<br>- Integración por integrador SCADA | No se puede integrar con SCADA desconocido |

---

## 📋 OBSERVACIONES DETALLADAS

### 1️⃣ CANTIDAD Y SEGREGACIÓN DE PMV

#### Observación:
El TDR lista **25 PMV** sin distinguir entre PMV de vía (ITS) y PMV de peaje (tarifarios).

#### Problema:
- **Confusión contractual:** AT1 3.8 exige "mínimo 25 PMV en vía", pero AT2 3.3.5.1 exige "2 PMV por peaje" y Res. IP/REV exige "panel tarifario por carril".
- **Riesgo:** Mezclar PMV ITS con PMV Peaje genera glosas por incumplimiento de alcance.

#### Solución Propuesta:

**Segregación Obligatoria:**

| Subsistema | Cantidad | Fundamento Contractual | WBS |
|:-----------|:---------|:-----------------------|:----|
| **PMV ITS (Vía)** | **29** | AT1 3.8 (mínimo 25) + AT2 3.3.5.1 (2 por peaje en aproximación) | 3.01 |
| *-- Troncal (Mainline)* | 25 | AT1 3.8: "Mínimo 25, separación máx 20km" | 3.01 |
| *-- Aproximación Peaje* | 4 | AT2 3.3.5.1: "Al menos 2 por peaje" (2 peajes x 2) | 3.01 |
| **PMV Peaje (Tarifarios)** | **14** | Res. IP/REV: "Panel tarifa en cada carril IP/REV" | 5.01 |
| *-- Zambito* | 7 | 7 carriles IP/REV | 5.01 |
| *-- Aguas Negras* | 7 | 7 carriles IP/REV | 5.01 |
| **TOTAL PROYECTO** | **43** | Suma de obligaciones contractuales | - |

#### Texto Corregido:

```markdown
ALCANCE PMV:

SUBSISTEMA ITS (WBS 3.01):
• 29 PMV Gran Formato (Full Matrix RGB)
  - 25 PMV en Troncal (cumple AT1 3.8: mínimo 25, separación máx 20km)
  - 4 PMV en Aproximación a Peajes (cumple AT2 3.3.5.1: 2 por peaje)
• Función: Información tráfico, tiempos de recorrido, alertas
• Ubicación: Vía abierta (según tabla de distribución)

SUBSISTEMA PEAJE (WBS 5.01):
• 14 PMV Tarifarios (Panel Ámbar/RGB compacto)
• Función: Tarifa, saldo, categoría vehículo (transaccional)
• Ubicación: Isletas de cobro (1 por carril IP/REV)
• Fundamento: Resolución IP/REV (prerrequisito habilitación peaje)

TOTAL: 43 Unidades PMV
```

---

### 2️⃣ ALTURA DE CARÁCTER - SOBRE-ESPECIFICACIÓN

#### Observación:
El TDR exige **450 mm** de altura de carácter.

#### Problema:
- **Manual de Señalización 2024 (Numeral 2.7.4):** Exige **400 mm mínimo** para velocidades >90 km/h.
- **450 mm** sobre-especifica y encarece sin beneficio contractual.

#### Impacto:
- ✅ Ahorro: $2,000-5,000 por panel (matriz más grande = más LEDs)

#### Texto Corregido:

```markdown
ESPECIFICACIONES TÉCNICAS PMV ITS:
• Altura de carácter: Mínimo 400 mm (cumple Manual Señalización 2024 para v>90km/h)
• Proporción altura/ancho: 0.7 a 1.0
• Espacio entre caracteres: 25%-40% de altura
• Espacio entre palabras: 75%-100% de altura
• Espacio entre líneas: 50%-75% de altura
```

---

### 3️⃣ DISTANCIA DE LECTURA - ESPECIFICACIÓN INNECESARIA

#### Observación:
El TDR exige "distancia mínima de lectura superior a 180 m".

#### Problema:
- La distancia de lectura es **función de la altura del carácter** y la velocidad de la vía.
- Con caracteres de 400 mm, la distancia de lectura ya está garantizada por el Manual de Señalización 2024.
- Especificar 180m es redundante y puede generar confusión en pruebas de aceptación.

#### Solución:
**ELIMINAR** esta especificación. La altura de carácter (400mm) ya garantiza legibilidad.

---

### 4️⃣ NORMAS NO APLICABLES - UNE (ESPAÑOLAS)

#### Observación:
El TDR cita múltiples normas UNE (españolas) que NO son obligatorias en Colombia.

#### Normas UNE a ELIMINAR (Gabinetes):

| Norma | Aplicación | Por qué NO aplica |
|:------|:-----------|:------------------|
| **UNE 4826** | Niebla salina (500h) | No exigida por RETIE, proyecto no es costa |
| **UNE-EN 2409** | Adherencia pintura | No exigida por RETIE |
| **UNE 20-501-2-34** | Vibraciones | No aplica para gabinetes PMV |
| **UNE 20-550** | Choques eléctricos | Cubierto por RETIE + NTC 2050 |
| **UNE 20460-5-54** | Toma de tierra | Cubierto por RETIE 2024 |

#### Norma UNE a MANTENER:

| Norma | Aplicación | Por qué SÍ aplica |
|:------|:-----------|:------------------|
| **UNE-EN 12966** | Señalización Variable | **Norma específica para PMV** (obligatoria por Manual Señalización 2024) |

#### Normas Colombianas CORRECTAS:
- ✅ **RETIE 2024** (Resolución 40117 de 2024)
- ✅ **NTC 2050** (Código Eléctrico Colombiano)
- ✅ **UNE-EN 12966** (Específica para PMV)
- ✅ **Manual de Señalización Vial 2024**

---

### 5️⃣ NORMAS NO APLICABLES - OTRAS

#### Normas a ELIMINAR:

| Norma | Aplicación | Por qué NO aplica |
|:------|:-----------|:------------------|
| **NTC 2031** | Iluminación | Es para sistemas de iluminación, NO para PMV |
| **Res. 77506 (SIC)** | Productos de consumo | Es para productos de consumo, NO para sistemas ITS |
| **EIA/TIA-606** | Cableado estructurado | Es para telecomunicaciones, NO para PMV |

---

### 6️⃣ GABINETES - SOBRE-ESPECIFICACIONES

#### Observación:
El TDR especifica gabinetes con normas UNE y sobre-especificaciones.

#### Problemas Identificados:

| Aspecto | TDR | Problema | Corrección |
|:--------|:----|:---------|:-----------|
| **Especificación** | "Diferentes especificaciones" | Muy vago | **IP65 mínimo, RETIE 2024** |
| **Color** | RAL 7035 específico | No lo pide contrato | **Neutro (gris/beige)** |
| **Carga** | 400 Kg | Para subestaciones, no PMV | **Según equipos del panel** |
| **Niebla salina** | UNE 4826 (500h) | No exigida, no es costa | **ELIMINAR** |
| **Vibraciones** | UNE 20-501-2-34 | No aplica para PMV | **ELIMINAR** |

#### Texto Corregido:

```markdown
GABINETES PMV:
• Protección: IP65 mínimo (sin ingreso agua/polvo)
• Material: Acero galvanizado con pintura anticorrosiva
• Eléctrica (RETIE 2024): barra de tierra, DPS, rotulado
• Capacidad: Según equipos del panel (controlador, switch, protecciones)
• Color: Neutro (gris, beige)
• Accesibilidad: Frontal, con cerradura de seguridad
```

---

### 7️⃣ RADAR ANPR - ALCANCE NO CLARO

#### Observación:
El TDR menciona "doce (12) RADARES ANPR distribuidos en algunos de los paneles".

#### Problemas:
1. **No está en AT1/AT2:** El contrato NO exige RADAR ANPR.
2. **Consumo energético:** El TDR pide dimensionar sistema solar para alimentar RADAR (80W).
3. **Responsabilidad:** ¿El proveedor de PMV debe proveer RADAR o solo preparar instalación?

#### Preguntas Críticas:

```
1. ¿El RADAR ANPR es obligatorio?
   a) ¿Está en el contrato?
   b) ¿Es un adicional opcional?

2. ¿Quién provee el RADAR ANPR?
   a) ¿Proveedor de PMV?
   b) ¿Proveedor de SCADA?
   c) ¿Proveedor separado?

3. ¿Qué debe incluir el proveedor de PMV?
   a) Solo preparación (espacio, alimentación, switch)
   b) Suministro completo de RADAR
```

#### Redacción Propuesta:

```markdown
RADAR ANPR (ACLARAR ALCANCE):

OPCIÓN A - Si es obligatorio y a cargo del proveedor PMV:
• 12 RADAR ANPR integrados en PMV seleccionados
• Consumo: 80W por RADAR
• Alimentación: Incluida en sistema solar del PMV
• Integración: Conexión a switch del PMV

OPCIÓN B - Si es opcional o a cargo de otro proveedor:
• Proveedor PMV solo prepara instalación:
  - Espacio en gabinete para RADAR
  - Alimentación disponible (80W, 24/36 VDC)
  - Puerto switch disponible
• Suministro de RADAR: Por proveedor separado
```

---

### 8️⃣ INTEGRACIÓN CON SCADA

#### Observación:
El TDR exige "plena integración con el sistema SCADA".

#### Problema:
- No se conoce qué SCADA se contratará
- Integración con SCADA es responsabilidad del integrador de SCADA, no del proveedor de PMV

#### Solución Propuesta:
- Proveedor de PMV entrega sistema autónomo funcional
- Cumplimiento de protocolos estándar (NTCIP 1203)
- Documentación de API para integración futura

#### Texto Corregido:

```markdown
INTEROPERABILIDAD:
• Protocolo: NTCIP 1203 v3 (obligatorio)
• Comunicación: TCP/IP, puerto Ethernet RJ45
• Documentación completa de protocolo NTCIP
• Guía de integración con sistemas de terceros
• Software standalone para configuración y monitoreo local

RESPONSABILIDAD:
• Proveedor PMV: Sistema autónomo funcional + documentación
• Integrador SCADA: Integración con SCADA (cuando se contrate)
```

---

### 9️⃣ ALIMENTACIÓN - OFERTA ALTERNATIVA AC

#### Observación:
El TDR solicita "oferta alternativa para alimentación AC".

#### Problema:
- **Alcance no claro:** ¿Es obligatorio cotizar ambas opciones (Solar + AC)?
- **Responsabilidad:** ¿Quién hace trámites con operador de red?
- **Costos:** Acometida AC + trámites + medidor + UPS puede ser más costoso que solar.

#### Aclaración Requerida:

```
1. ¿La oferta AC es obligatoria o opcional?
   a) Obligatorio cotizar ambas (Solar + AC)
   b) Opcional, solo si el oferente lo considera viable

2. ¿Quién asume costos de acometida AC?
   a) Incluido en precio PMV
   b) Ítem separado
   c) A cargo de la concesión

3. ¿Quién hace trámites con operador de red?
   a) Proveedor PMV
   b) Concesión
```

#### Redacción Propuesta:

```markdown
ALIMENTACIÓN ELÉCTRICA:

OPCIÓN BASE (OBLIGATORIA):
• Sistema fotovoltaico con autonomía 48 horas
• Dimensionado para:
  - Panel PMV
  - Switch industrial
  - RADAR ANPR (si aplica, 12 unidades)

OPCIÓN ALTERNATIVA (OPCIONAL):
• Acometida AC desde red eléctrica
• Incluye:
  - Trámites ante operador de red (a nombre de concesión)
  - Medidor de corriente
  - Tablero con protecciones (breakers, DPS)
  - UPS con autonomía 10 minutos
• Nota: Cotización separada, sujeta a disponibilidad de red en cada sitio
```

---

### 🔟 CERTIFICACIÓN RETIE - RIESGO CRÍTICO

#### Observación:
El TDR exige certificación RETIE "bajo cuenta y riesgo del instalador".

#### Problema CRÍTICO:
Sin estudio de suelos y condiciones pre-existentes conocidas, **NO es posible garantizar certificación RETIE**.

#### Riesgos Identificados:

| Riesgo | Costo Estimado | Observación |
|:-------|:---------------|:------------|
| **Estudio de resistividad** | $300-500 por sitio | 25 sitios = $7,500-12,500 |
| **SPT complejo** (suelo >100 Ω·m) | $2,000-15,000 por sitio | Riesgo: $50,000-375,000 |
| **Certificación ONAC** | $1,500-3,000 por sitio | 25 sitios = $37,500-75,000 |
| **TOTAL RIESGO** | **$95,000-462,500 USD** | No presupuestado |

#### Preguntas URGENTES:

```
1. ¿Quién realiza el estudio de resistividad del suelo?
   a) ¿Proveedor de PMV?
   b) ¿Concesión como información de entrada?
   c) ¿Ítem adicional?

2. ¿Quién paga la adecuación del SPT si resistividad >100 Ω·m?
   a) ¿Incluido en precio PMV?
   b) ¿Ítem adicional según condiciones reales?
   c) ¿Concesión provee SPT pre-existente?

3. ¿Qué tipo de certificación se requiere?
   a) Declaración de Conformidad del instalador RETIE (sin costo adicional)
   b) Certificación de Organismo Acreditado ONAC ($1,500-3,000/sitio)
```

#### Redacción Propuesta:

```markdown
CERTIFICACIÓN RETIE:

RESPONSABILIDADES:
1. Proveedor de PMV:
   • Instalación conforme a RETIE 2024 y NTC 2050
   • Conexión a SPT existente en cada sitio
   • Declaración de Conformidad RETIE (incluida en precio)

2. EPC (Condiciones de Entrada):
   • Proveer estudio de resistividad del suelo
   • Proveer SPT existente con resistencia ≤25 Ω
   • Si SPT no cumple, adecuación se paga como ítem adicional

CONDICIONES ESPECIALES:
• Si se detectan condiciones pre-existentes que impiden cumplir RETIE,
  se notificará y acordará alcance/costo de adecuación.
• Este es un riesgo al no contar con ingeniería de detalle.
```

---

## 💰 RESUMEN DE IMPACTO ECONÓMICO

### Presupuesto Correcto (Según T05):

| Subsistema | Cantidad | Unitario | Total |
|:-----------|:---------|:---------|:------|
| **PMV ITS (Vía)** | **29** | **$80,000*** | **$2,320,000** |
| *-- Panel Full Matrix* | 29 | $45,000 | $1,305,000 |
| *-- Pórtico y Civil* | 29 | $35,000 | $1,015,000 |
| **PMV Peaje (Carril)** | **14** | **$5,000** | **$70,000** |
| *-- Panel Tarifario* | 14 | $5,000 | $70,000 |
| **TOTAL** | **43** | - | **$2,390,000** |

*\\*Promedio Panel + Estructura*

### Riesgos Eliminados:

| Riesgo | Monto |
|:-------|:------|
| Certificación RETIE sin condiciones claras | $95,000 - $462,500 |
| Confusión ITS/Peaje (glosa por incumplimiento) | Riesgo contractual |

---

## ✅ RECOMENDACIONES FINALES

### Para el Asesor Externo:

1. **Segregar PMV ITS vs PMV Peaje** - Son subsistemas diferentes con funciones distintas
2. **Eliminar normas UNE de gabinetes** (excepto UNE-EN 12966 para PMV)
3. **Eliminar normas no aplicables** (NTC 2031, Res. 77506, EIA/TIA-606)
4. **Ajustar altura de carácter** a 400mm mínimo (no 450mm)
5. **Eliminar distancia de lectura** (redundante con altura de carácter)
6. **Aclarar alcance RADAR ANPR** (¿obligatorio? ¿quién lo provee?)
7. **Aclarar alcance integración SCADA** (protocolos estándar, no integración total)
8. **Aclarar alcance oferta AC** (¿obligatoria u opcional?)
9. **Definir responsabilidades RETIE** (estudio suelos, SPT, tipo de certificación)

### Para Revisión Interna (Concesión):

1. **Confirmar segregación** entre:
   - PMV ITS (29 unidades, WBS 3.01)
   - PMV Peaje (14 unidades, WBS 5.01)

2. **Validar alcance RADAR ANPR:**
   - ¿Es obligatorio?
   - ¿Quién lo provee?

3. **Aclarar condiciones de entrada para RETIE:**
   - Estudio de suelos
   - SPT pre-existente
   - Tipo de certificación requerida

---

**Preparado por:** Ingeniería TM01  
**Metodología:** Punto 42 v3.0 (Contract-First Architecture)  
**Estado:** ✅ LISTO PARA ENVÍO AL ASESOR EXTERNO

---

**NOTA IMPORTANTE:** Este documento consolida todas las observaciones identificadas durante la revisión técnica y contractual del TDR de PMV. Se requiere respuesta del asesor externo y aclaraciones de la concesión antes de proceder a licitación.
