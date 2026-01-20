# VALIDACIÓN CONTRACTUAL - CCTV (SISTEMA DE CIRCUITO CERRADO DE TELEVISIÓN)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 19/01/2026 (Actualización v2.0)  
**Sistema:** CCTV - Sistema de Circuito Cerrado de Televisión  
**Responsable:** Administrador Contractual EPC  
**Versión:** 2.0  
**Estado:** ✅ Validación Contractual Completada con Trazabilidad N1-N6

---

## 1. RESUMEN EJECUTIVO

### 1.1 Obligación Contractual Validada

**Cantidad Validada:** **15 cámaras** (Optimización: Hard Deck + Nodos Críticos).  
**Base Legal:** Apéndice Técnico 2 (Adenda 2) + Justificación Técnica Operativa.  
**Estado:** ✅ **ALINEADO CON OPERACIÓN**

### 1.2 Criterio de Validación

**Requisito Contractual:**
> "El Concesionario deberá instalar sistemas de videovigilancia en puntos críticos del corredor, especialmente en Estaciones de Peaje, Áreas de Servicio y zonas de alta accidentalidad, integrados al CCO."

**Compromiso EPC (Mínimo Ejecutable):**
- **Cámaras Panorámicas Peajes (AT2 3.3.5.1):** 4 Unidades (Mínimo Mandatorio).
- **Cámaras Áreas de Servicio (AT2 3.3.5.1):** 4 Unidades (Mínimo Mandatorio).
- **Intersecciones Críticas:** 4 Unidades (Koran, Pto Boyacá, Lizama, Yuma).
- **Báscula / WIM:** 1 Unidad (Registro visual de pesaje).
- **CCO La Lizama:** 2 Unidades (Seguridad perimetral y operativa).
- **Total:** **15 Unidades**

---

## 2. TRAZABILIDAD DOCUMENTAL (JERARQUÍA N1-N6)

Se ha realizado la trazabilidad en la jerarquía documental con los siguientes hallazgos vinculantes:

### [N4] Apéndice Técnico 2 (Operación y Mantenimiento)
- **Sección 3.3.5.1 – Sistema de Control de Tráfico (OBLIGACIÓN PRINCIPAL):**
- **Sección 3.3.5.1 – Sistema de Control de Tráfico (OBLIGACIÓN PRINCIPAL):**
  > "Para el control del flujo vehicular, el Concesionario se obliga a instalar al menos una **cámara panorámica en cada Estación de Peaje**..."
  
  > **"Además de las Estaciones de Peaje, deberán instalarse CCTV en las Áreas de Servicio..."** (Obligación Explícita y Adicional).

- **Sección 3.3.4 – Equipamiento de Peajes (OBLIGACIÓN ESPECÍFICA):**
  Requiere subsistema de video para operación:
  1. Cámaras de seguridad de la plaza.
  2. Cámaras de auditoría de ejes.
  3. LPR (Reconocimiento de Placas).

### [N5] Apéndice Técnico 4 (Indicadores)
- **Indicador I-O1 (Disponibilidad ITS):** Define la meta prestacional. Disponibilidad ≥ 99% anual para el "Sistema de Control de Tráfico".

### [N3] Apéndice Técnico 1 (Alcance)
- **Inferencia Estructural:** Adenda 4 y Tablas de Cantidades definen la infraestructura base para estos puntos.

---

## 3. VALIDACIÓN DE CANTIDADES Y UBICACIONES

### 3.1 Ubicaciones Obligatorias (Capa 1)

**Ubicaciones Contractuales (AT2 3.3.5.1):**
1.  **Estaciones de Peaje (Obligatorio "Cámara Panorámica"):**
    - Peaje Zambito (PR 9+200) -> 2 Cámaras Panorámicas (1 por sentido/sector).
    - Peaje Aguas Negras (PR 80+000) -> 2 Cámaras Panorámicas.
2.  **Áreas de Servicio (Obligatorio):**
    - A.S. Zambito -> 2 Cámaras.
    - A.S. Aguas Negras -> 2 Cámaras.
3.  **Zonas Necesarias (Interventoría/Policía):**
    - Intersecciones a Desnivel, Puentes Mayores, Puntos Críticos de Accidentalidad.
    - Total zonas críticas acordadas: ~20 cámaras.
4.  **CCO La Lizama:** Seguridad perimetral y monitoreo.

**Total Consolidado:** 15 Cámaras (Optimización de cobertura en nodos vitales).

### 3.2 Tabla de Ejecución Inmediata

| ÍTEM | CANTIDAD | ESPECIFICACIÓN CRÍTICA | FUNDAMENTO | CERTEZA |
|:-----|:---------|:-----------------------|:-----------|:--------|
| **Cámara PTZ Panorámica** | 15 Unidades | IP66, IK10, Zoom 32x | Operativo | ✅ ALTA |
| **Almacenamiento** | 60 TB | Servidores RAID 6, 30 días | Operativo | ✅ ALTA |

**Justificación Técnica de Cantidades (Enfoque Mínimo Riesgo Concesionario):**

- **Cobertura Operativa:** Se priorizan los 10 puntos del Hard Deck y se adicionan las 4 intersecciones principales y la báscula para asegurar la continuidad de la fiscalización y control.
- **Justificación 15 Cámaras:**
    *   4 Peajes (Cobertura mandatoria)
    *   4 Áreas de Servicio (Seguridad mandatoria)
    *   2 CCO (Perímetro mandatorio)
    *   4 Intersecciones (Nodos de alto tráfico - Operativo)
    *   1 Báscula (Registro visual de pesajes - Operativo)

---

## 4. RIESGOS Y RECOMENDACIONES (ANALYSIS EPC)

### 4.1 Riesgos de Ejecución
1.  **Rechazo de Ubicación:** Instalar sin visto bueno de Interventoría sobre el "punto ciego" o ubicación exacta del poste.
2.  **Fallo de Integración:** Cámaras que funcionan localmente pero no transmiten al CCO. Esto genera penalización por Indicador de Disponibilidad (I-O1), resultando en **NO PAGO**.

### 4.2 Acciones Inmediatas para el EPC
1.  **Radicación de Fichas Técnicas:** Enviar a Interventoría las fichas técnicas de Cámaras PTZ y Fijas para "No Objeción" antes de emitir Orden de Compra.
    - *Referencia:* Documento `03_T04_Especificaciones_Tecnicas_CCTV_v1.0.md`.
2.  **Validación de Puntos:** Realizar recorrido conjunto con Interventoría para firmar acta de "Ubicación de Puntos de Videovigilancia".
3.  **Prueba de Conectividad:** No instalar postes hasta confirmar que el tendido de Fibra Óptica (AT5) tiene caja de empalme proyectada en el punto exacto.

### 4.3 Checklist de Validación Técnica
- [ ] ¿La cámara propuesta cumple protocolo ONVIF Profile S/G?
- [ ] ¿El cálculo de almacenamiento soporta 30 días en H.265 a 1080p?
- [ ] ¿Se incluyó la protección eléctrica (DPS) en el gabinete de campo?

---

## 5. IMPACTO ECONÓMICO

## 5. IMPACTO ECONÓMICO (ACTUALIZADO T01 v1.1)
**Costo Estimado Consolidado:** **$1,580,000 USD** (incluye integración CCO y 15 puntos campo).

**Justificación de Aumento (vs Estimación Previa $320k):**
La validación anterior subestimaba el alcance. El nuevo valor incluye la **integración completa MVP** necesaria para operatividad real:
- **Videowall y Centro de Control:** Equipamiento completo CCO La Lizama.
- **Licenciamiento VMS:** Software de gestión empresarial (tipo Milestone/Genetec).
- **Almacenamiento Masivo:** Servidores RAID 6 con 90TB para 30 días de retención (superando la semana contractual).
- **Obra Civil Robusta:** Postes abatibles, cimentaciones y acometidas de fibra en 30 puntos dispersos.

**Estado:** 🔴 **ALERTA CAPEX RESUELTA** (Alineado con Ficha T01).

---

**⚠️ Nota de Discrepancia:**
Existe una diferencia de ubicación en **Peaje Aguas Negras** entre la información del usuario (80+000) y la Tabla Maestra (81+800). Se recomienda verificar en campo la ubicación exacta del pórtico de peaje.
