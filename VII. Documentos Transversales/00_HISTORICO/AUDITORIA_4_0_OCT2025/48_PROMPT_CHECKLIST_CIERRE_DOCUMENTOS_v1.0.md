# PROMPT PARA GENERACIÓN DE CHECKLISTS DE CIERRE POR ÁREA
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 24/10/2025  
**Versión:** 1.0  
**Propósito:** Guía para agente IA generar checklists de cierre de documentos servidos

---

## CONTEXTO DEL PROYECTO

Dispones de **20 documentos de ingeniería servidos** en el Sistema WBS del proyecto TM01 Troncal Magdalena (APP Puerto Salgar - Barrancabermeja), organizados en cinco categorías:

### 1. Sistemas Técnicos (6 documentos)
- **Control y Señalización** – CTC Virtual, ATP/ITCS y ENCE
- **Telecomunicaciones** – Fibra óptica, TETRA y GSM-R
- **ITS y Seguridad** – CCTV, ITS y control de accesos
- **Material Rodante** – Locomotoras y equipos de a bordo (N/A para proyecto vehicular)
- **Infraestructura Operativa** – Energía, SCADA y UPS
- **Integración y Coordinación** – Integración entre interfaces y gestión

### 2. Especialidades (5 documentos)
- **Ingeniería Civil** – Obras civiles, cimentaciones y canalizaciones
- **Ingeniería Eléctrica** – Energía, transformadores, UPS, PAT
- **Ingeniería Mecánica** – Climatización, ventilación y estructuras
- **Ingeniería de Sistemas** – Software, redes y bases de datos
- **Ingeniería Ambiental** – Gestión ambiental, permisos y monitoreo

### 3. Documentos Técnicos (3 documentos)
- **Centro Control Tráfico CCO v5.0** – Detalle del sistema CTC
- **Interfaces de Sistemas** – ICD (control de interfaces)
- **Protocolo FFFIS + Gateway UIC** – Interfaces CTC-ITCS

### 4. Gestión (3 documentos)
- **Alcance y Objetivos** – Definición del alcance y objetivos del proyecto
- **Cronograma y Recursos** – Plan de trabajo, hitos y recursos
- **Reporte Cambios y DTs** – Todas las decisiones técnicas

### 5. Respuestas a Contratistas y Herramientas (3 documentos)
- **Respuesta Técnica Contratistas** – Documentación de ofertas técnicas
- **Equipos Señalización: PK + Consumo** – Ubicación, cantidades y consumos eléctricos
- **Decisiones Técnicas Recientes** – Últimas DTs y verificación

---

## ESTRUCTURA TÍPICA DE LOS DOCUMENTOS

Cada documento incluye secciones como:

- **Resumen ejecutivo** – Qué es el sistema/especialidad y por qué importa
- **Criterios de diseño y justificaciones técnicas** – Fundamentos técnicos
- **Función y propósito** – Objetivos del sistema
- **Componentes principales** – Equipos, cantidades, ubicaciones
- **Especificaciones técnicas clave** – Requisitos técnicos detallados
- **Criterios de aceptación** – Condiciones de aceptación
- **Ubicación y despliegue** – Mapas o nodos de instalación
- **Operación y mantenimiento** – Procedimientos, mantenimiento preventivo y respuesta a fallas
- **Interfaces con otros sistemas** – Integraciones requeridas
- **Supuestos técnicos y limitaciones** – Restricciones y dependencias
- **Plan de implementación, pruebas y preguntas** – Estrategia de despliegue

---

## TAREA PRINCIPAL

**Prepara un checklist de cierre para cada documento con los siguientes pasos:**

### PASO 1: IDENTIFICAR SECCIONES POR ÁREA

Para cada documento, identifica las secciones que afectan a cada área:

#### Área: OPERACIONES
- Procedimientos de operación del sistema
- Interacción con otros sistemas en tiempo real
- Planes de pruebas operacionales
- Protocolos de respuesta a incidentes
- Integración con CCO y sistemas externos (ANI)
- Disponibilidad y tiempos de respuesta

#### Área: MANTENIMIENTO
- Requisitos de mantenimiento preventivo (frecuencia, checklist)
- Requisitos de mantenimiento correctivo (tiempos de respuesta)
- Lista de repuestos críticos y stock mínimo
- Procedimientos de respuesta a fallas
- Calibraciones y certificaciones requeridas
- Disponibilidad mínima del sistema (SLA)

#### Área: INGENIERÍA CIVIL
- Criterios de diseño de obras civiles
- Componentes principales (cimentaciones, estructuras)
- Especificaciones técnicas de construcción
- Ubicación y despliegue (PKs, coordenadas)
- Supuestos y limitaciones geotécnicas
- Canalizaciones y obras complementarias

#### Área: INGENIERÍA ELÉCTRICA
- Criterios de diseño eléctrico
- Componentes principales (transformadores, UPS, generadores)
- Especificaciones técnicas eléctricas
- Ubicación y despliegue de equipos eléctricos
- Consumos eléctricos y cargas
- Plan de Aterrizaje a Tierra (PAT)
- Protecciones y coordinación

#### Área: INGENIERÍA DE SISTEMAS
- Criterios de diseño de sistemas
- Componentes principales (servidores, switches, software)
- Especificaciones técnicas de sistemas
- Arquitectura de red y topología
- Interfaces y protocolos de comunicación
- Seguridad de redes y sistemas
- Bases de datos y almacenamiento

#### Área: INGENIERÍA AMBIENTAL
- Criterios de diseño ambiental
- Componentes principales (estaciones de monitoreo)
- Especificaciones técnicas ambientales
- Ubicación y despliegue de equipos ambientales
- Supuestos y limitaciones ambientales
- Permisos y autorizaciones requeridas
- Plan de gestión ambiental

#### Área: EPE / PERMISOS Y CONCESIONARIO
- Cumplimiento de normativa contractual (AT1, AT2, AT3, AT4)
- Permisos ambientales y autorizaciones
- Impactos en la concesión y modelo de negocio
- Presupuesto y costos asociados
- Cronograma y cumplimiento de hitos
- Indicadores de desempeño (KPIs)
- Impacto en retribución mensual

---

### PASO 2: PREGUNTAS DE VALIDACIÓN POR SECCIÓN

Para cada sección identificada, pregunta al área responsable:

#### Pregunta 1: COMPLETITUD
**¿La información es completa y correcta según su experiencia?**
- [ ] Sí, la información es completa y correcta
- [ ] No, falta información en: [especificar]
- [ ] No, hay información incorrecta en: [especificar]

#### Pregunta 2: RIESGOS Y NECESIDADES
**¿Existen riesgos o necesidades adicionales no documentadas?**
- [ ] No, todos los riesgos están documentados
- [ ] Sí, existen riesgos adicionales: [especificar]
- [ ] Sí, existen necesidades adicionales: [especificar]

#### Pregunta 3: OBSERVACIONES Y MODIFICACIONES
**¿Hay observaciones o modificaciones que deban registrarse?**
- [ ] No, no hay observaciones
- [ ] Sí, observaciones: [especificar]
- [ ] Sí, modificaciones requeridas: [especificar]

#### Pregunta 4: ACEPTACIÓN FORMAL
**¿Aceptan formalmente el contenido para cerrar el documento o requieren ajustes?**
- [ ] Acepto formalmente el contenido
- [ ] Requiero ajustes antes de aceptar: [especificar]
- [ ] Rechazo el contenido: [justificar]

---

### PASO 3: REGISTRO EN MATRIZ

Para cada documento y área, registra en una matriz:

| Documento | Área | Sección Revisada | Comentario/Respuesta | Acción Requerida | Responsable | Fecha Límite |
|:----------|:-----|:-----------------|:---------------------|:-----------------|:-------------|:-------------|
| [Nombre] | [Área] | [Sección] | [Respuesta] | [Acción] | [Nombre] | [Fecha] |

**Ejemplo:**
| Documento | Área | Sección Revisada | Comentario/Respuesta | Acción Requerida | Responsable | Fecha Límite |
|:----------|:-----|:-----------------|:---------------------|:-----------------|:-------------|:-------------|
| T01 ITS | Operaciones | §2.1 Propósito | Información completa. Requiere procedimiento detallado de operación | Elaborar procedimiento operacional | Jefe Operaciones | 01/11/2025 |
| T01 ITS | Mantenimiento | §6.2 OPEX | Falta definir stock mínimo de repuestos | Definir inventario mínimo | Jefe Mantenimiento | 01/11/2025 |

---

### PASO 4: CONSOLIDACIÓN DE RESPUESTAS

Consolida las respuestas de todas las áreas y genera:

1. **Lista de acciones requeridas** por documento
2. **Lista de conflictos** entre áreas (si los hay)
3. **Lista de documentos listos para cierre** (todas las áreas aceptaron)
4. **Lista de documentos pendientes** (requieren ajustes)

---

## FORMATO DE SALIDA ESPERADO

Genera un documento en formato Markdown con la siguiente estructura:

```markdown
# CHECKLIST DE CIERRE - [NOMBRE DEL DOCUMENTO]
## Proyecto APP Puerto Salgar - Barrancabermeja

**Documento:** [Nombre completo del documento]
**Ubicación:** [Ruta del archivo]
**Fecha de Revisión:** [Fecha]
**Versión:** 1.0

---

## 1. RESUMEN EJECUTIVO

[Breve descripción del documento y propósito]

---

## 2. CHECKLIST POR ÁREA

### 2.1 Área: OPERACIONES

**Responsable:** [Nombre del Jefe de Operaciones]

| # | Sección | Pregunta | Respuesta | Estado | Comentarios | Acción Requerida |
|:--|:--------|:---------|:----------|:-------|:------------|:-----------------|
| 1 | §2.1 Propósito | ¿Completo y correcto? | [Sí/No] | [✅/⏳/❌] | [Comentarios] | [Acción] |
| 2 | §5 Interfaces | ¿Completo y correcto? | [Sí/No] | [✅/⏳/❌] | [Comentarios] | [Acción] |
| ... | ... | ... | ... | ... | ... | ... |

**Aceptación Formal:** [ ] Aceptado / [ ] Requiere Ajustes / [ ] Rechazado

**Firma:** _________________  **Fecha:** _________

---

### 2.2 Área: MANTENIMIENTO

[Repetir estructura para cada área]

---

## 3. CONSOLIDACIÓN DE RESPUESTAS

### 3.1 Acciones Requeridas

| # | Acción | Responsable | Fecha Límite | Estado |
|:--|:-------|:-------------|:-------------|:-------|
| 1 | [Acción] | [Responsable] | [Fecha] | [⏳/✅] |

### 3.2 Conflictos Identificados

| # | Conflicto | Áreas Involucradas | Resolución Propuesta | Responsable |
|:--|:----------|:-------------------|:---------------------|:-------------|
| 1 | [Conflicto] | [Áreas] | [Resolución] | [Responsable] |

### 3.3 Estado de Cierre

**Estado General:** [ ] Listo para Cierre / [ ] Requiere Ajustes / [ ] Rechazado

**Fecha de Cierre:** _________

---

## 4. FIRMAS DE APROBACIÓN

| Área | Responsable | Firma | Fecha | Estado |
|:-----|:------------|:------|:------|:-------|
| Operaciones | [Nombre] | _______ | _____ | [✅/⏳/❌] |
| Mantenimiento | [Nombre] | _______ | _____ | [✅/⏳/❌] |
| Ingeniería Civil | [Nombre] | _______ | _____ | [✅/⏳/❌] |
| Ingeniería Eléctrica | [Nombre] | _______ | _____ | [✅/⏳/❌] |
| Ingeniería de Sistemas | [Nombre] | _______ | _____ | [✅/⏳/❌] |
| Ingeniería Ambiental | [Nombre] | _______ | _____ | [✅/⏳/❌] |
| EPE/Concesionario | [Nombre] | _______ | _____ | [✅/⏳/❌] |

---

**Versión:** 1.0
**Estado:** [⏳ Pendiente / ✅ Cerrado / ❌ Rechazado]
```

---

## INSTRUCCIONES ESPECÍFICAS PARA EL AGENTE

1. **Lee cada documento** de la lista de 20 documentos servidos
2. **Identifica las secciones** relevantes para cada área (Operaciones, Mantenimiento, Ingenierías, EPE/Concesionario)
3. **Genera preguntas específicas** basadas en el contenido real del documento
4. **Crea una matriz de validación** con las 4 preguntas clave para cada sección
5. **Incluye campos para registro** de comentarios, acciones requeridas y responsables
6. **Genera un checklist separado** para cada uno de los 20 documentos
7. **Consolida las respuestas** en un resumen ejecutivo por documento
8. **Identifica conflictos** entre áreas cuando sea necesario
9. **Mantén trazabilidad** con el documento de requerimientos consolidado (REQ-XX-YYY)

---

## EJEMPLO DE USO

**Prompt para el agente:**

```
Usando el contexto proporcionado, genera un checklist de cierre para el documento:
"24_T01_Ficha_Sistema_ITS_v1.0.md"

Sigue la estructura especificada en este prompt y asegúrate de:
1. Identificar todas las secciones relevantes para cada área
2. Crear preguntas específicas basadas en el contenido del documento
3. Incluir campos para registro de respuestas
4. Generar matriz de validación completa
```

---

## NOTAS IMPORTANTES

- **Cada documento debe tener su propio checklist** (20 checklists en total)
- **Las preguntas deben ser específicas** al contenido del documento, no genéricas
- **Incluir referencias** a secciones específicas del documento (ej: §2.1, §6.2)
- **Mantener trazabilidad** con IDs de requerimientos del documento consolidado
- **Facilitar la firma formal** de aceptación o rechazo por cada área
- **Registrar fechas** de revisión y cierre para control de versiones

---

**Versión:** 1.0  
**Fecha:** 24/10/2025  
**Propósito:** Guía para generación automática de checklists de cierre

---

**Fin del documento - Prompt Checklist Cierre**


