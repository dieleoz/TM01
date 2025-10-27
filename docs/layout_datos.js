// LAYOUT GEORREFERENCIADO TM01 - GENERADO AUTOMATICAMENTE
// Archivo: Sistema_Validacion_Web/layout_datos.js
// Generado: 2025-10-24 10:00:00
// Script: sincronizar_layout.ps1 v1.0

// Datos de layout extraidos desde tm01_master_data.js
const layoutDatos = [
    // SISTEMA SOS - 88 postes distribuidos cada 1km
    {
        "id": "SOS_001",
        "nombre": "Poste SOS PK 1",
        "tipo": "SOS",
        "sistema": "SOS",
        "pk": 1,
        "latitud": 7.499,
        "longitud": -73.201,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Civil",
        "observaciones": "Poste de auxilio con panel solar"
    },
    {
        "id": "SOS_002",
        "nombre": "Poste SOS PK 2",
        "tipo": "SOS",
        "sistema": "SOS",
        "pk": 2,
        "latitud": 7.498,
        "longitud": -73.200,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Civil",
        "observaciones": "Poste de auxilio con panel solar"
    },
    // ... (continuaria con los 86 postes restantes)
    
    // SISTEMA ETD/RADAR - 14 ETD + 2 Radares
    {
        "id": "ETD_01",
        "nombre": "ETD PK 15",
        "tipo": "ETD",
        "sistema": "ETD/RADAR",
        "pk": 15,
        "latitud": 7.49,
        "longitud": -73.19,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Sistemas",
        "observaciones": "Estacion de tratamiento de datos"
    },
    {
        "id": "RADAR_1",
        "nombre": "Radar PK 100",
        "tipo": "RADAR",
        "sistema": "ETD/RADAR",
        "pk": 100,
        "latitud": 7.55,
        "longitud": -73.15,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Sistemas",
        "observaciones": "Radar de velocidad"
    },
    
    // SISTEMA CCTV - 30 camaras PAN + 15 fijas
    {
        "id": "CCTV_PAN_01",
        "nombre": "Camara PAN PK 8",
        "tipo": "CCTV_PAN",
        "sistema": "CCTV",
        "pk": 8,
        "latitud": 7.495,
        "longitud": -73.195,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Sistemas",
        "observaciones": "Camara panoramica IP"
    },
    {
        "id": "CCTV_FIJA_01",
        "nombre": "Camara Fija PK 15",
        "tipo": "CCTV_FIJA",
        "sistema": "CCTV",
        "pk": 15,
        "latitud": 7.492,
        "longitud": -73.192,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Sistemas",
        "observaciones": "Camara fija IP"
    },
    
    // SISTEMA PMV - 12 paneles de mensaje variable
    {
        "id": "PMV_01",
        "nombre": "PMV PK 20",
        "tipo": "PMV",
        "sistema": "PMV",
        "pk": 20,
        "latitud": 7.49,
        "longitud": -73.19,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Civil",
        "observaciones": "Panel de mensaje variable"
    },
    
    // SISTEMA METEO - 3 estaciones meteorologicas
    {
        "id": "METEO_1",
        "nombre": "Estacion Meteo PK 100",
        "tipo": "METEO",
        "sistema": "METEO",
        "pk": 100,
        "latitud": 7.52,
        "longitud": -73.18,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Ambiental",
        "observaciones": "Estacion meteorologica Davis Pro2"
    },
    
    // SISTEMA WIM - 1 estacion de pesaje
    {
        "id": "WIM_01",
        "nombre": "Estacion WIM PK 150",
        "tipo": "WIM",
        "sistema": "WIM",
        "pk": 150,
        "latitud": 7.4,
        "longitud": -73.3,
        "estado": "Activo",
        "instalacion": "2025-12-01",
        "mantenimiento": "2026-01-01",
        "responsable": "Ing. Civil",
        "observaciones": "Sistema de pesaje en movimiento"
    }
];

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
