# ANÁLISIS: DUPLICACIÓN DE VEHÍCULOS DE EMERGENCIA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de octubre de 2025  
**Versión:** 1.0  
**Criticidad:** 🔴 ALTA  

---

## 🔴 **DUPLICACIÓN DETECTADA**

### Vehículos en Áreas de Servicio (T03 v1.1)

**Por área (× 2 áreas):**
- 1 Patrulla de Emergencia: $45,000
- 1 Camioneta Operativa: $35,000
- 1 Ambulancia: $65,000
- 1 Grúa Pequeña (10 ton): $80,000
- **Subtotal por área:** $225,000
- **Total 2 áreas:** $480,000 USD

### Vehículos en Sistema de Emergencias (T01 v1.0)

- 5 Ambulancias TAM: $750,000
- 3 Grúas Pesadas (>30 ton): $540,000
- 5 Grúas Livianas (10-15 ton): $400,000
- 5 Carrotalleres: $600,000
- 8 Patrullas: $400,000
- 2 Vehículos rescate: $200,000
- 2 Camiones cama baja: $300,000
- **Total:** $3,190,000 USD

**Total vehículos contabilizados:**
- Áreas: $480,000
- Emergencias: $3,190,000
- **TOTAL: $3,670,000 USD**

---

## ❓ **PREGUNTA CRÍTICA**

¿Los vehículos de las áreas son ADICIONALES o forman parte del sistema de emergencias?

### Análisis Contractual

**AT2 - Sistema de Emergencias:**
> "El Concesionario deberá contar con equipos de emergencia distribuidos estratégicamente en el corredor"

**AT1 - Áreas de Servicio (Tabla 53):**
> "Base operativa con garaje para vehículos de emergencia"

**Interpretación:**

**Opción A: Son los MISMOS vehículos (NO DUPLICAR)**
- Las áreas de servicio son "bases operativas" del sistema de emergencias
- Los vehículos están ESTACIONADOS en las áreas
- Forman parte del sistema de emergencias general
- **Presupuesto:** Solo en Sistema de Emergencias

**Opción B: Son ADICIONALES (SÍ DUPLICAR)**
- Las áreas tienen vehículos propios (operación local)
- El sistema de emergencias tiene vehículos adicionales
- Son flotas separadas
- **Presupuesto:** En ambos sistemas

---

## ✅ **INTERPRETACIÓN CORRECTA: OPCIÓN A**

### Razones:

1. **Concepto de "Base Operativa":**
   - Las áreas son BASES donde se estacionan vehículos del sistema de emergencias
   - NO son flotas independientes
   - El garaje es para alojar los vehículos, no comprarlos dos veces

2. **Distribución estratégica:**
   - Sistema de emergencias requiere cobertura en 259.6 km
   - 2 áreas en PK 9.2 y PK 80 son bases estratégicas
   - Los vehículos se distribuyen en estas bases

3. **Economía operacional:**
   - No tiene sentido tener 2 flotas separadas (área + emergencias)
   - Los mismos vehículos atienden emergencias Y operan desde las áreas

### Configuración Correcta:

**Sistema de Emergencias (TOTAL):**
- 5 Ambulancias TAM (2 en Zambito, 2 en Aguas Negras, 1 en CCO)
- 8 Grúas (3 pesadas + 5 livianas, distribuidas)
- 5 Carrotalleres
- 8 Patrullas
- 2 Vehículos rescate
- 2 Camiones cama baja
- **Total: $3,190,000 USD** (presupuestado en Sistema Emergencias)

**Áreas de Servicio:**
- Garajes para alojar vehículos: $80,000 × 2 = $160,000 (construcción civil)
- Equipamiento talleres: $80,000 × 2 = $160,000 (herramientas, equipos)
- **Total construcción:** $320,000 USD
- **Vehículos: $0** (ya están en Sistema Emergencias)

---

## 💰 **CORRECCIÓN DE DUPLICACIÓN**

### En Áreas de Servicio:

| Concepto | v1.0 | v1.1 Corregido | Cambio |
|:---------|:-----|:---------------|:-------|
| Vehículos por área | $240,000 | **$0** | -$240,000 |
| Total 2 áreas | $480,000 | **$0** | **-$480,000** |
| Garajes (obra civil) | Incluido | $160,000 | Separado |
| Equipamiento talleres | Incluido | $160,000 | Separado |

**CAPEX Áreas de Servicio:**
- v1.0 (con vehículos): $3,646,377 USD
- v1.1 (sin vehículos): $3,486,377 USD
- **Ahorro: -$160,000 USD** (los garajes y equipamiento ya estaban incluidos en construcción)

### En Sistema de Emergencias:

**SIN CAMBIOS:** $4,886,750 USD

Los vehículos YA estaban correctamente presupuestados aquí.

---

## 🔍 **OTRAS CORRECCIONES IDENTIFICADAS**

### Postes SOS

**En Sistema Emergencias:**
- 65 postes SOS × $3,500 = $227,500

**En Sistema ITS (validado):**
- 87 postes SOS × $2,000 = $174,000

**Problema:**
- ✅ La cantidad correcta es 87 (AT1 Cap. 3, validado anteriormente)
- ❌ En Emergencias están duplicados
- ❌ El costo unitario es diferente ($3,500 vs. $2,000)

**Corrección:**
- Eliminar postes SOS de Sistema de Emergencias
- Ya están en Sistema ITS
- **Ahorro: -$227,500 USD**

---

## 💰 **CORRECCIONES TOTALES**

### Sistema de Emergencias v1.1

| Concepto | v1.0 | Corrección | v1.1 |
|:---------|:-----|:-----------|:-----|
| Vehículos emergencia | $3,190,000 | $0 | $3,190,000 |
| Postes SOS | $227,500 | -$227,500 | **$0** |
| Bases operación | $400,000 | $0 | $400,000 |
| Equipamiento bases | $200,000 | $0 | $200,000 |
| Equipos médicos | $150,000 | $0 | $150,000 |
| Equipos rescate | $200,000 | $0 | $200,000 |
| Radios móviles | $75,000 | $0 | $75,000 |
| Contingencias | $444,250 | -$20,681 | $423,569 |
| **TOTAL** | **$4,886,750** | **-$248,181** | **$4,638,569** |

**Ahorro:** -$248,181 USD (-5.1%)

### Sistema Áreas de Servicio v1.1

| Concepto | v1.0 | Corrección | v1.1 |
|:---------|:-----|:-----------|:-----|
| Construcción | $1,903,500 | $0 | $1,903,500 |
| Sistemas | $832,000 | $0 | $832,000 |
| Vehículos | $480,000 | -$480,000 | **$0** |
| Instalación | $257,240 | $0 | $257,240 |
| Contingencia | $173,637 | -$24,000 | $149,637 |
| **TOTAL** | **$3,646,377** | **-$504,000** | **$3,142,377** |

**Ahorro:** -$504,000 USD (-13.8%)

---

## 📊 **RESUMEN DE CORRECCIONES**

| Sistema | Duplicación | Ahorro |
|:--------|:------------|:-------|
| **Emergencias** | Postes SOS | -$227,500 |
| **Áreas de Servicio** | Vehículos emergencia | -$480,000 |
| **Peajes** | Básculas estáticas | -$160,000 |
| **TOTAL AHORRO** | | **-$867,500 USD** |

---

## ✅ **CONCEPTO CORRECTO**

**Los vehículos de emergencia:**
- ✅ Se presupuestan en Sistema de Emergencias ($3.19M)
- ✅ Se ALOJAN en las bases de las áreas de servicio
- ✅ Las áreas solo tienen garajes y talleres (construcción civil)
- ❌ NO se duplican los vehículos

**Los postes SOS:**
- ✅ Se presupuestan en Sistema ITS ($174K por 87 unidades)
- ❌ NO se presupuestan en Emergencias

---

**Fin del documento - Análisis Duplicación Vehículos**  
**Versión:** 1.0  
**Fecha:** 21 de octubre de 2025  
**Ahorro identificado:** -$867,500 USD  
**Metodología:** Punto 42 v1.0


