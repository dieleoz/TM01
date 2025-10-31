# ARQUITECTURA DE CAMBIOS DINÁMICOS - SISTEMA TM01

> OBSOLETO/MIGRADO: Este contenido fue integrado y mantenido en `ARCHITECTURE.md` (secciones: Contrato-first y validaciones, Cambios dinámicos, RFQ AUTOGEN). Este archivo se conserva solo como referencia histórica.

## 🏗️ ESTRUCTURA DE PROPAGACIÓN DE CAMBIOS

### 1. **FUENTE ÚNICA DE VERDAD (Single Source of Truth)**
```javascript
// Archivo central: Sistema_Validacion_Web/data/tm01_master_data.js
const masterData = {
    wbs: [...], // Estructura WBS completa
    presupuesto: [...], // Datos presupuestales
    layout: [...], // Equipos georeferenciados
    contratos: [...], // Matriz contractual
    dts: [...] // Documentos técnicos generados
};
```

### 2. **FLUJO DE CAMBIOS**

#### A. **Cambio en WBS Interactiva**
```javascript
// 1. Usuario modifica item en WBS_COMPLETA_TODO_Interactiva_v4.0.html
function modificarItemWBS(itemId, nuevosDatos) {
    // Actualizar masterData
    masterData.wbs[itemId] = { ...masterData.wbs[itemId], ...nuevosDatos };
    
    // Generar DT automático
    generarDT('MODIFICACION', itemId, nuevosDatos);
    
    // Propagación automática
    propagarCambio('WBS', itemId, nuevosDatos);
}
```

#### B. **Propagación Automática**
```javascript
function propagarCambio(origen, itemId, datos) {
    // 1. Actualizar Presupuesto
    actualizarPresupuesto(itemId, datos);
    
    // 2. Actualizar Layout (si aplica)
    actualizarLayout(itemId, datos);
    
    // 3. Actualizar Matriz Contractual
    actualizarMatrizContractual(itemId, datos);
    
    // 4. Recalcular Totales
    recalcularTotales();
    
    // 5. Notificar Usuarios
    notificarCambio(origen, itemId, datos);
}
```

### 3. **IMPACTO PRESUPUESTAL AUTOMÁTICO**

#### A. **Cálculo Dinámico**
```javascript
function calcularImpactoPresupuestal(itemId, cambio) {
    const item = masterData.wbs[itemId];
    const presupuestoItem = masterData.presupuesto.find(p => p.item === itemId);
    
    // Calcular nuevo total
    const nuevoTotal = cambio.cantidad * cambio.vu;
    const diferencia = nuevoTotal - presupuestoItem.total;
    
    // Actualizar presupuesto
    presupuestoItem.cantidad = cambio.cantidad;
    presupuestoItem.vu = cambio.vu;
    presupuestoItem.total = nuevoTotal;
    
    // Recalcular AIU e IVA
    recalcularAIUeIVA(presupuestoItem);
    
    return {
        diferencia: diferencia,
        impactoPorcentual: (diferencia / presupuestoItem.total) * 100,
        nuevoTotal: nuevoTotal
    };
}
```

#### B. **Recálculo de Subsistemas**
```javascript
function recalcularSubsistema(sistema) {
    const itemsSistema = masterData.presupuesto.filter(p => p.sistema === sistema);
    
    const subtotal = itemsSistema.reduce((sum, item) => sum + parseFloat(item.total), 0);
    const cantidad = itemsSistema.reduce((sum, item) => sum + parseInt(item.cantidad || 0), 0);
    
    // Actualizar subtotal del sistema
    actualizarSubtotalSistema(sistema, subtotal, cantidad);
    
    // Recalcular total general
    recalcularTotalGeneral();
}
```

### 4. **TIPOS DE CAMBIOS SOPORTADOS**

#### A. **Cambios Cuantitativos**
- ✅ Modificar cantidad de equipos
- ✅ Cambiar valor unitario (VU)
- ✅ Ajustar ubicación/justificación

#### B. **Cambios Estructurales**
- ✅ Agregar nuevo item WBS
- ✅ Eliminar item existente
- ✅ Reorganizar jerarquía

#### C. **Cambios Contractuales**
- ✅ Modificar criterios técnicos
- ✅ Actualizar obligaciones contractuales
- ✅ Ajustar cumplimiento

### 5. **VALIDACIONES AUTOMÁTICAS**

#### A. **Validación Técnica**
```javascript
function validarCambio(itemId, cambio) {
    const validaciones = {
        cantidad: validarCantidad(cambio.cantidad),
        vu: validarValorUnitario(cambio.vu),
        ubicacion: validarUbicacion(cambio.ubicacion),
        criterio: validarCriterioTecnico(cambio.criterio)
    };
    
    return validaciones;
}
```

#### B. **Validación Contractual**
```javascript
function validarCumplimientoContractual(itemId, cambio) {
    const item = masterData.wbs[itemId];
    const contrato = masterData.contratos.find(c => c.item === itemId);
    
    return {
        cumple: cambio.cantidad >= contrato.minimo,
        justificacion: generarJustificacion(item, contrato),
        riesgo: calcularRiesgoContractual(cambio, contrato)
    };
}
```

### 6. **DOCUMENTACIÓN AUTOMÁTICA**

#### A. **Generación de DTs**
```javascript
function generarDTAutomatico(tipoCambio, itemId, datos) {
    const dt = {
        numero: `DT-${Date.now()}`,
        fecha: new Date().toISOString().split('T')[0],
        tipo: tipoCambio,
        item: itemId,
        descripcion: datos.descripcion,
        justificacion: datos.justificacion,
        impacto: calcularImpactoPresupuestal(itemId, datos),
        documentosAfectados: obtenerDocumentosAfectados(itemId),
        responsable: datos.responsable
    };
    
    // Guardar DT
    masterData.dts.push(dt);
    
    // Generar archivo Markdown
    generarArchivoDT(dt);
    
    return dt;
}
```

#### B. **Actualización de Documentos**
```javascript
function actualizarDocumentosAfectados(itemId, cambio) {
    const documentos = [
        'WBS_COMPLETA_TODO_Interactiva_v4.0.html',
        'WBS_Presupuesto_TM01_Troncal_Magdalena.html',
        'WBS_Layout_Maestro.html',
        'MATRIZ_CUMPLIMIENTO_TM01_Troncal_Magdalena.html'
    ];
    
    documentos.forEach(doc => {
        actualizarDocumento(doc, itemId, cambio);
    });
}
```

### 7. **INTERFAZ DE USUARIO DINÁMICA**

#### A. **Formulario de Cambios**
```html
<div class="cambio-form">
    <h3>🔄 Modificar Item WBS</h3>
    <form id="formCambio">
        <input type="hidden" id="itemId" />
        <div class="form-group">
            <label>Cantidad:</label>
            <input type="number" id="cantidad" />
        </div>
        <div class="form-group">
            <label>Valor Unitario (USD):</label>
            <input type="number" id="vu" />
        </div>
        <div class="form-group">
            <label>Justificación:</label>
            <textarea id="justificacion"></textarea>
        </div>
        <button type="submit">Aplicar Cambio</button>
    </form>
</div>
```

#### B. **Vista de Impacto en Tiempo Real**
```html
<div class="impacto-preview">
    <h4>📊 Impacto del Cambio</h4>
    <div class="impacto-item">
        <span>Diferencia:</span>
        <span id="diferencia">$0</span>
    </div>
    <div class="impacto-item">
        <span>Nuevo Total:</span>
        <span id="nuevoTotal">$0</span>
    </div>
    <div class="impacto-item">
        <span>Impacto %:</span>
        <span id="impactoPorcentual">0%</span>
    </div>
</div>
```

### 8. **IMPLEMENTACIÓN PRÁCTICA**

#### A. **Archivo de Configuración**
```javascript
// Sistema_Validacion_Web/config/cambio_config.js
const configCambios = {
    validaciones: {
        cantidadMinima: 1,
        vuMinimo: 100,
        vuMaximo: 1000000
    },
    propagacion: {
        automatica: true,
        notificaciones: true,
        backup: true
    },
    documentos: {
        wbs: 'WBS_COMPLETA_TODO_Interactiva_v4.0.html',
        presupuesto: 'WBS_Presupuesto_TM01_Troncal_Magdalena.html',
        layout: 'WBS_Layout_Maestro.html',
        matriz: 'MATRIZ_CUMPLIMIENTO_TM01_Troncal_Magdalena.html'
    }
};
```

#### B. **API de Cambios**
```javascript
// Sistema_Validacion_Web/api/cambios_api.js
class CambiosAPI {
    static async aplicarCambio(itemId, cambio) {
        // Validar cambio
        const validacion = validarCambio(itemId, cambio);
        if (!validacion.valido) {
            throw new Error(validacion.error);
        }
        
        // Aplicar cambio
        const resultado = await propagarCambio('WBS', itemId, cambio);
        
        // Generar DT
        const dt = generarDTAutomatico('MODIFICACION', itemId, cambio);
        
        return {
            exito: true,
            dt: dt,
            impacto: resultado.impacto,
            documentosActualizados: resultado.documentos
        };
    }
}
```

### 9. **BENEFICIOS DEL SISTEMA**

#### A. **Consistencia**
- ✅ Una sola fuente de verdad
- ✅ Propagación automática de cambios
- ✅ Validaciones integradas

#### B. **Trazabilidad**
- ✅ Historial completo de cambios
- ✅ DTs automáticos
- ✅ Auditoría completa

#### C. **Eficiencia**
- ✅ Actualizaciones en tiempo real
- ✅ Cálculos automáticos
- ✅ Documentación automática

#### D. **Confiabilidad**
- ✅ Validaciones múltiples
- ✅ Backups automáticos
- ✅ Rollback de cambios

### 10. **PRÓXIMOS PASOS**

1. **Implementar masterData centralizado**
2. **Crear API de cambios**
3. **Desarrollar interfaz de modificación**
4. **Implementar validaciones**
5. **Configurar propagación automática**
6. **Crear sistema de notificaciones**
7. **Implementar auditoría completa**

---

**🎯 OBJETIVO:** Sistema de cambios dinámicos que mantenga consistencia total entre WBS, Presupuesto, Layout y Documentos Contractuales, con trazabilidad completa y validaciones automáticas.
