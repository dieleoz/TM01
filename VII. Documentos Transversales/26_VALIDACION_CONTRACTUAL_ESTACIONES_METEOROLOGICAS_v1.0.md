# VALIDACIÓN CONTRACTUAL - ESTACIONES METEOROLÓGICAS
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Documento:** Validación Contractual (Metodología Genérica Aplicada)  
**Responsable:** Ingeniero de Telecomunicaciones  
**Versión:** 2.0 (RECONCILIACIÓN AUDIT .42)  

---

## 1. RESUMEN EJECUTIVO

### 1.1 Objetivo
Aplicar la **Metodología Genérica de Validación Contractual** al sistema de Estaciones Meteorológicas del proyecto APP Puerto Salgar - Barrancabermeja, garantizando cumplimiento contractual exacto y documentación sólida para Interventoría.

### 1.2 Conclusión Principal
- **3 estaciones meteorológicas de grado industrial** (2 en peajes + 1 en CCO)
- **Sensor de Visibilidad (Neblina) mandatorio** para seguridad vial (MOR en metros)
- **Integración nativa Modbus TCP** al SCADA/CCO
- **RECHAZO TÉCNICO:** El sensor 6450 (Radiación) NO sustituye la medición de neblina.
- **Costo reconciliado:** $75,000 USD ($25k/unidad instalada)

**Ubicación CCO:** La Lizama PK 4+300 (RN 4513) - Centro de control del corredor

---

## 2. ANÁLISIS CONTRACTUAL DETALLADO
### (Fase 1: Identificación de Obligación)

#### 2.1 Fuentes Contractuales Revisadas

**✅ Fuentes Primarias Revisadas:**
- [x] **Parte General del Contrato** - Sin obligaciones específicas
- [x] **Apéndice Técnico 1** - Sin menciones directas
- [x] **Apéndice Técnico 2** - **OBLIGACIÓN ENCONTRADA**
- [x] **Apéndice Técnico 3** - **REFERENCIA NORMATIVA**
- [x] **Apéndice Técnico 4** - Sin indicadores específicos

**✅ Fuentes Secundarias Revisadas:**
- [x] **Resolución 20213040035125 (IP/REV 2021)** (IP/REV) - **OBLIGACIÓN ENCONTRADA**
- [x] **NTC 5660** - Especificaciones técnicas
- [x] **Manual ITS INVÍAS** - Variables requeridas

**Sección 3.3.11.2 - Sistemas de Comunicación:**
> "La información que el Concesionario deberá suministrar o permitir su acceso a la ANI y a la Policía de Carreteras en tiempo real será, como mínimo, la siguiente: ... **Información sobre las condiciones meteorológicas en la(s) vía(s), por Unidad Funcional, así como en las estaciones de peaje y el Centro de Control de Operaciones**; esta información se reportará mínimo una vez por hora (24 reportes al día) y un consolidado diario."

**Sección 3.3.3.2.3 - Emisora de Radio:**
> "El Concesionario deberá difundir al menos 4 veces en una hora... la siguiente información de la vía por medio de uno o varios canales de emisora de radio: ... **Información confiable sobre situaciones meteorológicas**."

**Sección 4.2.2 - Informes Mensuales:**
> "El Informe Gerencial Mensual debe incluir... **información resumida de condiciones meteorológicas**."

#### 2.1.2 Apéndice Técnico 3 - Especificaciones Generales

**Sección 4.2 - Sistema Inteligente de Transporte (ITS):**
> "El Concesionario deberá cumplir con lo dispuesto en las especificaciones y/o normas técnicas que se listan a continuación: ... **Resolución 20213040035125 (IP/REV 2021)** 'por el cual se adecua la reglamentación del sistema de Interoperabilidad de Peajes con Recaudo Electrónico Vehicular (IP/REV)'... y la(s) resolución(es) vigente(s) que la sustituya(n), adicione(n), modifique(n) o derogue(n) durante la ejecución del Contrato."

#### 2.1.3 Resolución 20213040035125 (IP/REV 2021) - IP/REV

**Anexo Técnico - Especificaciones Funcionales y Técnicas:**
> "El Sistema ITS en las estaciones de peaje deberá disponer de **sensores y equipos de monitoreo ambiental y de tráfico**, que permitan la observación de condiciones climáticas y de operación, con el fin de informar a los usuarios y al Centro de Control de Operaciones."

---

## 3. INTERPRETACIÓN JURÍDICA-TÉCNICA

### 3.1 Análisis del Verbo Rector

| Concepto | Texto Contractual | Interpretación |
|:---------|:------------------|:---------------|
| **Verbo principal** | "suministrar" / "permitir acceso" | Obligación de **resultado** (información), no de **medio** (instalación) |
| **Objeto** | "información sobre condiciones meteorológicas" | Datos confiables y continuos |
| **Ubicaciones** | "por UF, peajes y CCO" | Cobertura geográfica, no instalación física |
| **Frecuencia** | "mínimo una vez por hora" | Periodicidad de reporte, no muestreo local |

### 3.2 Cadena de Obligación

```
AT2 3.3.11.2 → "Informar condiciones meteorológicas"
    ↓
AT3 4.2 → Cumplir Resolución 546/2018 (IP/REV)
    ↓
Res. 20213040035125 (IP/REV) → "Equipos de monitoreo ambiental en peajes"
    ↓
Interpretación EPC → "Informar" ≠ "Instalar"
```

---

## 4. VARIABLES METEOROLÓGICAS REQUERIDAS

### 4.1 Variables Contractuales (AT2 3.3.11.2)

El contrato exige **"información sobre condiciones meteorológicas"** pero NO especifica variables exactas.

### 4.2 Variables Técnicas (Normas Referenciadas)

**Según NTC 5660 y Manual ITS INVÍAS:**

| Variable | Unidad | Frecuencia | Cumplimiento |
|:---------|:-------|:-----------|:-------------|
| **Temperatura del aire** | °C | Cada 5 min | ✅ Obligatoria |
| **Humedad relativa** | % | Cada 5 min | ✅ Obligatoria |
| **Precipitación** | mm/h | Cada 5 min | ✅ Obligatoria |
| **Velocidad del viento** | m/s | Cada 5 min | ✅ Obligatoria |
| **Dirección del viento** | grados | Cada 5 min | ✅ Obligatoria |
| **Visibilidad (M.O.R)** | metros | Cada 5 min | 🔴 **MANDATORIA (Manual 2024)** |
| **Radiación Solar** | W/m² | Cada 5 min | ✅ Obligatoria (ETo) |

> [!IMPORTANT]
> El Manual de Señalización Vial 2024 (9.3.3.9) y la Resolución 20213040035125 (IP/REV) exigen medir "presencia de neblina" como variable habilitante. El sistema Davis base es insuficiente sin visibilímetro óptico.

### 4.3 Solución para Visibilidad

**Opción 1 - API Externa:**
- Integrar datos de IDEAM o proveedor comercial
- Costo: $0 USD (solo integración SCADA)

**Opción 2 - Sensor Dedicado:**
- SICK WL250-2P2431: ~$1,200,000 COP
- Lufft VS2k-UMB: ~$15,000,000 COP

**Recomendación:** API externa para cumplimiento mínimo contractual.

---

## 5. UBICACIONES OBLIGATORIAS

### 5.1 Análisis Contractual

**AT2 3.3.11.2 menciona:**
- "por Unidad Funcional"
- "en las estaciones de peaje" 
- "en el Centro de Control de Operaciones"

**Resolución 546/2018 (IP/REV) exige:**
- "equipos de monitoreo ambiental en las estaciones de peaje"

### 5.2 Interpretación EPC

| Ubicación | Obligación | Justificación |
|:----------|:-----------|:---------------|
| **Peajes IP/REV** | ✅ OBLIGATORIO | Resolución 546/2018 (IP/REV) - Hardware Mandatorio |
| **CCO La Lizama PK 4+300** | ✅ OBLIGATORIO | Especificación Técnica - Estación de Referencia |
| **Otras UF** | ✅ CUMPLIDO | Cobertura mediante integración de las 3 estaciones |

### 5.3 Solución Reconciliada (Audit .42)

**3 Estaciones Meteorológicas Industriales:**
- **Peaje 1:** Zambito (PK ~9.2) - Sensor Visibilidad incluido.
- **Peaje 2:** Aguas Negras (PK ~80) - Sensor Visibilidad incluido.
- **CCO:** La Lizama PK 4+300 (RN 4513) - Referencia Central.

**Integración CCO:**
- WeatherLink API → SCADA La Lizama PK 4+300
- Consolidación por UF
- Reportes automáticos

---

## 6. ARQUITECTURA TÉCNICA PROPUESTA

### 6.1 Componentes del Sistema

```
┌─────────────────┐    ┌─────────────────┐
│   Peaje PK 9.2  │    │   Peaje PK 80   │
│                 │    │                 │
│ Davis Pro2 +    │    │ Davis Pro2 +    │
│ WeatherLink API │    │ WeatherLink API │
└─────────┬───────┘    └─────────┬───────┘
          │                      │
          └──────────┬───────────┘
                     │
            ┌────────▼────────┐
            │   SCADA/CCO     │
            │                 │
            │ • Integración   │
            │ • Almacenamiento│
            │ • Reportes      │
            │ • WebService    │
            └─────────┬───────┘
                      │
            ┌─────────▼─────────┐
            │   Canales de      │
            │   Información     │
            │                   │
            │ • ANI (API)       │
            │ • Policía (API)   │
            │ • Emisora (PDF)   │
            │ • Web (HTML)      │
            └───────────────────┘
```

### 6.2 Flujo de Datos

1. **Captura:** Davis Pro2 mide variables meteorológicas cada 2.5 segundos
2. **Transmisión:** WeatherLink API envía datos a la nube
3. **Integración:** SCADA/CCO consume API REST cada 5 minutos
4. **Almacenamiento:** Base de datos histórica por UF y peaje
5. **Reporte:** Generación automática cada hora + consolidado diario
6. **Difusión:** WebService para ANI/Policía + PDF para emisora

---

## 7. CUMPLIMIENTO CONTRACTUAL

### 7.1 Obligaciones Cumplidas

| Obligación | Fuente | Cumplimiento |
|:-----------|:-------|:-------------|
| **Informar condiciones meteorológicas** | AT2 3.3.11.2 | ✅ Davis Pro2 + API |
| **Reporte horario (24/día)** | AT2 3.3.11.2 | ✅ Automatizado SCADA |
| **Consolidado diario** | AT2 3.3.11.2 | ✅ Generación automática |
| **Información por UF** | AT2 3.3.11.2 | ✅ Consolidación SCADA |
| **Monitoreo ambiental en peajes** | Res. 20213040035125 (IP/REV) | ✅ Davis Pro2 en cada peaje |
| **Difusión emisora (4/h)** | AT2 3.3.3.2.3 | ✅ PDF automático |
| **Informe mensual** | AT2 4.2.2 | ✅ Exportación SICC |

### 7.2 Canales de Información

**Para ANI y Policía de Carreteras:**
- WebService REST con autenticación
- Acceso en tiempo real (cada hora)
- Datos por UF y consolidados

**Para Usuarios (Emisora):**
- PDF automático cada 15 minutos
- Información confiable sobre situaciones meteorológicas
- Actualización ≤1 hora por evento

**Para Interventoría:**
- Acceso a plataforma tecnológica (AT2 3.1.7)
- Reportes mensuales integrados al SICC
- Auditoría de datos históricos

---

## 8. ANÁLISIS ECONÓMICO

### 8.1 Costos de Implementación

| Componente | Cantidad | Costo Unitario (USD) | Costo Total (USD) |
|:-----------|:---------|:---------------------|:-------------------|
| **Estación Industrial Compacta + Visibilidad** | 3 | $15,000 | $45,000 |
| **Torre 10m + Obra Civil** | 3 | $6,000 | $18,000 |
| **Integración SCADA & Comisionamiento** | 3 | $4,000 | $12,000 |
| **TOTAL CAPEX (RECONCILIADO)** | | | **$75,000 USD** |

### 8.2 Comparación con Alternativas

| Alternativa | Costo (COP) | Cumplimiento | Observaciones |
|:------------|:------------|:-------------|:--------------|
| **Davis Pro2 (propuesta)** | $13,000,000 | ✅ Total | Solución costo-efectiva |
| **Lufft VS20k completo** | $70,000,000 | ✅ Total | Sobrecosto innecesario |
| **Solo API externa** | $5,000,000 | ⚠️ Parcial | Sin datos locales |
| **Sistema híbrido** | $20,000,000 | ✅ Total | Davis + sensor visibilidad |

---

## 9. RIESGOS Y MITIGACIONES

### 9.1 Riesgos Identificados

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Falla de API WeatherLink** | Media | Alto | Redundancia con datalogger local |
| **Cobertura celular insuficiente** | Baja | Medio | Ubicación en peajes (infraestructura) |
| **Rechazo de Interventoría** | Baja | Alto | Documentación contractual sólida |
| **Falla de SCADA** | Media | Crítico | Redundancia y respaldo manual |

### 9.2 Plan de Contingencia

**Si Interventoría rechaza Davis Pro2:**
- Presentar análisis contractual detallado
- Proponer sensor Lufft VS2k como alternativa
- Documentar cumplimiento con Resolución 546/2018

**Si falla integración API:**
- Datalogger local con almacenamiento
- Transmisión manual cada hora
- Respaldo con datos externos (IDEAM)

---

## 10. RECOMENDACIONES FINALES

### 10.1 Solución Recomendada

**Implementar 2 estaciones Davis Vantage Pro2:**
- Una en cada peaje IP/REV
- Integración vía WeatherLink API al SCADA/CCO
- Cumplimiento total de obligaciones contractuales
- Costo optimizado: $13 millones COP

### 10.2 Próximos Pasos

1. **Validación técnica:** Confirmar especificaciones Davis Pro2 con Interventoría
2. **Integración SCADA:** Desarrollar módulo de consumo API
3. **Pruebas piloto:** Instalar una estación para validación
4. **Documentación:** Elaborar manual de operación y mantenimiento
5. **Capacitación:** Entrenar personal técnico en operación

### 10.3 Documentación para Interventoría

**Nota técnica de cumplimiento contractual:**
- Análisis literal de cláusulas relevantes
- Interpretación jurídica-técnica
- Especificaciones técnicas Davis Pro2
- Arquitectura de integración propuesta
- Plan de pruebas y validación

---

## 11. CONCLUSIONES

### 11.1 Cumplimiento Contractual

✅ **La obligación es instalar equipamiento industrial (Res. 20213040035125 (IP/REV))**
✅ **3 estaciones industriales cumplen totalmente la obligación**
✅ **Sensor de Visibilidad (Neblina) es MANDATORIO (Blindaje Técnico)**
✅ **Integración nativa Modbus TCP es técnicamente superior**
✅ **Costo reconciliado de $75k USD está plenamente justificado**

### 11.2 Justificación Técnica

La solución propuesta cumple:
- **AT2 3.3.11.2:** Información meteorológica por UF, peajes y CCO
- **AT2 3.3.3.2.3:** Difusión confiable por emisora
- **AT2 4.2.2:** Informes mensuales con meteorología
- **AT3 4.2:** Cumplimiento Resolución 546/2018 (IP/REV)
- **Res. 20213040035125 (IP/REV):** Monitoreo ambiental en peajes

### 11.3 Recomendación Final

**Proceder con la implementación de 3 estaciones meteorológicas** (2 en peajes + 1 en CCO La Lizama PK 4+300) como solución contractualmente válida, técnicamente robusta y económicamente eficiente para cumplir con todas las obligaciones meteorológicas del proyecto.

---

**Versión:** 1.2 ✅ **REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**  
**Estado:** ✅ Análisis Completado + Información Oficial Integrada  
**Fecha:** 22/10/2025  
**Responsable:** Ingeniero de Telecomunicaciones  
**Próxima actualización:** Tras validación con Interventoría

---

**✅ REVISADO CON INFORMACIÓN OFICIAL DEL PROYECTO**
- Cantidad confirmada: 3 estaciones meteorológicas
- CCO ubicado en La Lizama PK 4+300 (RN 4513)
- Peajes específicos: Zambito, Aguas Negras
- Integración SCADA actualizada con ubicación oficial
- Metodología PKD lineal aplicada

---

**Fin del documento - Validación Contractual Estaciones Meteorológicas**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

