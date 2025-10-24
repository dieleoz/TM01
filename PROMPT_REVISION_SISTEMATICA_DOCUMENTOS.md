# PROMPT SISTEMÁTICO PARA REVISIÓN DE DOCUMENTOS

## 🎯 **PROMPT PRINCIPAL**

```
CONTEXTO CRÍTICO ACTUALIZADO:

He recibido información oficial del proyecto que modifica el contexto desde la Fase III - Ingeniería Conceptual. Esta información es FUNDAMENTAL y debe aplicarse a todos los documentos del proyecto.

INFORMACIÓN OFICIAL CONFIRMADA:

1. LONGITUD DEL PROYECTO:
   - Longitud Principal: 259.6 km (RN 4510 + RN 4511)
   - Longitud Total: ~293 km (incluyendo RN 4513 conexión CCO)
   - RN 4510: ~134 km (Troncal Magdalena Honda-Río Ermitaño)
   - RN 4511: ~149 km (Troncal Magdalena Río Ermitaño-La Lizama)
   - RN 4513: ~10 km (Conexión al CCO en La Lizama)

2. RUTAS DEL PROYECTO:
   - RN 4510: Troncal Magdalena Honda-Río Ermitaño
   - RN 4511: Troncal Magdalena Río Ermitaño-La Lizama
   - RN 4513: Empalme RN 4511 → CCO La Lizama (PK 4+300)

3. UNIDADES FUNCIONALES:
   - UFs Oficiales: 0D, 1, 2, 3, 4, 5
   - UFs Adicionales: 6-13 (extensiones del proyecto)

4. SISTEMAS ITS OFICIALES:
   - Postes SOS (auxilio)
   - Paneles de Mensajería Variable (PMV)
   - Circuito Cerrado de Televisión (CCTV)
   - Comunicaciones fibra óptica

5. CCO (Centro de Control Operacional):
   - Ubicación: La Lizama PK 4+300
   - Justificación: AT1 Cap. 3

6. PROGRESIVOS KILOMÉTRICOS:
   - PKR: Progresivos reales según planos oficiales
   - PKD: Progresivos de diseño lineal continuo desde PK 0 hasta último PK
   - Metodología PKD: PKD = PKR + Offset_Acumulado_Por_Ruta

TAREA ESPECÍFICA:

Revisa el documento [NOMBRE_DEL_DOCUMENTO] y:

1. ✅ VALIDA que las longitudes coincidan con la información oficial
2. ✅ CONFIRMA que las rutas (RN 4510, RN 4511, RN 4513) estén correctamente referenciadas
3. ✅ VERIFICA que las UFs estén alineadas con la información oficial
4. ✅ ACTUALIZA cualquier referencia a sistemas ITS con la lista oficial
5. ✅ CORRIGE cualquier inconsistencia con la ubicación del CCO
6. ✅ APLICA metodología PKD lineal correcta
7. ✅ DOCUMENTA cualquier cambio realizado con justificación

INSTRUCCIONES:

- Si encuentras inconsistencias, CORRÍGELAS inmediatamente
- Si hay dudas sobre cantidades o ubicaciones, DOCUMENTA la discrepancia
- MANTÉN todas las referencias cruzadas actualizadas
- PRESERVA la estructura del documento original
- AGREGA una nota al final indicando "Revisado con información oficial del proyecto"

RESULTADO ESPERADO:

Un documento actualizado y consistente con la información oficial del proyecto, manteniendo la calidad técnica y las referencias cruzadas.
```

---

## 📋 **VARIACIONES POR TIPO DE DOCUMENTO**

### **T01 - Fichas de Sistemas**
```
+ VALIDA cantidades específicas del sistema contra información oficial
+ CONFIRMA ubicaciones geográficas con rutas oficiales
+ VERIFICA integración con CCO en La Lizama
+ ACTUALIZA estimaciones CAPEX/OPEX con datos oficiales
```

### **T02 - Análisis de Requisitos**
```
+ ACTUALIZA requisitos funcionales con estructura oficial del proyecto
+ VERIFICA casos de uso con longitudes y rutas oficiales
+ CONFIRMA criterios de aceptación con información del CCO
+ REVISA requisitos no funcionales con datos oficiales
```

### **T03 - Arquitecturas Conceptuales**
```
+ REDISEÑA topologías con estructura oficial (RN 4510, RN 4511, RN 4513)
+ ACTUALIZA diagramas con ubicación correcta del CCO
+ VERIFICA distribución de componentes con longitudes oficiales
+ CORRIGE arquitecturas de red con información oficial
```

### **T04 - Especificaciones Técnicas**
```
+ ACTUALIZA especificaciones con datos oficiales del proyecto
+ VERIFICA estándares y normativas con información oficial
+ CONFIRMA protocolos de prueba con estructura oficial
+ REVISA especificaciones de equipos con datos oficiales
```

### **T05 - Ingeniería de Detalle**
```
+ ACTUALIZA APU con información oficial del proyecto
+ VERIFICA cronogramas con estructura oficial
+ CONFIRMA protocolos de pruebas con datos oficiales
+ REVISA presupuestos con información oficial
```

### **Documentos Transversales**
```
+ VALIDA análisis con información oficial del proyecto
+ CONFIRMA validaciones contractuales con datos oficiales
+ ACTUALIZA referencias cruzadas con información oficial
+ VERIFICA conclusiones con datos oficiales
```

---

## 🚀 **PLAN DE APLICACIÓN SISTEMÁTICA**

### **FASE III - INGENIERÍA CONCEPTUAL (39 documentos)**

#### **Prioridad 1 - Documentos Críticos:**
1. `24_T01_Ficha_Sistema_ITS_v1.0.md`
2. `55_T03_Arquitectura_Conceptual_Telecomunicaciones_v1.0.md`
3. `53_T03_Arquitectura_Conceptual_ITS_v1.0.md`
4. `54_T03_Arquitectura_Conceptual_CCO_v1.0.md`
5. `26_T01_Ficha_Sistema_CCO_v1.0.md`

#### **Prioridad 2 - Documentos de Soporte:**
6. `27_T01_Ficha_Sistema_Telecomunicaciones_v1.0.md`
7. `31_T02_Analisis_Requisitos_ITS_v1.0.md`
8. `48_T02_Analisis_Requisitos_Telecomunicaciones_v1.0.md`
9. `32_T02_Analisis_Requisitos_CCO_v1.0.md`
10. `29_RESUMEN_T01_SISTEMAS_PRINCIPALES_v1.0.md`

#### **Prioridad 3 - Documentos Restantes:**
11-39. Resto de documentos T01, T02, T03

### **FASE IV - INGENIERÍA BÁSICA (13 documentos)**

#### **Documentos T04:**
1. `02_T04_Especificaciones_Tecnicas_ETD_Radares_v1.0.md`
2. `08_T04_Especificaciones_Tecnicas_Telecomunicaciones_v1.0.md`
3. Resto de documentos T04

### **FASE V - INGENIERÍA DE DETALLE (10 documentos)**

#### **Documentos T05:**
1. `01_T05_Costos_Detallados_ITS_v1.0.md`
2. `02_T05_Costos_Detallados_Telecomunicaciones_v1.0.md`
3. Resto de documentos T05

### **DOCUMENTOS TRANSVERSALES (16 documentos)**

#### **Validaciones Contractuales:**
1. `34_VALIDACION_CONTRACTUAL_POSTES_SOS_v1.0.md`
2. `32_VALIDACION_CONTRACTUAL_TELECOMUNICACIONES_v1.0.md`
3. Resto de validaciones

---

## 📊 **CHECKLIST DE REVISIÓN**

### **Para cada documento, verificar:**

- [ ] **Longitudes:** Coinciden con 259.6 km principal + 33.4 km adicionales
- [ ] **Rutas:** RN 4510, RN 4511, RN 4513 correctamente referenciadas
- [ ] **UFs:** 0D, 1, 2, 3, 4, 5 oficiales + 6-13 extensiones
- [ ] **Sistemas ITS:** SOS, PMV, CCTV + comunicaciones fibra óptica
- [ ] **CCO:** Ubicado en La Lizama PK 4+300
- [ ] **PKD:** Metodología lineal aplicada correctamente
- [ ] **Referencias cruzadas:** Actualizadas y consistentes
- [ ] **Cantidades:** Validadas contra información oficial
- [ ] **Ubicaciones:** Alineadas con estructura oficial
- [ ] **Presupuestos:** Actualizados con datos oficiales

---

## 🎯 **RESULTADO ESPERADO**

Al final del barrido sistemático:

1. **✅ TODOS los documentos** estarán alineados con la información oficial
2. **✅ CONSISTENCIA total** entre fases y documentos
3. **✅ REFERENCIAS CRUZADAS** actualizadas y válidas
4. **✅ METODOLOGÍA PKD** aplicada correctamente
5. **✅ LAYOUT VALIDADO** contra información oficial del proyecto

---

**Fecha de creación:** 22 de octubre de 2025  
**Versión:** 1.0  
**Estado:** Listo para aplicación sistemática
