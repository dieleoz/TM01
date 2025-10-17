# T04: ESPECIFICACIÓN TÉCNICA - GENERADORES DE EMERGENCIA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Generadores Diésel de Emergencia  
**Responsable:** Ing. Eléctrico / Especialista en Potencia  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Generador Diésel con Transferencia Automática (ATS) |
| **Cantidad estimada** | 8-10 generadores (CCO, peajes, áreas servicio principales) |
| **Ubicación** | CCO, 2 Peajes, 6 Áreas de Servicio principales |
| **Sistema asociado** | Energía Eléctrica (Respaldo) |
| **Criticidad** | 🔴 Crítica |
| **Documentos de Referencia** | `57_T03_Arquitectura_Conceptual_Energia_Electrica_v1.0.md` |

---

## 2. ESPECIFICACIONES FUNCIONALES

### 2.1 Función Principal

Proporcionar energía eléctrica de respaldo en caso de falla del suministro de la red pública, garantizando la continuidad operativa de sistemas críticos (CCO 24/7, peajes, iluminación de emergencia).

### 2.2 Tiempo de Activación

- **Arranque automático:** ≤ 10 segundos desde detección de falla
- **Transferencia automática (ATS):** ≤ 5 segundos
- **Autonomía mínima:** 12 horas a plena carga (con tanque estándar), 72 horas (con tanque extendido)

---

## 3. ESPECIFICACIONES TÉCNICAS

### 3.1 Generador Tipo 1: CCO (Alta Capacidad)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Capacidad** | 250-350 kVA (200-280 kW) en Standby |
| **Tipo de Motor** | Diésel 4 tiempos, turboalimentado, refrigeración por radiador |
| **Fabricante Motor** | Cummins, Perkins, Caterpillar, Volvo, John Deere |
| **Voltaje de Salida** | 220/127 V o 480/277 V, Trifásico, 60 Hz |
| **Factor de Potencia** | 0.8 (kVA a kW) |
| **Regulación de Voltaje** | ±1% mediante AVR (Automatic Voltage Regulator) |
| **Regulación de Frecuencia** | ±0.5% mediante gobernador electrónico |
| **Tipo de Alternador** | Síncrono sin escobillas (brushless), Clase H |
| **Norma de Emisiones** | EPA Tier 3 o equivalente |
| **Tanque de Combustible** | Integrado, 500-800 litros (12 hrs @ 75% carga) o externo 2,000 L (72 hrs) |
| **Nivel de Ruido** | ≤ 75 dBA @ 7 metros (con cabina insonorizada) |

### 3.2 Generador Tipo 2: Peajes (Media Capacidad)

| Parámetro | Especificación |
|:----------|:---------------|
| **Capacidad** | 100-150 kVA (80-120 kW) |
| **Autonomía** | 12 horas mínimo |
| **Características** | Similares a Tipo 1, menor capacidad |

### 3.3 Generador Tipo 3: Áreas de Servicio (Baja Capacidad)

| Parámetro | Especificación |
|:----------|:---------------|
| **Capacidad** | 50-75 kVA (40-60 kW) |
| **Autonomía** | 8-12 horas |
| **Uso** | Iluminación, sistemas básicos |

---

## 4. SISTEMA DE TRANSFERENCIA AUTOMÁTICA (ATS)

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo** | ATS con lógica de control programable |
| **Tiempo de Transferencia** | ≤ 5 segundos (Red → Generador), ≤ 10 seg (Generador → Red) |
| **Corriente Nominal** | 400-600 A (según capacidad del generador) |
| **Número de Polos** | 3P o 4P (con neutro) |
| **Modo de Operación** | Automático, con modo manual de override |
| **Protecciones** | Sobrecorriente, bajo/sobre voltaje, falla a tierra |
| **Monitoreo Remoto** | Comunicación Modbus TCP/IP o SNMP para integración con SCADA |

---

## 5. PROTECCIONES Y ACCESORIOS

| Componente | Especificación |
|:-----------|:---------------|
| **Precalentador de Motor** | Resistencia eléctrica 120/240V para arranque en frío |
| **Cargador de Batería** | Automático, 12V o 24V según motor |
| **Baterías de Arranque** | 2x 12V en serie (24V), 100+ Ah, libre de mantenimiento |
| **Protección de Sobrecarga** | Breaker principal con protección térmica-magnética |
| **Sensor de Nivel de Combustible** | Alarma a 25% y 10% de nivel |
| **Sistema de Enfriamiento** | Radiador con ventilador controlado por termostato |
| **Válvula Solenoide de Combustible** | Cierre automático en caso de emergencia |

---

## 6. CABINA Y AMBIENTE

| Parámetro | Especificación |
|:----------|:---------------|
| **Tipo de Cabina** | Insonorizada (Weather-Proof Canopy), acero galvanizado |
| **Grado de Protección** | IP23 - IP54 (según ubicación) |
| **Atenuación Acústica** | 20-25 dBA de reducción |
| **Ventilación** | Rejillas con protección contra lluvia, ventiladores forzados |
| **Acceso** | Puertas con cerradura, acceso a motor, alternador, panel de control |
| **Base Antisísmica** | Opcional según zona sísmica |

---

## 7. PANEL DE CONTROL

| Característica | Especificación |
|:---------------|:---------------|
| **Tipo** | Digital con pantalla LCD/LED |
| **Funciones** | Voltaje, corriente, frecuencia, potencia, horas de operación, temperatura, presión de aceite |
| **Alarmas** | Bajo nivel de combustible, alta temperatura, baja presión de aceite, falla de arranque |
| **Comunicación** | Modbus RTU/TCP, RS-485, Ethernet (para monitoreo remoto SCADA) |
| **Arranque/Paro** | Automático (vía ATS), manual, remoto (desde CCO) |

---

## 8. CUMPLIMIENTO Y ESTÁNDARES

| Norma | Descripción |
|:------|:------------|
| **ISO 8528** | Reciprocating internal combustion engine driven alternating current generating sets |
| **NFPA 110** | Standard for Emergency and Standby Power Systems |
| **IEC 60034** | Rotating Electrical Machines |
| **EPA Tier 3/4** | Emisiones (Estados Unidos) |
| **RETIE** | Colombia - Instalaciones eléctricas |

---

## 9. PROVEEDORES SUGERIDOS

| Proveedor | Motor | Observaciones |
|:----------|:------|:--------------|
| **Caterpillar** | CAT (propio) | Líder mundial, excelente soporte |
| **Cummins** | Cummins (propio) | Alta confiabilidad |
| **FG Wilson (Caterpillar)** | Perkins | Amplia distribución |
| **Kohler** | Kohler, John Deere | Buena relación precio-calidad |
| **Generac** | Generac, Perkins | Especialista en generadores |
| **Pramac** | Perkins, FPT | Presencia en Latam |

---

## 10. COSTOS ESTIMADOS

| Tipo | Capacidad | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:----------|:---------|:---------------------|:------------------|
| Tipo 1 (CCO) | 250-350 kVA | 1 | $85,000 | $85,000 |
| Tipo 2 (Peajes) | 100-150 kVA | 2 | $45,000 | $90,000 |
| Tipo 3 (Áreas Servicio) | 50-75 kVA | 6 | $25,000 | $150,000 |
| **TOTAL** | - | **9** | - | **$325,000** |

**Nota:** Incluye generador, ATS, instalación básica. No incluye tanques de combustible externos.

---

## 11. MANTENIMIENTO

| Tipo | Frecuencia |
|:-----|:-----------|
| **Preventivo menor** | Cada 250 horas o 6 meses |
| **Preventivo mayor** | Cada 500-1,000 horas o 1 año |
| **Prueba de arranque** | Semanal (automática, 15-30 minutos sin carga) |
| **Prueba con carga** | Mensual (50-75% carga, 2 horas) |

---

## 12. PRÓXIMOS PASOS

- [ ] Solicitar cotizaciones a Caterpillar, Cummins, FG Wilson
- [ ] Definir ubicación exacta (distancia a edificios, ventilación)
- [ ] Diseñar sistema de suministro de combustible (tanques externos)
- [ ] Tramitar permisos ambientales (emisiones, ruido)

---

## 13. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | 18/10/2025 | Administrador Contractual EPC | Especificación técnica inicial de generadores |

---

**Fin del documento - T04 Especificación Técnica Generadores de Emergencia**  
*Metodología Punto 42 v1.0*

