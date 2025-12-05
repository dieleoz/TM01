// PKD CADA 10KM - COORDENADAS PARA LEAFLET
// Archivo: docs/data/pkd_cada_10km.js
// Generado: 2025-11-01
// Propósito: Puntos PKD cada 10km con coordenadas para pintar en Leaflet

// Metodología PKD:
// - RN 4510: PKD = PKR (0 a ~134 km)
// - RN 4511: PKD = PKR + 134 km (134 a ~283 km)
// - RN 4513: PKD = PKR + 283 km (283 a ~293 km)

// NOTA: Las coordenadas se calculan dinámicamente desde coordenadas_uf_tm01.json
// Este archivo contiene la estructura de datos para los PKD cada 10km

const pkdCada10km = [
    // PKD 0+000 - CCO (La Lizama, RN 4513 PK 4+400)
    {
        pkd: 0,
        pkd_formato: '0+000',
        pkr: 4.4,
        pkr_formato: '4+400',
        ruta: 'RN 4513',
        uf: 'UF13',
        nombre: 'PKD 0+000 - CCO',
        ubicacion: 'La Lizama',
        // Coordenadas se calculan dinámicamente desde coordenadas_uf_tm01.json
        lat: null, // Se calcula desde UF13
        lng: null  // Se calcula desde UF13
    },
    
    // PKD 10+000
    {
        pkd: 10,
        pkd_formato: '10+000',
        pkr: 10.0,
        pkr_formato: '10+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 10+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 20+000
    {
        pkd: 20,
        pkd_formato: '20+000',
        pkr: 20.0,
        pkr_formato: '20+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 20+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 30+000
    {
        pkd: 30,
        pkd_formato: '30+000',
        pkr: 30.0,
        pkr_formato: '30+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 30+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 40+000
    {
        pkd: 40,
        pkd_formato: '40+000',
        pkr: 40.0,
        pkr_formato: '40+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 40+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 50+000
    {
        pkd: 50,
        pkd_formato: '50+000',
        pkr: 50.0,
        pkr_formato: '50+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 50+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 60+000
    {
        pkd: 60,
        pkd_formato: '60+000',
        pkr: 60.0,
        pkr_formato: '60+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 60+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 70+000
    {
        pkd: 70,
        pkd_formato: '70+000',
        pkr: 70.0,
        pkr_formato: '70+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 70+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 80+000
    {
        pkd: 80,
        pkd_formato: '80+000',
        pkr: 80.0,
        pkr_formato: '80+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 80+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 90+000
    {
        pkd: 90,
        pkd_formato: '90+000',
        pkr: 90.0,
        pkr_formato: '90+000',
        ruta: 'RN 4510',
        uf: 'UF1',
        nombre: 'PKD 90+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 100+000
    {
        pkd: 100,
        pkd_formato: '100+000',
        pkr: 100.0,
        pkr_formato: '100+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 100+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 110+000
    {
        pkd: 110,
        pkd_formato: '110+000',
        pkr: 110.0,
        pkr_formato: '110+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 110+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 120+000
    {
        pkd: 120,
        pkd_formato: '120+000',
        pkr: 120.0,
        pkr_formato: '120+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 120+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 130+000
    {
        pkd: 130,
        pkd_formato: '130+000',
        pkr: 130.0,
        pkr_formato: '130+000',
        ruta: 'RN 4510',
        uf: 'UF0',
        nombre: 'PKD 130+000',
        ubicacion: 'RN 4510',
        lat: null,
        lng: null
    },
    
    // PKD 140+000 - RN 4511 (PKD = PKR + 134)
    {
        pkd: 140,
        pkd_formato: '140+000',
        pkr: 6.0, // 140 - 134 = 6
        pkr_formato: '6+000',
        ruta: 'RN 4511',
        uf: 'UF0',
        nombre: 'PKD 140+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 150+000
    {
        pkd: 150,
        pkd_formato: '150+000',
        pkr: 16.0, // 150 - 134 = 16
        pkr_formato: '16+000',
        ruta: 'RN 4511',
        uf: 'UF2',
        nombre: 'PKD 150+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 160+000
    {
        pkd: 160,
        pkd_formato: '160+000',
        pkr: 26.0, // 160 - 134 = 26
        pkr_formato: '26+000',
        ruta: 'RN 4511',
        uf: 'UF2',
        nombre: 'PKD 160+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 170+000
    {
        pkd: 170,
        pkd_formato: '170+000',
        pkr: 36.0, // 170 - 134 = 36
        pkr_formato: '36+000',
        ruta: 'RN 4511',
        uf: 'UF2',
        nombre: 'PKD 170+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 180+000
    {
        pkd: 180,
        pkd_formato: '180+000',
        pkr: 46.0, // 180 - 134 = 46
        pkr_formato: '46+000',
        ruta: 'RN 4511',
        uf: 'UF2',
        nombre: 'PKD 180+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 190+000
    {
        pkd: 190,
        pkd_formato: '190+000',
        pkr: 56.0, // 190 - 134 = 56
        pkr_formato: '56+000',
        ruta: 'RN 4511',
        uf: 'UF3',
        nombre: 'PKD 190+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 200+000
    {
        pkd: 200,
        pkd_formato: '200+000',
        pkr: 66.0, // 200 - 134 = 66
        pkr_formato: '66+000',
        ruta: 'RN 4511',
        uf: 'UF4',
        nombre: 'PKD 200+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 210+000
    {
        pkd: 210,
        pkd_formato: '210+000',
        pkr: 76.0, // 210 - 134 = 76
        pkr_formato: '76+000',
        ruta: 'RN 4511',
        uf: 'UF6',
        nombre: 'PKD 210+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 220+000
    {
        pkd: 220,
        pkd_formato: '220+000',
        pkr: 86.0, // 220 - 134 = 86
        pkr_formato: '86+000',
        ruta: 'RN 4511',
        uf: 'UF7',
        nombre: 'PKD 220+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 230+000
    {
        pkd: 230,
        pkd_formato: '230+000',
        pkr: 96.0, // 230 - 134 = 96
        pkr_formato: '96+000',
        ruta: 'RN 4511',
        uf: 'UF7',
        nombre: 'PKD 230+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 240+000
    {
        pkd: 240,
        pkd_formato: '240+000',
        pkr: 106.0, // 240 - 134 = 106
        pkr_formato: '106+000',
        ruta: 'RN 4511',
        uf: 'UF8',
        nombre: 'PKD 240+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 250+000
    {
        pkd: 250,
        pkd_formato: '250+000',
        pkr: 116.0, // 250 - 134 = 116
        pkr_formato: '116+000',
        ruta: 'RN 4511',
        uf: 'UF9',
        nombre: 'PKD 250+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 260+000
    {
        pkd: 260,
        pkd_formato: '260+000',
        pkr: 126.0, // 260 - 134 = 126
        pkr_formato: '126+000',
        ruta: 'RN 4511',
        uf: 'UF10',
        nombre: 'PKD 260+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 270+000
    {
        pkd: 270,
        pkd_formato: '270+000',
        pkr: 136.0, // 270 - 134 = 136
        pkr_formato: '136+000',
        ruta: 'RN 4511',
        uf: 'UF11',
        nombre: 'PKD 270+000',
        ubicacion: 'RN 4511',
        lat: null,
        lng: null
    },
    
    // PKD 280+000 - RN 4513 (PKD = PKR + 283)
    {
        pkd: 280,
        pkd_formato: '280+000',
        pkr: -3.0, // 280 - 283 = -3 (fuera de rango, usar inicio)
        pkr_formato: '0+000',
        ruta: 'RN 4513',
        uf: 'UF13',
        nombre: 'PKD 280+000',
        ubicacion: 'RN 4513',
        lat: null,
        lng: null
    },
    
    // PKD 290+000
    {
        pkd: 290,
        pkd_formato: '290+000',
        pkr: 7.0, // 290 - 283 = 7
        pkr_formato: '7+000',
        ruta: 'RN 4513',
        uf: 'UF13',
        nombre: 'PKD 290+000',
        ubicacion: 'RN 4513',
        lat: null,
        lng: null
    }
];

// Función para obtener todos los PKD cada 10km
function obtenerPKDsCada10km() {
    return pkdCada10km;
}

// Función para obtener PKD por valor
function obtenerPKDporValor(pkd) {
    return pkdCada10km.find(p => p.pkd === pkd);
}

// Función para calcular coordenadas desde coordenadas UF
function calcularCoordenadasPKD(pkdData, coordenadasUF) {
    if (!coordenadasUF || !coordenadasUF.unidades_funcionales) {
        return null;
    }
    
    // Buscar UF correspondiente
    const ufKey = Object.keys(coordenadasUF.unidades_funcionales).find(key => {
        const ufData = coordenadasUF.unidades_funcionales[key];
        const ufNormalizada = pkdData.uf.replace('UF', 'UF-');
        return ufData.uf === pkdData.uf || ufData.uf === ufNormalizada || 
               ufData.uf === pkdData.uf.replace('-', '') || 
               key.toUpperCase().includes(pkdData.uf.toUpperCase());
    });
    
    if (!ufKey) {
        return null;
    }
    
    const ufData = coordenadasUF.unidades_funcionales[ufKey];
    if (!ufData || !ufData.coordenadas_consolidadas || ufData.coordenadas_consolidadas.length === 0) {
        return null;
    }
    
    // Calcular porcentaje dentro de la UF según PKR
    const distanciaTotal = ufData.distancia_total_km || ufData.coordenadas_consolidadas.length;
    const pkrInicio = ufData.pk_inicio || 0;
    const pkrFin = ufData.pk_fin || (pkrInicio + distanciaTotal);
    
    let porcentaje = 0.5; // Por defecto punto medio
    if (pkrFin > pkrInicio && pkdData.pkr >= pkrInicio && pkdData.pkr <= pkrFin) {
        porcentaje = (pkdData.pkr - pkrInicio) / (pkrFin - pkrInicio);
    } else if (pkdData.pkr < pkrInicio) {
        porcentaje = 0;
    } else if (pkdData.pkr > pkrFin) {
        porcentaje = 1;
    }
    
    porcentaje = Math.max(0, Math.min(1, porcentaje));
    
    // Interpolar coordenadas
    const totalPuntos = ufData.coordenadas_consolidadas.length;
    if (totalPuntos === 0) {
        return null;
    }
    
    const index = Math.floor(porcentaje * (totalPuntos - 1));
    const coordIndex = Math.max(0, Math.min(index, totalPuntos - 1));
    const coord = ufData.coordenadas_consolidadas[coordIndex];
    
    if (!coord || coord.length < 2) {
        return null;
    }
    
    return {
        lat: coord[1],
        lng: coord[0]
    };
}

// Exportar para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        pkdCada10km,
        obtenerPKDsCada10km,
        obtenerPKDporValor,
        calcularCoordenadasPKD
    };
}

