# T02: ANÁLISIS DE REQUISITOS - [NOMBRE DEL SISTEMA]
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** [DD/MM/AAAA]  
**Sistema:** [Nombre del Sistema]  
**Responsable:** [Ingeniero Responsable]  
**Versión:** 1.0  

---

## 1. INTRODUCCIÓN

### 1.1 Propósito del Documento
[Descripción del propósito del análisis de requisitos]

### 1.2 Alcance
[Qué cubre este análisis de requisitos]

### 1.3 Definiciones y Acrónimos

| Término | Definición |
|:--------|:-----------|
| [Término 1] | [Definición] |
| [Término 2] | [Definición] |

---

## 2. REQUISITOS FUNCIONALES

### 2.1 [Función Principal 1]

**ID:** RF-001  
**Descripción:** [Descripción detallada de la función]  
**Prioridad:** [Alta / Media / Baja]  
**Fuente:** [AT2, Sección X.X]  

**Criterios de Aceptación:**
- [Criterio 1]
- [Criterio 2]
- [...]

### 2.2 [Función Principal 2]

**ID:** RF-002  
**Descripción:** [Descripción detallada]  
**Prioridad:** [Alta / Media / Baja]  
**Fuente:** [AT2, Sección X.X]  

**Criterios de Aceptación:**
- [Criterio 1]
- [Criterio 2]

[Continuar con todos los requisitos funcionales]

---

## 3. REQUISITOS NO FUNCIONALES

### 3.1 Requisitos de Disponibilidad

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-001** | Disponibilidad del sistema | 99% mensual | AT4 |
| **RNF-002** | MTBF (Tiempo Medio Entre Fallas) | [X] horas | AT2 |
| **RNF-003** | MTTR (Tiempo Medio de Reparación) | [Y] horas | AT2 |

### 3.2 Requisitos de Performance

| ID | Requisito | Valor Mínimo | Fuente |
|:---|:----------|:-------------|:-------|
| **RNF-004** | Tiempo de respuesta | < [X] segundos | AT2 |
| **RNF-005** | Capacidad de procesamiento | [X] transacciones/segundo | AT2 |
| **RNF-006** | Ancho de banda | [X] Mbps | AT2 |

### 3.3 Requisitos de Seguridad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-007** | Autenticación de usuarios | Control de acceso con roles | AT2 |
| **RNF-008** | Cifrado de datos | TLS 1.2 mínimo | AT2 |
| **RNF-009** | Backup de datos | Diario, retención X días | AT2 |

### 3.4 Requisitos de Usabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-010** | Interfaz de usuario | Intuitiva, capacitación < 8 horas | AT2 |
| **RNF-011** | Accesibilidad | Cumplir normativa colombiana | AT2 |

### 3.5 Requisitos de Mantenibilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-012** | Actualización de software | Remota, sin interrupción | AT2 |
| **RNF-013** | Diagnóstico remoto | Monitoreo SNMP | AT2 |
| **RNF-014** | Repuestos | Disponibilidad durante concesión | AT2 |

### 3.6 Requisitos de Escalabilidad

| ID | Requisito | Descripción | Fuente |
|:---|:----------|:------------|:-------|
| **RNF-015** | Capacidad de crecimiento | +30% sin cambios mayores | Buenas prácticas |
| **RNF-016** | Módulos expandibles | Arquitectura modular | Buenas prácticas |

---

## 4. REQUISITOS DE INTERFACES

### 4.1 Interface con [Sistema A]

**ID:** RI-001  
**Sistemas:** [Este Sistema] ↔ [Sistema A]  
**Tipo:** [Física / Lógica / Red de Datos]  
**Protocolo:** [TCP/IP, ONVIF, API REST, etc.]  
**Datos Intercambiados:** [Descripción]  
**Frecuencia:** [Tiempo real / Cada X minutos / Por evento]

### 4.2 Interface con [Sistema B]

**ID:** RI-002  
**Sistemas:** [Este Sistema] ↔ [Sistema B]  
**Tipo:** [Física / Lógica / Red de Datos]  
**Protocolo:** [Protocolo específico]  
**Datos Intercambiados:** [Descripción]  
**Frecuencia:** [Tiempo real / Cada X minutos / Por evento]

[Continuar con todas las interfaces]

---

## 5. MATRIZ DE TRAZABILIDAD

| Requisito ID | Tipo | Descripción | Fuente Contractual | Componente Afectado | Prioridad |
|:-------------|:-----|:------------|:-------------------|:--------------------|:----------|
| RF-001 | Funcional | [Descripción] | AT2, Sección X | [Componente] | Alta |
| RF-002 | Funcional | [Descripción] | AT2, Sección Y | [Componente] | Alta |
| RNF-001 | No Funcional | [Descripción] | AT4 | [Componente] | Alta |
| [Continuar...] | [...] | [...] | [...] | [...] | [...] |

---

## 6. RESTRICCIONES Y SUPUESTOS

### 6.1 Restricciones

| ID | Restricción | Impacto | Origen |
|:---|:------------|:--------|:-------|
| **REST-001** | [Descripción de restricción] | [Impacto en el diseño] | [Contractual / Técnico / Legal] |
| **REST-002** | [Descripción] | [Impacto] | [Origen] |

### 6.2 Supuestos

| ID | Supuesto | Riesgo si no se cumple | Validación |
|:---|:---------|:-----------------------|:-----------|
| **SUP-001** | [Descripción del supuesto] | [Riesgo] | [Cómo validar] |
| **SUP-002** | [Descripción] | [Riesgo] | [Cómo validar] |

**Ejemplo:**
- SUP-001: Fibra óptica disponible en todo el corredor | Alto (falta de comunicaciones) | Validar en mes 3 con estudio de campo

---

## 7. CASOS DE USO

### 7.1 Caso de Uso Principal 1

**ID:** CU-001  
**Actor:** [Usuario / Operador / Sistema]  
**Descripción:** [Qué hace el actor]  
**Precondiciones:** [Qué debe estar listo antes]  
**Flujo Normal:**
1. [Paso 1]
2. [Paso 2]
3. [...]

**Postcondiciones:** [Estado final]  
**Flujos Alternativos:** [Qué pasa si falla]

### 7.2 Caso de Uso Principal 2

[Repetir estructura]

---

## 8. CRITERIOS DE ACEPTACIÓN

### 8.1 Criterios Funcionales

- [ ] [Criterio 1: El sistema debe...]
- [ ] [Criterio 2: El sistema debe...]
- [ ] [...]

### 8.2 Criterios de Performance

- [ ] Disponibilidad ≥ 99% mensual
- [ ] Tiempo de respuesta < [X] segundos
- [ ] [Otros criterios]

### 8.3 Criterios de Calidad

- [ ] Cumplir normativa [X]
- [ ] Certificaciones [Y]
- [ ] [Otros criterios]

---

## 9. DEPENDENCIAS

| Sistema/Recurso | Tipo de Dependencia | Criticidad | Estado |
|:----------------|:--------------------|:-----------|:-------|
| [Sistema A] | [Debe estar operativo antes] | Alta | ⏳ Pendiente |
| [Recurso B] | [Se requiere para instalación] | Media | ⏳ Pendiente |

**Ejemplo:**
- Fibra Óptica: Debe estar instalada antes de equipos ITS, Alta, ⏳ Pendiente

---

## 10. PRÓXIMOS PASOS

- [ ] Desarrollar arquitectura conceptual (T03)
- [ ] Validar requisitos con stakeholders
- [ ] Solicitar aclaraciones contractuales (si aplica)
- [ ] Elaborar especificaciones técnicas (T04)

---

## 11. CONTROL DE VERSIONES

| Versión | Fecha | Responsable | Descripción |
|:---:|:---:|:---|:---|
| **v1.0** | [DD/MM/AAAA] | [Ingeniero] | Análisis inicial de requisitos |

---

**Versión:** 1.0  
**Estado:** ✅ Análisis de Requisitos Completado  
**Fecha:** [DD/MM/AAAA]  
**Responsable:** [Nombre del Ingeniero]

