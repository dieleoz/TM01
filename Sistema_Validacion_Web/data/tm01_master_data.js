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
        // Datos WBS - Fuente: PRESUPUESTO_ITS_PURO_v2.0.md + Especificaciones Técnicas Detalladas
        this.data.wbs = [
            // CAPÍTULO 1: SISTEMA SOS
            {id: '1', nivel: 1, item: "1", descripcion: "SISTEMA SOS", sistema: "SOS", tipo: "capitulo"},
            {id: '1.1', nivel: 2, item: "1.1", descripcion: "SUMINISTROS SOS", sistema: "SOS", tipo: "subcapitulo"},
            {id: '1.1.1', nivel: 3, item: "1.1.1", descripcion: "Poste metálico galvanizado 4m", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Estructura principal", vu: "800", vuCOP: "3,520,000", total: "69,600", totalCOP: "306,240,000"},
            {id: '1.1.2', nivel: 3, item: "1.1.2", descripcion: "Gabinete control IP65", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "600", vuCOP: "2,640,000", total: "52,200", totalCOP: "229,680,000"},
            {id: '1.1.3', nivel: 3, item: "1.1.3", descripcion: "Teléfono resistente vandalismo", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Comunicación VoIP", vu: "1,500", total: "130,500", totalCOP: "574,200,000"},
            {id: '1.1.4', nivel: 3, item: "1.1.4", descripcion: "Panel solar 150W", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Alimentación autónoma", vu: "450", total: "39,150", totalCOP: "172,260,000"},
            {id: '1.1.5', nivel: 3, item: "1.1.5", descripcion: "Batería 12V 100Ah (×2)", sistema: "SOS", cantidad: "174", unidad: "UND", tipo: "item", criterio: "Respaldo energético", vu: "180", total: "31,320", totalCOP: "137,808,000"},
            {id: '1.1.6', nivel: 3, item: "1.1.6", descripcion: "Controlador solar MPPT", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Gestión energía", vu: "200", total: "17,400", totalCOP: "76,560,000"},
            {id: '1.1.7', nivel: 3, item: "1.1.7", descripcion: "Conversor FO/Ethernet", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Comunicación fibra", vu: "150", total: "13,050", totalCOP: "57,420,000"},
            {id: '1.1.8', nivel: 3, item: "1.1.8", descripcion: "Cableado control y energía", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Conexiones internas", vu: "120", total: "10,440", totalCOP: "45,936,000"},
            {id: '1.1.9', nivel: 3, item: "1.1.9", descripcion: "Baliza LED ámbar 12-24V", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Señalización visual", vu: "80", total: "6,960", totalCOP: "30,624,000"},
            {id: '1.1.10', nivel: 3, item: "1.1.10", descripcion: "Sirena piezo 110dB", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Señalización sonora", vu: "60", total: "5,220", totalCOP: "22,968,000"},
            {id: '1.1.11', nivel: 3, item: "1.1.11", descripcion: "Botón pulsador iluminado", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Activación emergencia", vu: "40", total: "3,480", totalCOP: "15,312,000"},
            {id: '1.1.12', nivel: 3, item: "1.1.12", descripcion: "DPS protección sobretensión", sistema: "SOS", cantidad: "261", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "25", total: "6,525", totalCOP: "28,710,000"},
            {id: '1.1.13', nivel: 3, item: "1.1.13", descripcion: "Corona antiescalatoria", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Seguridad física", vu: "50", total: "4,350", totalCOP: "19,140,000"},
            {id: '1.1.14', nivel: 3, item: "1.1.14", descripcion: "Varilla puesta a tierra", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "15", total: "1,305", totalCOP: "5,742,000"},
            {id: '1.1.15', nivel: 3, item: "1.1.15", descripcion: "Cable UTP Cat6 ext 50m", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Conexión datos", vu: "30", total: "2,610", totalCOP: "11,484,000"},
            {id: '1.1.16', nivel: 3, item: "1.1.16", descripcion: "Ducto HDPE 2\" × 30m", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Protección cableado", vu: "20", total: "1,740", totalCOP: "7,656,000"},
            {id: '1.1.17', nivel: 3, item: "1.1.17", descripcion: "Instalación y comisionamiento", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Servicios especializados", vu: "1,200", total: "104,400", totalCOP: "459,360,000"},
            {id: '1.1.18', nivel: 3, item: "1.1.18", descripcion: "Pruebas FAT/SAT", sistema: "SOS", cantidad: "87", unidad: "UND", tipo: "item", criterio: "Validación funcional", vu: "200", total: "17,400", totalCOP: "76,560,000"},
            {id: '1.1.19', nivel: 3, item: "1.1.19", descripcion: "Documentación técnica", sistema: "SOS", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "5,000", total: "5,000", totalCOP: "22,000,000"},
            {id: '1.1.20', nivel: 3, item: "1.1.20", descripcion: "Capacitación operadores", sistema: "SOS", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transferencia conocimiento", vu: "3,000", total: "3,000", totalCOP: "13,200,000"},
            
            // CAPÍTULO 2: SISTEMA ETD/RADAR
            {id: '2', nivel: 1, item: "2", descripcion: "SISTEMA ETD/RADAR", sistema: "ETD/RADAR", tipo: "capitulo"},
            {id: '2.1', nivel: 2, item: "2.1", descripcion: "SUMINISTROS ETD/RADAR", sistema: "ETD/RADAR", tipo: "subcapitulo"},
            {id: '2.1.1', nivel: 3, item: "2.1.1", descripcion: "ETD con sensores piezoeléctricos", sistema: "ETD/RADAR", cantidad: "13", unidad: "UND", tipo: "item", criterio: "AT1 Cap. 3 - Criterio 15km", vu: "20,000", vuCOP: "88,000,000", total: "260,000", totalCOP: "1,144,000,000"},
            {id: '2.1.2', nivel: 3, item: "2.1.2", descripcion: "Radares sancionatorios ANPR", sistema: "ETD/RADAR", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control vehicular peajes", vu: "56,039", vuCOP: "246,571,600", total: "112,078", totalCOP: "493,143,200"},
            
            // CAPÍTULO 3: SISTEMA CCTV
            {id: '3', nivel: 1, item: "3", descripcion: "SISTEMA CCTV", sistema: "CCTV", tipo: "capitulo"},
            {id: '3.1', nivel: 2, item: "3.1", descripcion: "SUMINISTROS CCTV", sistema: "CCTV", tipo: "subcapitulo"},
            {id: '3.1.1', nivel: 3, item: "3.1.1", descripcion: "Cámara PTZ IP 1080p", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "AT1 Cap. 3 - Solo en peajes", vu: "5,500", vuCOP: "24,200,000", total: "165,000", totalCOP: "726,000,000"},
            {id: '3.1.2', nivel: 3, item: "3.1.2", descripcion: "Domo policarbonato anti-vandálico", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Protección física", vu: "800", vuCOP: "3,520,000", total: "24,000", totalCOP: "105,600,000"},
            {id: '3.1.3', nivel: 3, item: "3.1.3", descripcion: "Soporte montaje poste/pared", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Instalación robusta", vu: "350", vuCOP: "1,540,000", total: "10,500", totalCOP: "46,200,000"},
            {id: '3.1.4', nivel: 3, item: "3.1.4", descripcion: "Cable UTP Cat6 ext 100m", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Conexión datos", vu: "80", vuCOP: "352,000", total: "2,400", totalCOP: "10,560,000"},
            {id: '3.1.5', nivel: 3, item: "3.1.5", descripcion: "Caja paso hermética", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Protección conexiones", vu: "120", vuCOP: "528,000", total: "3,600", totalCOP: "15,840,000"},
            {id: '3.1.6', nivel: 3, item: "3.1.6", descripcion: "Inyector PoE+ 30W", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Alimentación PoE", vu: "180", vuCOP: "792,000", total: "5,400", totalCOP: "23,760,000"},
            {id: '3.1.7', nivel: 3, item: "3.1.7", descripcion: "DPS datos + energía", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "150", vuCOP: "660,000", total: "4,500", totalCOP: "19,800,000"},
            {id: '3.1.8', nivel: 3, item: "3.1.8", descripcion: "Accesorios montaje", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Instalación completa", vu: "200", vuCOP: "880,000", total: "6,000", totalCOP: "26,400,000"},
            {id: '3.1.9', nivel: 3, item: "3.1.9", descripcion: "Instalación y comisionamiento", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Servicios especializados", vu: "3,000", vuCOP: "13,200,000", total: "90,000", totalCOP: "396,000,000"},
            {id: '3.1.10', nivel: 3, item: "3.1.10", descripcion: "Pruebas FAT/SAT", sistema: "CCTV", cantidad: "30", unidad: "UND", tipo: "item", criterio: "Validación funcional", vu: "300", vuCOP: "1,320,000", total: "9,000", totalCOP: "39,600,000"},
            {id: '3.1.11', nivel: 3, item: "3.1.11", descripcion: "Sistema VMS y almacenamiento", sistema: "CCTV", cantidad: "1", unidad: "SISTEMA", tipo: "item", criterio: "Gestión centralizada", vu: "50,000", vuCOP: "220,000,000", total: "50,000", totalCOP: "220,000,000"},
            {id: '3.1.12', nivel: 3, item: "3.1.12", descripcion: "Documentación técnica", sistema: "CCTV", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "2,000", vuCOP: "8,800,000", total: "2,000", totalCOP: "8,800,000"},
            
            // CAPÍTULO 4: SISTEMA PMV
            {id: '4', nivel: 1, item: "4", descripcion: "SISTEMA PMV", sistema: "PMV", tipo: "capitulo"},
            {id: '4.1', nivel: 2, item: "4.1", descripcion: "SUMINISTROS PMV", sistema: "PMV", tipo: "subcapitulo"},
            {id: '4.1.1', nivel: 3, item: "4.1.1", descripcion: "Panel LED matriz 3×1.5m", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "AT1 Cap. 3 - Criterio 20km", vu: "10,000", vuCOP: "44,000,000", total: "280,000", totalCOP: "1,232,000,000"},
            {id: '4.1.2', nivel: 3, item: "4.1.2", descripcion: "Controlador PMV", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Control de mensajes", vu: "2,500", vuCOP: "11,000,000", total: "70,000", totalCOP: "308,000,000"},
            {id: '4.1.3', nivel: 3, item: "4.1.3", descripcion: "Gabinete control IP65", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "800", vuCOP: "3,520,000", total: "22,400", totalCOP: "98,560,000"},
            {id: '4.1.4', nivel: 3, item: "4.1.4", descripcion: "Conversor FO/Ethernet", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Comunicación fibra", vu: "150", vuCOP: "660,000", total: "4,200", totalCOP: "18,480,000"},
            {id: '4.1.5', nivel: 3, item: "4.1.5", descripcion: "Fuente alimentación 24VDC 15A", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Alimentación eléctrica", vu: "350", vuCOP: "1,540,000", total: "9,800", totalCOP: "43,120,000"},
            {id: '4.1.6', nivel: 3, item: "4.1.6", descripcion: "DPS (datos + energía)", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "150", vuCOP: "660,000", total: "4,200", totalCOP: "18,480,000"},
            {id: '4.1.7', nivel: 3, item: "4.1.7", descripcion: "Cable UTP Cat6 ext 50m", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Conexión datos", vu: "60", vuCOP: "264,000", total: "1,680", totalCOP: "7,392,000"},
            {id: '4.1.8', nivel: 3, item: "4.1.8", descripcion: "Accesorios y conectores", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Instalación completa", vu: "200", vuCOP: "880,000", total: "5,600", totalCOP: "24,640,000"},
            {id: '4.1.9', nivel: 3, item: "4.1.9", descripcion: "Instalación y comisionamiento", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Servicios especializados", vu: "8,000", vuCOP: "35,200,000", total: "224,000", totalCOP: "985,600,000"},
            {id: '4.1.10', nivel: 3, item: "4.1.10", descripcion: "Pruebas FAT/SAT", sistema: "PMV", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Validación funcional", vu: "500", vuCOP: "2,200,000", total: "14,000", totalCOP: "61,600,000"},
            {id: '4.1.11', nivel: 3, item: "4.1.11", descripcion: "Sistema de gestión de contenido", sistema: "PMV", cantidad: "1", unidad: "SISTEMA", tipo: "item", criterio: "Control centralizado", vu: "25,000", vuCOP: "110,000,000", total: "25,000", totalCOP: "110,000,000"},
            {id: '4.1.12', nivel: 3, item: "4.1.12", descripcion: "Documentación técnica", sistema: "PMV", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "3,000", vuCOP: "13,200,000", total: "3,000", totalCOP: "13,200,000"},
            
            // CAPÍTULO 5: SISTEMA GÁLIBOS
            {id: '5', nivel: 1, item: "5", descripcion: "SISTEMA GÁLIBOS", sistema: "GALIBOS", tipo: "capitulo"},
            {id: '5.1', nivel: 2, item: "5.1", descripcion: "SUMINISTROS GÁLIBOS", sistema: "GALIBOS", tipo: "subcapitulo"},
            {id: '5.1.1', nivel: 3, item: "5.1.1", descripcion: "Sensor cortina láser infrarrojo", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Control altura vehicular", vu: "8,500", vuCOP: "37,400,000", total: "68,000", totalCOP: "299,200,000"},
            {id: '5.1.2', nivel: 3, item: "5.1.2", descripcion: "Controlador gálibo", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Procesamiento datos", vu: "2,800", vuCOP: "12,320,000", total: "22,400", totalCOP: "98,560,000"},
            {id: '5.1.3', nivel: 3, item: "5.1.3", descripcion: "Gabinete exterior IP65", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "1,200", vuCOP: "5,280,000", total: "9,600", totalCOP: "42,240,000"},
            {id: '5.1.4', nivel: 3, item: "5.1.4", descripcion: "Conversor FO/Ethernet", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Comunicación fibra", vu: "150", vuCOP: "660,000", total: "1,200", totalCOP: "5,280,000"},
            {id: '5.1.5', nivel: 3, item: "5.1.5", descripcion: "Fuente alimentación 24VDC", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Alimentación eléctrica", vu: "350", vuCOP: "1,540,000", total: "2,800", totalCOP: "12,320,000"},
            {id: '5.1.6', nivel: 3, item: "5.1.6", descripcion: "DPS protección eléctrica", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Protección sobretensión", vu: "120", vuCOP: "528,000", total: "960", totalCOP: "4,224,000"},
            {id: '5.1.7', nivel: 3, item: "5.1.7", descripcion: "Cable señal 100m", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Conexión datos", vu: "180", vuCOP: "792,000", total: "1,440", totalCOP: "6,336,000"},
            {id: '5.1.8', nivel: 3, item: "5.1.8", descripcion: "Software de gestión", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Gestión sistema", vu: "350", vuCOP: "1,540,000", total: "2,800", totalCOP: "12,320,000"},
            {id: '5.1.9', nivel: 3, item: "5.1.9", descripcion: "Accesorios montaje", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Instalación completa", vu: "420", vuCOP: "1,848,000", total: "3,360", totalCOP: "14,784,000"},
            {id: '5.1.10', nivel: 3, item: "5.1.10", descripcion: "Panel LED señalización", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización visual", vu: "2,500", vuCOP: "11,000,000", total: "20,000", totalCOP: "88,000,000"},
            {id: '5.1.11', nivel: 3, item: "5.1.11", descripcion: "Señal PMV pre-aviso", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Prevención", vu: "800", vuCOP: "3,520,000", total: "6,400", totalCOP: "28,160,000"},
            {id: '5.1.12', nivel: 3, item: "5.1.12", descripcion: "Baliza LED ámbar", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización", vu: "120", vuCOP: "528,000", total: "960", totalCOP: "4,224,000"},
            {id: '5.1.13', nivel: 3, item: "5.1.13", descripcion: "Sirena 100dB", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización sonora", vu: "180", vuCOP: "792,000", total: "1,440", totalCOP: "6,336,000"},
            {id: '5.1.14', nivel: 3, item: "5.1.14", descripcion: "Señalización reflectiva", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización pasiva", vu: "600", vuCOP: "2,640,000", total: "4,800", totalCOP: "21,120,000"},
            {id: '5.1.15', nivel: 3, item: "5.1.15", descripcion: "Instalación y comisionamiento", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Servicios especializados", vu: "2,800", vuCOP: "12,320,000", total: "22,400", totalCOP: "98,560,000"},
            {id: '5.1.16', nivel: 3, item: "5.1.16", descripcion: "Obras civiles (anclajes)", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Infraestructura", vu: "1,200", vuCOP: "5,280,000", total: "9,600", totalCOP: "42,240,000"},
            {id: '5.1.17', nivel: 3, item: "5.1.17", descripcion: "Canalización FO/energía", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Infraestructura", vu: "600", vuCOP: "2,640,000", total: "4,800", totalCOP: "21,120,000"},
            {id: '5.1.18', nivel: 3, item: "5.1.18", descripcion: "Pruebas y certificación", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Validación funcional", vu: "420", vuCOP: "1,848,000", total: "3,360", totalCOP: "14,784,000"},
            {id: '5.1.19', nivel: 3, item: "5.1.19", descripcion: "Documentación técnica", sistema: "GALIBOS", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "1,500", vuCOP: "6,600,000", total: "1,500", totalCOP: "6,600,000"},
            
            // CAPÍTULO 6: SISTEMA METEO
            {id: '6', nivel: 1, item: "6", descripcion: "SISTEMA METEO", sistema: "METEO", tipo: "capitulo"},
            {id: '6.1', nivel: 2, item: "6.1", descripcion: "SUMINISTROS METEO", sistema: "METEO", tipo: "subcapitulo"},
            {id: '6.1.1', nivel: 3, item: "6.1.1", descripcion: "Estaciones Davis Vantage Pro2", sistema: "METEO", cantidad: "2", unidad: "UND", tipo: "item", criterio: "NTC 5660 + Supervisión CCO", vu: "3,386", total: "6,772", totalCOP: "29,796,800"},
            
            // CAPÍTULO 7: SISTEMA PEAJES
            {id: '7', nivel: 1, item: "7", descripcion: "SISTEMA PEAJES", sistema: "PEAJES", tipo: "capitulo"},
            {id: '7.1', nivel: 2, item: "7.1", descripcion: "SUMINISTROS PEAJES", sistema: "PEAJES", tipo: "subcapitulo"},
            {id: '7.1.1', nivel: 3, item: "7.1.1", descripcion: "Sistemas de recaudo automático", sistema: "PEAJES", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Recaudo vehicular", vu: "490,081", total: "980,161", totalCOP: "4,312,708,400"},
            
            // CAPÍTULO 8: SISTEMA CCO
            {id: '8', nivel: 1, item: "8", descripcion: "SISTEMA CCO", sistema: "CCO", tipo: "capitulo"},
            {id: '8.1', nivel: 2, item: "8.1", descripcion: "SUMINISTROS CCO", sistema: "CCO", tipo: "subcapitulo"},
            {id: '8.1.1', nivel: 3, item: "8.1.1", descripcion: "Centro de Control completo", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Control centralizado", vu: "1,165,000", total: "1,165,000", totalCOP: "5,126,000,000"},
            
            // CAPÍTULO 9: SISTEMA WIM
            {id: '9', nivel: 1, item: "9", descripcion: "SISTEMA WIM", sistema: "WIM", tipo: "capitulo"},
            {id: '9.1', nivel: 2, item: "9.1", descripcion: "SUMINISTROS WIM", sistema: "WIM", tipo: "subcapitulo"},
            {id: '9.1.1', nivel: 3, item: "9.1.1", descripcion: "Básculas dinámicas WIM (2 plataformas)", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Pesaje en movimiento", vu: "140,000", vuCOP: "616,000,000", total: "280,000", totalCOP: "1,232,000,000"},
            {id: '9.1.2', nivel: 3, item: "9.1.2", descripcion: "Básculas estáticas 100t (2 plataformas)", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Pesaje estático verificación", vu: "95,000", vuCOP: "418,000,000", total: "190,000", totalCOP: "836,000,000"},
            {id: '9.1.3', nivel: 3, item: "9.1.3", descripcion: "Sensores de ejes y loops inductivos", sistema: "WIM", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Detección de ejes", vu: "8,500", vuCOP: "37,400,000", total: "68,000", totalCOP: "299,200,000"},
            {id: '9.1.4', nivel: 3, item: "9.1.4", descripcion: "Sistema de control y gestión", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Procesamiento datos", vu: "4,045", vuCOP: "17,798,000", total: "8,090", totalCOP: "35,596,000"},
            {id: '9.1.5', nivel: 3, item: "9.1.5", descripcion: "Gabinete exterior antivandalismo", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "4,619", vuCOP: "20,323,600", total: "9,238", totalCOP: "40,647,200"},
            {id: '9.1.6', nivel: 3, item: "9.1.6", descripcion: "Cámara OCR báscula", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Reconocimiento vehículos", vu: "5,110", vuCOP: "22,484,000", total: "10,219", totalCOP: "44,963,800"},
            {id: '9.1.7', nivel: 3, item: "9.1.7", descripcion: "Cámara OCR fuga", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control evasión", vu: "4,800", vuCOP: "21,120,000", total: "9,600", totalCOP: "42,240,000"},
            {id: '9.1.8', nivel: 3, item: "9.1.8", descripcion: "Tablero protecciones eléctricas", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "1,048", vuCOP: "4,611,200", total: "2,096", totalCOP: "9,222,400"},
            {id: '9.1.9', nivel: 3, item: "9.1.9", descripcion: "Señal Doble Aspa-Cruz", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Señalización", vu: "1,858", vuCOP: "8,175,200", total: "7,432", totalCOP: "32,700,800"},
            {id: '9.1.10', nivel: 3, item: "9.1.10", descripcion: "Switch PoE 8 puertos", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación red", vu: "681", vuCOP: "2,996,400", total: "1,363", totalCOP: "5,997,200"},
            {id: '9.1.11', nivel: 3, item: "9.1.11", descripcion: "Computador aplicación", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Gestión sistema", vu: "3,983", vuCOP: "17,525,200", total: "7,966", totalCOP: "35,050,400"},
            {id: '9.1.12', nivel: 3, item: "9.1.12", descripcion: "Servidor Rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Procesamiento central", vu: "6,272", vuCOP: "27,596,800", total: "12,544", totalCOP: "55,193,600"},
            {id: '9.1.13', nivel: 3, item: "9.1.13", descripcion: "Rack para equipos caseta", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Infraestructura", vu: "1,991", vuCOP: "8,760,400", total: "3,983", totalCOP: "17,525,200"},
            {id: '9.1.14', nivel: 3, item: "9.1.14", descripcion: "UPS 2KVA para rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Respaldo energético", vu: "1,572", vuCOP: "6,916,800", total: "3,144", totalCOP: "13,833,600"},
            {id: '9.1.15', nivel: 3, item: "9.1.15", descripcion: "Poste brazo 3m cámaras", sistema: "WIM", cantidad: "6", unidad: "UND", tipo: "item", criterio: "Soporte cámaras", vu: "2,503", vuCOP: "11,013,200", total: "15,015", totalCOP: "66,066,000"},
            {id: '9.1.16', nivel: 3, item: "9.1.16", descripcion: "Instalación sistemas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servicios especializados", vu: "32,357", vuCOP: "142,370,800", total: "32,357", totalCOP: "142,370,800"},
            {id: '9.1.17', nivel: 3, item: "9.1.17", descripcion: "Instalación fibra óptica", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación", vu: "5,174", vuCOP: "22,765,600", total: "10,348", totalCOP: "45,531,200"},
            {id: '9.1.18', nivel: 3, item: "9.1.18", descripcion: "Documentación As-Built", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "5,241", vuCOP: "23,060,400", total: "5,241", totalCOP: "23,060,400"},
            {id: '9.1.19', nivel: 3, item: "9.1.19", descripcion: "Software BASCAM integración", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Integración sistema", vu: "2,970", vuCOP: "13,068,000", total: "5,940", totalCOP: "26,136,000"},
            {id: '9.1.20', nivel: 3, item: "9.1.20", descripcion: "Flete y seguro internacional", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transporte", vu: "19,474", vuCOP: "85,685,600", total: "19,474", totalCOP: "85,685,600"},
            
            // CAPÍTULO 10: TELECOMUNICACIONES ITS
            {id: '10', nivel: 1, item: "10", descripcion: "TELECOMUNICACIONES ITS", sistema: "TELECOM", tipo: "capitulo"},
            {id: '10.1', nivel: 2, item: "10.1", descripcion: "SUMINISTROS TELECOM", sistema: "TELECOM", tipo: "subcapitulo"},
            {id: '10.1.1', nivel: 3, item: "10.1.1", descripcion: "Cable fibra óptica 48 hilos (322 km)", sistema: "TELECOM", cantidad: "322", unidad: "KM", tipo: "item", criterio: "Backbone comunicaciones", vu: "2,500", total: "805,000", totalCOP: "3,542,000,000"},
            {id: '10.1.2', nivel: 3, item: "10.1.2", descripcion: "Ductos HDPE 4\" + zanja (322 km)", sistema: "TELECOM", cantidad: "322", unidad: "KM", tipo: "item", criterio: "Protección fibra", vu: "50", total: "16,100", totalCOP: "70,840,000"},
            {id: '10.1.3', nivel: 3, item: "10.1.3", descripcion: "Switches L3 Core (7 nodos)", sistema: "TELECOM", cantidad: "7", unidad: "UND", tipo: "item", criterio: "Nodos principales", vu: "15,000", total: "105,000", totalCOP: "462,000,000"},
            {id: '10.1.4', nivel: 3, item: "10.1.4", descripcion: "Switches L2 Acceso (150 gabinetes)", sistema: "TELECOM", cantidad: "150", unidad: "UND", tipo: "item", criterio: "Acceso equipos ITS", vu: "2,000", total: "300,000", totalCOP: "1,320,000,000"},
            {id: '10.1.5', nivel: 3, item: "10.1.5", descripcion: "Cajas empalme y fusiones", sistema: "TELECOM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Empalmes fibra", vu: "200,251", total: "200,251", totalCOP: "881,104,400"}
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
            'GALIBOS': 'RN 4510 + RN 4511',
            'METEO': '2 peajes + 1 CCO',
            'PEAJES': 'RN 4510 + RN 4511',
            'CCO': 'RN 4513 PK 4+300',
            'WIM': 'Peaje principal',
            'TELECOM': 'Todo el corredor'
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
