# T05 - INGENIERÍA DE DETALLE - SISTEMAS DE POTENCIA
## Sistemas de Energía y Respaldo para Corredor Vial

**Proyecto:** APP Puerto Salgar - Barrancabermeja (TM01)  
**Sistema:** Energía Eléctrica y Potencia  
**Fecha:** 15 de enero de 2026  
**Versión:** 1.0  
**Basado en:** T01 Ficha de Sistema Energía v1.1 + AT1 Alcance del Proyecto  

---

## 📋 RESUMEN EJECUTIVO

### Sistema de Potencia:

| Parámetro | Valor | Referencia |
|:----------|:------|:-----------|
| **Longitud Corredor** | 293.0 km | AT1 |
| **Puntos de Potencia** | ~51 centros de transformación | T01 Energía |
| **Respaldo Crítico** | UPS + Generadores Diésel | CCO, Peajes, ITS |
| **Energía Solar** | Requerida en SOS remotos | AT2 |
| **CAPEX Estimado** | **$4,277,500 USD** | T01 Energía Section 6.1 |
| **OPEX Anual** | **$1,385,000 USD** | Incluye consumo y mantenimiento |

> [!IMPORTANT]
> **CUMPLIMIENTO RETIE 2024 (Res. 40117):**
> Todo equipo de potencia (Transformadores, UPS, Tableros, Plantas) suministrado debe contar con **Dictamen de Inspección** y Certificado de Conformidad de Producto bajo la nueva Resolución 40117 de 2024. No se admiten equipos bajo norma 2013 salvo régimen de transición probado.

---

## 🔌 ARQUITECTURA DEL SISTEMA VIAL

### 1. Centro de Control Operacional (CCO) - La Lizama PK 4+300
- **Acometida:** Media Tensión (13.2 kV)
- **Transformador:** 500 kVA Principal
- **Respaldo:** 
  - UPS 100 kVA Redundante N+1 (30 min)
  - Generador Diésel 300 kW (48h autonomía)
- **Cargas críticas:** Servidores, Videowall, Telecomunicaciones L3, HVAC redundante.

### 2. Estaciones de Peaje (Zambito y Aguas Negras)
- **Acometida:** Media Tensión
- **Transformador:** 200 kVA por estación
- **Respaldo:** 
  - UPS 50 kVA
  - Generador Diésel 150 kW
- **Cargas críticas:** Sistema de recaudo, Cámaras OCR, Barreras, Iluminación de carriles.

### 3. Sistemas ITS en Corredor (293 km)
- **Alimentación SOS:** 88 postes SOS.
  - SOS asociados a peajes: Grid power.
  - SOS remotos: Energía Solar (Panel 100W + Batería 100Ah).
- **Alimentación CCTV/PMV:** Transformadores de distribución locales (15-45 kVA) cada 8-10 km.
- **Respaldo ITS:** UPS distribuidas de 3-5 kVA en gabinetes de campo.

---

## 📐 ESPECIFICACIONES TÉCNICAS

### 1. Subestaciones y Transformadores
- **Cumplimiento:** RETIE y NTC 2050.
- **Transformadores:** Tipo seco (interiores) o aceite (exteriores).
- **Eficiencia:** ≥ 98.5%.

### 2. Sistemas de Respaldo (UPS)
- **Topología:** On-line Doble Conversión.
- **Factor de Potencia:** ≥ 0.9.
- **Monitoreo:** SNMP v3 integrado al SCADA del CCO.

### 3. Generadores de Emergencia
- **Motor:** Diésel 4 tiempos, enfriado por agua.
- **Alternador:** Sin escobillas, regulación AVR ±1%.
- **Transferencia (ATS):** Automática, tiempo de conmutación < 30 segundos.

---

## 📊 PRESUPUESTO CONSOLIDADO (Ref. T01 v1.1)

| Capítulo | Descripción | Costo Total (USD) |
|:---------|:------------|:------------------|
| 1.0 | Subestaciones y Transformadores | $828,000 |
| 2.0 | Sistemas de Respaldo (UPS + Gen) | $633,500 |
| 3.0 | Tableros y Protecciones | $1,219,400 |
| 4.0 | Red Eléctrica y Canalizaciones | $985,500 |
| 5.0 | Puesta a Tierra y Rayos | $783,000 |
| **TOTAL** | **INVERSIÓN DIRECTA (CAPEX)** | **$4,449,400** |

---

## 🔧 OPERACIÓN Y MANTENIMIENTO (OPEX)
- **Consumo Estimado:** ~4.67 GWh/año.
- **Rutinas:** 
  - Limpieza de paneles solares (mensual en SOS remotos).
  - Pruebas de generadores con carga (mensual).
  - Medición de mallas de tierra (anual - RETIE).

---

## ✅ VERIFICACIÓN DE COHERENCIA
- **Túneles:** NO SE INCLUYEN (Purga completa aplicada).
- **Longitud:** 293 km (Alineado con AT1).
- **SOS:** 88 unidades (Alineado con AT1/T05 SOS verified).
- **Locomotoras/ENCE/CTC Rail:** ELIMINADOS COMPLETAMENTE.

---

**Estado:** ✅ **REESCRITO - 100% ROAD PROJECT ALIGNED**  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0 (v5.0 Rail obsoleta borrada)