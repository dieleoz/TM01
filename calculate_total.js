
const data = {
    sistemas: [
        { capexCOP: 9328000000 }, // SOS
        { capexCOP: 10006400000 }, // PMV
        { capexCOP: 492264000 }, // CCTV
        { capexCOP: 8014528560 }, // Peajes
        { capexCOP: 2338041000 }, // WIM
        { capexCOP: 636000000 }, // Meteo
        { capexCOP: 5342400000 }, // Fibra
        { capexCOP: 954000000 }, // Switches L2
        { capexCOP: 763200000 }, // Switches L3
        { capexCOP: 3392000000 } // ETD/RADAR
    ]
};

const total = data.sistemas.reduce((acc, curr) => acc + curr.capexCOP, 0);
console.log("Total Calculado: " + total.toLocaleString('es-CO'));
