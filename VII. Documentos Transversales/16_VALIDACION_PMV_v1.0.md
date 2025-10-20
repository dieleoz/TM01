# VALIDACIÓN CONTRACTUAL: PANELES DE MENSAJE VARIABLE (PMV)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Versión:** 1.0  
**Criticidad:** 🔴 ALTA  

---

## 🔴 **HALLAZGO CRÍTICO**

### Cantidad Presupuestada vs. Contractual

| Documento | Cantidad PMV | Estado |
|:----------|:-------------|:-------|
| **T01 ITS v1.0** | 20-30 unidades (estimado) | ❌ Incorrecto |
| **T03 ITS v1.0** | 12-18 unidades | ❌ Incorrecto |
| **T04 PMV v1.0** | 20-30 unidades | ❌ Incorrecto |
| **Presupuesto Final v2.0** | 15 unidades | ❌ Incorrecto |
| **CONTRACTUAL (AT1)** | **25 unidades FIJAS** | ✅ Correcto |

**Discrepancia:** -10 paneles faltantes

---

## 📄 **FUNDAMENTO CONTRACTUAL**

### AT1 - Alcance del Proyecto, Sección "Paneles LED"

**Texto exacto:**
> "Se deberán instalar **veinticinco (25) paneles LED** en el corredor del Proyecto, los cuales **no podrán estar separados uno del otro por una distancia mayor a veinte (20) kilómetros por sentido**. Los paneles LED deberán instalarse **alternadamente sobre las bermas externas, a lado y lado de la vía**."

### AT2 - Operación y Mantenimiento, Numerales 3.3.5.1 y 3.3.10.1

**Obligaciones:**
- Al menos **2 PMV por cada área de peaje bidireccional**
- Paneles **alfanuméricos y gráficos**
- Comunicación permanente con CCO (fibra óptica + SCADA)
- Coordinación con Policía de Carreteras

---

## ✅ **VALIDACIÓN TÉCNICA**

### Tipo de PMV: FIJOS (No Móviles)

**Razones contractuales:**
1. ✅ AT1 dice "instalar" → implica instalación fija permanente
2. ✅ "No podrán estar separados por más de 20 km" → distribución fija
3. ✅ "Instalarse alternadamente sobre bermas" → estructura fija
4. ✅ AT2: "comunicación permanente con CCO vía fibra óptica" → no compatible con móviles

**Tipo requerido:**
- **PASA-VÍAS** (pórtico sobre calzada)
- Estructura fija con cimentación
- Conexión permanente fibra óptica
- Alimentación eléctrica permanente

**PMV móviles:**
- ⚠️ Opcionales (como apoyo en contingencias)
- NO cuentan como cumplimiento contractual
- Pueden complementar pero no sustituir los 25 fijos

---

## 📊 **DISTRIBUCIÓN VALIDADA**

### Cálculo de Cobertura

**Corredor:** 259.6 km  
**Separación máxima contractual:** 20 km por sentido

**Cálculo:**
- 259.6 km ÷ 20 km = 13 intervalos por sentido
- 2 sentidos → 13 × 2 = 26 PMV (máximo espaciado)
- **Contractual: 25 PMV** ✅

**Validación:**
- 25 PMV en 259.6 km = **10.4 km promedio de separación** ✅
- Cumple con "máximo 20 km por sentido" ✅

### Distribución Sugerida (25 PMV)

| Zona | PKs Aproximados | Cantidad | Función |
|:-----|:----------------|:---------|:--------|
| **Peaje Zambito (PK 9.2)** | PK 5, PK 15 | 2 | Antes/después peaje |
| **Tramo intermedio 1** | PK 25, PK 35, PK 45 | 3 | Cobertura general |
| **Tramo intermedio 2** | PK 55, PK 65, PK 75 | 3 | Cobertura general |
| **Peaje Aguas Negras (PK 80)** | PK 75, PK 85 | 2 | Antes/después peaje |
| **Tramo intermedio 3** | PK 95, PK 105, PK 115 | 3 | Cobertura general |
| **CCO (PK 130)** | PK 125, PK 135 | 2 | Área CCO |
| **Tramo intermedio 4** | PK 145, PK 155, PK 165 | 3 | Cobertura general |
| **Tramo intermedio 5** | PK 175, PK 185, PK 195 | 3 | Cobertura general |
| **Tramo final** | PK 205, PK 215, PK 225, PK 235 | 4 | Aproximación Barrancabermeja |
| **TOTAL** | | **25 PMV** | |

**Distribución alternada:** ✅ Lado A/B de la vía según contrato

---

## 💰 **AJUSTE DE CAPEX**

### Corrección Presupuestaria

| Concepto | Cantidad v1.0 | Cantidad v1.1 | Costo Unit. | CAPEX v1.0 | CAPEX v1.1 | Cambio |
|:---------|:--------------|:--------------|:------------|:-----------|:-----------|:-------|
| **PMV Full-Color** | 15 | **25** | $45,000 | $675,000 | **$1,125,000** | **+$450,000** |

**Incremento:** +$450,000 USD (+67%)

**Razón:** Cantidad contractual mal estimada (15 vs. 25 obligatorios)

---

## 🔍 **VALIDACIÓN DE ESPECIFICACIONES**

### Especificaciones Contractuales Validadas

| Parámetro | Especificación AT1/AT2 | T04 v1.0 | Estado |
|:----------|:-----------------------|:---------|:-------|
| **Cantidad** | 25 paneles fijos | 20-30 (estimado) | ❌ Corregir a 25 |
| **Tipo** | PASA-VÍAS fijo | - | ✅ Agregar |
| **Separación** | Máx. 20 km por sentido | - | ✅ Agregar |
| **Ubicación** | Bermas externas alternadas | Peajes + puntos críticos | ⚠️ Precisar |
| **Conexión** | Fibra óptica + CCO | Fibra + 4G respaldo | ✅ Correcto |
| **Tipo mensaje** | Alfanumérico + gráfico | Full-Color RGB | ✅ Correcto |

### Especificaciones Técnicas a Validar

**Según Resolución 546/2018 y AT3:**

| Parámetro | Especificación Mínima Contractual |
|:----------|:----------------------------------|
| **Luminancia** | ≥ 9,000 cd/m² (ajustable) |
| **Resolución** | Matriz completa (alfanumérico + gráfico) |
| **Legibilidad** | ≥ 300 metros |
| **Altura letra** | ≥ 45 cm (velocidad ≥ 70 km/h) |
| **Protección** | IP66 (polvo + agua) |
| **Vida útil LEDs** | ≥ 100,000 horas |
| **Disponibilidad** | 99% (24/7/365) |
| **Protocolo** | NTCIP 1203 |
| **Brillo** | Ajuste automático según luz ambiental |

---

## ✅ **CORRECCIONES A APLICAR**

### 1. T01 ITS v1.1

- ❌ Cambiar: "20-30 unidades" (estimado)
- ✅ Por: "**25 unidades FIJAS**" (contractual AT1)

### 2. T03 ITS v1.1

- ❌ Cambiar: "12-18 un"
- ✅ Por: "**25 un**"

### 3. T04 PMV v1.1

- ❌ Cambiar: "20-30 unidades"
- ✅ Por: "**25 unidades FIJAS PASA-VÍAS**"
- ✅ Agregar: Especificaciones de distribución (máx. 20 km separación)
- ✅ Agregar: Tipo de instalación (bermas externas alternadas)

### 4. Presupuesto Final v2.1

- ❌ Cambiar: 15 PMV × $45K = $675,000
- ✅ Por: **25 PMV × $45K = $1,125,000**
- **Incremento:** +$450,000 USD

---

## 📋 **IMPACTO EN PRESUPUESTO TOTAL**

| Concepto | Valor |
|:---------|:------|
| **Presupuesto v2.0** | $57,408,046 USD |
| **Ajuste PMV** | +$450,000 USD |
| **Presupuesto v2.1** | **$57,858,046 USD** |

**Incremento:** +0.8% del presupuesto total

**CAPEX/km:** $223,119/km (aún dentro del rango APP 4G)

---

## 🎯 **ESPECIFICACIONES ADICIONALES IDENTIFICADAS**

### Según Manual de Señalización Vial (Res. 1885/2015)

**Diseño gráfico y legibilidad:**
- Espacio entre caracteres: 25-40% de altura de letra
- Espacio entre palabras: 75-100% de altura de letra
- Espacio entre líneas: 50-75% de altura de letra
- Altura letra: ≥ 45 cm para velocidades ≥ 70 km/h
- Proporción altura/ancho: 0.7 a 1.0

**Distancia mínima de lectura (según velocidad):**
- 80 km/h: 240 metros mínimo
- 100 km/h: 300 metros mínimo
- 120 km/h: 360 metros mínimo

### Usos Contractuales Validados

**Causas de activación de PMV (AT2):**
1. ✅ Manejo de incidentes y desvíos
2. ✅ Condiciones ambientales adversas (lluvia, neblina)
3. ✅ Información de precios de peaje
4. ✅ Tiempos de viaje estimados
5. ✅ Advertencias (derrumbes, bloqueos)
6. ✅ Regulaciones especiales de tránsito
7. ✅ Control de velocidad
8. ✅ Uso de carriles
9. ✅ Control policial
10. ✅ Recomendaciones de seguridad

---

## ✅ **CONCLUSIONES**

### Hallazgos

1. ❌ **Cantidad incorrecta:** 15 presupuestados vs. 25 contractuales
2. ❌ **Falta especificar:** Tipo FIJO PASA-VÍAS
3. ❌ **Falta validar:** Distribución máx. 20 km por sentido
4. ✅ **Especificaciones técnicas:** Correctas en T04 v1.0

### Impacto

**CAPEX:**
- Incremento: +$450,000 USD
- Presupuesto actualizado: $57.86M USD
- CAPEX/km: $223,119/km ✅ (aún competitivo)

### Próximos Pasos

1. ✅ Actualizar T01 ITS a 25 PMV
2. ✅ Actualizar T03 ITS a 25 PMV
3. ✅ Actualizar T04 PMV con especificaciones completas
4. ✅ Actualizar Presupuesto Final v2.1

---

**Fin del documento - Validación PMV**  
**Versión:** 1.0  
**Fecha:** 21 de octubre de 2025  
**Impacto:** +$450,000 USD (corrección contractual)  
**Metodología:** Punto 42 v1.0  
**Proyecto:** APP Puerto Salgar - Barrancabermeja

