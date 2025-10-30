// Mapa PK → UF para TM01 Troncal Magdalena
// Fuente: AT1 - Tabla 3 (Unidades Funcionales) + Tablas 4-7 (Desglose por sentidos)
// Nota: Los PK se expresan como números enteros en metros (ej. PK 84+400 => 84400)

window.tm01UFMap = [
    // UF0 - Puerto Salgar - Barrancabermeja (O&M)
    // Ruta 4510: PK34+040 a PK134+328, Ruta 4511: PK0+000 a PK149+142, Ruta 4513: PK0+000 a PK9+800
    { uf: 'UF0', ruta: 'RN4510', pk_ini: 34040, pk_fin: 134328 },
    { uf: 'UF0', ruta: 'RN4511', pk_ini: 0, pk_fin: 149142 },
    { uf: 'UF0', ruta: 'RN4513', pk_ini: 0, pk_fin: 9800 },
    
    // UF1 - El Trique – Dos y Medio
    // Ruta 4510: PK84+400 a PK94+310
    { uf: 'UF1', ruta: 'RN4510', pk_ini: 84400, pk_fin: 94310 },
    
    // UF2 - Batallón Bárbula – PR52
    // Ruta 4510: PK125+580 a PK134+328 (hasta cruce), Ruta 4511: PK0+000 a PK51+100
    { uf: 'UF2', ruta: 'RN4510', pk_ini: 125580, pk_fin: 134328 },
    { uf: 'UF2', ruta: 'RN4511', pk_ini: 0, pk_fin: 51100 },
    
    // UF3 - PR 52 – Puerto Araujo
    // Ruta 4511: PK51+100 a PK64+650
    { uf: 'UF3', ruta: 'RN4511', pk_ini: 51100, pk_fin: 64650 },
    
    // UF4 - Puerto Araujo - Cimitarra
    // Ruta 4511: PK64+650 a PK74+650
    { uf: 'UF4', ruta: 'RN4511', pk_ini: 64650, pk_fin: 74650 },
    
    // UF5 - Puerto Salgar - Cimitarra (Rehabilitación)
    // Ruta 4510: PK39+080 a PK84+220
    { uf: 'UF5', ruta: 'RN4510', pk_ini: 39080, pk_fin: 84220 },
    
    // UF6 - Puerto Parra - Aguas Negras
    // Ruta 4511: PK74+650 a PK83+220
    { uf: 'UF6', ruta: 'RN4511', pk_ini: 74650, pk_fin: 83220 },
    
    // UF7 - Aguas Negras – Puerto Nuevo
    // Ruta 4511: PK83+220 a PK97+000
    { uf: 'UF7', ruta: 'RN4511', pk_ini: 83220, pk_fin: 97000 },
    // UF8 - Puerto Nuevo - PR107+000
    // Ruta 4511: PK97+000 a PK107+000
    { uf: 'UF8', ruta: 'RN4511', pk_ini: 97000, pk_fin: 107000 },
    
    // UF9 - PR107+000 - Campo 23
    // Ruta 4511: PK107+000 a PK117+690
    { uf: 'UF9', ruta: 'RN4511', pk_ini: 107000, pk_fin: 117690 },
    
    // UF10 - Campo 23 - Rancho Camacho
    // Ruta 4511: PK117+690 a PK128+000
    { uf: 'UF10', ruta: 'RN4511', pk_ini: 117690, pk_fin: 128000 },
    
    // UF11 - (Por confirmar en AT1 Tablas 4-7)
    // Nota: UF11 y UF12, UF13 mencionadas en cronograma pero no en Tabla 3 básica
    // Se añadirán cuando se completen las Tablas 4-7
    { uf: 'UF11', ruta: 'RN4511', pk_ini: 128000, pk_fin: 140000 }, // Estimado
    { uf: 'UF12', ruta: 'RN4511', pk_ini: 140000, pk_fin: 149142 }, // Estimado
    { uf: 'UF13', ruta: 'RN4511', pk_ini: 0, pk_fin: 51100 } // Estimado, posible overlap con UF2
];

// Función principal: obtiene UF por ruta y PK
// Parámetros:
//   - ruta: string, formato "RN4510", "RN4511", "RN4513"
//   - pk: string o number, formato "84+400" o número 84400
// Retorna: string UF o null si no se encuentra
window.getUFByPK = function(ruta, pk) {
    if (!Array.isArray(window.tm01UFMap)) return null;
    
    // Normalizar ruta
    let rutaNorm = (ruta || '').toString().trim();
    if (rutaNorm && !rutaNorm.startsWith('RN')) {
        // Si viene como "4510" o "RN 4510", normalizar
        rutaNorm = rutaNorm.replace(/\s+/g, '');
        if (!rutaNorm.startsWith('RN')) {
            rutaNorm = 'RN' + rutaNorm;
        }
    }
    
    // Normalizar PK a número
    let pkNum = null;
    if (typeof pk === 'number') {
        pkNum = pk;
    } else if (typeof pk === 'string') {
        // Formato "84+400" o "84400"
        if (pk.includes('+')) {
            const parts = pk.split('+');
            pkNum = parseInt(parts[0]) * 1000 + parseInt(parts[1] || 0);
        } else {
            pkNum = parseInt(pk) || null;
        }
    }
    
    if (!rutaNorm || pkNum === null) return null;
    
    // Buscar en el mapa
    for (const r of window.tm01UFMap) {
        if (r.ruta === rutaNorm && pkNum >= r.pk_ini && pkNum <= r.pk_fin) {
            return r.uf;
        }
    }
    
    return null;
};

// Función auxiliar: obtener todas las UFs para una ruta
window.getUFsByRuta = function(ruta) {
    const rutaNorm = (ruta || '').toString().trim().replace(/\s+/g, '');
    if (!rutaNorm.startsWith('RN')) {
        return window.tm01UFMap.filter(r => r.ruta === 'RN' + rutaNorm).map(r => r.uf);
    }
    return window.tm01UFMap.filter(r => r.ruta === rutaNorm).map(r => r.uf);
};

// Función auxiliar: obtener rango PK para una UF
window.getPKRangeByUF = function(uf) {
    const ranges = window.tm01UFMap.filter(r => r.uf === uf);
    return ranges.length > 0 ? ranges : null;
};

console.log('✅ uf_pk_map.js cargado - Mapa PK→UF disponible');
