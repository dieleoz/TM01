# METODOLOGÍA PUNTO 42 - v3.0 (CORPORATE STANDARD)
## Framework de Ingeniería y Gestión Contractual para Infraestructura

**Versión:** 3.0 (Consolidada Audit 6.0)  
**Fecha:** 27 de Enero 2026  
**Proyecto:** TM01 Troncal Magdalena  
**Estado:** ✅ **NORMA VIGENTE**  
**Fuentes Base:** `FUENTES_DE_VERDAD.md` + `v2.0 MVP`

---

## 🎯 PROPÓSITO SUPREMO

La **Metodología Punto 42** no es solo una forma de organizar archivos; es un **Sistema de Defensa Contractual**. Su objetivo es garantizar que cada dólar del presupuesto (CAPEX/OPEX) tenga una trazabilidad irrefutable desde el Contrato hasta la Ingeniería de Detalle.

### **Filosofía "Contract-First"**
> "El Contrato (AT1-AT4) es la constitución. La Ingeniería (T01-T05) es la ley. El Código (Web) es la ejecución."

---

## 🏛️ ARQUITECTURA DE 5 CAPAS (DATA PIPELINE)

La metodología se implementa sobre una arquitectura técnica estricta que transforma documentos legales en tableros de control vivos.

    graph TD
    L1[NIVEL 1: CONTRATO] -->|Define Reglas| L2[NIVEL 2: INGENIERÍA]
    L2 -->|T05 define Precios| L3[NIVEL 3: VALIDACIÓN]
    L3 -->|Scripts sync_wbs| L4[NIVEL 4: VISUALIZACIÓN]
    L2 -->|Scripts cocinar_*| L5[NIVEL 5: ENTREGABLES]
    
    style L1 fill:#ff9999,stroke:#333,stroke-width:2px
    style L2 fill:#99ccff,stroke:#333,stroke-width:2px
    style L3 fill:#ffff99,stroke:#333,stroke-width:2px
    style L4 fill:#99ff99,stroke:#333,stroke-width:2px
    style L5 fill:#ffcc99,stroke:#333,stroke-width:2px

### **CAPA 1: LA VERDAD INMUTABLE (Contractual)**
*Ubicación: `I. Contrato General/` y `II. Apendices Tecnicos/`*
- **AT1 (Alcance):** Qué hay que hacer (Cantidades).
- **AT2 (O&M):** Cómo debe operar.
- **AT3 (Specs):** Qué calidad debe tener.
- **AT4 (KPIs):** Cómo nos miden (Índice de Cumplimiento).
- **Regla Oro:** Estos documentos **NUNCA** se editan.

### **CAPA 2: INGENIERÍA ESTRUCTURADA (T01-T05)**
*Ubicación: `III.`, `IV.`, `V.`*
La ingeniería se divide en 5 tiempos lógicos:
1.  **T01 - Ficha de Sistema (Concepto):** ¿Qué es? (Resumen Ejecutivo).
2.  **T02 - Análisis de Requisitos:** ¿Qué debe cumplir? (Funcional/No Funcional).
3.  **T03 - Arquitectura:** ¿Cómo se conecta? (Topología/Diagramas).
4.  **T04 - Especificaciones (Básica):** ¿Qué compramos? (Fichas Técnicas).
5.  **T05 - Ingeniería de Detalle (Precios):** ¿Cuánto cuesta? (APUs y Cantidades).

> **IMPORTANTE:** El documento **T05** es la **ÚNICA** fuente de verdad para precios y cantidades en el sistema web.

### **CAPA 3: VALIDACIÓN Y TRANSFORMACIÓN (Scripts)**
*Ubicación: `scripts/` y `VII. Documentos Transversales/`*
- **`sync_wbs_tm01.ps1`:** El "Parser Inteligente". Lee los Markdown T05 y genera JSONs.
- **`generar_specs_tecnicas.ps1` (NUEVO FASE 7):** Transforma T04 Markdown en Fichas HTML (`docs/specs/`) y genera el mapa `technical_specs_map.js` para el dashboard técnico.
- **Validaciones Contractuales:** Documentos (`34_VALIDACION_*.md`) que certifican cumplimiento.

### **CAPA 4: VISUALIZACIÓN (Web Dashboard)**
*Ubicación: `docs/`*
- **`presupuesto.html`**: Tablero financiero.
- **`wbs.html`**: Desglose estructural de trabajo.
- **`dashboard_tecnico.html`**: Controlador de Ingeniería (Layouts/Specs). Lee `technical_specs_map.js`.
- **Regla:** Estos archivos son "tontos". Solo visualizan lo que la Capa 3 les entrega. **NUNCA** hardcodear datos aquí.

### **CAPA 5: SERVICIOS (DEL HORNO AL PLATO)**
*Ubicación: `X_ENTREGABLES_CONSOLIDADOS/`*
Esta es la capa final de entrega al cliente ("El Plato Servido").
- **Ingredientes:** Markdown de Ingeniería (T05) + Plantillas.
- **Cocina (Scripts):**
  - **`cocinar_ejecutivos.ps1`:** Convierte resúmenes T01 en HTMLs corporativos.
  - **`cocinar_rfqs.ps1`:** Genera RFQs listos para licitar, inyectando cantidades desde T05.
- **Producto Final:** PDFs, HTMLs autocontenidos y RFQs validados.
- **Regla:** Lo que sale aquí ya no se edita a mano. Si está mal, se corrige en la Capa 2 (Ingeniería) y se vuelve a "cocinar".

### **2.5: ESTRATEGIA SMART CAPEX (AUDIT 6.0)**
*Nivel: Transversal (L2-L5)*  
Este principio rige el cierre financiero del proyecto en 2026:
- **Zero Infrastructure**: Priorizar el uso de infraestructura propia existente (SOS/PMV) para subsistemas ligeros como Radar/ETD.
- **Zero Civil Works**: Preferir soluciones inalámbricas y montajes superficiales (ej. Davis con trípodes) para evitar excavaciones y canalizaciones.
- **Unified Services**: Eliminar módulos de integración redundantes; centralizar la lógica en la plataforma CCO (Software-defined ITS).

---

## 🔄 PROCESO DE GESTIÓN DE CAMBIOS (EL "LOOP")

Para modificar cualquier dato del proyecto (ej: cambiar cantidad de cámaras), se debe seguir estrictamente este ciclo:

1.  **CONSULTA (Capa 1):** Verificar en AT1 si el cambio es legal contractualmente.
2.  **EDICIÓN (Capa 2):** Modificar el archivo **T05** correspondiente (`05_T05_Ingenieria_Detalle_CCTV.md`). Ajustar la tabla Markdown.
3.  **SINCRONIZACIÓN (Capa 3):** Ejecutar `powershell scripts/sync_wbs_tm01.ps1`. Esto actualiza la "base de datos" JSON.
4.  **VERIFICACIÓN (Capa 4):** Abrir `presupuesto.html` y confirmar el cambio.
5.  **DEFENSA (Transversal):** Si el cambio es una desviación del contrato, crear un **DT (Documento Técnico)** en `VII. Documentos Transversales/DTs/` y una **Validación Contractual**.

---

## 📂 ESTRUCTURA DE DIRECTORIOS (ESTÁNDAR v3.0)

```bash
PROYECTO/
├── 00. Gobernanza PMO/          # RACI y Riesgos
├── I. Contrato General/         # PDFs Originales
├── II. Apendices Tecnicos/      # Markdown Convertido (AT1-AT4)
├── III. Ingenieria Conceptual/  # T01, T02, T03 (Contexto)
├── IV. Ingenieria Basica/       # T04 (Specs Técnicas)
├── V. Ingenieria de Detalle/    # T05 (PRECIOS MAESTROS) ⭐
├── VI. Operacion y Reversion/   # Manuales
├── VII. Documentos Transversales/
│   ├── DTs/                     # Historial de Cambios
│   └── Validaciones/            # Auditoría por Sistema
├── VIII. Documentos Maestros/   # Esta Metodología
├── IX. WBS y Planificacion/     # Cronogramas
└── docs/                        # WEB DASHBOARD (No editar código)
    ├── data/                    # JSONs generados
    └── ...html                  # Vistas
```

---

## ✅ CRITERIOS DE ACEPTACIÓN DE DOCUMENTOS

Para que un documento sea "Compliant" con Punto 42 v3.0:

1.  **Encabezado Estándar:** Debe tener Título, Versión, Fecha, Estado y Responsable.
2.  **Trazabilidad:** Debe citar explícitamente las cláusulas de AT1/AT2/AT3 que satisface.
3.  **No Duplicidad:** Si un precio está en T05, no debe repetirse en T01. Referenciar.
4.  **Formato Markdown:** Tablas limpias, sin HTML incrustado innecesario.
5.  **Ingeniería Defensiva (T04):** Debe incluir "Cláusulas de Rechazo" explícitas (citas textuales de norma/contrato que justifiquen la especificación).

### **ESTÁNDAR DE FICHA TÉCNICA (T04)**
> "Una especificación sin causales de rechazo es solo una sugerencia."
- **Encabezado:** Aviso de Advertencia al Oferente.
- **Cuerpo:** Cada parámetro técnico debe citar su Fuente de Obligación (Manual 2024, RETIE, etc.).
- **Blindaje:** No dejar nada a la interpretación del proveedor.

---

## 🚀 REFERENCIAS OPERATIVAS

- **Manual de Operaciones:** `FUENTES_DE_VERDAD.md` (Lectura obligatoria para ingenieros).
- **Control de Versiones:** `docs/CONTROL_VERSIONES_DOCUMENTOS.md`.
- **Índice de Auditoría:** `VII. Documentos Transversales/00_INDICE_AUDITORIA_6_0_ENE2026.md`.

---
**Autoridad:** Esta metodología reemplaza y deja obsoletas a las versiones v1.0 y v2.0 MVP, así como a los documentos dispersos de Workflow y Flujo de Datos.

---

# 🧬 ANEXO 1: RECETA DE REPLICACIÓN (WORKFLOW ESTÁNDAR)

> **PROPÓSITO:** Guía operativa paso a paso para el ingeniero. Cómo cerrar un sistema desde cero.

## 1. EL FLUJO LÓGICO (De la Ley al Plano)

Para cada subsistema (CCTV, PMV, SOS...), debes seguir **estrictamente** estos 5 pasos. Si te saltas uno, generas "Deuda Técnica".

### PASO 1: EL ABOGADO (Defensa Contractual)
*   **Pregunta:** "¿Qué me obliga el contrato realmente?"
*   **Acción:** Analizar Apéndices Técnicos (AT) + Normativa (RETIE/IP-REV).
*   **Entregable:** `VII. Documentos Transversales/DICTAMEN_JURIDICO_[SISTEMA].md`
*   **Resultado:** Un documento que justifica por qué usamos "X cantidad".

### PASO 2: EL ESPECIFICADOR (T04 - Specs de Calidad)
*   **Pregunta:** "¿Qué marca/modelo compro que cumpla (1 o 2 baterías)?"
*   **Acción:** Ficha técnica "Defensiva" que define la autonomía y dimensiones.
*   **Entregable:** `IV. Ingenieria Basica/T04_SPEC_[SISTEMA]_v1.0.md`
*   **Regla:** Sin spec, el dibujante no sabe el tamaño del gabinete.

### PASO 3: EL DIBUJANTE (T02 - Input para Planos)
*   **Pregunta:** "¿Dónde pongo los postes y cómo los conecto?"
*   **Acción:** Croquis de instalación (Alzado, Planta Típica, Unifilar).
*   **Entregable:** `IV. Ingenieria Basica/02_T02_Layout_Instalacion_[SISTEMA]_v1.0.md`

### PASO 4: EL FINANCIERO (T05 - Cantidades y Precios)
*   **Pregunta:** "¿Cuánto cuesta todo lo anterior?"
*   **Acción:** Crear la tabla de cantidades basada en Dictamen + Spec + Plano.
*   **Entregable:** `V. Ingenieria de Detalle/XX_T05_Ingenieria_Detalle_[SISTEMA].md`
*   **Regla:** T05 es la ÚNICA fuente de verdad para el precio final (RFQ).

### PASO 5: LA WEB (Sincronización Dashboard)
*   **Pregunta:** "¿Cómo ve el Gerente todo esto junto?"
*   **Acción:** Actualizar la base de datos maestra (`docs/data/tm01_master_data.js`).
*   **Script:** `scripts/sync_wbs_tm01.ps1`.

---

# 🧬 ANEXO 2: MAPA DE TUBERÍAS (DATA FLOW)

> **PROPÓSITO:** Entender cómo viaja el dato técnicamente.

```
┌─────────────────────────────────────────────────────────────┐
│  1. CONTRATO (AT1, AT2, AT3, AT4)                          │
│  Ubicación: II. Apendices Tecnicos/                        │
│  Tipo: ❌ INMUTABLE (no editar)                             │
└────────────────────────┬────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────┐
│  2. T05 - INGENIERÍA DE DETALLE                            │
│  Ubicación: V. Ingenieria de Detalle/XX_T05_*.md           │
│  Tipo: ✏️ EDITABLE (fuente de cantidades y precios)        │
└────────────────────────┬────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────┐
│  3. SCRIPT SYNC (Powershell)                               │
│  Comando: .\scripts\sync_wbs_tm01.ps1                      │
│  Acción: Lee T05 (Markdown) -> Escribe JSON (JS)           │
└────────────────────────┬────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────┐
│  4. WEB DASHBOARD                                           │
│  Ubicación: docs/wbs.html                                  │
│  Tipo: 👁️ VISUALIZACIÓN (Solo lectura)                     │
└─────────────────────────────────────────────────────────────┘
```

**Validación de Integridad:**
Si editas el T05 pero no corres el script, la Web mentirá. Si editas la Web a mano, el script la sobrescribirá mañana. **Respetar el flujo.**
