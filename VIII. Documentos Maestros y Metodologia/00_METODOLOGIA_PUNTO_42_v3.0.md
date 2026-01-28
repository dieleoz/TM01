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
- **`sync_wbs_tm01.ps1`:** El "Parser Inteligente". Lee los Markdown T05, extrae las tablas de precios y genera los archivos JSON (`datos_wbs_TM01_items.js`) para la web.
- **Validaciones Contractuales:** Documentos (`34_VALIDACION_*.md`) que certifican que la ingeniería cumple con la Capa 1.

### **CAPA 4: VISUALIZACIÓN (Web Dashboard)**
*Ubicación: `docs/`*
- **`presupuesto.html`**: Tablero financiero.
- **`wbs.html`**: Desglose estructural de trabajo.
- **`layout.html`**: Visualización geográfica.
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

---

## 🚀 REFERENCIAS OPERATIVAS

- **Manual de Operaciones:** `FUENTES_DE_VERDAD.md` (Lectura obligatoria para ingenieros).
- **Control de Versiones:** `docs/CONTROL_VERSIONES_DOCUMENTOS.md`.
- **Índice de Auditoría:** `VII. Documentos Transversales/00_INDICE_AUDITORIA_6_0_ENE2026.md`.

---
**Autoridad:** Esta metodología reemplaza y deja obsoletas a las versiones v1.0 y v2.0 MVP.
