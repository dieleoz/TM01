# 🏗️ ARQUITECTURA WEB TM01 - Troncal Magdalena

**Fecha**: 28 de Octubre 2025  
**Versión**: 1.0  
**Objetivo**: Sistema de Validación Web con arquitectura dinámica de 4 capas

---

## 📊 RESUMEN EJECUTIVO

Sistema de validación web para proyecto TM01 Troncal Magdalena (293 km) que permite:
- ✅ Visualización interactiva de WBS, Layout y Presupuesto
- ✅ Gestión de Decisiones Técnicas con propagación automática
- ✅ Actualización en tiempo real sin regenerar HTML
- ✅ Arquitectura de 4 capas: Fuente → Transformación → Datos → Visualización

---

## 🏛️ ARQUITECTURA DE 4 CAPAS

```
┌─────────────────────────────────────────────────────────┐
│ CAPA 4: VISUALIZACIÓN (HTML)                           │
│ 📍 Raíz: index.html (login → redirige a WBS_Menu_*)     │
│ 📁 docs/: WBS_Menu_Principal.html (entrada principal) │
│ 📁 docs/: wbs.html, layout.html, presupuesto.html     │
└─────────────────────────────────────────────────────────┘
                          ↕️ Carga JS dinámicamente
┌─────────────────────────────────────────────────────────┐
│ CAPA 3: DATOS INTERMEDIOS (JS)                        │
│ 📁 docs/data/: tm01_master_data.js                    │
│ 📁 docs/: datos_wbs_TM01_items.js                     │
│ 📁 docs/: layout_datos.js                              │
└─────────────────────────────────────────────────────────┘
                          ↕️ Generado por scripts
┌─────────────────────────────────────────────────────────┐
│ CAPA 2: TRANSFORMACIÓN (PS1)                          │
│ 📁 scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1      │
│    → sync_wbs_tm01.ps1                                │
│    → sincronizar_layout.ps1                           │
│    → sincronizar_presupuesto.ps1                      │
└─────────────────────────────────────────────────────────┘
                          ↕️ Lee desde
┌─────────────────────────────────────────────────────────┐
│ CAPA 1: FUENTES DE VERDAD (Master Data)              │
│ 📁 Sistema_Validacion_Web/data/tm01_master_data.js    │
│    → Peajes (DT-PEAJES-018)                          │
│    → Telecom, SOS, CCTV, PMV, METEO, WIM              │
└─────────────────────────────────────────────────────────┘
```

---

## 📂 ESTRUCTURA DE CARPETAS

```
0.0 FORMATOS PARA IA/
│
├── index.html                           ← Landing GitHub Pages (standalone)
├── assets/
│   └── js/login.js                      ← (Opcional) Lógica de login para portales internos
│
├── docs/                                ← GitHub Pages (publicado)
│   ├── WBS_Menu_Principal.html          ← Menú navegación (entrada)
│   ├── wbs.html                         ← Vista WBS
│   ├── layout.html                      ← Vista layout
│   ├── presupuesto.html                 ← Vista presupuesto
│   │
│   ├── data/
│   │   └── tm01_master_data.js          ← Fuente única de verdad
│   │
│   ├── datos_wbs_TM01_items.js          ← Datos WBS
│   ├── layout_datos.js                  ← Datos layout
│   └── presupuesto_datos.js             ← (Opcional) Datos presupuesto
│
└── Sistema_Validacion_Web/
    ├── data/
    │   └── tm01_master_data.js          ← MASTER (fuente)
    ├── datos_wbs_TM01_items.js          ← Generado
    ├── layout_datos.js                  ← Generado
    └── presupuesto_datos.js             ← Generado
```

---

## 🔄 FLUJO DE ACTUALIZACIÓN

### 1. **CAMBIO EN DATOS**
```powershell
# Editar fuente única de verdad
Edit-File "Sistema_Validacion_Web/data/tm01_master_data.js"
```

### 2. **SINCRONIZACIÓN AUTOMÁTICA**
```powershell
# Ejecutar script maestro
.\scripts\sincronizar_SISTEMA_TM01_COMPLETO.ps1 -Force

# Genera:
# - Sistema_Validacion_Web/datos_wbs_TM01_items.js
# - Sistema_Validacion_Web/layout_datos.js
# - Sistema_Validacion_Web/presupuesto_datos.js
```

### 3. **PUBLICACIÓN A DOCS**
```powershell
# Copiar a carpeta publicada
Copy-Item "Sistema_Validacion_Web/data/tm01_master_data.js" "docs/data/"
Copy-Item "Sistema_Validacion_Web/datos_wbs_TM01_items.js" "docs/"
Copy-Item "Sistema_Validacion_Web/layout_datos.js" "docs/"
Copy-Item "Sistema_Validacion_Web/presupuesto_datos.js" "docs/"
```

### 4. **VISUALIZACIÓN AUTOMÁTICA**
- HTML carga `.js` dinámicamente
- Al recargar página (F5) → datos actualizados
- Sin necesidad de regenerar HTML

---

## 🎯 PÁGINAS WEB REQUERIDAS

### **Raíz** (GitHub Pages)
1. **index.html** - Landing estática (enlaces a `docs/*`)

### **docs/** (Contenido)
2. **WBS_Menu_Principal.html** - Menú navegación (punto de entrada)
3. **wbs.html** - Estructura WBS interactiva
4. **layout.html** - Mapa y tabla filtrable
5. **presupuesto.html** - Dashboard presupuestal

---

## 🔐 SISTEMA DE AUTENTICACIÓN (Opcional)

### Usuarios (si se habilita login en un portal interno)
```javascript
const VALID_CREDENTIALS = {
    '0rt1z': '0rt1z',
    'QA': 'qa2025',
    'Especificador': 'spec2025',
    'Admin': 'admin2025'
};
```

### Seguridad (si aplica)
- ✅ Límite 5 intentos (bloqueo 5 min)
- ✅ Timeout 30 min por inactividad
- ✅ Credenciales en archivo externo (no en git)

---

## 📊 DATOS MAESTROS

### Estructura tm01_master_data.js
```javascript
class TM01MasterData {
    constructor() {
        this.data = {
            wbs: [],              // Estructura jerárquica
            presupuesto: [],      // Valores presupuestales
            layout: [],           // Ubicaciones equipos
            contratos: [],        // Validación contractual
            dts: [],              // Decisiones técnicas
            cambios: []           // Historial cambios
        };
    }
}
```

### Módulos JS
- **datos_wbs_TM01_items.js**: Items WBS con cantidades
- **layout_datos.js**: Coordenadas y ubicaciones
- **presupuesto_datos.js**: Cálculos presupuestales

---

## 🚀 PROCEDIMIENTO DE IMPLEMENTACIÓN

### PASO 1: Crear página de login (index.html)
- ✅ Usuario/Contraseña
- ✅ Redirect a docs/index.html post-login

### PASO 2: Redirección post-login
- ✅ index.html → `docs/WBS_Menu_Principal.html`

### PASO 3: Crear menú principal (docs/WBS_Menu_Principal.html)
- ✅ Navegación a todas las vistas
- ✅ Estadísticas dinámicas

### PASO 4: Crear vistas específicas
- ✅ docs/wbs.html → Carga datos_wbs_TM01_items.js
- ✅ docs/layout.html → Carga layout_datos.js
- ✅ docs/presupuesto.html → Carga presupuesto_datos.js

### PASO 5: Copiar datos a docs/
```powershell
Copy-Item "Sistema_Validacion_Web/data/tm01_master_data.js" "docs/data/" -Force
Copy-Item "Sistema_Validacion_Web/*.js" "docs/" -Force
```

---

## ✨ CARACTERÍSTICAS CLAVE

1. **Actualización en tiempo real** - No regenera HTML, solo recarga JS
2. **Arquitectura limpia** - Separación de concerns por capas
3. **Escalabilidad** - Fácil agregar nuevas vistas
4. **Mantenibilidad** - Una fuente de verdad para todo
5. **Performance** - Cache-busting con timestamps

---

## 🔗 ENLACES

- **GitHub Pages**: https://dieleoz.github.io/TM01/
- **Login**: https://dieleoz.github.io/TM01/index.html
- **Portal**: https://dieleoz.github.io/TM01/docs/index.html

---

## 📝 HISTORIAL DE IMPLEMENTACIÓN

1. ✅ Crear index.html en raíz (landing standalone)
2. ✅ Crear docs/index.html con portal y métricas dinámicas
3. ✅ Crear docs/WBS_Menu_Principal.html con estadísticas
4. ✅ Crear vistas wbs.html, layout.html, presupuesto.html
5. ✅ Publicar datos JS a docs/
6. ✅ Implementar filtros dinámicos en WBS y Layout
7. ✅ Sistema de autenticación opcional (implementado pero no requerido)
8. ✅ GitHub Pages publicado y operativo

---

## ✨ CARACTERÍSTICAS IMPLEMENTADAS

- ✅ **Filtros dinámicos**: Sistemas poblados desde datos en tiempo real
- ✅ **Búsqueda de texto**: Filtrado en tiempo real en WBS y Layout
- ✅ **Métricas dinámicas**: Totales calculados desde master data
- ✅ **Arquitectura de 4 capas**: Completamente operativa
- ✅ **DT-PEAJES-018**: Integrada con valores reales
- ✅ **GitHub Pages**: Publicado en https://dieleoz.github.io/TM01/
- ✅ **Commits**: 10+ commits sincronizados

---

**Estado**: ✅ **COMPLETADO Y OPERATIVO**  
**Última actualización**: 28 Oct 2025 (PM)  
**Versión**: 1.0

