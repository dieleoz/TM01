# T01: FICHA DE SISTEMA - WIM (SISTEMA DE PESAJE EN MOVIMIENTO)
## Proyecto APP Puerto Salgar - Barrancabermeja
## MVP - Metodología Punto 42

**Fecha:** 05/12/2025  
**Sistema:** WIM - Weigh In Motion (Sistema de Pesaje Dinámico y Estático)  
**Responsable:** Administrador Contractual EPC / Ingeniero Civil  
**Versión:** 1.1 MVP  
**Estado:** ✅ Ficha de Sistema Completada y Actualizada (CAPEX Consolidado)

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | WIM - Weigh In Motion (Sistema de Pesaje Dinámico y Estático) |
| **Categoría** | ITS - Sistemas Inteligentes de Transporte / Control de Sobrecargas |
| **Prioridad** | 🔴 Alta |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT1 (Adenda 4, pág. 46-47), AT2 (Sección 3.3.9), AT4 (Indicadores) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Pesaje WIM tiene como objetivo **garantizar el control efectivo del peso de vehículos de carga** que circulan por el corredor vial Puerto Salgar - Barrancabermeja (259.6 km principales + 33.4 km adicionales), permitiendo:

- **Proteger la infraestructura vial** (pavimentos, puentes) del daño causado por sobrepeso
- **Cumplir con la normativa** de pesos y dimensiones vehiculares (Resolución 4959/2006)
- **Detectar y sancionar** vehículos con sobrecarga (coordinación con Policía de Carreteras)
- **Recopilar datos técnicos** para diseño de refuerzos de pavimentos y puentes (factor camión, ejes equivalentes)
- **Reducir costos de mantenimiento** de pavimentos mediante prevención de daño por sobrepeso

**El sistema combina:**
- **Pesaje Dinámico (WIM):** Pesaje sin detención del vehículo (pre-selección)
- **Pesaje Estático:** Pesaje de precisión para vehículos sospechosos de sobrepeso

### 2.2 Alcance del Sistema

**Cobertura geográfica:**
- **Longitud Principal:** 259.6 km (RN 4510 + RN 4511)
- **Longitud Total:** ~293 km (incluyendo RN 4513 conexión CCO)
- **Rutas:** RN 4510 (Honda-Río Ermitaño), RN 4511 (Río Ermitaño-La Lizama), RN 4513 (Conexión CCO)
- **Ubicación:** PR4+0100 RN 4513 (1 estación bidireccional)

**Configuración:**
- **1 Estación de Pesaje Bidireccional** (PR4+0100 RN 4513)
  - **2 Plataformas WIM** (1 por sentido) - Pesaje dinámico sin detención
  - **2 Plataformas Estáticas** (1 por sentido) - Pesaje de precisión
  - **Total: 4 plataformas** (1 estación bidireccional)

**Integración con:**
- **CCO (Centro de Control Operacional):** Ubicado en La Lizama PK 4+300 (RN 4513) - Transmisión en tiempo real
- **SCADA:** Supervisión y control operacional
- **Sistema ITS:** Integración con CCTV, ETD/RADAR, PMV
- **Telecomunicaciones:** Fibra óptica como backbone (283 km anillo redundante)
- **Policía de Carreteras:** Reporte inmediato de vehículos con sobrepeso
- **Sistema de Peajes:** Pesaje dinámico en todos los carriles de cobro

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT1, Adenda 4, páginas 46-47:**
- ✅ **1 estación de pesaje** en PR4+0100 RN 4513
- ✅ **Funcionamiento bidireccional** (ambos sentidos del flujo vehicular)
- ✅ **Adecuar, operar y mantener** la estación existente
- ✅ **Especificaciones arquitectónicas** y operativas mínimas

**Según AT2, Sección 3.3.9 - Sistemas de Pesaje:**

El Concesionario deberá:

1. **Instalar sistemas combinados dinámicos y estáticos:**
   - Básculas dinámicas para detectar y clasificar previamente vehículos sobrecargados
   - Básculas estáticas para verificar el peso por eje y el total de vehículos con sobrepeso

2. **Garantizar capacidad y precisión:**
   - Básculas estáticas: Capacidad ≥100 toneladas, error máximo ≤1%
   - Básculas dinámicas: Error máximo ≤5%
   - Básculas móviles: Error máximo ≤5%

3. **Proporcionar infraestructura completa:**
   - Área de administración
   - Zona de estacionamiento para infractores
   - Área de servicio de la operación
   - Sistema automático de impresión del peso

4. **Garantizar disponibilidad:** **24 horas diarias, 365 días al año**

5. **Calibrar anualmente:** Todas las básculas fijas y móviles

6. **Reportar a Policía:** Vehículos que superen el peso máximo autorizado

7. **Integrar con CCO:** Acceso en línea a datos de puestos móviles y fijos

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.9:**
- Control bidireccional
- Infraestructura completa (área administración, estacionamiento infractores, área servicio)
- Personal capacitado (trabajadores uniformados + equipo permanente de vigilancia)
- Registro automático (equipos de control automatizados)
- Integración con CCO (acceso en línea a datos)
- Disponibilidad para Policía (registros disponibles para Policía de Carreteras y ANI)
- Señalización especial (área de básculas con señalización de ordenamiento y seguridad)
- Calibración anual (todas las básculas calibradas máximo cada año)

**AT2, Sección 3.3.4.2:**
- **Pesaje dinámico en peajes:** Instalar en todos los carriles de cobro de la Estación de peaje

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad | Ubicación | Función |
|:-----------|:---------|:----------|:--------|
| **Plataformas WIM (Dinámicas)** | **2 unidades** | PR4+0100 RN 4513 (1 por sentido) | Pesaje sin detención, pre-selección de vehículos sobrecargados |
| **Plataformas Estáticas** | **2 unidades** | PR4+0100 RN 4513 (1 por sentido) | Pesaje de precisión, verificación y sanción |
| **TOTAL PLATAFORMAS** | **4 unidades** | PR4+0100 RN 4513 | 1 estación bidireccional |
| **Sistema de Control** | 1 unidad | Gabinete en estación | Gestión de datos y comunicación |
| **Sistema de Impresión** | 1 unidad | Área de administración | Comprobantes automáticos de peso |
| **Conexión a red FO** | 1 punto | Integración con red de telecomunicaciones | Comunicación con CCO |
| **Área de Administración** | 1 unidad | Estación de pesaje | Oficinas, sanitarios, control |
| **Zona de Estacionamiento** | 1 unidad | Estación de pesaje | Estacionamiento para infractores |

**Distribución por sentido:**
- **Sentido 1:** 1 Plataforma WIM + 1 Plataforma Estática
- **Sentido 2:** 1 Plataforma WIM + 1 Plataforma Estática
- **Total:** 2 WIM + 2 Estáticas = 4 plataformas

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO (Centro de Control)** | Red IP / Fibra Óptica | Ethernet / API REST | Datos de peso en tiempo real, alarmas, estado operativo |
| **Sistema de Telecomunicaciones** | Red FO / L2/L3 | Ethernet | Tráfico de datos y control |
| **SCADA** | Red IP | SNMP / Modbus TCP | Supervisión y control operacional |
| **Sistema ITS (CCTV, ETD/RADAR)** | Lógica (vía CCO) | API REST | Correlación de eventos (peso + velocidad + video) |
| **Policía de Carreteras** | Lógica (vía CCO) | API REST / Base de Datos | Reporte inmediato de vehículos con sobrepeso |
| **Sistema de Peajes** | Lógica (vía CCO) | API REST | Datos de pesaje dinámico en carriles de cobro |
| **Sistema de Energía Eléctrica** | Alimentación | AC 120V/60Hz | Suministro de energía |
| **Sistema de Impresión** | Física / Red IP | Ethernet / USB | Comprobantes automáticos de peso |

**Flujo de comunicación:**
```
WIM/Estática → Controlador → Switches → Red FO → Switch Core CCO → Servidores SCADA → Reportes
         (Datos peso)  (Procesamiento)  (Ethernet)  (Fibra)      (Routing)    (Procesamiento)  (Visualización/Policía)
```

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial)

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| **Plataformas WIM (Dinámicas optimizadas)** | 2 | $80,000 | $160,000 |
| **Plataformas Estáticas (optimizadas)** | 2 | $60,000 | $120,000 |
| **Sistema de Control y Comunicaciones** | 1 | $35,000 | $35,000 |
| **Infraestructura Civil (optimizada)** | 1 estación | $100,000 | $100,000 |
| **Área de Administración (modular)** | 1 | $50,000 | $50,000 |
| **Sistema de Impresión** | 1 | $6,000 | $6,000 |
| **Instalación y comisionamiento** | 1 estación | $80,000 | $80,000 |
| **TOTAL CAPEX** | **1 estación (4 plataformas)** | **$523,539/estación** | **$523,539** |

**Nota sobre actualización (15/01/2026):** El CAPEX fue ajustado a **$523,539 USD** alineado con la Ingeniería de Detalle (T05) y ofertas formales (PAT Traffic + Fairbanks).

### 6.2 OPEX (Operación y Mantenimiento)

| Ítem | Cantidad | Costo Unitario Anual (USD) | Costo Total Anual (USD) |
|:-----|:---------|:---------------------------|:------------------------|
| **Mantenimiento preventivo** | 4 plataformas | $5,000 | $20,000 |
| **Mantenimiento correctivo** | 4 plataformas | $2,000 | $8,000 |
| **Calibración anual** | 4 plataformas | $3,000 | $12,000 |
| **Personal operativo** | 1 estación | $50,000 | $50,000 |
| **TOTAL OPEX ANUAL** | **1 estación** | **$90,000/estación/año** | **$90,000** |

**OPEX 20 años:** $90,000 × 20 = **$1,800,000 USD**

### 6.3 Costo Total del Ciclo de Vida (20 años)

**CAPEX + OPEX:** $523,539 + $1,800,000 = **$2,323,539 USD**

---

## 7. DISTRIBUCIÓN GEOGRÁFICA

### 7.1 Ubicación de la Estación

| Parámetro | Valor |
|:----------|:------|
| **Ubicación** | **PR4+0100 RN 4513** |
| **Referencia** | Cerca del CCO La Lizama PK 4+300 y Peaje Aguas Negras |
| **Configuración** | Bidireccional (ambos sentidos desde 1 punto de control) |
| **Tipo de intervención** | Adecuar estación existente + modernizar equipos |

### 7.2 Distribución de Plataformas

| Sentido | Plataforma WIM | Plataforma Estática | Función |
|:--------|:---------------|:-------------------|:--------|
| **Sentido 1** | 1 unidad | 1 unidad | Control de peso sentido 1 |
| **Sentido 2** | 1 unidad | 1 unidad | Control de peso sentido 2 |
| **TOTAL** | **2 unidades** | **2 unidades** | **4 plataformas (1 estación bidireccional)** |

---

## 8. ESPECIFICACIONES TÉCNICAS BÁSICAS

### 8.1 Plataformas WIM (Dinámicas)

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Tecnología** | Sensores piezoeléctricos o células de carga |
| **Precisión** | Error máximo ≤5% (PBVT, grupos ejes, ejes simples) |
| **Velocidad operación** | Hasta 80 km/h (sin detención) |
| **Capacidad** | ≥100 toneladas |
| **Clasificación** | Detección de ejes, grupos de ejes, PBVT |
| **Comunicación** | Ethernet 10/100 Mbps, TCP/IP, API REST |
| **Protección** | IP65, IK08 |
| **Certificación** | ASTM E1318 Type III, COST323 A(5), NTC 5206 |

### 8.2 Plataformas Estáticas

| Parámetro | Especificación Mínima |
|:----------|:---------------------|
| **Tecnología** | Báscula de precisión (células de carga) |
| **Precisión** | Error máximo ≤1% |
| **Capacidad** | ≥100 toneladas |
| **Medición** | Peso por eje, peso total (PBVT) |
| **Sistema de impresión** | Automático, identificando vehículo y compañía |
| **Comunicación** | Ethernet 10/100 Mbps, TCP/IP, API REST |
| **Protección** | IP65, IK08 |
| **Certificación** | OIML R134, NTC 5371, INVÍAS |

---

## 9. PRÓXIMOS PASOS

- [x] ✅ Ficha de Sistema completada (T01)
- [x] ✅ Análisis de Requisitos completado (T02)
- [x] ✅ Arquitectura Conceptual completada (T03)
- [x] ✅ Especificaciones Técnicas (T04) - Ya existe, validar coherencia
- [x] ✅ Ingeniería de Detalle (T05) - Ya existe, validar coherencia
- [x] ✅ Validación Contractual - Ya existe (`24_VALIDACION_CONTRACTUAL_PESAJE_v1.0.md`)

---

## 10. REFERENCIAS

### 10.1 Documentos del Proyecto

- **T02:** `24F_T02_Analisis_Requisitos_WIM_MVP_v1.0.md` (Pendiente)
- **T03:** `24F_T03_Arquitectura_Conceptual_WIM_MVP_v1.0.md` (Pendiente)
- **T04:** `IV. Ingenieria Basica/05_T04_Especificaciones_Tecnicas_Pesaje_WIM_v1.0.md`
- **T05:** `V. Ingenieria de Detalle/10_T05_Ingenieria_Detalle_WIM_v1.0.md`
- **T01 ITS General:** `24_T01_Ficha_Sistema_ITS_v1.0.md` (Referencia para contexto)
- **Validación:** `VII. Documentos Transversales/24_VALIDACION_CONTRACTUAL_PESAJE_v1.0.md`

### 10.2 Documentos Contractuales

- **AT1:** Apéndice Técnico 1, Adenda 4, páginas 46-47 "Estaciones de Pesaje"
- **AT2:** Apéndice Técnico 2, Sección 3.3.9 "Sistemas de Pesaje"
- **AT4:** Apéndice Técnico 4 (Indicadores de desempeño)

### 10.3 Normativa Aplicable

- **Resolución 4959/2006:** Normas sobre pesos y dimensiones vehiculares
- **NTC 5371:** Norma Técnica Colombiana para básculas
- **NTC 5206:** Norma Técnica Colombiana para sistemas WIM
- **ASTM E1318:** Estándar para sistemas WIM
- **COST323:** Estándar europeo para sistemas WIM
- **OIML R134:** Estándar internacional de básculas

---

**Versión:** 1.0 MVP  
**Estado:** ✅ Ficha de Sistema Completada  
**Fecha:** 31/10/2025  
**Responsable:** Administrador Contractual EPC  
**Próximo paso:** Validación de arquitectura con stakeholders  
**T02 disponible:** `24F_T02_Analisis_Requisitos_WIM_MVP_v1.0.md`  
**T03 disponible:** `24F_T03_Arquitectura_Conceptual_WIM_MVP_v1.0.md`

