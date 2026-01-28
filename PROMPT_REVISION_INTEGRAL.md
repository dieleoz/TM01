# PROMPT DE REVISIÓN INTEGRAL - PROYECTO TM01 TRONCAL MAGDALENA

**Versión:** 1.0  
**Fecha:** 27 de Enero de 2026  
**Propósito:** Auditoría completa de coherencia metodológica, arquitectura 5 capas, y replicabilidad  
**Destinatario:** Agente de Revisión / QA Externo

---

## 🎯 OBJETIVO DE LA REVISIÓN

Realizar una auditoría integral del proyecto TM01 "Troncal Magdalena" para validar:

1. **Coherencia Metodológica:** Verificar que todos los documentos reflejen la Metodología Punto 42 v3.0 (5 Capas)
2. **Arquitectura Completa:** Validar que las 5 capas estén implementadas y documentadas
3. **Trazabilidad Total:** Confirmar que existe flujo de datos desde Contrato hasta Entregables
4. **Replicabilidad:** Asegurar que la metodología puede aplicarse a nuevos proyectos
5. **Calidad Documental:** Verificar que no hay inconsistencias, duplicados o información obsoleta

---

## 📋 CONTEXTO DEL PROYECTO

### **Estado Actual:**
- **Fase:** 6.0 COMPLETADA - Layer 5 (Services) Implementado
- **Metodología:** Punto 42 v3.0 (5 Capas)
- **CAPEX Total ITS:** $7,790,000 USD
- **Sistemas Validados:** 13/13 (100%)
- **Documentos:** 85+ T01-T05, 30+ DTs, 8 interfaces web
- **Scripts:** 80+ scripts de automatización

### **Arquitectura 5 Capas:**
```
CAPA 1: FUENTES DE VERDAD
  ├─ Contrato (AT1-AT4)
  ├─ T01-T05 (Ingeniería)
  └─ DTs (Decisiones Técnicas)
        ↓
CAPA 2: TRANSFORMACIÓN
  ├─ sync_wbs_tm01.ps1
  ├─ sincronizar_layout.ps1
  ├─ cocinar_ejecutivos.ps1 ⭐ LAYER 5
  └─ cocinar_rfqs.ps1 ⭐ LAYER 5
        ↓
CAPA 3: DATOS INTERMEDIOS
  ├─ datos_wbs_TM01_items.js
  ├─ layout_datos.js
  └─ presupuesto_datos.js
        ↓
CAPA 4: VISUALIZACIÓN
  ├─ WBS interactiva
  ├─ Layout georreferenciado
  └─ Dashboards
        ↓
CAPA 5: SERVICIOS ⭐ NUEVO
  ├─ RFQs actualizados (Compras)
  ├─ Ejecutivos HTML (Cliente)
  └─ Certificación automática
```

---

## 🔍 ÁREAS DE REVISIÓN

### **1. DOCUMENTOS MAESTROS (Raíz del Proyecto)**

**Ubicación:** `d:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA\`

#### **1.1 Documentos de Arquitectura**
- [ ] **ARCHITECTURE.md**
  - ✅ Versión: 3.0
  - ✅ Fecha: 27 de Enero 2026
  - ✅ Diagrama muestra 5 capas (incluyendo Layer 5: Services)
  - ✅ Menciona `cocinar_ejecutivos.ps1` y `cocinar_rfqs.ps1`
  - ✅ Coherente con `00_METODOLOGIA_PUNTO_42_v3.0.md`

- [ ] **README.md**
  - ✅ Badge de arquitectura dice "5 Layers"
  - ✅ Referencia a Metodología Punto 42 v3.0
  - ✅ Menciona Layer 5 (Services)
  - ✅ Coherente con ARCHITECTURE.md

- [ ] **FUENTES_DE_VERDAD.md**
  - ✅ Menciona 5 capas
  - ✅ Incluye Layer 5 en diagrama de flujo
  - ✅ Regla de no editar archivos auto-generados
  - ✅ Coherente con metodología v3.0

#### **1.2 Documentos de Flujo y Estructura**
- [ ] **FLUJO_DATOS_COMPLETO.md**
  - ✅ Diagrama incluye "8. LAYER 5: SERVICIOS"
  - ✅ Menciona `cocinar_ejecutivos.ps1` y `cocinar_rfqs.ps1`
  - ✅ Workflow incluye pasos 9-11 para Layer 5
  - ✅ Checklist incluye verificación de Layer 5
  - ✅ Coherente con ARCHITECTURE.md

- [ ] **ESTRUCTURA_REPOSITORIO.md**
  - ✅ Sección `X_ENTREGABLES_CONSOLIDADOS` marcada como "⭐ LAYER 5 (SERVICES)"
  - ✅ Detalla subdirectorios de entregables
  - ✅ Menciona regla de no edición manual de RFQs
  - ✅ Coherente con estructura real del proyecto

#### **1.3 Documentos de Auditoría y Estado**
- [ ] **AUDIT_REPORT_5.0.md**
  - ✅ DICTAMEN FINAL dice "FASE 6.0 COMPLETADA - LAYER 5 (SERVICES) IMPLEMENTADO"
  - ✅ Detalla `cocinar_ejecutivos.ps1` y `cocinar_rfqs.ps1`
  - ✅ Coherente con estado actual del proyecto

- [ ] **INDICE_MAESTRO_PROYECTO.md**
  - ✅ Versión: 6.0 (Layer 5 Implementado)
  - ✅ Fecha: 27 de Enero 2026
  - ✅ Diagrama de arquitectura muestra 5 capas
  - ✅ Inventario completo de documentos
  - ✅ Estadísticas actualizadas (85+ docs, 30+ DTs, 8 interfaces)
  - ✅ Sección de scripts incluye Layer 5
  - ✅ Coherente con todos los documentos maestros

#### **1.4 Documentos de Lecciones y Validación**
- [ ] **LECCIONES_APRENDIDAS.md**
  - ✅ Versión: 3.0 (LAYER 5 + ROADMAP INSIGHTS)
  - ✅ Fecha: 27 de Enero 2026
  - ✅ Incluye lecciones de ROADMAP (Phases 1-27)
  - ✅ Sección completa de Layer 5 (Services)
  - ✅ Lecciones de GeoJSON y Vercel deployment
  - ✅ Metodología consolidada Punto 42 v3.0
  - ✅ Métricas finales del proyecto

- [ ] **VALIDATION_PROMPT_AGENT_3.md**
  - ✅ Actualizado para Layer 5
  - ✅ Incluye validación de scripts de cocina
  - ✅ Checklist de 50+ items
  - ✅ Template de DEPLOYMENT_CERTIFICATE.md
  - ✅ Coherente con arquitectura 5 capas

---

### **2. METODOLOGÍA Y GUÍAS (Carpeta VIII)**

**Ubicación:** `VIII. Documentos Maestros y Metodologia\`

#### **2.1 Metodología Principal**
- [ ] **00_METODOLOGIA_PUNTO_42_v3.0.md**
  - ✅ Versión: 3.0
  - ✅ Define 5 capas claramente
  - ✅ Incluye "CAPA 5: SERVICIOS"
  - ✅ Menciona scripts `cocinar_ejecutivos.ps1` y `cocinar_rfqs.ps1`
  - ✅ Diagrama Mermaid muestra flujo completo
  - ✅ Es la fuente de verdad para la metodología

#### **2.2 Guía de Replicación**
- [ ] **GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md**
  - ✅ Actualizada a v2.0
  - ✅ Fecha: 27 de Enero 2026
  - ✅ Referencia a Metodología Punto 42 v3.0 (5 Capas)
  - ✅ Incluye FASE 8 en el índice
  - ✅ Coherente con metodología v3.0

- [ ] **GUIA_REPLICACION_FASE_8_LAYER_5.md**
  - ✅ Sección completa para Layer 5
  - ✅ Código de ambos scripts (cocinar_rfqs.ps1, cocinar_ejecutivos.ps1)
  - ✅ Workflow de regeneración documentado
  - ✅ Checklist de implementación
  - ✅ Coherente con GUIA_REPLICACION principal

---

### **3. SCRIPTS DE AUTOMATIZACIÓN (Carpeta scripts/)**

**Ubicación:** `scripts\`

#### **3.1 Scripts Layer 2 (Transformación)**
- [ ] **sync_wbs_tm01.ps1**
  - ✅ Existe y es ejecutable
  - ✅ Genera `datos_wbs_TM01_items.js`
  - ✅ Lee desde T05 (Fuentes de Verdad)

- [ ] **sincronizar_layout.ps1**
  - ✅ Existe y es ejecutable
  - ✅ Genera `layout_datos.js`
  - ✅ Lee desde T05

- [ ] **sincronizar_presupuesto.ps1**
  - ✅ Existe y es ejecutable
  - ✅ Genera `presupuesto_datos.js`
  - ✅ Lee desde T05

- [ ] **sincronizar_SISTEMA_TM01_COMPLETO.ps1**
  - ✅ Existe y es ejecutable
  - ✅ Ejecuta todos los scripts anteriores
  - ✅ Script maestro de sincronización

#### **3.2 Scripts Layer 5 (Services) ⭐ CRÍTICO**
- [ ] **cocinar_rfqs.ps1**
  - ✅ Existe en `scripts/`
  - ✅ Es ejecutable (PowerShell)
  - ✅ Lee tablas de T05
  - ✅ Inyecta bloques automáticos en RFQs
  - ✅ Añade sello "CERTIFICACIÓN DE COMPRAS"
  - ✅ Mapeo T05 → RFQ documentado en código
  - ✅ Tiempo de ejecución < 10 segundos
  - ✅ No requiere intervención manual

- [ ] **cocinar_ejecutivos.ps1**
  - ✅ Existe en `scripts/`
  - ✅ Es ejecutable (PowerShell)
  - ✅ Lee documentos T01
  - ✅ Genera HTMLs ejecutivos
  - ✅ Usa Pandoc para conversión
  - ✅ Salida en `X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/HTML/`

---

### **4. ENTREGABLES CONSOLIDADOS (Carpeta X_ENTREGABLES_CONSOLIDADOS/)**

**Ubicación:** `X_ENTREGABLES_CONSOLIDADOS\`

#### **4.1 Estructura de Carpetas**
- [ ] **Estructura Layer 5**
  - ✅ `00_HISTORICO/` existe (versiones obsoletas)
  - ✅ `7_SISTEMAS_EJECUTIVOS/` existe (resúmenes Markdown)
  - ✅ `8_DOCUMENTOS_SERVIDOS/HTML/` existe (HTMLs generados)
  - ✅ RFQs en raíz con nomenclatura `RFQ_*.md`

#### **4.2 RFQs Auto-generados** ⭐ CRÍTICO
Verificar que TODOS los RFQs tienen bloques automáticos:

- [ ] **RFQ_001_FIBRA_OPTICA_v2.0.md**
  - ✅ Tiene bloque `<!-- BLOQUE AUTOMATICO INICIO: -->`
  - ✅ Tiene tabla con datos de T05
  - ✅ Tiene sello "CERTIFICACIÓN DE COMPRAS"
  - ✅ Fecha de actualización reciente

- [ ] **RFQ_002_SOS_Postes_v2.0.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

- [ ] **RFQ_003_CCTV_v2.0.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

- [ ] **RFQ_006_ETD_v1.0.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

- [ ] **RFQ_007_RADARES_SANCIONATORIOS_v2.1.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

- [ ] **RFQ_007_MONITORES_VELOCIDAD_INFORMATIVOS_v2.1.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

- [ ] **RFQ_008_PMV_v1.0.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

- [ ] **SOLICITUD_COMPRA_EQUIPOS_L2_v1.0.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

- [ ] **SOLICITUD_COMPRA_EQUIPOS_L3_v1.0.md**
  - ✅ Tiene bloque automático
  - ✅ Datos coherentes con T05

#### **4.3 README de Regeneración**
- [ ] **README.md**
  - ✅ Existe en `X_ENTREGABLES_CONSOLIDADOS/`
  - ✅ Explica propósito de Layer 5
  - ✅ Documenta estructura de carpetas
  - ✅ Incluye workflow de regeneración
  - ✅ Lista mapeo T05 → RFQ
  - ✅ Incluye reglas de no edición manual
  - ✅ Comandos de ejecución de scripts

---

### **5. INGENIERÍA DE DETALLE (Carpeta V. Ingenieria de Detalle/)**

**Ubicación:** `V. Ingenieria de Detalle\`

#### **5.1 Documentos T05 (Fuentes de Verdad para Precios)**
Verificar que existen y tienen tablas de cantidades/precios:

- [ ] **01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas con cantidades y precios
  - ✅ Es fuente para RFQ_001

- [ ] **02_T05_Ingenieria_Detalle_Equipos_L2_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas
  - ✅ Es fuente para SOLICITUD_COMPRA_EQUIPOS_L2

- [ ] **03_T05_Ingenieria_Detalle_Equipos_L3_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas
  - ✅ Es fuente para SOLICITUD_COMPRA_EQUIPOS_L3

- [ ] **04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas
  - ✅ Es fuente para RFQ_002

- [ ] **05_T05_Ingenieria_Detalle_CCTV_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas
  - ✅ Es fuente para RFQ_003

- [ ] **06_T05_Ingenieria_Detalle_PMV_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas
  - ✅ Es fuente para RFQ_008

- [ ] **07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas
  - ✅ Es fuente para RFQ_006 y RFQ_007

- [ ] **08_T05_Ingenieria_Detalle_Galibos_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas

- [ ] **09_T05_Ingenieria_Detalle_METEO_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas

- [ ] **10_T05_Ingenieria_Detalle_WIM_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas

- [ ] **11_T05_Ingenieria_Detalle_Peajes_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas

- [ ] **12_T05_Ingenieria_Detalle_Radio_v1.0.md**
  - ✅ Existe
  - ✅ Tiene tablas

---

### **6. COHERENCIA METODOLÓGICA GLOBAL**

#### **6.1 Coherencia de Versiones**
- [ ] Todos los documentos maestros mencionan "Metodología Punto 42 v3.0"
- [ ] Todos los documentos maestros mencionan "5 Capas" (no 4)
- [ ] Todos los documentos maestros tienen fecha 27 de Enero 2026 o posterior
- [ ] No hay referencias a versiones obsoletas (v1.0, v2.0 de metodología)

#### **6.2 Coherencia de Arquitectura**
- [ ] Todos los diagramas muestran 5 capas
- [ ] Layer 5 (Services) está documentado en todos los documentos de arquitectura
- [ ] Scripts `cocinar_*.ps1` están mencionados en documentos relevantes
- [ ] Flujo de datos incluye Layer 5 en todos los diagramas

#### **6.3 Coherencia de Datos (Hard Deck)**
Verificar que estos valores son consistentes en TODOS los documentos:

- [ ] **SOS:** 88 unidades (no 98)
- [ ] **SOS CAPEX:** $2,200,000 USD
- [ ] **CCTV:** 45 cámaras (no 30, no 15)
- [ ] **CCTV CAPEX:** $1,125,000 USD
- [ ] **PMV:** 12 unidades
- [ ] **PMV CAPEX:** $600,000 USD
- [ ] **Peaje CAPEX:** $1,890,218.94 USD
- [ ] **WIM CAPEX:** $551,425 USD
- [ ] **Total ITS CAPEX:** $7,790,000 USD

#### **6.4 Coherencia de Nomenclatura**
- [ ] Scripts usan nomenclatura consistente (`cocinar_*.ps1`, `sincronizar_*.ps1`)
- [ ] RFQs usan nomenclatura consistente (`RFQ_XXX_SISTEMA_vX.X.md`)
- [ ] T05 usan nomenclatura consistente (`XX_T05_Ingenieria_Detalle_SISTEMA_vX.X.md`)
- [ ] DTs usan nomenclatura consistente (`DT-TM01-SISTEMA-XXX.md`)

---

### **7. REPLICABILIDAD**

#### **7.1 Documentación de Replicación**
- [ ] **GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md** existe y está actualizada
- [ ] **GUIA_REPLICACION_FASE_8_LAYER_5.md** existe con código completo
- [ ] Guías incluyen todos los pasos necesarios para replicar
- [ ] Guías incluyen código de scripts
- [ ] Guías incluyen checklists de validación

#### **7.2 Templates y Ejemplos**
- [ ] Carpeta `templates/` existe con plantillas T01-T05
- [ ] Scripts tienen comentarios explicativos
- [ ] README de entregables explica cómo regenerar
- [ ] Lecciones aprendidas documentan errores a evitar

#### **7.3 Automatización Completa**
- [ ] Todos los flujos repetitivos están automatizados
- [ ] Scripts no requieren intervención manual
- [ ] Documentación explica cuándo ejecutar cada script
- [ ] Workflow completo está documentado (T05 → Scripts → Entregables)

---

### **8. CALIDAD DOCUMENTAL**

#### **8.1 Sin Duplicados**
- [ ] No hay documentos duplicados con mismo contenido
- [ ] No hay versiones obsoletas en carpetas principales
- [ ] Carpeta `/legacy` contiene archivos obsoletos (si existe)
- [ ] No hay archivos temporales en raíz

#### **8.2 Sin Inconsistencias**
- [ ] No hay contradicciones entre documentos
- [ ] Cantidades son consistentes en todos los documentos
- [ ] Precios son consistentes en todos los documentos
- [ ] Fechas son coherentes (no hay docs del futuro o muy antiguos)

#### **8.3 Sin Información Obsoleta**
- [ ] No hay referencias a "4 capas" (debe ser 5)
- [ ] No hay referencias a "Metodología v1.0" o "v2.0" (debe ser v3.0)
- [ ] No hay referencias a cantidades obsoletas (ej: 98 SOS debe ser 88)
- [ ] No hay referencias a scripts obsoletos

---

## 📊 CHECKLIST DE VALIDACIÓN FINAL

### **Arquitectura 5 Capas**
- [ ] ✅ CAPA 1: Fuentes de Verdad (T01-T05, Contrato, DTs) - Documentada
- [ ] ✅ CAPA 2: Transformación (Scripts sync_* + cocinar_*) - Implementada
- [ ] ✅ CAPA 3: Datos Intermedios (JavaScript auto-generado) - Operativa
- [ ] ✅ CAPA 4: Visualización (8 interfaces HTML) - Funcional
- [ ] ✅ CAPA 5: Servicios (RFQs + Ejecutivos) - Implementada ⭐

### **Layer 5 (Services) - Validación Crítica**
- [ ] ✅ Script `cocinar_rfqs.ps1` existe y funciona
- [ ] ✅ Script `cocinar_ejecutivos.ps1` existe y funciona
- [ ] ✅ 9 RFQs tienen bloques automáticos
- [ ] ✅ README de regeneración existe y es completo
- [ ] ✅ Workflow documentado en múltiples lugares

### **Coherencia Metodológica**
- [ ] ✅ Todos los docs mencionan Metodología Punto 42 v3.0
- [ ] ✅ Todos los docs mencionan 5 capas (no 4)
- [ ] ✅ Todos los diagramas muestran 5 capas
- [ ] ✅ No hay referencias a versiones obsoletas

### **Coherencia de Datos**
- [ ] ✅ SOS: 88 unidades / $2.2M USD (consistente)
- [ ] ✅ CCTV: 45 cámaras / $1.125M USD (consistente)
- [ ] ✅ PMV: 12 unidades / $600K USD (consistente)
- [ ] ✅ Total ITS: $7.79M USD (consistente)

### **Replicabilidad**
- [ ] ✅ Guía de replicación completa y actualizada
- [ ] ✅ Código de scripts incluido en guías
- [ ] ✅ Workflow completo documentado
- [ ] ✅ Lecciones aprendidas documentadas

### **Calidad Documental**
- [ ] ✅ Sin duplicados
- [ ] ✅ Sin inconsistencias
- [ ] ✅ Sin información obsoleta
- [ ] ✅ Estructura organizada

---

## 📝 FORMATO DE REPORTE

Al completar la revisión, crear un documento `REPORTE_REVISION_INTEGRAL.md` con:

```markdown
# REPORTE DE REVISIÓN INTEGRAL - TM01 TRONCAL MAGDALENA

**Fecha:** [Fecha de revisión]  
**Revisor:** [Nombre del agente/persona]  
**Versión Proyecto:** 6.0 (Layer 5 Implementado)

## RESUMEN EJECUTIVO
[Breve resumen del estado general: APROBADO / REQUIERE CORRECCIONES]

## HALLAZGOS POR ÁREA

### 1. Documentos Maestros
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

### 2. Metodología y Guías
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

### 3. Scripts de Automatización
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

### 4. Entregables Consolidados
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

### 5. Ingeniería de Detalle
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

### 6. Coherencia Metodológica
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

### 7. Replicabilidad
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

### 8. Calidad Documental
- ✅ APROBADO / ❌ REQUIERE CORRECCIÓN
- [Detalles de hallazgos]

## INCONSISTENCIAS ENCONTRADAS
[Lista numerada de todas las inconsistencias]

1. [Descripción de inconsistencia]
   - Ubicación: [Archivo/línea]
   - Impacto: [Alto/Medio/Bajo]
   - Recomendación: [Acción correctiva]

## ELEMENTOS FALTANTES
[Lista de elementos que deberían existir pero no se encontraron]

## RECOMENDACIONES
[Lista de mejoras sugeridas]

## CONCLUSIÓN
**Estado Final:** ✅ CERTIFICADO PARA PRODUCCIÓN / ❌ REQUIERE CORRECCIONES

**Próximos Pasos:**
[Lista de acciones a tomar]

---
**Certificado por:** [Nombre]  
**Metodología:** Punto 42 v3.0  
**Proyecto:** APP Puerto Salgar - Barrancabermeja
```

---

## 🎯 CRITERIOS DE APROBACIÓN

**Para que el proyecto sea CERTIFICADO, TODOS los siguientes deben cumplirse:**

1. ✅ **Arquitectura 5 Capas:** Todas las capas documentadas e implementadas
2. ✅ **Layer 5 Operativo:** Scripts funcionan, RFQs tienen bloques automáticos
3. ✅ **Coherencia Metodológica:** Todos los docs mencionan v3.0 y 5 capas
4. ✅ **Coherencia de Datos:** Valores Hard Deck consistentes en todos los docs
5. ✅ **Replicabilidad:** Guías completas con código y workflow
6. ✅ **Calidad Documental:** Sin duplicados, inconsistencias o información obsoleta
7. ✅ **Trazabilidad:** Flujo completo Contrato → T05 → Scripts → Entregables documentado

**Si CUALQUIER criterio falla:**
- Documentar el fallo en REPORTE_REVISION_INTEGRAL.md
- Crear lista de acciones correctivas
- Marcar proyecto como "REQUIERE CORRECCIONES"
- Re-ejecutar revisión después de correcciones

---

## 📚 DOCUMENTOS DE REFERENCIA

**Documentos Clave para la Revisión:**

1. **Metodología:** `VIII. Documentos Maestros y Metodologia/00_METODOLOGIA_PUNTO_42_v3.0.md`
2. **Arquitectura:** `ARCHITECTURE.md`
3. **Fuentes de Verdad:** `FUENTES_DE_VERDAD.md`
4. **Flujo de Datos:** `FLUJO_DATOS_COMPLETO.md`
5. **Índice Maestro:** `INDICE_MAESTRO_PROYECTO.md`
6. **Lecciones Aprendidas:** `LECCIONES_APRENDIDAS.md`
7. **Guía de Replicación:** `GUIA_REPLICACION_PROYECTO_VEHICULAR_v1.0.md`
8. **Guía Layer 5:** `GUIA_REPLICACION_FASE_8_LAYER_5.md`

---

**Prompt de Revisión Integral**  
**Versión:** 1.0  
**Última Actualización:** 27 de Enero 2026  
**Metodología:** Punto 42 v3.0 (5 Capas)  
**Proyecto:** APP Puerto Salgar - Barrancabermeja
