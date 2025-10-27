# 🚀 Guía para Publicar en GitHub Pages

## 📋 Resumen del Estado Actual

**Proyecto:** TM01 Troncal Magdalena  
**Estado:** ✅ Sistema de Validación Web completado al 100%  
**Archivos listos:** Carpeta `docs/` con todos los archivos necesarios

## ✅ Paso 1: Verificar Archivos Preparados

Los siguientes archivos están en la carpeta `docs/`:

```
docs/
├── index.html                          ✅ Portal de acceso
├── WBS_Menu_Principal.html             ✅ Menú principal
├── WBS_COMPLETA_TODO_Interactiva_v5.0.html  ✅ WBS completa
├── layout.html                         ✅ Layout georreferenciado
├── presupuesto.html                    ✅ Presupuesto
├── wbs.html                            ✅ WBS simplificada
├── datos_wbs_TM01_items.js            ✅ Datos WBS
├── layout_datos.js                     ✅ Datos layout
├── presupuesto_datos.js                ✅ Datos presupuesto
├── data/
│   └── tm01_master_data.js            ✅ Datos maestros
└── README.md                           ✅ Documentación
```

## 🚀 Paso 2: Configurar GitHub Pages

### Opción A: Desde la Interfaz Web de GitHub (Recomendado)

1. **Ir a tu repositorio en GitHub:**
   - URL: https://github.com/dieleoz/TM01
   - O tu repositorio personal si es diferente

2. **Ir a Settings:**
   - Click en "Settings" (Ajustes) en el menú superior del repositorio

3. **Navegar a Pages:**
   - En el menú lateral izquierdo, buscar "Pages"
   - O ir directamente a: https://github.com/dieleoz/TM01/settings/pages

4. **Configurar Source:**
   - En la sección "Source", seleccionar:
     - **Branch:** `main` (o `master` si ese es tu branch principal)
     - **Folder:** `/docs`
   - Click en "Save"

5. **Esperar el despliegue:**
   - GitHub publicará tu sitio automáticamente
   - URL será: `https://dieleoz.github.io/TM01/`
   - Puede tomar 1-5 minutos

### Opción B: Desde la Línea de Comandos

```bash
# 1. Asegurarte de estar en el branch main
git checkout main

# 2. Agregar y commitear la carpeta docs
git add docs/
git commit -m "feat: agregar archivos para GitHub Pages"

# 3. Push a GitHub
git push origin main
```

Luego ir a Settings > Pages en GitHub para configurar.

## 🔍 Paso 3: Verificar el Despliegue

1. **Ir a la URL de tu sitio:**
   ```
   https://[tu-usuario].github.io/TM01/
   ```

2. **Verificar que carga correctamente:**
   - Deberías ver el portal de acceso con los campos de usuario y contraseña

3. **Probar credenciales:**
   - Usuario: `QA`
   - Contraseña: `qa2025`

## 🔧 Paso 4: Actualizar Archivos en el Futuro

Cada vez que quieras actualizar el sitio:

```bash
# 1. Editar archivos en Sistema_Validacion_Web/
# (o directamente en docs/ si es más fácil)

# 2. Copiar archivos actualizados a docs/
Copy-Item -Path "Sistema_Validacion_Web\*" -Destination "docs\" -Recurse -Force

# 3. Commit y push
git add docs/
git commit -m "feat: actualizar sistema de validación web"
git push origin main

# 4. GitHub automáticamente actualizará el sitio en 1-5 minutos
```

## 🔐 Seguridad y Credenciales

**⚠️ IMPORTANTE:** Las credenciales están en el código HTML (no son reales, son de demostración).

Si esto es un sistema de producción, deberías:
- Usar autenticación backend
- No almacenar contraseñas en texto plano
- Usar OAuth o similar
- Implementar HTTPS obligatorio

## 📊 Monitoreo del Sitio

### Ver el Estado del Despliegue

1. **Ir a Actions:**
   - Click en "Actions" en el menú superior del repositorio
   - Verás los builds de GitHub Pages

2. **Ver logs de errores:**
   - Si hay errores, aparecerán en rojo en Actions
   - Click en el commit para ver detalles

### Actualizar Datos Dinámicamente

Para actualizar datos sin cambiar HTML:

1. **Editar archivos .js en docs/data/**
2. **Commit y push**
3. **El sitio se actualizará automáticamente**

## 🐛 Troubleshooting

### Problema: El sitio no carga

**Solución:**
1. Verificar que la carpeta `docs/` existe y tiene archivos
2. Verificar en Settings > Pages que la configuración es correcta
3. Esperar 5-10 minutos (primer despliegue toma más tiempo)
4. Verificar en Actions si hay errores de build

### Problema: Los archivos JS no cargan

**Solución:**
1. Verificar que las rutas en los HTML son relativas (no absolutas)
2. Verificar que los archivos .js existen en la ubicación correcta
3. Abrir consola del navegador (F12) para ver errores específicos

### Problema: Cambios no se reflejan

**Solución:**
1. Verificar que hiciste commit y push
2. Esperar 1-5 minutos para que GitHub procese
3. Limpiar cache del navegador (Ctrl+Shift+R o Cmd+Shift+R)
4. Verificar que estás en la branch correcta

## 📝 Checklist Final

Antes de publicar, verifica:

- [ ] Carpeta `docs/` contiene todos los archivos necesarios
- [ ] `index.html` es la página principal
- [ ] Rutas son relativas (no absolutas como `/C:/...`)
- [ ] Archivos .js son referenciados correctamente en HTML
- [ ] No hay errores de sintaxis en HTML/JS
- [ ] Credenciales de acceso están documentadas
- [ ] README.md explica cómo usar el sistema

## 🎉 ¡Listo!

Una vez configurado, tu sitio estará disponible en:
```
https://[tu-usuario].github.io/TM01/
```

**Credenciales de Acceso:**
- Usuario: `QA` / Contraseña: `qa2025`
- Usuario: `Especificador` / Contraseña: `spec2025`
- Usuario: `Admin` / Contraseña: `admin2025`

---

**Versión:** 1.0  
**Fecha:** 24 de octubre de 2025  
**Autor:** Equipo TM01
