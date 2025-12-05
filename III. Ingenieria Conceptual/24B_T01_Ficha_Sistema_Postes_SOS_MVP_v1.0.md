# T01: FICHA DE SISTEMA - POSTES SOS (SISTEMA DE TELEFONÍA DE EMERGENCIA)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 31/10/2025  
**Sistema:** Postes SOS - Sistema de Telefonía de Emergencia  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0 MVP  
**Estado:** 🔄 En desarrollo

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | Postes SOS - Sistema de Telefonía de Emergencia |
| **Categoría** | ITS - Sistemas Inteligentes de Transporte / Comunicaciones |
| **Prioridad** | 🔴 Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT1 (Cap. 3), AT2 (Sección 3.3.3.2), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Postes SOS tiene como objetivo **permitir la comunicación gratuita de emergencia** entre usuarios de la vía y el Centro de Control de Operación (CCO) más cercano, a lo largo de todo el Corredor del Proyecto Puerto Salgar - Barrancabermeja (259.6 km principales + 33.4 km adicionales).

**Funciones principales:**
- **Comunicación de emergencia gratuita** con el CCO
- **Localización automática** del punto de llamada
- **Atención simultánea** de múltiples usuarios
- **Integración** con sistemas de telecomunicaciones del proyecto
- **Soporte** a equipos de emergencia y Policía de Carreteras

### 2.2 Alcance del Sistema

**Sistemas incluidos:**
- ✅ Postes SOS con equipamiento de comunicación
- ✅ Integración con red de telecomunicaciones (fibra óptica)
- ✅ Conexión con Centro de Control de Operación (CCO)
- ✅ Sistema de localización geográfica (GPS/GNSS)
- ✅ Alimentación eléctrica (red o solar según ubicación)

**Cobertura geográfica:**
- **Corredor principal:** 259.6 km (RN 4510 + RN 4511)
- **Conexión CCO:** RN 4513 (~10 km adicionales)
- **Total:** ~293 km de cobertura
- **Distribución:** Alternada en bermas externas (derecha/izquierda)

**Integración con:**
- Centro de Control de Operación (CCO) La Lizama
- Sistema de Telecomunicaciones (fibra óptica)
- Sistema de Energía Eléctrica (alimentación)

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT1 - Apéndice Técnico 1, Capítulo 3 "Sistemas de comunicación y postes SOS":**

> "El sistema de telefonía por postes SOS permitirá la comunicación gratuita con el Centro de Control de Operación más cercano, a lo largo de todo el Corredor del Proyecto. El sistema debe garantizar la comunicación de varios usuarios a la vez, a través de los postes y la ubicación de los sitios desde los cuales se están realizando las llamadas. **Estos postes estarán a una distancia máxima de tres (3) kilómetros entre sí.** El sistema debe tener capacidad para atender de forma inmediata y simultánea a todos los usuarios que lo precisen."

**Requisitos específicos:**
- ✅ **Distancia máxima:** 3 km entre postes (obligatorio)
- ✅ **Distribución:** Alternados en bermas externas (derecha/izquierda)
- ✅ **Sobreancho:** 1 metro adicional × 10 metros de longitud
- ✅ **Instalación:** Simultánea con obras de construcción
- ✅ **Comunicación:** Gratuita con CCO

### 3.2 Requisitos de Apéndices Técnicos

**AT1, Capítulo 3:**
- Distancia máxima de 3 km entre postes
- Distribución alternada en bermas externas
- Sobreancho mínimo de 1 metro adicional a la berma
- Longitud de sobreancho: 10 metros

**AT2, Sección 3.3.3.2 (Operación y Mantenimiento):**
- Confirmación de existencia del sistema SOS
- Requisitos de mantenimiento y operación

**AT4 (Indicadores):**
- Indicadores de disponibilidad del sistema
- Métricas de tiempo de respuesta

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **AT1 Cap. 3** | Sistemas de comunicación y postes SOS | Especificaciones contractuales |
| **AT2 Sección 3.3.3.2** | Operación y Mantenimiento | Requisitos O&M |
| **AT4** | Indicadores de desempeño | Métricas de disponibilidad |
| **Manual INVÍAS** | Señalización Vial | Ubicación y señalización |
| **NTC 5660** | Sistemas de Comunicación | Estándares técnicos (si aplica) |

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| **Postes SOS** | **88 unidades** | Distribuidos a lo largo del corredor (máx. 3 km entre sí) | Comunicación de emergencia |
| **Equipamiento de comunicación** | 88 unidades | Integrado en cada poste | Transmisión de voz y datos |
| **Sistema de localización** | 88 unidades | GPS/GNSS en cada poste | Identificación de ubicación |
| **Alimentación eléctrica** | 88 unidades | Red eléctrica o solar según ubicación | Suministro de energía |
| **Conexión a red FO** | 88 puntos | Integración con red de telecomunicaciones | Comunicación con CCO |

**Distribución geográfica:**
- **RN 4510:** ~134 km → ~45 postes
- **RN 4511:** ~149 km → ~50 postes
- **RN 4513:** ~10 km → 1 poste (SOS #88, conexión CCO)
- **Total:** **88 postes** (cumple criterio de máximo 3 km entre sí)

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO (Centro de Control)** | Red IP / Fibra Óptica | Ethernet / VoIP | Voz de emergencia + localización GPS |
| **Sistema de Telecomunicaciones** | Red FO / L2/L3 | Ethernet | Tráfico de datos y voz |
| **Sistema de Energía Eléctrica** | Alimentación AC/DC | Red eléctrica o solar | Suministro de energía |
| **Sistema de Iluminación** | Coordinación de ubicación | - | Ubicación compartida (si aplica) |

**Flujo de comunicación:**
```
Usuario → Poste SOS → Red FO → Switch L2/L3 → CCO La Lizama
         (Voz + GPS)  (Ethernet)  (Routing)     (Atención emergencia)
```

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| **Poste SOS completo** | 88 | $15,000 - $20,000 | $1,320,000 - $1,760,000 |
| **Instalación y montaje** | 88 | $2,000 - $3,000 | $176,000 - $264,000 |
| **Conexión a red FO** | 88 | $500 - $1,000 | $44,000 - $88,000 |
| **Alimentación eléctrica** | 88 | $1,000 - $2,000 | $88,000 - $176,000 |
| **TOTAL CAPEX** | | | **$1,628,000 - $2,288,000** |

**Nota:** Estimación preliminar. Requiere validación con cotizaciones reales en T05.

### 6.2 OPEX (Operación y Mantenimiento - Anual)

| Ítem | Costo Anual (USD) |
|:-----|:------------------|
| **Mantenimiento preventivo** | $50,000 - $80,000 |
| **Mantenimiento correctivo** | $30,000 - $50,000 |
| **Repuestos** | $20,000 - $30,000 |
| **Energía eléctrica** | $15,000 - $25,000 |
| **TOTAL OPEX/año** | **$115,000 - $185,000** |

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Vandalismo** | Media | Alto | Carcasas antivandalismo IK10, ubicación visible |
| **Fallo de comunicación** | Baja | Alto | Redundancia en red FO, mantenimiento preventivo |
| **Fallo de alimentación** | Media | Medio | Alimentación solar de respaldo, baterías |
| **Acceso difícil para mantenimiento** | Baja | Medio | Planificación de rutas de mantenimiento |
| **Interferencia con obras civiles** | Media | Medio | Coordinación con construcción, instalación simultánea |

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

**Según AT4:**

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición |
|:-------------|:------------|:------------------------|:--------------------|
| **Disponibilidad SOS** | % de postes SOS operativos | ≥ 95% | Mensual |
| **Tiempo de respuesta** | Tiempo desde llamada hasta atención CCO | ≤ 30 segundos | Por evento |
| **Cobertura geográfica** | % del corredor con cobertura SOS | 100% | Trimestral |

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (T01)
- [x] ✅ Análisis de Requisitos completado (T02)
- [x] ✅ Arquitectura Conceptual completada (T03)
- [ ] ⏳ Elaborar especificaciones técnicas (T04)
- [ ] ⏳ Estimar costos detallados (T05)
- [ ] ⏳ Validación contractual completa
- [ ] ⏳ Seleccionar proveedores preliminares

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos

- La red de fibra óptica estará disponible en todos los puntos de instalación
- La alimentación eléctrica estará disponible o se utilizará energía solar
- El CCO La Lizama estará operativo al momento de puesta en servicio
- La distribución alternada en bermas es factible en todo el corredor

### 10.2 Dependencias

- **Sistema de Telecomunicaciones:** Requiere red FO operativa
- **Sistema de Energía Eléctrica:** Requiere alimentación o sistema solar
- **CCO:** Requiere CCO operativo para recepción de llamadas
- **Obras Civiles:** Requiere coordinación con construcción para instalación simultánea

### 10.3 Restricciones

- **Contractual:** Distancia máxima de 3 km entre postes (obligatorio)
- **Técnica:** Sobreancho mínimo de 1 metro × 10 metros
- **Geográfica:** Distribución alternada en bermas externas
- **Temporal:** Instalación simultánea con obras de construcción

---

## 11. REFERENCIAS CONTRACTUALES

### 11.1 Documentos Contractuales

- **AT1 - Apéndice Técnico 1, Capítulo 3:** "Sistemas de comunicación y postes SOS"
- **AT2 - Apéndice Técnico 2, Sección 3.3.3.2:** Operación y Mantenimiento
- **AT4 - Apéndice Técnico 4:** Indicadores de desempeño

### 11.2 Validaciones Contractuales Existentes

- `VII. Documentos Transversales/34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0.md`
- **Cantidad validada:** 88 postes SOS ✅
- **Estado:** Validado contractualmente

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 31/10/2025  
**Responsable:** Administrador Contractual EPC  
**Próximo paso:** Validación de arquitectura con stakeholders  
**T02 disponible:** `24B_T02_Analisis_Requisitos_Postes_SOS_MVP_v1.0.md`  
**T03 disponible:** `24B_T03_Arquitectura_Conceptual_Postes_SOS_MVP_v1.0.md`

