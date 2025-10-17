# T04: ESPECIFICACIÓN TÉCNICA - SISTEMAS UPS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Sistema de Alimentación Ininterrumpida (UPS)  
**Responsable:** Ing. Eléctrico / Ing. de Potencia  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | UPS Online de Doble Conversión |
| **Cantidad estimada** | CCO: 2 (100kVA), Peajes: 2 (50kVA), ITS: 30 (3-5kVA) |
| **Ubicación** | CCO, Estaciones de Peaje, Gabinetes ITS |
| **Sistema asociado** | Energía Eléctrica (Sistema de Respaldo) |
| **Criticidad** | 🔴 Crítica |
| **Documentos de Referencia** | `38_T01_Ficha_Sistema_Energia_Electrica_v1.0.md` |

---

## 2. ESPECIFICACIONES TÉCNICAS

### 2.1 UPS para CCO y Peajes (Centralizados)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tecnología** | **Online de Doble Conversión** |
| **Potencia** | CCO: 100 kVA, Peajes: 50 kVA |
| **Topología** | Modular y escalable, redundancia N+1 |
| **Factor de Potencia de Salida** | ≥ 0.9 (preferible 1.0) |
| **Voltaje de Entrada/Salida** | 208/120V o 220/127V, 60 Hz, Trifásico |
| **Autonomía a Plena Carga** | **30 minutos** |
| **Tipo de Baterías** | VRLA (Valve-Regulated Lead-Acid) de 10 años de vida de diseño |
| **Eficiencia (Modo Online)** | ≥ 95% |
| **THD de Voltaje de Salida** | < 2% para cargas lineales |
| **Bypass** | Bypass estático y de mantenimiento manual |
| **Interfaz de Monitoreo** | Tarjeta de red SNMP, Modbus TCP/IP |

### 2.2 UPS para ITS (Distribuidos)

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tecnología** | Online de Doble Conversión |
| **Potencia** | 3 kVA a 5 kVA |
| **Factor de Potencia de Salida** | ≥ 0.9 |
| **Voltaje de Entrada/Salida** | 120V o 220V, 60 Hz, Monofásico |
| **Autonomía a Plena Carga** | **60 minutos** |
| **Tipo de Baterías** | VRLA de 5 años de vida de diseño |
| **Protección Ambiental** | Rango de temperatura extendido (-10°C a +50°C) |
| **Formato** | Montable en rack o torre |
| **Interfaz de Monitoreo** | Tarjeta de red SNMP |

---

## 3. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación | Cumplimiento |
|:------|:------------|:--------------|
| **IEC 62040-1** | Requisitos generales y de seguridad para UPS | 🔴 Obligatorio |
| **IEC 62040-3** | Método de especificación de performance | 🔴 Obligatorio |
| **RETIE** | Instalación eléctrica | 🔴 Obligatorio |

---

## 4. PRUEBAS DE ACEPTACIÓN (SAT)

- [ ] Prueba de autonomía a plena carga (descarga completa de baterías).
- [ ] Prueba de transferencia a bypass y retorno a modo online.
- [ ] Verificación de la calidad de la onda de salida con analizador de redes.
- [ ] Prueba de integración con el sistema SCADA/BMS para monitoreo remoto.
- [ ] Prueba de alarmas (batería baja, sobrecarga, falla).

---

## 5. GARANTÍA Y SOPORTE

| Aspecto | Requisito Mínimo |
|:--------|:-------------------|
| **Garantía del Fabricante** | 3 años en electrónica, 2 años en baterías |
| **Soporte Técnico** | Local en Colombia, 24/7 |
| **Plan de Mantenimiento** | Incluir visitas preventivas semestrales por 3 años |

---

## 6. PROVEEDORES PRELIMINARES

| Proveedor | País de Origen |
|:----------|:----------------|
| Schneider Electric (APC) | Francia |
| Vertiv (Emerson) | EE. UU. |
| Eaton | EE. UU. / Irlanda |
| Tripp Lite | EE. UU. |

---

**Versión:** 1.0  
**Estado:** ✅ Especificación Lista para Cotización  
**Fecha:** 18/10/2025
# T04: ESPECIFICACIÓN TÉCNICA - GENERADORES DE EMERGENCIA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 18/10/2025  
**Equipo:** Grupo Electrógeno Diésel de Emergencia  
**Responsable:** Ing. Eléctrico / Ing. Mecánico  
**Versión:** 1.0  

---

## 1. INFORMACIÓN GENERAL

| Campo | Valor |
|:------|:------|
| **Equipo** | Grupo Electrógeno Diésel con Cabina Insonorizada |
| **Cantidad estimada** | CCO: 1 (300kW), Peajes: 2 (150kW), Áreas Servicio: 6 (50kW) |
| **Ubicación** | CCO, Estaciones de Peaje, Áreas de Servicio Principales |
| **Sistema asociado** | Energía Eléctrica (Sistema de Respaldo) |
| **Criticidad** | 🔴 Crítica |
| **Documentos de Referencia** | `38_T01_Ficha_Sistema_Energia_Electrica_v1.0.md` |

---

## 2. ESPECIFICACIONES TÉCNICAS

### 2.1 Motor

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tipo de Combustible** | Diésel |
| **Norma de Emisiones** | EPA Tier 3 o superior |
| **Velocidad de Operación** | 1800 RPM |
| **Sistema de Enfriamiento** | Por radiador, para operación a 45°C de temperatura ambiente |
| **Sistema de Arranque** | Eléctrico 24V DC con baterías y cargador |

### 2.2 Alternador

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Tipo** | Sin escobillas (Brushless), 4 polos |
| **Regulación de Voltaje** | Automática (AVR), ±1% |
| **Voltaje de Salida** | 208/120V o 220/127V, 60 Hz, Trifásico |
| **Clase de Aislamiento** | Clase H |
| **Factor de Potencia** | 0.8 |

### 2.3 Cabina y Tanque de Combustible

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Cabina** | Insonorizada, para uso exterior (Weatherproof) |
| **Nivel de Ruido** | ≤ 75 dBA a 7 metros |
| **Tanque de Combustible** | Integrado en la base, de doble pared |
| **Autonomía del Tanque** | **48 horas** a plena carga |
| **Material** | Acero con tratamiento anticorrosivo |

### 2.4 Panel de Control y Transferencia

| Parámetro | Especificación Mínima |
|:----------|:----------------------|
| **Controlador** | Digital microprocesado con pantalla LCD |
| **Funciones del Controlador** | Arranque/parada automática, monitoreo de motor y alternador, registro de eventos |
| **Interruptor de Transferencia (ATS)** | Automático, 4 polos, con enclavamiento mecánico y eléctrico |
| **Tiempo de Transferencia** | **< 60 segundos** desde el corte de red hasta la toma de carga |
| **Monitoreo Remoto** | Puerto Modbus TCP/IP para integración con SCADA |

---

## 3. NORMATIVAS Y ESTÁNDARES

| Norma | Aplicación | Cumplimiento |
|:------|:------------|:--------------|
| **NFPA 110** | Estándar para Sistemas de Potencia de Emergencia y Respaldo | 🔴 Obligatorio |
| **ISO 8528** | Estándar para grupos electrógenos de corriente alterna | 🔴 Obligatoratorio |
| **RETIE** | Instalación eléctrica | 🔴 Obligatorio |
| **Normativa Ambiental Colombiana** | Emisiones y manejo de combustibles | 🔴 Obligatorio |

---

## 4. PRUEBAS DE ACEPTACIÓN (SAT)

- [ ] Prueba de arranque en frío.
- [ ] Prueba de transferencia automática simulando un corte de red.
- [ ] Prueba de carga al 25%, 50%, 75% y 100% de la potencia nominal durante 4 horas.
- [ ] Verificación del nivel de ruido a 7 metros.
- [ ] Prueba de autonomía (verificación de consumo de combustible).
- [ ] Prueba de integración con el sistema SCADA.

---

## 5. GARANTÍA Y SOPORTE

| Aspecto | Requisito Mínimo |
|:--------|:-------------------|
| **Garantía del Fabricante** | 2 años o 2,000 horas de operación |
| **Soporte Técnico** | Local en Colombia, 24/7, con técnicos certificados |
| **Contrato de Mantenimiento** | Incluir plan de mantenimiento preventivo por 5 años |

---

## 6. PROVEEDORES PRELIMINARES

| Proveedor | País de Origen |
|:----------|:----------------|
| Caterpillar | EE. UU. |
| Cummins | EE. UU. |
| Kohler | EE. UU. |
| FG Wilson | Reino Unido |

---

**Versión:** 1.0  
**Estado:** ✅ Especificación Lista para Cotización  
**Fecha:** 18/10/2025

