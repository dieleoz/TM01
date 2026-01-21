# ⚠️ DOCUMENTO OBSOLETO / DEPRECATED
> **VER:** `11_T05_Ingenieria_Detalle_Peaje_v1.0.md` para la ingeniería vigente del sistema de pesaje en peajes.

# T05 - INGENIERÍA DE DETALLE - PESAJE DINÁMICO (PEAJE)
## Subsistema de Pesaje Dinámico en Carriles de Cobro

**Proyecto:** APP Puerto Salgar - Barrancabermeja
**Sistema:** Pesaje Dinámico (Peaje)
**Fecha:** 2025-12-09
**Versión:** 1.0
**Estado:** ✅ VALIDADO CONTRATO 3.3.4.2
**Clasificación:** CONDICIONAL / CONTRACTUAL

---

## 📋 **TRAZABILIDAD CONTRACTUAL (METODOLOGÍA P.42)**

| Requisito | Descripción | Referencia Contractual | Estado |
|:----------|:------------|:-----------------------|:-------|
| **Pesaje en Peajes** | "Se exige instalar un sistema de pesaje dinámico en todos los carriles de cobro" | **Apéndice Técnico 2, Numeral 3.3.4.2** | ✅ CUMPLIDO |
| **Cobertura** | Todos los carriles de cobro (14 Totales) | **Apéndice Técnico 2, Numeral 3.3.4.2** | ✅ CUMPLIDO |

> [!IMPORTANT]
> **Nota Contractual**: Este subsistema se segrega del sistema principal de Peaje debido a su naturaleza específica y condiciones de implementación sujetas a interpretación contractual de la Interventoría. Se presupuesta de forma independiente para facilitar su gestión (activación/desactivación) sin afectar el cierre financiero del Peaje Base.

---

## 📋 **RESUMEN EJECUTIVO**

### **Alcance del Suministro:**
Implementación de 14 pistas de pesaje dinámico (una por cada carril de peaje en las 2 estaciones) para cumplimiento estricto del numeral 3.3.4.2.

| Parámetro | Valor | Detalle |
|:----------|:------|:--------|
| **Cantidad** | 14 Unidades | 7 Carriles x 2 Estaciones |
| **Tecnología** | Placas Dinámicas (1.55m) | LS-WIM (Low Speed Weigh In Motion) |
| **Precisión** | +/- 5% a 10% | Dependiente de velocidad de paso (Stop & Go) |
| **CAPEX TOTAL** | **$280,358.30 USD** | Equipos + Instalación + Gestión |

---

## 💰 **PRESUPUESTO DETALLADO CONSOLIDADO**

### **1. EQUIPAMIENTO DE PISTA (14 CARRILES)**
**Fuente de Costos:** Homologación T05 WIM (Precios Unitarios PAT Traffic/Interpesaje)

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) |
|:-----------|:---------|:------------------|:------------|
| **SUMINISTROS** | | | **$243,789.82** |
| Placas Pesaje Dinámico 1.55m (Par) | 14 und | $10,481.46 | $146,740.44 |
| Bastidores de Montaje | 14 und | $4,297.40 | $60,163.60 |
| Electrónica de Control (Agrupada) | 7 und | $4,045.18 | $28,316.26 |
| Material de Instalación (Lazos/Cables) | 14 und | $612.11 | $8,569.54 |
| **SERVICIOS ASOCIADOS (~15%)** | | | **$36,568.47** |
| Instalación y Obra Civil Menor | 1 und | $24,378.98 | $24,378.98 |
| Configuración e Integración Peaje | 1 und | $12,189.49 | $12,189.49 |
| **TOTAL SISTEMA** | **-** | **-** | **$280,358.30** |

---

## 📋 **PRESUPUESTO WBS CONSOLIDADO**
**Tabla para ingestión en Master Data (System ID: 9)**

| Componente | Cantidad | Costo Unit. WBS | Total |
|:-----------|:---------|:----------------|:------|
| **SISTEMA PESAJE DINÁMICO (PEAJE)** | | | |
| Kit Pista Pesaje (Placas+Bastidor) | 14 | $14,778.86 | $206,904.04 |
| Controlador WIM (1 cada 2 carriles) | 7 | $4,045.18 | $28,316.26 |
| Materiales e Integración | 1 | $45,138.00 | $45,138.00 |
| **TOTAL WBS** | **-** | **-** | **$280,358.30** |

---
