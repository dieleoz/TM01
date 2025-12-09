const fs = require('fs');
const path = require('path');

// Mock window
global.window = {};

const wbsPath = path.join(__dirname, '../docs/datos_wbs_TM01_items.js');
const content = fs.readFileSync(wbsPath, 'utf8');
eval(content);

const items = window.datos_wbs.items.filter(i => i.sistema === 'CCTV' && i.tipo === 'item');
let totalUSD = 0;
let totalCOP = 0;

console.log(`Found ${items.length} detailed items for CCTV.`);

items.forEach(i => {
    // console.log(`${i.item}: ${i.descripcion} - $${i.total}`);
    totalUSD += parseFloat(i.total || 0);
    totalCOP += parseFloat(i.totalCOP || 0);
});

console.log(`Total USD (Details): ${totalUSD.toLocaleString()}`);
console.log(`Total COP (Details): ${totalCOP.toLocaleString()}`);

// Check against expected
const expected = 1890000;
console.log(`Expected (Resumen): ${expected.toLocaleString()}`);
console.log(`Difference: ${(totalUSD - expected).toLocaleString()}`);
