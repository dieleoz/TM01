const fs = require('fs');
const path = require('path');

// Paths
const wbsPath = path.join(__dirname, '../docs/datos_wbs_TM01_items.js');
const layoutPath = path.join(__dirname, '../docs/layout_datos.js');

// Mock window object to capture the data loaded from the file
global.window = {};

try {
    // 1. Read the WBS items data
    console.log(`Reading WBS data from: ${wbsPath}`);
    const wbsContent = fs.readFileSync(wbsPath, 'utf8');

    // Evaluate the content to populate window.wbsDataGlobal
    eval(wbsContent);

    if (!window.wbsDataGlobal || !window.wbsDataGlobal.items) {
        throw new Error("Could not find window.wbsDataGlobal.items in the source file.");
    }

    const allItems = window.wbsDataGlobal.items;
    console.log(`Loaded ${allItems.length} items from WBS.`);

    // 2. Filter items that should be on the layout (items with quantity > 0)
    // We only care about actual equipment/items, not chapters
    const equipmentItems = allItems.filter(item =>
        item.tipo === 'item' &&
        item.cantidad &&
        parseFloat(item.cantidad) > 0
    );

    console.log(`Found ${equipmentItems.length} equipment items.`);

    // 3. Map to Layout Format
    // We need to generate ID, coordinates, etc.
    const layoutDatos = equipmentItems.map((item, index) => {
        // Generate a stable ID if not present
        const id = item.id || `ITEM_${index + 1}`;

        // Determine System (normalize)
        let sistema = item.sistema || 'OTRO';
        if (sistema.includes('CCTV')) sistema = 'CCTV';
        else if (sistema.includes('SOS')) sistema = 'SOS';
        else if (sistema.includes('Mensaje')) sistema = 'PMV';
        else if (sistema.includes('Meteor')) sistema = 'METEO';
        else if (sistema.includes('WIM') || sistema.includes('Pesaje')) sistema = 'WIM'; // Merge WIM and Pesaje for now or keep separate?
        else if (sistema.includes('Peaje')) sistema = 'PEAJES';
        else if (item.descripcion.includes('Pesaje Dinámico')) sistema = 'WIM'; // Ensure new system is mapped

        // Assign Coordinates (Mock logic based on system or pure random distribution along the corridor)
        // Corridor roughly: 7.4, -73.2 to 7.6, -73.1
        // We will distribute them based on index to separate them visually
        const latBase = 7.4 + (Math.random() * 0.2);
        const lngBase = -73.2 + (Math.random() * 0.1);

        return {
            id: id,
            nombre: item.descripcion,
            tipo: item.descripcion.split(' ')[0], // First word as type estimate
            sistema: sistema,
            pk: Math.floor(Math.random() * 150), // Random PK 0-150
            latitud: parseFloat(latBase.toFixed(4)),
            longitud: parseFloat(lngBase.toFixed(4)),
            estado: 'Proyectado', // Default status for new items
            instalacion: '2025-12-01',
            mantenimiento: '2026-01-01',
            responsable: 'Concesionario',
            observaciones: `Item WBS: ${item.item}`
        };
    });

    // 4. Generate Output File Content
    const fileContent = `// LAYOUT GEORREFERENCIADO TM01 - GENERADO AUTOMATICAMENTE
// Archivo: layout_datos.js
// Generado: ${new Date().toISOString()}
// Script: scripts/update_layout_from_wbs_items.js

// Datos de layout extraidos desde datos_wbs_TM01_items.js
const layoutDatos = ${JSON.stringify(layoutDatos, null, 4)};

// Funcion para obtener todos los equipos
function obtenerTodosEquipos() {
    return layoutDatos;
}

// Funcion para obtener equipos por sistema
function obtenerEquiposPorSistema(sistema) {
    return layoutDatos.filter(equipo => equipo.sistema === sistema);
}

// Funcion para obtener equipos por tipo
function obtenerEquiposPorTipo(tipo) {
    return layoutDatos.filter(equipo => equipo.tipo === tipo);
}

// Funcion para obtener equipos por PK
function obtenerEquiposPorPK(pkInicio, pkFin) {
    return layoutDatos.filter(equipo => equipo.pk >= pkInicio && equipo.pk <= pkFin);
}

// Funcion para obtener equipos por estado
function obtenerEquiposPorEstado(estado) {
    return layoutDatos.filter(equipo => equipo.estado === estado);
}

// Funcion para obtener estadisticas del layout
function obtenerEstadisticasLayout() {
    const estadisticas = {
        totalEquipos: layoutDatos.length,
        porSistema: {},
        porTipo: {},
        porEstado: {},
        pkMinimo: Math.min(...layoutDatos.map(e => e.pk)),
        pkMaximo: Math.max(...layoutDatos.map(e => e.pk))
    };
    
    layoutDatos.forEach(equipo => {
        // Contar por sistema
        if (!estadisticas.porSistema[equipo.sistema]) {
            estadisticas.porSistema[equipo.sistema] = 0;
        }
        estadisticas.porSistema[equipo.sistema]++;
        
        // Contar por tipo
        if (!estadisticas.porTipo[equipo.tipo]) {
            estadisticas.porTipo[equipo.tipo] = 0;
        }
        estadisticas.porTipo[equipo.tipo]++;
        
        // Contar por estado
        if (!estadisticas.porEstado[equipo.estado]) {
            estadisticas.porEstado[equipo.estado] = 0;
        }
        estadisticas.porEstado[equipo.estado]++;
    });
    
    return estadisticas;
}

// Funcion para obtener coordenadas para mapa
function obtenerCoordenadasMapa() {
    return layoutDatos.map(equipo => ({
        id: equipo.id,
        nombre: equipo.nombre,
        lat: equipo.latitud,
        lng: equipo.longitud,
        tipo: equipo.tipo,
        sistema: equipo.sistema,
        pk: equipo.pk,
        estado: equipo.estado
    }));
}

// Exportar funciones para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        layoutDatos,
        obtenerTodosEquipos,
        obtenerEquiposPorSistema,
        obtenerEquiposPorTipo,
        obtenerEquiposPorPK,
        obtenerEquiposPorEstado,
        obtenerEstadisticasLayout,
        obtenerCoordenadasMapa
    };
}
`;

    // 5. Write to file
    fs.writeFileSync(layoutPath, fileContent, 'utf8');
    console.log(`✅ Successfully updated layout_datos.js with ${layoutDatos.length} items from detailed WBS.`);

} catch (err) {
    console.error("Error updating layout:", err);
    process.exit(1);
}
