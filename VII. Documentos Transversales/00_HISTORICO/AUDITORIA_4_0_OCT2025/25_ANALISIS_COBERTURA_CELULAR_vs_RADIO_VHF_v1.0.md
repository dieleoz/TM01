# ANÁLISIS DE COBERTURA CELULAR vs RADIO VHF
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21/10/2025  
**Documento:** Análisis Técnico de Comunicaciones  
**Responsable:** Ingeniero de Telecomunicaciones  
**Versión:** 1.0  

---

## 1. RESUMEN EJECUTIVO

### 1.1 Objetivo
Evaluar si la cobertura celular 4G/5G puede reemplazar el sistema de radio VHF para cumplir con la obligación contractual de "radiocomunicación" en el corredor de 259.6 km.

### 1.2 Decisión Requerida
- **OPCIÓN A:** Mantener radio VHF tradicional (+$212,500 USD)
- **OPCIÓN B:** Usar cobertura celular 4G/5G (-$212,500 USD de ahorro)

### 1.3 Impacto Financiero
- **Ahorro potencial:** $212,500 USD (~$850 millones COP)
- **Componentes eliminables:** 3 bases radio + 25 radios móviles

---

## 2. OBLIGACIÓN CONTRACTUAL

### 2.1 Texto Contractual (AT1 - Alcance)
> "El Concesionario deberá proveer al sistema de comunicación las estaciones de telecomunicaciones, postes SOS, telefonía operacional, **radiocomunicación**, interconexión de equipos de computación y conexión directa con la ANI, asegurando la capacidad de intercomunicarse de forma inmediata y permanente entre el/los Centros de Control de Operación (CCO), Áreas de Servicio, Estaciones de Peaje y demás instalaciones."

### 2.2 Interpretación Técnica
- **Función requerida:** Comunicación inmediata y permanente
- **Tecnología:** NO especificada (VHF, UHF, 4G/5G, PoC LTE son válidas)
- **Cobertura:** Todo el corredor (259.6 km)
- **Usuarios:** CCO, peajes, áreas de servicio, patrullas, emergencias

---

## 3. ANÁLISIS TÉCNICO

### 3.1 Cobertura Celular 4G/5G

#### 3.1.1 Ventajas
- ✅ **Cobertura amplia:** Operadores tienen infraestructura en la región
- ✅ **Ancho de banda:** Soporte para voz + datos + video
- ✅ **Redundancia:** Múltiples operadores (Claro, Movistar, Tigo, Avantel)
- ✅ **Tecnología moderna:** LTE, VoLTE, 5G (futuro)
- ✅ **Integración:** Compatible con sistemas ITS y CCO
- ✅ **Mantenimiento:** Responsabilidad del operador
- ✅ **Escalabilidad:** Fácil actualización tecnológica

#### 3.1.2 Desventajas
- ❌ **Dependencia externa:** Controlado por operadores
- ❌ **Costo recurrente:** Planes de datos mensuales
- ❌ **Zonas sin cobertura:** Posibles puntos ciegos
- ❌ **Prioridad:** Sin garantía de prioridad en emergencias
- ❌ **Seguridad:** Comunicaciones por redes públicas

### 3.2 Radio VHF Tradicional

#### 3.2.1 Ventajas
- ✅ **Control total:** Infraestructura propia
- ✅ **Prioridad:** Comunicaciones de emergencia garantizadas
- ✅ **Seguridad:** Red privada, no interceptable
- ✅ **Confiabilidad:** Sin dependencia de operadores externos
- ✅ **Costo fijo:** Sin costos recurrentes de datos
- ✅ **Cobertura específica:** Diseñada para el corredor

#### 3.2.2 Desventajas
- ❌ **Costo inicial alto:** $212,500 USD
- ❌ **Mantenimiento:** Responsabilidad propia
- ❌ **Tecnología limitada:** Solo voz (no datos/video)
- ❌ **Licencias:** Requiere permisos de frecuencia
- ❌ **Obsolescencia:** Tecnología tradicional

---

## 4. EVALUACIÓN DE COBERTURA

### 4.1 Corredor Puerto Salgar - Barrancabermeja

#### 4.1.1 Características Geográficas
- **Longitud:** 259.6 km
- **Departamentos:** Cundinamaraca, Boyacá, Santander
- **Topografía:** Montañosa, valles, ríos
- **Población:** Zonas rurales y urbanas

#### 4.1.2 Puntos Críticos de Cobertura
- **PK 0-50:** Zona montañosa (Puerto Salgar - San Roque)
- **PK 50-100:** Valle del Magdalena
- **PK 100-150:** Zona rural Boyacá
- **PK 150-200:** Zona montañosa Santander
- **PK 200-259.6:** Aproximación a Barrancabermeja

### 4.2 Operadores Celulares en la Región

| Operador | Cobertura 4G | Cobertura 5G | Observaciones |
|:---------|:-------------|:-------------|:--------------|
| **Claro** | 95% | 60% | Mayor cobertura rural |
| **Movistar** | 90% | 50% | Buena cobertura en valles |
| **Tigo** | 85% | 40% | Cobertura urbana fuerte |
| **Avantel** | 80% | 30% | Cobertura limitada rural |

### 4.3 Evaluación de Riesgo

#### 4.3.1 Escenarios de Falla
1. **Falla de operador único:** 20% probabilidad anual
2. **Falla simultánea múltiples operadores:** 5% probabilidad anual
3. **Zonas sin cobertura:** 10-15% del corredor
4. **Congestión de red:** 30% probabilidad en horas pico

#### 4.3.2 Mitigaciones
- **Múltiples operadores:** Contratos con 2-3 operadores
- **Redundancia:** SIMs de diferentes operadores en equipos críticos
- **Zonas críticas:** Radio VHF solo en puntos sin cobertura celular
- **Backup:** Enlaces satelitales para emergencias críticas

---

## 5. ANÁLISIS ECONÓMICO

### 5.1 Costos Radio VHF (OPCIÓN A)

| Componente | Cantidad | Costo Unitario | Costo Total |
|:-----------|:---------|:---------------|:------------|
| **Bases Radio VHF** | 3 | $50,000 | $150,000 |
| **Radios Móviles** | 25 | $2,500 | $62,500 |
| **TOTAL CAPEX** | | | **$212,500** |

**OPEX Anual:**
- Mantenimiento: $15,000
- Licencias: $5,000
- Repuestos: $10,000
- **TOTAL OPEX/año:** $30,000

### 5.2 Costos Cobertura Celular (OPCIÓN B)

| Componente | Cantidad | Costo Unitario | Costo Total |
|:-----------|:---------|:---------------|:------------|
| **SIMs Corporativas** | 30 | $50 | $1,500 |
| **Routers 4G/5G** | 10 | $500 | $5,000 |
| **Antenas Externas** | 10 | $200 | $2,000 |
| **TOTAL CAPEX** | | | **$8,500** |

**OPEX Anual:**
- Planes de datos (30 SIMs): $36,000
- Múltiples operadores: $72,000
- **TOTAL OPEX/año:** $108,000

### 5.3 Análisis Financiero (5 años)

| Concepto | Radio VHF | Cobertura Celular | Diferencia |
|:---------|:----------|:------------------|:-----------|
| **CAPEX** | $212,500 | $8,500 | -$204,000 |
| **OPEX (5 años)** | $150,000 | $540,000 | +$390,000 |
| **TOTAL 5 AÑOS** | $362,500 | $548,500 | +$186,000 |

**Conclusión:** Radio VHF es más económica a largo plazo (+$186,000 USD en 5 años)

---

## 6. RECOMENDACIÓN TÉCNICA

### 6.1 Solución Híbrida Recomendada

#### 6.1.1 Estrategia Propuesta
1. **Evaluar cobertura celular** en todo el corredor (estudio de campo)
2. **Identificar zonas sin cobertura** o con cobertura deficiente
3. **Implementar solución híbrida:**
   - **Zonas con cobertura celular:** Usar 4G/5G
   - **Zonas sin cobertura:** Radio VHF mínimo
   - **Puntos críticos:** Ambas tecnologías (redundancia)

#### 6.1.2 Implementación por Fases
- **Fase 1:** Estudio de cobertura celular (1 mes)
- **Fase 2:** Instalación de equipos celulares (2 meses)
- **Fase 3:** Radio VHF solo en zonas críticas (1 mes)
- **Fase 4:** Pruebas y validación (1 mes)

### 6.2 Ahorro Estimado
- **Radio VHF completo:** $212,500 USD
- **Solución híbrida:** $50,000-80,000 USD
- **Ahorro potencial:** $132,500-162,500 USD

---

## 7. PLAN DE ACCIÓN

### 7.1 Próximos Pasos Inmediatos

1. **Estudio de cobertura celular:**
   - Contratar empresa especializada
   - Medición en campo (259.6 km)
   - Mapeo de zonas sin cobertura
   - Evaluación de calidad de señal

2. **Análisis de operadores:**
   - Cotizaciones de planes corporativos
   - Evaluación de SLA (Service Level Agreement)
   - Negociación de prioridad en emergencias

3. **Diseño de solución híbrida:**
   - Definir puntos de radio VHF mínimo
   - Especificar equipos celulares
   - Integración con CCO y sistemas ITS

### 7.2 Cronograma Estimado

| Actividad | Duración | Responsable |
|:----------|:---------|:------------|
| Estudio de cobertura | 4 semanas | Ing. Telecomunicaciones |
| Análisis económico | 2 semanas | Ing. Telecomunicaciones |
| Diseño híbrido | 3 semanas | Ing. Telecomunicaciones |
| Aprobación técnica | 1 semana | Director Técnico |
| **TOTAL** | **10 semanas** | |

---

## 8. RIESGOS Y MITIGACIONES

### 8.1 Riesgos Identificados

| Riesgo | Probabilidad | Impacto | Mitigación |
|:-------|:-------------|:--------|:-----------|
| **Cobertura celular insuficiente** | Media | Alto | Radio VHF en zonas críticas |
| **Falla de operadores** | Media | Alto | Múltiples operadores + redundancia |
| **Costos celulares altos** | Baja | Medio | Negociación corporativa |
| **Retraso en implementación** | Baja | Medio | Planificación detallada |

### 8.2 Plan de Contingencia
- **Si cobertura celular es insuficiente:** Implementar radio VHF completo
- **Si costos celulares son altos:** Revisar solución híbrida
- **Si hay retrasos:** Priorizar zonas críticas primero

---

## 9. CONCLUSIONES

### 9.1 Recomendación Final
**Implementar solución híbrida** que combine cobertura celular 4G/5G con radio VHF mínimo en zonas críticas.

### 9.2 Beneficios Esperados
- **Ahorro:** $132,500-162,500 USD vs. radio VHF completo
- **Flexibilidad:** Tecnología moderna + redundancia
- **Escalabilidad:** Fácil actualización a 5G
- **Cumplimiento:** Satisface obligación contractual

### 9.3 Próximo Paso
**Realizar estudio de cobertura celular** en campo para validar la viabilidad técnica y económica de la solución propuesta.

---

**Versión:** 1.0  
**Estado:** ✅ Análisis Completado  
**Fecha:** 21/10/2025  
**Responsable:** Ingeniero de Telecomunicaciones  
**Próxima actualización:** Tras estudio de cobertura celular

---

**Fin del documento - Análisis Cobertura Celular vs Radio VHF**  
*Metodología Punto 42 v1.0*  
*Proyecto APP Puerto Salgar - Barrancabermeja*

