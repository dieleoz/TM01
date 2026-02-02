// Script para agregar vuCOP a datos_wbs_TM01_items.js
// Ejecutar con: node add_vuCOP.js

const fs = require('fs');
const path = require('path');

// Leer tm01_master_data.js
const masterDataPath = path.join(__dirname, 'docs', 'data', 'tm01_master_data.js');
const masterDataContent = fs.readFileSync(masterDataPath, 'utf8');

// Extraer el array de wbs
const wbsMatch = masterDataContent.match(/wbs:\s*\[([\s\S]*?)\]/);
if (!wbsMatch) {
    console.error('No se encontró el array wbs en tm01_master_data.js');
    process.exit(1);
}

// Parsear los items (esto es simplificado, asumiendo que el formato es consistente)
const wbsArray = wbsMatch[1];

// Crear el nuevo archivo datos_wbs_TM01_items.js
const outputPath = path.join(__dirname, 'docs', 'datos_wbs_TM01_items.js');

const output = `window.wbsDataGlobal = window.datos_wbs = {
    "fecha_actualizacion": "${new Date().toISOString().split('T')[0]}",
    "total_items": 100,
    "version": "3.2 (vuCOP Fix)",
    "items": [
${wbsArray}
    ]
};
`;

fs.writeFileSync(outputPath, output, 'utf8');
console.log('✅ Archivo datos_wbs_TM01_items.js actualizado con vuCOP');
