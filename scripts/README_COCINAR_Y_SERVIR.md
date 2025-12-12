# GUÍA: FUNCIONES cocinar() y servir() v14.7

**Fecha creación:** 9 de Octubre 2025  
**Última actualización:** 11 de Octubre 2025 (v14.7.1)  
**Propósito:** Workflow automático para actualizar documentos servidos  
**Estado:** ✅ WORKFLOW AUTOMÁTICO IMPLEMENTADO

---

## 🔄 FLUJO COMPLETO v14.7 (AUTOMATIZADO)

```
1. ESPECIALISTA → Crea DT desde Layout o WBS
        ├─ WBS_Layout_Maestro.html (2,182 equipos)
        └─ WBS_COMPLETA_TODO_Interactiva_v4.0.html (124 ítems)
        ↓
2. ESPECIALISTA → Guarda DT
        └─ II. Apendices Tecnicos/Decisiones_Tecnicas/
        ↓
3. PMO → Ejecuta UN COMANDO 🚀
        .\scripts\servir_ingenieria_completo.ps1 -Sistema 02
        ↓
        ├─ [AUTOMÁTICO] cocinar.ps1 detecta DT con impacto_layout
        ├─ [AUTOMÁTICO] Ejecuta script especializado (regenerar_fibra, TETRA)
        ├─ [AUTOMÁTICO] Regenera layout.md y layout_datos.js
        ├─ [AUTOMÁTICO] Consolida ingeniería (I-VI → X/7_EJECUTIVOS/)
        ├─ [AUTOMÁTICO] servir.ps1 genera Word + HTML
        └─ [AUTOMÁTICO] Guarda en X/8_DOCUMENTOS_SERVIDOS/
        ↓
4. PMO → Refresh navegador (Ctrl+Shift+F5)
        └─ Verifica Layout actualizado (2,182 equipos)
        ↓
5. CLIENTE → Revisa documentos Word/HTML
        ├─ Encuentra mejoras
        └─ Genera nuevo DT
        ↓
6. VUELVE AL PASO 1 (iteración continua)
```

**⏱️ Tiempo total:** ~30 segundos  
**🎯 Intervención manual:** Solo 1 comando  
**✅ Resultado:** Layout + WBS + Ingeniería + Documentos cliente actualizados  

---

## 🍳 FUNCIÓN: cocinar()

### **Propósito:**
Regenerar documentos ejecutivos leyendo la cocina (I-VI) y aplicando DTs ejecutadas.

### **Comandos:**

```powershell
# Cocinar solo sistemas con DTs nuevas (últimos 7 días)
.\scripts\cocinar.ps1

# Cocinar todos los sistemas
.\scripts\cocinar.ps1 -Todo

# Cocinar solo un sistema específico
.\scripts\cocinar.ps1 -Sistema 02
```

### **Qué hace:**
1. Identifica qué sistemas tienen DTs recientes
2. Lee fuentes de la cocina (III. Ingenieria conceptual)
3. Lee DTs ejecutadas
4. Actualiza X/7_SISTEMAS_EJECUTIVOS/ con:
   - Justificaciones desde cocina
   - DTs aplicadas documentadas
   - Versión incrementada (v1.0 → v1.1)

### **Cuándo usar:**
- ✅ Después de ejecutar DTs nuevas
- ✅ Antes de servir documentos al cliente
- ✅ Cuando necesites validar coherencia cocina → ejecutivos

---

## 🍽️ FUNCIÓN: servir()

### **Propósito:**
Convertir documentos ejecutivos (.md) a formatos empresariales (Word/HTML).

### **Comandos:**

```powershell
# Servir solo documentos actualizados (últimos 7 días)
.\scripts\servir.ps1

# Servir todos los documentos
.\scripts\servir.ps1 -Todo

# Servir solo un sistema específico
.\scripts\servir.ps1 -Sistema 02
```

### **Qué hace:**
1. Lee X/7_SISTEMAS_EJECUTIVOS/*.md
2. Usa Pandoc para generar:
   - Word (.docx) → Para editar/imprimir
   - HTML (.html) → Para visualizar en navegador
3. Guarda en X/8_DOCUMENTOS_SERVIDOS/

### **Cuándo usar:**
- ✅ Después de cocinar
- ✅ Antes de entregar al cliente
- ✅ Cuando necesites actualizar formatos empresariales

---

## 📋 FLUJO ITERATIVO TÍPICO

### **Escenario: Ejecutaste 3 DTs nuevas**

```powershell
# 1. Ver qué DTs hay
Get-ChildItem "II. Apendices Tecnicos\Decisiones_Tecnicas\DT-*.md" | 
    Where-Object { $_.LastWriteTime -gt (Get-Date).AddDays(-1) } | 
    Select-Object Name, LastWriteTime

# 2. Cocinar (regenera ejecutivos desde cocina)
.\scripts\cocinar.ps1

# 3. Servir (genera Word/HTML)
.\scripts\servir.ps1

# 4. Abrir menú para verificar
start "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML\INDICE_Documentos_Servidos.html"
```

---

## 🎯 ATAJOS RÁPIDOS

### **Cocinar y servir todo (consolidación completa):**

```powershell
.\scripts\cocinar.ps1 -Todo
.\scripts\servir.ps1 -Todo
```

### **Solo un sistema específico:**

```powershell
.\scripts\cocinar.ps1 -Sistema 02
.\scripts\servir.ps1 -Sistema 02
```

### **Flujo automático completo:**

```powershell
# Cocina + Sirve automáticamente
.\scripts\cocinar.ps1; .\scripts\servir.ps1
```

---

## ⚙️ CONFIGURACIÓN

### **Archivos involucrados:**

**Cocina (fuentes):**
- `III. Ingenieria conceptual/*.md`
- `V. Ingenieria de detalle/*.md`
- `II. Apendices Tecnicos/Decisiones_Tecnicas/DT-*.md`
- `IX. WBS y Planificacion/WBS_Presupuestal_v2.0.md`

**Ejecutivos (intermedios):**
- `X_ENTREGABLES_CONSOLIDADOS/7_SISTEMAS_EJECUTIVOS/*.md`

**Servidos (finales):**
- `X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/WORD/*.docx`
- `X_ENTREGABLES_CONSOLIDADOS/8_DOCUMENTOS_SERVIDOS/HTML/*.html`

---

## 🔍 VERIFICACIÓN

### **Después de cocinar():**
```powershell
# Ver qué sistemas se actualizaron
Get-ChildItem "X_ENTREGABLES_CONSOLIDADOS\7_SISTEMAS_EJECUTIVOS\*.md" | 
    Where-Object { $_.LastWriteTime -gt (Get-Date).AddMinutes(-5) } | 
    Select-Object Name, LastWriteTime
```

### **Después de servir():**
```powershell
# Ver archivos servidos recientemente
Get-ChildItem "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML\*.html" | 
    Sort-Object LastWriteTime -Descending | 
    Select-Object -First 10 | 
    Select-Object Name, LastWriteTime
```

---

## 💡 TIPS

### **Iteración rápida:**
Después de ejecutar varias DTs:
```powershell
# 1. Cocina solo lo que cambió
.\scripts\cocinar.ps1

# 2. Sirve solo lo que cambió
.\scripts\servir.ps1

# 3. Abre el menú actualizado
start "X_ENTREGABLES_CONSOLIDADOS\8_DOCUMENTOS_SERVIDOS\HTML\INDICE_Documentos_Servidos.html"
```

### **Validación antes de entregar al cliente:**
```powershell
# Cocina y sirve TODO para asegurar coherencia
.\scripts\cocinar.ps1 -Todo
.\scripts\servir.ps1 -Todo
```

---

**Elaborado por:** Sistema WBS Interactivo  
**Versión:** 1.0  
**Estado:** ✅ Operativo

