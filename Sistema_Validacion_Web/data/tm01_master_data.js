// SISTEMA DE DATOS MAESTRO TM01 - FUENTE ÚNICA DE VERDAD
// Archivo: Sistema_Validacion_Web/data/tm01_master_data.js

class TM01MasterData {
    constructor() {
        this.data = {
            wbs: [],
            presupuesto: [],
            layout: [],
            contratos: [],
            dts: [],
            cambios: []
        };
        
        this.initializeData();
    }
    
    initializeData() {
        // Datos WBS
        this.data.wbs = [
            // CAPÍTULO 1: SISTEMA SOS
            {id: '1', nivel: 1, item: "1", descripcion: "SISTEMA SOS", sistema: "SOS", tipo: "capitulo"},
            {id: '1.1', nivel: 2, item: "1.1", descripcion: "SUMINISTROS SOS", sistema: "SOS", tipo: "subcapitulo"},
            {id: '1.1.1', nivel: 3, item: "1.1.1", descripcion: "Poste SOS con panel solar", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "AT1 Cap. 3 - Criterio 1km", vu: "15,000", total: "1,320,000", totalCOP: "5,808,000,000"},
            {id: '1.1.2', nivel: 3, item: "1.1.2", descripcion: "Botón de emergencia SOS", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Funcionalidad SOS", vu: "500", total: "44,000", totalCOP: "193,600,000"},
            {id: '1.1.3', nivel: 3, item: "1.1.3", descripcion: "Panel solar 100W", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Alimentación autónoma", vu: "2,000", total: "176,000", totalCOP: "774,400,000"},
            {id: '1.1.4', nivel: 3, item: "1.1.4", descripcion: "Batería gel 12V 100Ah", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Respaldo energético", vu: "1,500", total: "132,000", totalCOP: "580,800,000"},
            
            // CAPÍTULO 2: SISTEMA ETD/RADAR
            {id: '2', nivel: 1, item: "2", descripcion: "SISTEMA ETD/RADAR", sistema: "ETD/RADAR", tipo: "capitulo"},
            {id: '2.1', nivel: 2, item: "2.1", descripcion: "SUMINISTROS ETD", sistema: "ETD/RADAR", tipo: "subcapitulo"},
            {id: '2.1.1', nivel: 3, item: "2.1.1", descripcion: "Estación de Tratamiento de Datos", sistema: "ETD/RADAR", cantidad: "14", unidad: "UND", tipo: "item", criterio: "AT1 Cap. 3 - Criterio 15km", vu: "200,000", total: "2,800,000", totalCOP: "12,320,000,000"},
            {id: '2.1.2', nivel: 3, item: "2.1.2", descripcion: "Radares de velocidad", sistema: "ETD/RADAR", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control vehicular", vu: "200,000", total: "400,000", totalCOP: "1,760,000,000"},
            
            // CAPÍTULO 3: SISTEMA CCTV
            {id: '3', nivel: 1, item: "3", descripcion: "SISTEMA CCTV", sistema: "CCTV", tipo: "capitulo"},
            {id: '3.1', nivel: 2, item: "3.1", descripcion: "SUMINISTROS CCTV", sistema: "CCTV", tipo: "subcapitulo"},
            {id: '3.1.1', nivel: 3, item: "3.1.1", descripcion: "Cámaras PAN", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "AT1 Cap. 3 - Solo en peajes", vu: "30,000", total: "900,000", totalCOP: "3,960,000,000"},
            {id: '3.1.2', nivel: 3, item: "3.1.2", descripcion: "Cámaras fijas", sistema: "CCTV", cantidad: "15", unidad: "UND", tipo: "item", criterio: "Supervisión CCO y estaciones", vu: "30,000", total: "450,000", totalCOP: "1,980,000,000"},
            
            // CAPÍTULO 4: SISTEMA PMV
            {id: '4', nivel: 1, item: "4", descripcion: "SISTEMA PMV", sistema: "PMV", tipo: "capitulo"},
            {id: '4.1', nivel: 2, item: "4.1", descripcion: "SUMINISTROS PMV", sistema: "PMV", tipo: "subcapitulo"},
            {id: '4.1.1', nivel: 3, item: "4.1.1", descripcion: "Paneles de mensaje variable", sistema: "PMV", cantidad: "12", unidad: "UND", tipo: "item", criterio: "AT1 Cap. 3 - Criterio 20km", vu: "50,000", total: "600,000", totalCOP: "2,640,000,000"},
            
            // CAPÍTULO 5: SISTEMA METEO
            {id: '5', nivel: 1, item: "5", descripcion: "SISTEMA METEO", sistema: "METEO", tipo: "capitulo"},
            {id: '5.1', nivel: 2, item: "5.1", descripcion: "SUMINISTROS METEO", sistema: "METEO", tipo: "subcapitulo"},
            {id: '5.1.1', nivel: 3, item: "5.1.1", descripcion: "Estaciones meteorológicas", sistema: "METEO", cantidad: "3", unidad: "UND", tipo: "item", criterio: "NTC 5660 + Supervisión CCO", vu: "50,000", total: "150,000", totalCOP: "660,000,000"},
            
            // CAPÍTULO 6: SISTEMA WIM
            {id: '6', nivel: 1, item: "6", descripcion: "SISTEMA WIM", sistema: "WIM", tipo: "capitulo"},
            {id: '6.1', nivel: 2, item: "6.1", descripcion: "SUMINISTROS WIM", sistema: "WIM", tipo: "subcapitulo"},
            {id: '6.1.1', nivel: 3, item: "6.1.1", descripcion: "Sistema WIM dinámico", sistema: "WIM", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Pesaje en movimiento", vu: "150,000", total: "150,000", totalCOP: "660,000,000"},
            {id: '6.1.2', nivel: 3, item: "6.1.2", descripcion: "Báscula estática", sistema: "WIM", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Pesaje estático verificación", vu: "100,000", total: "100,000", totalCOP: "440,000,000"}
        ];
        
        // Datos Presupuesto (sincronizados con WBS)
        this.data.presupuesto = this.data.wbs.map(item => ({
            ...item,
            tipo: item.tipo === 'item' ? 'SUMINISTRO' : '',
            ubicacion: this.getUbicacionDefault(item.sistema),
            justificacion: item.criterio || ''
        }));
        
        // Datos Layout
        this.data.layout = this.generateLayoutData();
        
        // Datos Contractuales
        this.data.contratos = this.generateContractualData();
    }
    
    getUbicacionDefault(sistema) {
        const ubicaciones = {
            'SOS': 'RN 4510 + RN 4511 + RN 4513',
            'ETD/RADAR': 'RN 4510 + RN 4511 + Peajes',
            'CCTV': 'Peajes + CCO + Estaciones',
            'PMV': 'RN 4510 + RN 4511',
            'METEO': '2 peajes + 1 CCO',
            'WIM': 'Peaje principal'
        };
        return ubicaciones[sistema] || 'Por definir';
    }
    
    generateLayoutData() {
        // Generar datos de layout basados en WBS
        return this.data.wbs
            .filter(item => item.tipo === 'item' && item.cantidad)
            .map(item => ({
                id: item.id,
                nombre: item.descripcion,
                cantidad: parseInt(item.cantidad),
                ubicacion: this.getUbicacionDefault(item.sistema),
                coordenadas: this.generateCoordinates(item.sistema),
                sistema: item.sistema
            }));
    }
    
    generateCoordinates(sistema) {
        // Coordenadas aproximadas por sistema
        const coordenadas = {
            'SOS': { lat: 7.5, lng: -73.2 },
            'ETD/RADAR': { lat: 7.6, lng: -73.1 },
            'CCTV': { lat: 7.4, lng: -73.3 },
            'PMV': { lat: 7.5, lng: -73.2 },
            'METEO': { lat: 7.5, lng: -73.2 },
            'WIM': { lat: 7.4, lng: -73.3 }
        };
        return coordenadas[sistema] || { lat: 7.5, lng: -73.2 };
    }
    
    generateContractualData() {
        // Generar datos contractuales basados en WBS
        return this.data.wbs
            .filter(item => item.tipo === 'item')
            .map(item => ({
                item: item.id,
                sistema: item.sistema,
                especificacion: item.descripcion,
                obligacion: this.getObligacionDefault(item.sistema),
                cantidadTecnica: item.cantidad || '0',
                cantidadContractual: item.cantidad || '0',
                cumplimiento: 'CUMPLE',
                justificacion: item.criterio || 'Criterio técnico aplicado',
                accionRequerida: 'Ninguna',
                responsable: this.getResponsableDefault(item.sistema),
                accion: 'VALIDAR'
            }));
    }
    
    getObligacionDefault(sistema) {
        const obligaciones = {
            'SOS': 'Postes de auxilio cada 1km',
            'ETD/RADAR': 'Estaciones cada 15km',
            'CCTV': 'Cobertura estratégica del corredor',
            'PMV': 'Paneles cada 20km',
            'METEO': 'Estaciones meteorológicas',
            'WIM': 'Sistema de pesaje'
        };
        return obligaciones[sistema] || 'Obligación contractual';
    }
    
    getResponsableDefault(sistema) {
        const responsables = {
            'SOS': 'Ing. Civil',
            'ETD/RADAR': 'Ing. Sistemas',
            'CCTV': 'Ing. Sistemas',
            'PMV': 'Ing. Civil',
            'METEO': 'Ing. Ambiental',
            'WIM': 'Ing. Civil'
        };
        return responsables[sistema] || 'Ing. Responsable';
    }
    
    // MÉTODOS DE GESTIÓN DE CAMBIOS
    
    modificarItem(itemId, nuevosDatos) {
        const itemIndex = this.data.wbs.findIndex(item => item.id === itemId);
        if (itemIndex === -1) {
            throw new Error(`Item ${itemId} no encontrado`);
        }
        
        const itemOriginal = { ...this.data.wbs[itemIndex] };
        const itemModificado = { ...this.data.wbs[itemIndex], ...nuevosDatos };
        
        // Recalcular total si cambió cantidad o VU
        if (nuevosDatos.cantidad || nuevosDatos.vu) {
            const cantidad = nuevosDatos.cantidad || itemModificado.cantidad;
            const vu = nuevosDatos.vu || itemModificado.vu;
            itemModificado.total = (parseInt(cantidad) * parseFloat(vu)).toString();
            itemModificado.totalCOP = (parseInt(itemModificado.total) * 4400).toString();
        }
        
        // Actualizar WBS
        this.data.wbs[itemIndex] = itemModificado;
        
        // Actualizar Presupuesto
        const presupuestoIndex = this.data.presupuesto.findIndex(p => p.id === itemId);
        if (presupuestoIndex !== -1) {
            this.data.presupuesto[presupuestoIndex] = { ...itemModificado };
        }
        
        // Actualizar Layout si aplica
        const layoutIndex = this.data.layout.findIndex(l => l.id === itemId);
        if (layoutIndex !== -1) {
            this.data.layout[layoutIndex] = {
                ...this.data.layout[layoutIndex],
                cantidad: parseInt(itemModificado.cantidad),
                nombre: itemModificado.descripcion
            };
        }
        
        // Actualizar Contratos
        const contratoIndex = this.data.contratos.findIndex(c => c.item === itemId);
        if (contratoIndex !== -1) {
            this.data.contratos[contratoIndex] = {
                ...this.data.contratos[contratoIndex],
                cantidadTecnica: itemModificado.cantidad,
                cantidadContractual: itemModificado.cantidad
            };
        }
        
        // Registrar cambio
        this.registrarCambio(itemId, itemOriginal, itemModificado);
        
        return {
            exito: true,
            item: itemModificado,
            impacto: this.calcularImpacto(itemOriginal, itemModificado)
        };
    }
    
    calcularImpacto(original, modificado) {
        const totalOriginal = parseFloat(original.total || 0);
        const totalModificado = parseFloat(modificado.total || 0);
        const diferencia = totalModificado - totalOriginal;
        
        return {
            diferencia: diferencia,
            diferenciaCOP: diferencia * 4400,
            impactoPorcentual: totalOriginal > 0 ? (diferencia / totalOriginal) * 100 : 0,
            nuevoTotal: totalModificado,
            nuevoTotalCOP: totalModificado * 4400
        };
    }
    
    registrarCambio(itemId, original, modificado) {
        const cambio = {
            id: `CAMBIO-${Date.now()}`,
            fecha: new Date().toISOString(),
            itemId: itemId,
            original: original,
            modificado: modificado,
            impacto: this.calcularImpacto(original, modificado),
            usuario: 'Sistema',
            tipo: 'MODIFICACION'
        };
        
        this.data.cambios.push(cambio);
        
        // Generar DT automático
        this.generarDTAutomatico(cambio);
    }
    
    generarDTAutomatico(cambio) {
        const dt = {
            numero: `DT-${String(Date.now()).slice(-6)}`,
            fecha: new Date().toISOString().split('T')[0],
            tipo: 'Cambio Técnico',
            item: cambio.itemId,
            descripcion: `Modificación de ${cambio.original.descripcion}`,
            justificacion: cambio.modificado.criterio || 'Criterio técnico aplicado',
            impacto: cambio.impacto,
            documentosAfectados: ['WBS', 'Presupuesto', 'Layout', 'Contratos'],
            responsable: 'Sistema Automático',
            contenido: this.generarContenidoDT(cambio)
        };
        
        this.data.dts.push(dt);
        return dt;
    }
    
    generarContenidoDT(cambio) {
        return `# DT-${dt.numero} - ${dt.descripcion}

## Información General
- **Fecha:** ${dt.fecha}
- **Tipo:** ${dt.tipo}
- **Item:** ${dt.item}
- **Responsable:** ${dt.responsable}

## Descripción del Cambio
${dt.descripcion}

## Justificación Técnica
${dt.justificacion}

## Impacto Presupuestal
- **Diferencia:** $${dt.impacto.diferencia.toLocaleString('en-US')} USD
- **Diferencia COP:** $${dt.impacto.diferenciaCOP.toLocaleString('es-CO')} COP
- **Impacto %:** ${dt.impacto.impactoPorcentual.toFixed(2)}%
- **Nuevo Total:** $${dt.impacto.nuevoTotal.toLocaleString('en-US')} USD

## Documentos Afectados
${dt.documentosAfectados.map(doc => `- ${doc}`).join('\n')}

## Estado
- [ ] Aprobado por QA
- [ ] Aprobado por Especificador
- [ ] Aprobado por Admin
- [ ] Implementado
`;
    }
    
    // MÉTODOS DE CONSULTA
    
    getItem(itemId) {
        return this.data.wbs.find(item => item.id === itemId);
    }
    
    getItemsBySistema(sistema) {
        return this.data.wbs.filter(item => item.sistema === sistema);
    }
    
    getTotalPorSistema(sistema) {
        const items = this.getItemsBySistema(sistema);
        return items.reduce((sum, item) => sum + parseFloat(item.total || 0), 0);
    }
    
    getTotalGeneral() {
        return this.data.wbs.reduce((sum, item) => sum + parseFloat(item.total || 0), 0);
    }
    
    getEstadisticas() {
        const sistemas = [...new Set(this.data.wbs.map(item => item.sistema))];
        const estadisticas = {};
        
        sistemas.forEach(sistema => {
            const items = this.getItemsBySistema(sistema);
            estadisticas[sistema] = {
                cantidadItems: items.length,
                totalUSD: this.getTotalPorSistema(sistema),
                totalCOP: this.getTotalPorSistema(sistema) * 4400,
                porcentaje: (this.getTotalPorSistema(sistema) / this.getTotalGeneral()) * 100
            };
        });
        
        return estadisticas;
    }
    
    // MÉTODOS DE EXPORTACIÓN
    
    exportarDatos() {
        return {
            wbs: this.data.wbs,
            presupuesto: this.data.presupuesto,
            layout: this.data.layout,
            contratos: this.data.contratos,
            dts: this.data.dts,
            cambios: this.data.cambios,
            estadisticas: this.getEstadisticas(),
            fechaExportacion: new Date().toISOString()
        };
    }
    
    importarDatos(datos) {
        this.data = { ...this.data, ...datos };
        return true;
    }
}

// Instancia global
window.tm01MasterData = new TM01MasterData();

// Funciones de utilidad globales
window.modificarItemWBS = function(itemId, nuevosDatos) {
    return window.tm01MasterData.modificarItem(itemId, nuevosDatos);
};

window.obtenerItemWBS = function(itemId) {
    return window.tm01MasterData.getItem(itemId);
};

window.obtenerEstadisticas = function() {
    return window.tm01MasterData.getEstadisticas();
};

window.exportarDatosCompletos = function() {
    return window.tm01MasterData.exportarDatos();
};
