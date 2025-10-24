# DT-TM01-ARQUITECTURA-021-20251024

## § 1. INFORMACIÓN GENERAL
- **Fecha**: 24 de octubre de 2025
- **Tipo**: Problema Arquitectónico Crítico
- **Sistema**: ARQUITECTURA
- **Item WBS**: Sistema de Validación Web
- **Responsable**: Ing. Sistemas

## § 2. DESCRIPCIÓN DEL PROBLEMA
**PROBLEMA CRÍTICO IDENTIFICADO**: Los cambios realizados en `tm01_master_data.js` se están perdiendo porque algún proceso está regenerando el archivo desde la documentación base.

**Síntomas observados**:
1. ✅ Hago cambios en `tm01_master_data.js` (ej: corrección USD/COP fibra óptica)
2. ✅ Los cambios se aplican correctamente
3. ✅ Ejecuto `sincronizar_SISTEMA_TM01_COMPLETO.ps1`
4. ❌ Los cambios se pierden después de la ejecución
5. ❌ El archivo vuelve a los valores originales de la documentación base

**Scripts identificados que pueden estar causando el problema**:
- `scripts/integrar_t05_limpio.ps1` - Lee desde T05 y reescribe tm01_master_data.js
- `scripts/sync_wbs_tm01_v2.ps1` - Puede estar regenerando desde documentación base

## § 3. JUSTIFICACIÓN TÉCNICA
- **Arquitectura incorrecta**: Los scripts están diseñados para regenerar desde documentación base, no para preservar cambios manuales
- **Flujo de datos roto**: Cambios → tm01_master_data.js → Scripts → Documentación base → Sobrescribe cambios
- **Pérdida de trazabilidad**: Los cambios manuales se pierden en cada regeneración
- **Inconsistencia de datos**: Los valores corregidos no se mantienen

## § 4. CRITERIOS DE DISEÑO
- **Fuente única de verdad**: `tm01_master_data.js` debe ser la fuente principal
- **Preservación de cambios**: Los cambios manuales deben mantenerse
- **Sincronización bidireccional**: Cambios en tm01_master_data.js → Documentación base
- **Trazabilidad completa**: Todos los cambios deben ser rastreables

## § 5. ALTERNATIVAS EVALUADAS
1. **Deshabilitar scripts de regeneración** (descartada - perdería funcionalidad)
2. **Modificar scripts para preservar cambios** (seleccionada - mantener funcionalidad)
3. **Cambiar arquitectura completamente** (descartada - muy complejo)
4. **Actualizar documentación base primero** (seleccionada - solución inmediata)

## § 6. IMPACTO PRESUPUESTAL
- **Diferencia USD**: $0 USD
- **Diferencia COP**: $0 COP
- **Impacto %**: 0% (problema arquitectónico, no de costos)
- **Nota**: Impacto en productividad y confiabilidad del sistema

## § 7. RIESGOS IDENTIFICADOS
- **Riesgo alto**: Pérdida de cambios manuales críticos
- **Riesgo medio**: Inconsistencia entre documentación y datos
- **Riesgo bajo**: Confusión en el equipo de desarrollo
- **Mitigación**: Implementar solución arquitectónica correcta

## § 8. DOCUMENTOS AFECTADOS
- Sistema_Validacion_Web/data/tm01_master_data.js
- Scripts de sincronización
- Documentación T05 base
- Arquitectura del sistema

## § 9. PLAN DE IMPLEMENTACIÓN
1. **INMEDIATO**: Actualizar documentación T05 con cambios de fibra óptica
2. **CORTO PLAZO**: Modificar scripts para preservar cambios manuales
3. **MEDIANO PLAZO**: Implementar sincronización bidireccional
4. **LARGO PLAZO**: Revisar arquitectura completa del sistema

## § 10. YAML DE INSTRUCCIONES
```yaml
dt_metadata:
  dt_id: "DT-TM01-ARQUITECTURA-021-20251024"
  sistema: "ARQUITECTURA"
  impacto_presupuesto: false
  impacto_layout: false
  impacto_wbs: true
  prioridad: "CRITICA"

acciones_inmediatas:
  - accion: "Actualizar documentación T05 con cambios USD/COP"
    archivo: "V. Ingenieria de Detalle/06_T05_Ingenieria_Detalle_PMV_v1.0.md"
    cambios:
      - seccion: "10.2 FIBRA ÓPTICA - MATERIALES"
        correcciones: "Valores USD/COP corregidos"
  
  - accion: "Modificar scripts de sincronización"
    archivos:
      - "scripts/integrar_t05_limpio.ps1"
      - "scripts/sync_wbs_tm01_v2.ps1"
    objetivo: "Preservar cambios manuales en tm01_master_data.js"

scripts_ejecutar:
  - script: "scripts/sincronizar_SISTEMA_TM01_COMPLETO.ps1"
    parametros: ["-Force"]
    nota: "Solo después de actualizar documentación base"
```

## § 11. CHECKBOX DE EJECUCIÓN
- [ ] Identificado el problema arquitectónico
- [ ] Actualizada documentación T05 base
- [ ] Modificados scripts de sincronización
- [ ] Validada preservación de cambios
- [ ] Implementada solución arquitectónica

## § 12. LOG DE EJECUCIÓN
**Fecha de identificación**: 24 de octubre de 2025 - 15:15:00
**Problema identificado**: ✅ Scripts regeneran desde documentación base
**Solución propuesta**: ✅ Actualizar documentación base + modificar scripts
**Estado**: 🔄 En implementación

**Próximos pasos**:
1. Actualizar `06_T05_Ingenieria_Detalle_PMV_v1.0.md` con valores USD/COP corregidos
2. Modificar scripts para preservar cambios manuales
3. Validar que la sincronización funcione correctamente
