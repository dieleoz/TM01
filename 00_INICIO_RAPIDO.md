# 🚀 GUÍA DE INICIO RÁPIDO (ONBOARDING)
## Proyecto TM01 - Troncal Magdalena (ITS)

**Bienvenido al Equipo de Ingeniería.**
Si acabas de aterrizar en este repositorio, este documento es tu **brújula**. No toques nada sin leer esto primero.

---

## 🛑 PASO 1: LA LEY (LECTURA OBLIGATORIA)
Antes de editar una sola línea, debes leer el documento maestro que gobierna todo el proyecto. Aquí están las reglas del juego, la arquitectura y los flujos.

👉 **[LEER: 00_METODOLOGIA_PUNTO_42_v3.0.md](VIII.%20Documentos%20Maestros%20y%20Metodologia/00_METODOLOGIA_PUNTO_42_v3.0.md)**

*Si no lees esto, romperás la trazabilidad y tus cambios serán revertidos.*

---

## 🗺️ PASO 2: ENTIENDE DÓNDE ESTÁS
Este no es un repositorio de archivos sueltos. Es una **Base de Datos Documental** de 5 capas.

| Capa | Qué es | Dónde vive | Regla de Oro |
|:---|:---|:---|:---|
| **1. Contrato** | PDF/Markdown Jurídico | `II. Apendices Tecnicos/` | ❌ **INMUTABLE.** No se toca. |
| **2. Ingeniería** | T01 a T05 (Markdown) | `III`, `IV`, `V` | ✏️ **EDITABLE.** Aquí trabajas. |
| **3. Transformación** | Scripts (.ps1) | `scripts/` | 🤖 **AUTOMÁTICO.** No editar lógica. |
| **4. Web** | Dashboard HTML/JS | `docs/` | 👁️ **SOLO LECTURA.** Se sobrescribe diario. |
| **5. Servicios** | Entregables Cliente | `X. Entregables/` | 📤 **PRODUCTO FINAL.** Salida de la cocina. |

---

## 🛠️ PASO 3: TU TRABAJO DIARIO (LA RECETA)
¿Tienes que diseñar o cerrar un sistema (ej: CCTV, PMV)? Sigue la **RECETA DE REPLICACIÓN** (Anexo 1 de la Metodología).

1.  **Legal:** ¿Qué dice el contrato? -> Crea/Revisa `DICTAMEN_JURIDICO`.
2.  **Precios:** ¿Cuánto cuesta? -> Edita `T05_Ingenieria_Detalle`. **(FUENTE DE VERDAD)**
3.  **Specs:** ¿Qué compramos? -> Edita `T04_Especificaciones`.
4.  **Planos:** ¿Cómo se instala? -> Crea `T02_Layout_Instalacion`.
5.  **Sync:** Actualiza el Dashboard -> Ejecuta `sync_wbs_tm01.ps1`.

---

## 💻 PASO 4: COMANDOS ESENCIALES
Ejecuta estos scripts en PowerShell desde la raíz del proyecto para ver tus cambios reflejados.

### Para actualizar precios/cantidades en la Web:
```powershell
.\scripts\sync_wbs_tm01.ps1
```

### Para generar los RFQs de compras:
```powershell
.\scripts\cocinar_rfqs.ps1
```

### Para generar las Fichas Técnicas HTML:
```powershell
.\scripts\generar_specs_tecnicas.ps1
```

---

## ⚠️ PASO 5: LO QUE NUNCA DEBES HACER

1.  ❌ **NUNCA** edites los archivos `.js` o `.html` en `docs/` manualmente. Tus cambios se borrarán al correr los scripts. Edita el **markdown T05**.
2.  ❌ **NUNCA** cambies una cantidad contractual sin un **Dictamen Jurídico** que lo respalde.
3.  ❌ **NUNCA** crees carpetas nuevas fuera de la estructura estándar.

---

**¿Listo?**
Ve a la carpeta **`VIII. Documentos Maestros`** y **LEE LA METODOLOGÍA**. ¡Suerte!
