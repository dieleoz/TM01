# README - ENTREGABLES CONSOLIDADOS (LAYER 5)

**Proyecto:** TM01 Troncal Magdalena  
**Versión:** 1.0  
**Fecha:** 27 de Enero 2026  
**Propósito:** Documentos finales listos para cliente/proveedores

---

## 🎯 ¿QUÉ ES ESTA CARPETA?

Esta carpeta contiene los **documentos finales** del proyecto TM01, listos para ser entregados a:
- **Proveedores** (RFQs - Solicitudes de Cotización)
- **Cliente** (Resúmenes Ejecutivos, Presupuestos)
- **Equipo de Compras** (Órdenes de Compra)

---

## 🏗️ ARQUITECTURA: CAPA 5 (SERVICIOS)

Estos documentos son la **Capa 5** de la Metodología Punto 42 v3.0:

```
CAPA 1: Contrato (AT1-AT4)
   ↓
CAPA 2: Ingeniería (T01-T05)
   ↓
CAPA 3: Validación (Scripts)
   ↓
CAPA 4: Visualización (Web)
   ↓
CAPA 5: SERVICIOS (Esta carpeta) ← "Del Horno al Plato"
```

---

## 📂 ESTRUCTURA DE LA CARPETA

```
X_ENTREGABLES_CONSOLIDADOS/
├── 00_HISTORICO/                  → Versiones obsoletas (NO USAR)
├── 7_SISTEMAS_EJECUTIVOS/         → Resúmenes ejecutivos (Markdown)
├── 8_DOCUMENTOS_SERVIDOS/HTML/    → HTMLs generados automáticamente
├── RFQ_001_FIBRA_OPTICA_v2.0.md   → RFQs listos para licitar
├── RFQ_002_SOS_Postes_v2.0.md
├── RFQ_003_CCTV_v2.0.md
├── RFQ_008_PMV_v1.0.md
├── PRESUPUESTO_ITS_PURO_v2.0.md
└── README.md (este archivo)
```

---

## 🤖 REGENERACIÓN AUTOMÁTICA

### **IMPORTANTE:** Estos documentos NO se editan manualmente.

Si necesitas actualizar cantidades, precios o especificaciones:

### **Paso 1: Editar la Fuente de Verdad (T05)**
```
Ubicación: V. Ingenieria de Detalle/
Ejemplo: 05_T05_Ingenieria_Detalle_CCTV_v1.0.md
```

### **Paso 2: Ejecutar el Script de Cocina**
```powershell
# Desde la raíz del proyecto:
cd "d:\onedrive\gdrive\TM1\0.1 ingenieria basica\0.0 FORMATOS PARA IA"

# Regenerar RFQs (sincroniza T05 → RFQs)
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_rfqs.ps1"

# Regenerar Ejecutivos (sincroniza T01 → HTMLs)
powershell -ExecutionPolicy Bypass -File "scripts\cocinar_ejecutivos.ps1"
```

### **Paso 3: Verificar los Cambios**
Los archivos RFQ ahora tendrán un bloque automático al final:
```markdown
<!-- BLOQUE AUTOMATICO INICIO: CCTV -->
### 📊 Cantidades Validadas (Fuente: T05)
[Tabla con datos actualizados]
> Actualizado: 2026-01-27
<!-- BLOQUE AUTOMATICO FIN -->
```

---

## 📋 LISTA DE DOCUMENTOS

### **RFQs (Solicitudes de Cotización)**
| Archivo | Sistema | Estado | Fuente T05 |
|:--------|:--------|:-------|:-----------|
| `RFQ_001_FIBRA_OPTICA_v2.0.md` | Fibra Óptica + Switches | ✅ Actualizado | `01_T05_Ingenieria_Detalle_Fibra_Optica_v1.0.md` |
| `RFQ_002_SOS_Postes_v2.0.md` | Postes SOS | ✅ Actualizado | `04_T05_Ingenieria_Detalle_Postes_SOS_v1.0.md` |
| `RFQ_003_CCTV_v2.0.md` | CCTV | ✅ Actualizado | `05_T05_Ingenieria_Detalle_CCTV_v1.0.md` |
| `RFQ_006_ETD_v1.0.md` | ETD/Radar | ✅ Actualizado | `07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md` |
| `RFQ_007_RADARES_SANCIONATORIOS_v2.1.md` | Radares (SAST) | ✅ Actualizado | `07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md` |
| `RFQ_007_MONITORES_VELOCIDAD_INFORMATIVOS_v2.1.md` | Monitores Informativos | ✅ Actualizado | `07_T05_Ingenieria_Detalle_RADAR_ETD_v1.0.md` |
| `RFQ_008_PMV_v1.0.md` | PMV (Paneles) | ✅ Actualizado | `06_T05_Ingenieria_Detalle_PMV_v1.0.md` |

### **Presupuestos**
| Archivo | Descripción | Estado |
|:--------|:------------|:-------|
| `PRESUPUESTO_ITS_PURO_v2.0.md` | Presupuesto consolidado ITS | ✅ Vigente |

### **Ejecutivos (Generados Automáticamente)**
| Archivo | Sistema | Generado por |
|:--------|:--------|:-------------|
| `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_01_*.html` | Recaudo y Peajes | `cocinar_ejecutivos.ps1` |
| `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_02_*.html` | Telecom y Fibra | `cocinar_ejecutivos.ps1` |
| `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_03_*.html` | ITS y Pesaje WIM | `cocinar_ejecutivos.ps1` |
| `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_04_*.html` | Equipos Operación Vial | `cocinar_ejecutivos.ps1` |
| `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_05_*.html` | CCO | `cocinar_ejecutivos.ps1` |
| `8_DOCUMENTOS_SERVIDOS/HTML/SISTEMA_06_*.html` | Integración/Software | `cocinar_ejecutivos.ps1` |

---

## 🛡️ CERTIFICACIÓN DE COMPRAS

Todos los RFQs incluyen un sello de certificación al final:

```
> 🛡️ CERTIFICACION DE COMPRAS: Este documento ha sido sincronizado 
> con Ingenieria de Detalle (T05). Las cantidades reflejan la ultima 
> version aprobada.
```

Esto garantiza que los documentos de compras están alineados con la ingeniería.

---

## ⚠️ REGLAS IMPORTANTES

1. **NO EDITAR MANUALMENTE:** Los bloques automáticos se sobrescriben al ejecutar el script.
2. **VERSIONAMIENTO:** Si necesitas una versión nueva, copia el archivo y cambia el número de versión (ej: `v2.0` → `v3.0`).
3. **ARCHIVOS OBSOLETOS:** Mover a `00_HISTORICO/` para mantener limpia la carpeta.
4. **TRAZABILIDAD:** Cada cambio debe tener un DT (Decisión Técnica) en `VII. Documentos Transversales/DTs/`.

---

## 📞 CONTACTO

**Responsable:** Equipo Técnico TM01  
**Metodología:** Punto 42 v3.0  
**Documentación:** `VIII. Documentos Maestros y Metodologia/00_METODOLOGIA_PUNTO_42_v3.0.md`

---

**Última actualización:** 27 de Enero 2026  
**Estado:** ✅ OPERATIVO
