# 🔍 COMPARACIÓN DE ARQUITECTURAS - TM01 vs APP La Dorada

**Fecha**: 27 de Octubre 2025  
**Objetivo**: Identificar diferencias y definir estrategia de unificación

---

## 📊 COMPARACIÓN TÉCNICA

### PROYECTO ORIGINAL (APP La Dorada-Chiriguaná)

#### Características Clave:
- ✅ **Sistema de login integrado en index.html**
  - Login y portal en un mismo archivo
  - Verificación de sesión con `sessionStorage`
  - Portal se muestra después de login exitoso
  - Usuario: `0rt1z` / Contraseña: `0rt1z`

- ✅ **Arquitectura de archivos:**
  ```
  index.html (login + portal)
  ├── Login (visible inicialmente)
  └── Portal (oculto hasta login)
      ├── WBS_Menu_Principal.html
      ├── WBS_LAYOUT_Georeferenciado.html
      ├── WBS_Analisis_Riesgos.html
      └── etc...
  ```

- ✅ **Estilos externos:**
  - `assets/css/portal-login.css`
  - CSS separado del HTML (mejor mantenibilidad)

- ✅ **Seguridad:**
  - Límite de intentos: 5
  - Timeout de sesión: 30 minutos
  - Bloqueo de 5 minutos tras MAX_INTENTOS

---

### PROYECTO ACTUAL (TM01 Troncal Magdalena)

#### Características Actuales:
- ⚠️ **Separación login/página:**
  - `index.html` (raíz) = login
  - `docs/index.html` = dashboard
  - Redirección entre páginas

- ⚠️ **Arquitectura actual:**
  ```
  index.html (login) → redirige a → docs/index.html
  docs/
    ├── index.html (dashboard)
    ├── wbs.html
    ├── presupuesto.html
    └── etc...
  ```

- ⚠️ **Problema identificado:**
  - El login redirige a un dashboard diferente
  - Usuario puede ver el dashboard sin pasar por login directo
  - Flujo de autenticación fragmentado

---

## 🎯 **ANÁLISIS DEL PROBLEMA**

### ¿Qué Hacer?

**Opción 1: Adoptar Arquitectura Original (Recomendada) ✅**
- Unificar login y portal en un solo archivo
- Usar el mismo patrón del proyecto original
- Mejora de seguridad y UX

**Opción 2: Mantener Arquitectura Actual**
- Corregir enlaces y flujo
- Mantener separación login/dashboard

**Opción 3: Arquitectura Híbrida**
- Login en index.html
- Portal con verificación de sesión
- Mejor que opción 2, pero más complejo

---

## 💡 **RECOMENDACIÓN: Opción 1**

### Ventajas:
1. ✅ **Mismo patrón probado** del proyecto original
2. ✅ **Login y portal en un mismo archivo** (más simple)
3. ✅ **Mejor seguridad** (todo en un lugar)
4. ✅ **Mejor UX** (transición suave sin redirección)
5. ✅ **Archivos CSS externos** (mejor mantenibilidad)

### Implementación Sugerida:
1. Copiar estructura de `index.html` del proyecto original
2. Adaptar credenciales a TM01:
   - QA / qa2025
   - Especificador / spec2025
   - Admin / admin2025
3. Adaptar enlaces del portal a las páginas TM01
4. Mover `docs/index.html` → solo ser un portal sin login

---

## 📋 **PLAN DE ACCIÓN PROPUESTO**

### Paso 1: Actualizar index.html
- Copiar estructura login+portal del proyecto original
- Adaptar credenciales y enlaces

### Paso 2: Crear portal nuevo
- Crear `docs/portal.html` con estadísticas TM01
- Enlaces a wbs.html, presupuesto.html, etc.

### Paso 3: Actualizar docs/index.html
- Convertirlo en portal puro
- Verificación de sesión obligatoria

### Paso 4: Probar flujo completo
- Login en index.html
- Portal después de login
- Enlaces a todas las páginas

---

## ⚠️ **DECISIÓN REQUERIDA**

**Pregunta al usuario:**
1. ¿Queremos adoptar la arquitectura original (login+portal en index.html)?
2. ¿O mantener la actual pero corregida?
3. ¿Cuál es tu preferencia?

---

**Elaborado por**: Cursor AI Assistant  
**Fecha**: 27 de Octubre 2025

