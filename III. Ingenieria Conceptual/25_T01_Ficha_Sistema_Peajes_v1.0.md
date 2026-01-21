# T01: FICHA DE SISTEMA - SISTEMAS DE PEAJE Y RECAUDO
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 16/10/2025  
**Sistema:** Sistemas de Peaje y Recaudo  
**Responsable:** Ingeniero de Sistemas de Peaje  
**Versión:** 1.1  

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|-------|-------|
| **Nombre del sistema** | Sistemas de Peaje y Recaudo Electrónico Vehicular |
| **Categoría** | Sistemas de Recaudo y Control Financiero |
| **Prioridad** | 🔴 Crítica |
| **Fase contractual** | Construcción y O&M |
| **AT relacionados** | AT2 (Secciones 3.3.4), AT4 (Indicadores), Parte Especial (Sección 3.6) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El Sistema de Peajes tiene como objetivo **controlar el acceso, cobrar las tarifas y recaudar** los ingresos de la concesión, proporcionando:

- **Recaudo de tarifas** según Resolución de Peajes del Ministerio de Transporte
- **Control de tráfico** y clasificación vehicular
- **Interoperabilidad** con otros sistemas de peaje ANI/INVIAS
- **Registro y auditoría** de transacciones
- **Información financiera** en tiempo real al CCO y ANI
- **Servicio eficiente** a usuarios (tiempos de espera mínimos)

### 2.2 Alcance del Sistema

**Sistemas incluidos:**
- ✅ Recaudo Manual (casetas con operador)
- ✅ Recaudo Semiautomático (tarjetas débito/crédito/prepago)
- ✅ Recaudo Automático (TAG/Telepeaje RFID - IP/REV)
- ✅ Sistemas de Clasificación Vehicular
- ✅ Control de Evasión (cámaras de matrícula)
- ✅ Básculas de Pesaje Estático
- ✅ Software de Gestión de Recaudo
- ✅ Sistemas de Seguridad (CCTV, control de acceso)
- ✅ Equipos de Comunicación con CCO
- ✅ Sistema de Información a Usuarios

**Cobertura geográfica:**
- Longitud Principal: 259.6 km (RN 4510 + RN 4511)
- Longitud Total: ~293 km (incluyendo RN 4513 conexión CCO)
- Rutas: RN 4510 (Honda-Río Ermitaño), RN 4511 (Río Ermitaño-La Lizama), RN 4513 (Conexión CCO)
- Estaciones de Peaje: **2 estaciones existentes** (Zambito + Aguas Negras)
- Ubicaciones:
  - **Peaje Zambito:** PK 9+200 RN 4511 (Bidireccional, 7 carriles)
  - **Peaje Aguas Negras:** PK 80+000 RN 4511 (Bidireccional, 7 carriles)
- Departamentos: Cundinamarca, Boyacá, Santander
- Instalación en: Estaciones de Peaje + Áreas de Servicio + CCO La Lizama PK 4+300

**Integración con:**
- **CCO:** Transmisión en tiempo real de recaudos y tráfico al CCO La Lizama PK 4+300
- **ITS:** Correlación tráfico vs. recaudo
- **ANI:** Entrega de información financiera y operacional
- **Sistema Nacional de Peajes:** Interoperabilidad TAG
- **Telecomunicaciones:** Fibra óptica para comunicación de datos

---

## 3. REQUISITOS CONTRACTUALES

### 3.1 Obligaciones del Contrato

**Según AT2, Sección 3.3.4 - Operación de las Estaciones de Peaje:**

El Concesionario deberá:

1. **Operar 3 modalidades de cobro:**
   - Manual: Operador en caseta
   - Semiautomático: Mínimo 1 carril por sentido (tarjetas débito/crédito/prepago)
   - Automático (TAG): Mínimo 1 carril en todas las estaciones antes del Acta de Terminación de UF

2. **Garantizar interoperabilidad** con sistemas ANI/INVIAS:
   - Cumplir Resoluciones 4303/2015, 5708/2016, 546/2018, 883/2019, 509/2020
   - Tecnología TAG RFID compatible con sistema nacional

3. **Instalar mínimo 3 sistemas de control** en cada peaje:
   - Cámaras
   - Sensores ópticos
   - Sensores inductivos
   - Peanas de detección de ejes

4. **Equipos para carriles IP/REV (TAG):**
    - Unidad de lectura TAG RFID
    - Reconocimiento de número de placa (LPR)
    - Cámara para grabación de ejes
    - Cámaras de seguridad
    - Detección automática de categoría vehicular (WIM-DAC)
    - Barrera/talanquera automática de alta velocidad (0.7s)
    - Semáforos (Paso + Techo)
    - Paneles de señalización variable (Banner 640x320mm)
   - Sistema de gestión de carril IP/REV
   - Red de transmisión (Nivel 1→2→3)
   - Instalaciones eléctricas + respaldo
   - Equipo meteorológico

5. **Almacenamiento y transmisión de datos:**
   - Tiempo real al CCO y ANI
   - Almacenamiento mínimo 3 meses
   - Envío en máximo 3 días si hay interrupción

6. **Generación de reportes:**
   - Reporte horario por carril/sentido/estación
   - Reporte diario por carril/sentido/estación
   - Reporte de discrepancias
   - Reporte de reversibilidad (contraflujo)
   - Reporte individual de pasos

7. **Personal y operación:**
   - Personal uniformado e identificado
   - Entrenado en atención al usuario
   - Moneda fraccionaria disponible siempre
   - Reglamento interno de trabajo

### 3.2 Requisitos de Apéndices Técnicos

**AT2, Sección 3.3.4:**
- Disponibilidad de equipos: No especificada (se asume ≥99% por analogía con ITS)
- Velocidad de circulación: Según estudio de Áreas de Peaje
- Comparación tráfico vs. recaudo: Diaria
- Auditoría: Interventoría puede verificar confiabilidad sin previo aviso
- Sistema de identificación de violaciones (Resolución 0718/2018)

### 3.3 Normativa Aplicable

| Norma | Descripción | Alcance |
|:------|:------------|:--------|
| **Resolución 4303/2015** | Especificaciones TAG/Telepeaje | Sistema IP/REV (Interoperabilidad) |
| **Resolución 5708/2016** | Especificaciones técnicas peajes | Equipamiento de peajes |
| **Resolución 546/2018** | Especificaciones ITS y Peajes | Componentes de peaje, modificada por 3254/2018 |
| **Resolución 883/2019** | Actualización sistema peajes | Interoperabilidad TAG |
| **Resolución 509/2020** | Última actualización peajes | Especificaciones vigentes |
| **Resolución 0718/2018** | Detección de infracciones | Sistema anti-evasión |
| **Ley 787/2002** | Vehículos exentos de pago | Registro de exenciones |
| **Parte General Sección 4.11** | Adopción de tecnología nacional | Integración con estándar ANI/INVIAS |

---

## 4. COMPONENTES PRINCIPALES

| Componente | Cantidad Actualizada | Ubicación | Función |
|:-----------|:---------------------|:----------|:--------|
| **Estaciones de Peaje** | **2 estaciones** | Zambito + Aguas Negras | Recaudo de tarifas |
| **Total de Carriles** | **14 carriles** | 7 por estación | Capacidad total recaudo |
| **Carriles Automáticos (TAG)** | 4 carriles | 2 por estación | Telepeaje 100% (High speed) |
| **Carriles Mixtos** | 4 carriles | 2 por estación | Manual + Telepeaje |
| **Carriles Reversibles** | 2 carriles | 1 por estación | Contraflujo |
| **Lectores TAG RFID** | 14 unidades | Todos los carriles | Lectura de tags vehiculares |
| **Cámaras Reconocimiento Placas** | 28 cámaras | Frontal + Trasera | OCR de matrículas |
| **Cámaras de Ejes** | 14 cámaras | Todos los carriles | Grabación de ejes (clasificación) |
| **Sensores WIM-DAC** | 14 unidades | Todos los carriles | Clasificación automática (AT2 3.3.4.2) |
| **Barreras Automáticas 0.7s** | 14 barreras | Todos los carriles | Control de paso alta velocidad |
| **PMV Banners (640x320)** | 14 paneles | Todos los carriles | Información tarifas/saldo |
| **Semáforos (Doble)** | 14 unidades | Todos los carriles | Control de flujo |
| **Consolas de Operador** | 10-14 unidades | Casetas | Interface del operador |
| **Servidores Locales** | 2 servidores | Cada estación | Gestión local del peaje |
| **UPS** | 2 sistemas | Cada estación | Energía de respaldo |

**ACTUALIZADO con AT1:** 2 estaciones existentes (Zambito + Aguas Negras). **NO se construirán estaciones nuevas.**

---

## 5. INTERFACES CON OTROS SISTEMAS

| Sistema Relacionado | Tipo de Interface | Protocolo/Medio | Datos Intercambiados |
|:--------------------|:------------------|:----------------|:---------------------|
| **CCO** | Red IP | Ethernet/Fibra Óptica | Recaudos en tiempo real, tráfico, alarmas, video |
| **ITS** | Lógica | Base de Datos | Aforo vehicular, correlación tráfico/recaudo |
| **Telecomunicaciones** | Física | Fibra Óptica | Backbone de comunicaciones (3 niveles) |
| **ANI (Sistema Central)** | Red IP | Web/API HTTPS | Información financiera y operacional |
| **Sistema Nacional TAG** | Lógica | Protocolo Interoperabilidad | Validación de tags, clearing entre concesiones |
| **Pesaje (WIM)** | Lógica | Base de Datos | Datos de peso de vehículos |
| **Energía** | Física | Red Eléctrica + UPS | Alimentación de equipos (24/7) |
| **CCTV** | Red IP | Ethernet | Video de áreas de peaje |

---

## 6. ESTIMACIÓN PRELIMINAR

### 6.1 CAPEX (Inversión Inicial) - **ACTUALIZADO CON AT1**

| Ítem | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----|:---------|:---------------------|:------------------|
| **Reubicación/Adecuación Estaciones** | 2 estaciones | $250,000 | $500,000 |
| Lectores TAG RFID | 14 | $8,000 | $112,000 |
| Cámaras ANPR Frontal + Trasero | 28 | $3,000 | $84,000 |
| Cámaras de Ejes | 14 | $4,000 | $56,000 |
| Sensores WIM-DAC (Clasificación) | 14 | $15,000 | $210,000 |
| Barreras Alta Velocidad (0.7s) | 14 | $15,000 | $210,000 |
| Displays de Carril (640x320mm) | 14 | $2,500 | $35,000 |
| PMV Informativos de Aproximación | 4 | $12,000 | $48,000 |
| Semáforos (Paso + Marquesina) | 28 | $1,250 | $35,000 |
| Consolas de Operador | 14 | $5,000 | $70,000 |
| Servidores y Software Gestión | 1 sistema | $400,000 | $400,000 |
| Sistema Interoperabilidad + Integración | 1 sistema | $200,000 | $200,000 |
| Otros e Instalación | global | - | $116,577 |
| **TOTAL CAPEX (Equipos)** | | | **$2,086,577** |

**Obra Civil (Estimada):** $1,913,423 USD
**TOTAL CAPEX CONSOLIDADO PEAJE:** **$4,000,000 USD**

**Conversión a COP (TRM: 4,000):** ~COP 16,717,600,000 (~16.7 mil millones)

#### 🔴 **Nota de Corrección v1.1 (21/10/2025):**

**Duplicación eliminada:**
- ❌ Básculas de pesaje estático en peajes: $160,000 (DUPLICADAS)
- ✅ Estas básculas ya están en Sistema de Pesaje WIM
- AT2 Sección 3.3.4.2: "sistema de pesaje dinámico en carriles" (las dinámicas están en Pesaje $675K)
- Las básculas estáticas están en Estación de Pesaje PR4+0100 (no en peajes)
- **Ahorro: -$160,000 USD**

**Integración con áreas:**
- ✅ Accesos, urbanización, seguridad del peaje sirven al complejo peaje+área
- ✅ Subestación 200kVA y generador 150kW (presupuestados en Energía) alimentan ambos
- ✅ No hay duplicación de costos

### 6.2 OPEX (Operación y Mantenimiento - Anual) - **ACTUALIZADO CON AT1**

| Ítem | Costo Anual (USD) |
|:-----|:------------------|
| Personal de recaudo (2 estaciones, 3 turnos) | $360,000 |
| Supervisores de peaje | $60,000 |
| Mantenimiento preventivo (trimestral) | $40,000 |
| Mantenimiento correctivo | $30,000 |
| Repuestos y consumibles | $35,000 |
| Moneda fraccionaria | $25,000 |
| Transporte de valores (seguridad) | $45,000 |
| Licencias de software | $50,000 |
| Comisiones de tarjetas (débito/crédito) | $35,000 |
| Comisiones interoperabilidad TAG | $30,000 |
| Energía y servicios | $25,000 |
| Uniformes y elementos de protección | $10,000 |
| **TOTAL OPEX/año** | **$745,000** |

**Conversión a COP (TRM: 4,000):** ~$2,980 millones COP/año

**REDUCCIÓN vs. Estimación Preliminar:** -$1,645,000 USD/año (-68.8%)

---

## 7. RIESGOS IDENTIFICADOS

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Evasión de peaje** | Media | Alto | CCTV, OCR de placas, sistema anti-evasión (Res. 0718/2018) |
| **Fallas en sistema de recaudo** | Media | Crítico | Redundancia de servidores, UPS, generadores, repuestos en stock |
| **Problemas de interoperabilidad TAG** | Media | Alto | Validación temprana con ANI/INVIAS, cumplimiento estricto de resoluciones |
| **Congestión en horas pico** | Alta | Medio | Suficientes carriles (manual, semi, automático), análisis de demanda |
| **Robo o hurto de dinero** | Baja | Alto | Empresa de valores, CCTV, protocolos de seguridad, pólizas |
| **Falta de interoperabilidad con bancos** | Baja | Medio | Acuerdos con redes de tarjetas (Redeban, Credibanco), pruebas previas |
| **Discrepancias tráfico vs. recaudo** | Media | Alto | Múltiples sistemas de control (3 mínimo), auditoría diaria |
| **Cambios regulatorios** | Media | Medio | Flexibilidad en tecnología, cumplimiento proactivo de resoluciones |

---

## 8. INDICADORES DE DESEMPEÑO (KPIs)

**Según AT2 y AT4:**

| Indicador ID | Descripción | Valor Mínimo Aceptación | Frecuencia Medición |
|:-------------|:------------|:------------------------|:--------------------|
| **DISP-PEAJE-01** | Disponibilidad de sistema de recaudo | ≥ 99% | Mensual |
| **TIEMPO-ESPERA-01** | Tiempo promedio de espera en peaje | ≤ 3 minutos (hora pico) | Diario |
| **PREC-RECAUDO-01** | Precisión de recaudo vs. tráfico | ≥ 99.5% | Diario |
| **INTEROP-TAG-01** | Tasa de éxito de tags interoperables | ≥ 98% | Mensual |
| **INFO-ANI-02** | Entrega de información financiera a ANI | 100% en tiempo real + 3 días máx. | Continuo |
| **EVASION-01** | Tasa de evasión detectada y sancionada | ≤ 0.5% | Mensual |

**Penalizaciones (AT4):**
- No disponibilidad de sistema de recaudo: Deducciones críticas en Retribución
- Evasión no controlada: Sanciones

---

## 9. PRÓXIMOS PASOS

- [ ] Desarrollar análisis de requisitos detallado (Template T02)
- [ ] Extraer cantidades exactas de Estaciones de Peaje de AT1 y Parte Especial (Sección 3.6)
- [ ] Identificar ubicaciones (PKs) de cada Estación de Peaje
- [ ] Definir número de carriles por estación (manual, semi, automático)
- [ ] Definir arquitectura conceptual (Template T03)
  - Topología de red de peajes (3 niveles)
  - Arquitectura de servidores (local + central)
  - Sistema de interoperabilidad TAG
- [ ] Elaborar especificaciones técnicas por componente (Template T04)
  - Lectores TAG RFID
  - Cámaras OCR
  - Software de gestión
  - Básculas
- [ ] Estimar costos detallados con cotizaciones reales (Template T05)
- [ ] Preseleccionar proveedores:
  - TAG: Kapsch, Q-Free, TransCore
  - Software: Conduent, Cubic, SICE
  - OCR: Siemens, Jenoptik, TagMaster
- [ ] Validar tecnología TAG con ANI (interoperabilidad nacional)
- [ ] Desarrollar pruebas piloto de interoperabilidad

---

## 10. OBSERVACIONES Y SUPUESTOS

### 10.1 Supuestos Técnicos - **ACTUALIZADO CON AT1**

- **DATO REAL 1:** **2 Estaciones de Peaje** (Zambito + Aguas Negras) - AT1 + Parte Especial 3.6
- **DATO REAL 2:** Promedio de 5-7 carriles por estación (confirmado)
- **DATO REAL 3:** Peaje Aguas Negras requiere **reubicación** de PK 83+900 a PK 80+000
- **Supuesto 4:** Tecnología TAG RFID según estándar nacional ANI/INVIAS
- **DATO REAL 5:** Tarifas vigentes (2021):
  - Zambito: Cat I $11,200, Cat V $39,200
  - Aguas Negras: Cat I $11,200, Cat V $46,100
- **Supuesto 6:** Tráfico promedio: 5,000-10,000 vehículos/día por estación
- **Supuesto 7:** Sistema de recaudo 100% electrónico (incluso manual usa consola digital)
- **Supuesto 8:** Estaciones entregadas por INVIAS (Contrato 643/2019 con Consorcio RQS)

### 10.2 Dependencias

- **Dependencia 1:** ✅ **RESUELTO:** 2 Estaciones de Peaje confirmadas (Zambito + Aguas Negras)
- **Dependencia 2:** Depende de **Telecomunicaciones** (fibra óptica) para transmisión de datos
- **Dependencia 3:** Depende de **CCO** para centralización de recaudo y control
- **Dependencia 4:** Depende de **Energía** (UPS/Generadores) para operación 24/7
- **Dependencia 5:** Depende de **ANI** para homologación de tecnología TAG
- **Dependencia 6:** Requiere **acuerdos con bancos** para tarjetas débito/crédito
- **Dependencia 7:** Requiere **transición con INVIAS** (Contrato 643/2019 con Consorcio RQS)
- **Dependencia 8:** Requiere **proyecto de reubicación** de Peaje Aguas Negras

### 10.3 Restricciones

- **Restricción 1:** Interoperabilidad TAG obligatoria con sistema nacional (Resoluciones MT)
- **Restricción 2:** Mínimo 1 carril semiautomático por sentido (obligatorio)
- **Restricción 3:** Mínimo 1 carril automático (TAG) en todas las estaciones
- **Restricción 4:** 3 sistemas de control mínimo por estación (cámaras, sensores ópticos, inductivos)
- **Restricción 5:** Almacenamiento mínimo 3 meses de transacciones
- **Restricción 6:** Transmisión en tiempo real obligatoria (máx. 3 días si hay falla)
- **Restricción 7:** Cumplimiento de resoluciones MT (5 resoluciones vigentes)
- **Restricción 8:** Sistema anti-evasión obligatorio (Resolución 0718/2018)

---

## 11. DEFINICIONES PENDIENTES (A resolver en Estudios de Detalle)

| Ítem | Descripción | Responsable | Plazo |
|:-----|:------------|:------------|:------|
| **Número de Estaciones** | ✅ **RESUELTO:** 2 estaciones (Zambito + Aguas Negras) | - | Completado |
| **Ubicaciones PKs** | ✅ **RESUELTO:** Zambito PK 9+200, Aguas Negras PK 80+000 | - | Completado |
| **Proyecto Reubicación** | Diseño y construcción de nueva ubicación Aguas Negras | Ing. Civil | Fase Construcción |
| **Carriles por estación** | Distribución manual/semi/automático | Ing. Tráfico | Estudio de demanda |
| **Tecnología TAG** | Proveedor y modelo específico | Ing. Peajes + ANI | Post-homologación |
| **Software de gestión** | Selección de plataforma | Ing. Software | Post-cotizaciones |
| **Tráfico proyectado** | TPDA por estación | Ing. Tráfico | Estudios de tráfico |
| **Transición INVIAS** | Protocolo de entrega desde Consorcio RQS | Gerente Proyecto + ANI | Pre-entrega infraestructura |

---

## 12. REFERENCIAS CRUZADAS

### Documentos Relacionados:
- [AT1 - Alcance del Proyecto](../II.%20Apendices%20Tecnicos/AT1_Alcance_Proyecto_v1.0.md) - Ubicaciones de peajes
- [AT2 - Operación y Mantenimiento](../II.%20Apendices%20Tecnicos/AT2_Operacion_Mantenimiento_v1.0.md) - Sección 3.3.4
- [AT4 - Indicadores](../II.%20Apendices%20Tecnicos/AT4_Indicadores_v1.0.md) - KPIs de peajes
- [Parte Especial](../I.%20Contrato%20General/2_Parte_Especial_v1.0.md) - Sección 3.6 (Estaciones de Peaje)
- [Listado Maestro de Sistemas](23_ListadoMaestro_Sistemas_Vehiculares_v1.0.md) - Categoría 2 (Peajes)

### Próximos Documentos a Crear:
- `35_T02_Analisis_Requisitos_Peajes_v1.0.md` - Análisis detallado
- `36_T03_Arquitectura_Peajes_v1.0.md` - Arquitectura 3 niveles
- `37_T04_Especificacion_Lector_TAG_v1.0.md` - Especificación TAG
- `38_T04_Especificacion_Software_Recaudo_v1.0.md` - Software
- `39_T05_Estimacion_Costos_Peajes_v1.0.md` - Estimación detallada

---

## 13. CHANGELOG

| Versión | Fecha | Autor | Descripción |
|:-------:|:------|:------|:------------|
| **v1.0** | 16/10/2025 | Administrador Contractual EPC | Versión inicial - Ficha de Sistema Peajes creada con Template T01 |
| **v1.1** | 16/10/2025 | Administrador Contractual EPC | ✅ **ACTUALIZADO con AT1:** 2 estaciones (no 8-12). CAPEX -64.5%, OPEX -68.8% |
| **v1.2** | 22/10/2025 | Administrador Contractual EPC | ✅ **Revisión con información oficial:** Longitudes 259.6 km + 33.4 km, CCO La Lizama PK 4+300 |

---

**Versión:** 1.2  
**Estado:** ✅ Ficha Actualizada con Información Oficial  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Sistemas de Peaje  
**Última actualización:** Revisión con información oficial del proyecto  
**Próxima actualización:** Tras estudios de tráfico (TPDA por estación)

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Longitudes validadas: 259.6 km principal + 33.4 km adicionales
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Rutas específicas: RN 4510, RN 4511, RN 4513
- Integración CCO actualizada con ubicación oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - T01 Sistema Peajes**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

