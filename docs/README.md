# 🌐 Sistema de Validación Web TM01 - Troncal Magdalena

## 📋 Descripción

Sistema web interactivo para validación externa del proyecto TM01 Troncal Magdalena con arquitectura dinámica de 4 capas.

## 🚀 Acceso al Sistema

URL de Producción: https://[tu-usuario].github.io/TM01/

### Credenciales de Acceso

**Rol: QA (Quality Assurance)**
- Usuario: QA
- Contraseña: qa2025

**Rol: Especificador**
- Usuario: Especificador
- Contraseña: spec2025

**Rol: Administrador**
- Usuario: Admin
- Contraseña: admin2025

## 📂 Archivos Principales

### Interfaces de Usuario
- index.html - Portal de acceso seguro con roles
- WBS_Menu_Principal.html - Menú principal con 6 interfaces
- WBS_COMPLETA_TODO_Interactiva_v5.0.html - WBS interactiva con 24 items
- layout.html - Layout con 52 equipos georreferenciados
- presupuesto.html - Presupuesto con cálculos automáticos
- wbs.html - Visualización WBS simplificada

### Datos (Fuente Única de Verdad)
- data/tm01_master_data.js - Datos maestros del proyecto
- datos_wbs_TM01_items.js - Datos WBS estructurados (24 items)
- layout_datos.js - Layout georreferenciado (52 equipos)
- presupuesto_datos.js - Datos presupuestales dinámicos

## 🏗️ Arquitectura del Sistema

### Capa 1: Fuentes de Verdad
Documentos base inmutables que contienen la información oficial del proyecto.

### Capa 2: Transformación
Scripts PowerShell que sincronizan y transforman datos

### Capa 3: Datos Intermedios
Archivos JavaScript generados dinámicamente con estructura optimizada.

### Capa 4: Visualización
Interfaces HTML interactivas para usuarios finales.

## 📊 Funcionalidades

### Sistema de Acceso Seguro
- Autenticación con roles (QA, Especificador, Admin)
- Redirección automática según rol
- Gestión de sesiones

### WBS Completa Interactiva
- 24 items WBS estructurados por sistemas
- Botones de acción por item
- Filtros por sistema (SOS, ETD/RADAR, CCTV, PMV, METEO, WIM)

### Layout Maestro
- 52 equipos georreferenciados
- Mapa interactivo con marcadores
- Filtros por tipo, sistema, ubicación

### Presupuesto Interactivo
- Cálculos automáticos AIU (33%) e IVA (19%)
- Subtotales por subsistema
- Exportación a Excel

## 📈 Estado Actual del Proyecto

**Progreso Total:** ✅ 100% Completado
- ✅ Validaciones: 13/13 sistemas validados (100%)
- ✅ Presupuesto ITS: USD $7.79M consolidado
- ✅ Rediseño Arquitectónico: Completado (ahorros -$21.9M)
- ✅ Arquitectura Red: L2/L3 validada
- ✅ Ingeniería Detalle: 10 documentos T05 completados

---

**Versión:** 5.0  
**Última actualización:** 24 de octubre de 2025  
**Estado:** ✅ Sistema Operativo
