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
            cambios: [],
            cronogramaUF: []
        };
        
        // Cargar coordenadas reales del KML
        this.coordenadasKML = null;
        this.cargarCoordenadasKML();
        
        this.initializeData();
    }
    
    async cargarCoordenadasKML() {
        try {
            const response = await fetch('data/coordenadas_tm01_kml.json');
            if (response.ok) {
                const datos = await response.json();
                this.coordenadasKML = datos.mapa_pk_coordenadas || {};
                console.log('✅ Coordenadas KML cargadas:', Object.keys(this.coordenadasKML).length, 'puntos');
            } else {
                console.warn('⚠️ No se pudo cargar coordenadas KML, usando coordenadas aproximadas');
            }
        } catch (error) {
            console.warn('⚠️ Error cargando coordenadas KML:', error);
        }
    }
    
    parsePK(pkString) {
        // Convertir PK formato "41+100" a kilómetros (41.1)
        if (!pkString || typeof pkString !== 'string') return null;
        const parts = pkString.split('+');
        if (parts.length === 2) {
            const km = parseInt(parts[0]) || 0;
            const metros = parseInt(parts[1]) || 0;
            return km + (metros / 1000.0);
        }
        return null;
    }
    
    obtenerCoordenadasPorPK(pkString) {
        // Intentar obtener coordenadas reales del KML por PK
        if (!this.coordenadasKML || !pkString) {
            return null;
        }
        
        const pkNumero = this.parsePK(pkString);
        if (pkNumero === null) return null;
        
        // Buscar el PK más cercano (redondeado)
        const pkRedondeado = Math.round(pkNumero);
        const pkStr = pkRedondeado.toString();
        
        if (this.coordenadasKML[pkStr]) {
            const coord = this.coordenadasKML[pkStr];
            return {
                lat: coord.lat,
                lng: coord.lon
            };
        }
        
        return null;
    }
    
    initializeData() {
        // Datos WBS - Fuente: PRESUPUESTO_ITS_PURO_v2.0.md + Especificaciones Técnicas Detalladas
        this.data.wbs = [
            // CAPÍTULO 1: SISTEMA SOS
            {id: '1', nivel: 1, item: "1", descripcion: "SISTEMA SOS", sistema: "SOS", tipo: "capitulo"},
            {id: '1.1', nivel: 2, item: "1.1", descripcion: "SUMINISTROS SOS", sistema: "SOS", tipo: "subcapitulo"},
            {id: '1.1.1', nivel: 3, item: "1.1.1", descripcion: "Poste metálico galvanizado 4m", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Estructura principal", vu: "800", vuCOP: "3,520,000", total: "70,400", totalCOP: "309,760,000"},
            {id: '1.1.2', nivel: 3, item: "1.1.2", descripcion: "Gabinete control IP65", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "600", vuCOP: "2,640,000", total: "52,800", totalCOP: "232,320,000"},
            {id: '1.1.3', nivel: 3, item: "1.1.3", descripcion: "Teléfono resistente vandalismo", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Comunicación VoIP", vu: "1,500", total: "132,000", totalCOP: "580,800,000"},
            {id: '1.1.4', nivel: 3, item: "1.1.4", descripcion: "Panel solar 150W", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Alimentación autónoma", vu: "450", total: "39,600", totalCOP: "174,240,000"},
            {id: '1.1.5', nivel: 3, item: "1.1.5", descripcion: "Batería 12V 100Ah (×2)", sistema: "SOS", cantidad: "176", unidad: "UND", tipo: "item", criterio: "Respaldo energético", vu: "180", total: "31,680", totalCOP: "139,392,000"},
            {id: '1.1.6', nivel: 3, item: "1.1.6", descripcion: "Controlador solar MPPT", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Gestión energía", vu: "200", total: "17,600", totalCOP: "77,440,000"},
            {id: '1.1.7', nivel: 3, item: "1.1.7", descripcion: "Conversor FO/Ethernet", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Comunicación fibra", vu: "150", total: "13,200", totalCOP: "58,080,000"},
            {id: '1.1.8', nivel: 3, item: "1.1.8", descripcion: "Cableado control y energía", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Conexiones internas", vu: "120", total: "10,560", totalCOP: "46,464,000"},
            {id: '1.1.9', nivel: 3, item: "1.1.9", descripcion: "Baliza LED ámbar 12-24V", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Señalización visual", vu: "80", total: "7,040", totalCOP: "30,976,000"},
            {id: '1.1.10', nivel: 3, item: "1.1.10", descripcion: "Sirena piezo 110dB", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Señalización sonora", vu: "60", total: "5,280", totalCOP: "23,232,000"},
            {id: '1.1.11', nivel: 3, item: "1.1.11", descripcion: "Botón pulsador iluminado", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Activación emergencia", vu: "40", total: "3,520", totalCOP: "15,488,000"},
            {id: '1.1.12', nivel: 3, item: "1.1.12", descripcion: "DPS protección sobretensión", sistema: "SOS", cantidad: "264", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "25", total: "6,600", totalCOP: "29,040,000"},
            {id: '1.1.13', nivel: 3, item: "1.1.13", descripcion: "Corona antiescalatoria", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Seguridad física", vu: "50", total: "4,400", totalCOP: "19,360,000"},
            {id: '1.1.14', nivel: 3, item: "1.1.14", descripcion: "Varilla puesta a tierra", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "15", total: "1,320", totalCOP: "5,808,000"},
            {id: '1.1.15', nivel: 3, item: "1.1.15", descripcion: "Cable UTP Cat6 ext 50m", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Conexión datos", vu: "30", total: "2,640", totalCOP: "11,616,000"},
            {id: '1.1.16', nivel: 3, item: "1.1.16", descripcion: "Ducto HDPE 2\" × 30m", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Protección cableado", vu: "20", total: "1,760", totalCOP: "7,744,000"},
            {id: '1.1.17', nivel: 3, item: "1.1.17", descripcion: "Instalación y comisionamiento", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Servicios especializados", vu: "1,200", total: "105,600", totalCOP: "464,640,000"},
            {id: '1.1.18', nivel: 3, item: "1.1.18", descripcion: "Pruebas FAT/SAT", sistema: "SOS", cantidad: "88", unidad: "UND", tipo: "item", criterio: "Validación funcional", vu: "200", total: "17,600", totalCOP: "77,440,000"},
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
            {id: '7.1.1', nivel: 3, item: "7.1.1", descripcion: "Carril automático (telepeaje)", sistema: "PEAJES", cantidad: "4", unidad: "GLB", tipo: "item", criterio: "Telepeaje", vu: "72301.56", vuCOP: "318126889", total: "289206.24", totalCOP: "1272507555"},
            {id: '7.1.2', nivel: 3, item: "7.1.2", descripcion: "Carril mixto (manual + telepeaje)", sistema: "PEAJES", cantidad: "4", unidad: "GLB", tipo: "item", criterio: "Mixto", vu: "71804.12", vuCOP: "315942105", total: "287216.46", totalCOP: "1263768420"},
            {id: '7.1.3', nivel: 3, item: "7.1.3", descripcion: "Carril manual semiautomático (tarjetas crédito/débito)", sistema: "PEAJES", cantidad: "4", unidad: "GLB", tipo: "item", criterio: "Manual semiautomático", vu: "61692.34", vuCOP: "271446292", total: "246769.36", totalCOP: "1085785166"},
            {id: '7.1.4', nivel: 3, item: "7.1.4", descripcion: "Carril manual reversible (doble operador + sensores)", sistema: "PEAJES", cantidad: "2", unidad: "GLB", tipo: "item", criterio: "Manual reversible", vu: "111777.53", vuCOP: "491821141", total: "223555.06", totalCOP: "983642282"},
            {id: '7.1.5', nivel: 3, item: "7.1.5", descripcion: "Equipos estación de recaudo (servidores redundantes)", sistema: "PEAJES", cantidad: "2", unidad: "GLB", tipo: "item", criterio: "Equipamiento estación", vu: "105684.82", vuCOP: "465013188", total: "211369.64", totalCOP: "930026375"},
            {id: '7.1.6', nivel: 3, item: "7.1.6", descripcion: "Equipos CCO central para 2 estaciones (opcional)", sistema: "PEAJES", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servidores redundantes CCO", vu: "110227.27", vuCOP: "485000000", total: "110227.27", totalCOP: "485000000"},
            
            // CAPÍTULO 8: SISTEMA CCO
            {id: '8', nivel: 1, item: "8", descripcion: "SISTEMA CCO", sistema: "CCO", tipo: "capitulo"},
            {id: '8.1', nivel: 2, item: "8.1", descripcion: "SUMINISTROS CCO", sistema: "CCO", tipo: "subcapitulo"},
            {id: '8.1.1', nivel: 3, item: "8.1.1", descripcion: "Centro de Control completo", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Control centralizado", vu: "1,165,000", total: "1,165,000", totalCOP: "5,126,000,000"},
            
            // CAPÍTULO 9: SISTEMA WIM
            {id: '9', nivel: 1, item: "9", descripcion: "SISTEMA WIM", sistema: "WIM", tipo: "capitulo"},
            {id: '9.1', nivel: 2, item: "9.1", descripcion: "BÁSCULAS DINÁMICAS WIM (PAT)", sistema: "WIM", tipo: "subcapitulo"},
            {id: '9.1.1', nivel: 3, item: "9.1.1", descripcion: "Placas de pesaje 1.55m", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Plataformas pesaje", vu: "10,481", vuCOP: "46,116,400", total: "41,926", totalCOP: "184,474,400"},
            {id: '9.1.2', nivel: 3, item: "9.1.2", descripcion: "Bastidores con epóxico", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Soporte placas", vu: "4,297", vuCOP: "18,906,800", total: "17,190", totalCOP: "75,639,600"},
            {id: '9.1.3', nivel: 3, item: "9.1.3", descripcion: "Material lazos inductivos", sistema: "WIM", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Detección vehículos", vu: "409", vuCOP: "1,799,600", total: "3,270", totalCOP: "14,388,000"},
            {id: '9.1.4', nivel: 3, item: "9.1.4", descripcion: "Electrónica DAW100", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Procesamiento datos", vu: "4,045", vuCOP: "17,798,000", total: "8,090", totalCOP: "35,596,000"},
            {id: '9.1.5', nivel: 3, item: "9.1.5", descripcion: "Gabinete antivandalismo", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "4,619", vuCOP: "20,323,600", total: "9,238", totalCOP: "40,647,200"},
            {id: '9.1.6', nivel: 3, item: "9.1.6", descripcion: "Cámara OCR báscula (22m)", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Reconocimiento placas", vu: "5,110", vuCOP: "22,484,000", total: "10,219", totalCOP: "44,963,800"},
            {id: '9.1.7', nivel: 3, item: "9.1.7", descripcion: "Cámara OCR fuga (22m)", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control evasión", vu: "4,800", vuCOP: "21,120,000", total: "9,600", totalCOP: "42,240,000"},
            {id: '9.1.8', nivel: 3, item: "9.1.8", descripcion: "Tablero protección eléctrica", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "1,048", vuCOP: "4,611,200", total: "2,096", totalCOP: "9,222,400"},
            {id: '9.1.9', nivel: 3, item: "9.1.9", descripcion: "Señal Doble Aspa-Cruz", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Señalización", vu: "1,858", vuCOP: "8,175,200", total: "7,432", totalCOP: "32,700,800"},
            {id: '9.1.10', nivel: 3, item: "9.1.10", descripcion: "Switch PoE 8 puertos", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación red", vu: "681", vuCOP: "2,996,400", total: "1,363", totalCOP: "5,997,200"},
            {id: '9.1.11', nivel: 3, item: "9.1.11", descripcion: "Computador aplicación Rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Gestión sistema", vu: "3,983", vuCOP: "17,525,200", total: "7,966", totalCOP: "35,050,400"},
            {id: '9.1.12', nivel: 3, item: "9.1.12", descripcion: "Monitor, teclado, mouse", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Interfaz usuario", vu: "558", vuCOP: "2,455,200", total: "1,117", totalCOP: "4,914,800"},
            {id: '9.1.13', nivel: 3, item: "9.1.13", descripcion: "Servidor Rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Procesamiento central", vu: "6,272", vuCOP: "27,596,800", total: "12,544", totalCOP: "55,193,600"},
            {id: '9.1.14', nivel: 3, item: "9.1.14", descripcion: "Switch para Rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación rack", vu: "769", vuCOP: "3,383,600", total: "1,538", totalCOP: "6,767,200"},
            {id: '9.1.15', nivel: 3, item: "9.1.15", descripcion: "Impresora láser", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Impresión documentos", vu: "734", vuCOP: "3,229,600", total: "1,467", totalCOP: "6,454,800"},
            {id: '9.1.16', nivel: 3, item: "9.1.16", descripcion: "Rack equipos caseta", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Infraestructura", vu: "1,991", vuCOP: "8,760,400", total: "3,983", totalCOP: "17,525,200"},
            {id: '9.1.17', nivel: 3, item: "9.1.17", descripcion: "UPS 2KVA rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Respaldo energético", vu: "1,572", vuCOP: "6,916,800", total: "3,144", totalCOP: "13,833,600"},
            {id: '9.1.18', nivel: 3, item: "9.1.18", descripcion: "Poste brazo 3m cámaras LPR", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Soporte cámaras", vu: "2,503", vuCOP: "11,013,200", total: "5,005", totalCOP: "22,022,000"},
            {id: '9.1.19', nivel: 3, item: "9.1.19", descripcion: "Poste brazo 3m señales", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Soporte señales", vu: "2,503", vuCOP: "11,013,200", total: "5,005", totalCOP: "22,022,000"},
            {id: '9.1.20', nivel: 3, item: "9.1.20", descripcion: "Poste brazo 3m cámaras fuga", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Soporte cámaras fuga", vu: "2,503", vuCOP: "11,013,200", total: "5,005", totalCOP: "22,022,000"},
            {id: '9.1.21', nivel: 3, item: "9.1.21", descripcion: "Cables y materiales", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Cableado sistema", vu: "2,079", vuCOP: "9,147,600", total: "4,157", totalCOP: "18,295,200"},
            {id: '9.1.22', nivel: 3, item: "9.1.22", descripcion: "Instalación fibra óptica", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación", vu: "5,174", vuCOP: "22,765,600", total: "10,348", totalCOP: "45,531,200"},
            {id: '9.1.23', nivel: 3, item: "9.1.23", descripcion: "Documentación As-Built", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "5,241", vuCOP: "23,060,400", total: "5,241", totalCOP: "23,060,400"},
            {id: '9.1.24', nivel: 3, item: "9.1.24", descripcion: "Instalación sistemas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servicios especializados", vu: "32,357", vuCOP: "142,370,800", total: "32,357", totalCOP: "142,370,800"},
            {id: '9.1.25', nivel: 3, item: "9.1.25", descripcion: "Puesta a tierra", sistema: "WIM", cantidad: "6", unidad: "UND", tipo: "item", criterio: "Sistema puesta tierra", vu: "871", vuCOP: "3,832,400", total: "5,226", totalCOP: "22,994,400"},
            {id: '9.1.26', nivel: 3, item: "9.1.26", descripcion: "Asistencia garantía", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Servicio postventa", vu: "5,148", vuCOP: "22,651,200", total: "10,296", totalCOP: "45,302,400"},
            {id: '9.1.27', nivel: 3, item: "9.1.27", descripcion: "Flete internacional CIF", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transporte", vu: "19,474", vuCOP: "85,685,600", total: "19,474", totalCOP: "85,685,600"},
            {id: '9.1.28', nivel: 3, item: "9.1.28", descripcion: "Ingeniería PAT", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servicios ingeniería", vu: "3,144", vuCOP: "13,833,600", total: "3,144", totalCOP: "13,833,600"},
            {id: '9.1.29', nivel: 3, item: "9.1.29", descripcion: "Pólizas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Seguros", vu: "2,970", vuCOP: "13,068,000", total: "2,970", totalCOP: "13,068,000"},
            {id: '9.1.30', nivel: 3, item: "9.1.30", descripcion: "Software BASCAM integración", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Integración sistema", vu: "2,970", vuCOP: "13,068,000", total: "5,940", totalCOP: "26,136,000"},
            
            {id: '9.2', nivel: 2, item: "9.2", descripcion: "BÁSCULAS ESTÁTICAS (INTERPESAJE)", sistema: "WIM", tipo: "subcapitulo"},
            {id: '9.2.1', nivel: 3, item: "9.2.1", descripcion: "Báscula Fairbanks Talon 100t", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Pesaje estático precisión", vu: "58,870", vuCOP: "259,028,000", total: "117,740", totalCOP: "518,056,000"},
            {id: '9.2.2', nivel: 3, item: "9.2.2", descripcion: "Computador + Software", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Gestión estática", vu: "2,590", vuCOP: "11,396,000", total: "5,180", totalCOP: "22,792,000"},
            {id: '9.2.3', nivel: 3, item: "9.2.3", descripcion: "Sistema control barreras", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Control acceso", vu: "3,239", vuCOP: "14,251,600", total: "12,955", totalCOP: "57,006,400"},
            {id: '9.2.4', nivel: 3, item: "9.2.4", descripcion: "Sistema semafórico", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Señalización semáforos", vu: "410", vuCOP: "1,804,000", total: "1,639", totalCOP: "7,211,600"},
            {id: '9.2.5', nivel: 3, item: "9.2.5", descripcion: "Impresora térmica + Intercom", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Impresión y comunicación", vu: "1,318", vuCOP: "5,799,200", total: "2,635", totalCOP: "11,598,400"},
            {id: '9.2.6', nivel: 3, item: "9.2.6", descripcion: "Display alfanumérico LED", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Información conductor", vu: "1,704", vuCOP: "7,497,600", total: "3,408", totalCOP: "14,995,200"},
            {id: '9.2.7', nivel: 3, item: "9.2.7", descripcion: "Gabinete controlador digital", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control digital", vu: "2,830", vuCOP: "12,452,000", total: "5,660", totalCOP: "24,904,000"},
            {id: '9.2.8', nivel: 3, item: "9.2.8", descripcion: "Software gestión (licencia vitalicia)", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Software gestión", vu: "3,898", vuCOP: "17,151,200", total: "3,898", totalCOP: "17,151,200"},
            {id: '9.2.9', nivel: 3, item: "9.2.9", descripcion: "Sistema grabación ejes", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Registro ejes", vu: "664", vuCOP: "2,921,600", total: "1,329", totalCOP: "5,843,200"},
            {id: '9.2.10', nivel: 3, item: "9.2.10", descripcion: "Cámara LPR placas", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Reconocimiento placas", vu: "3,241", vuCOP: "14,260,400", total: "6,481", totalCOP: "28,520,800"},
            {id: '9.2.11', nivel: 3, item: "9.2.11", descripcion: "Sistema video seguridad", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Seguridad video", vu: "2,911", vuCOP: "12,808,400", total: "5,822", totalCOP: "25,616,800"},
            {id: '9.2.12', nivel: 3, item: "9.2.12", descripcion: "Sistema categorización vehicular", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Clasificación vehículos", vu: "3,573", vuCOP: "15,721,200", total: "7,147", totalCOP: "31,442,400"},
            {id: '9.2.13', nivel: 3, item: "9.2.13", descripcion: "Sistema fiscalización", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control fiscal", vu: "705", vuCOP: "3,102,000", total: "1,410", totalCOP: "6,204,000"},
            {id: '9.2.14', nivel: 3, item: "9.2.14", descripcion: "Instalación básculas", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación especializada", vu: "12,755", vuCOP: "56,123,320", total: "25,510", totalCOP: "112,246,640"},
            {id: '9.2.15', nivel: 3, item: "9.2.15", descripcion: "Instalación software", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación software", vu: "4,405", vuCOP: "19,380,240", total: "8,810", totalCOP: "38,760,480"},
            {id: '9.2.16', nivel: 3, item: "9.2.16", descripcion: "Instalación periféricos", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación periféricos", vu: "4,473", vuCOP: "19,683,300", total: "8,946", totalCOP: "39,366,600"},
            {id: '9.2.17', nivel: 3, item: "9.2.17", descripcion: "Transporte básculas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transporte equipos", vu: "1,573", vuCOP: "6,920,000", total: "1,573", totalCOP: "6,920,000"},
            {id: '9.2.18', nivel: 3, item: "9.2.18", descripcion: "Calibración NTC 2031 ONAC", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Calibración certificada", vu: "1,255", vuCOP: "5,520,000", total: "2,510", totalCOP: "11,040,000"},
            {id: '9.2.19', nivel: 3, item: "9.2.19", descripcion: "Transporte masas patrones", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transporte calibración", vu: "2,545", vuCOP: "11,200,000", total: "2,545", totalCOP: "11,200,000"},
            {id: '9.2.20', nivel: 3, item: "9.2.20", descripcion: "Grúa descargue", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servicios grúa", vu: "1,182", vuCOP: "5,200,000", total: "1,182", totalCOP: "5,200,000"},
            {id: '9.2.21', nivel: 3, item: "9.2.21", descripcion: "Montacarga calibración", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Equipos calibración", vu: "596", vuCOP: "2,624,440", total: "596", totalCOP: "2,624,440"},
            {id: '9.2.22', nivel: 3, item: "9.2.22", descripcion: "Manuales + Planos", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Documentación técnica", vu: "1,909", vuCOP: "8,400,000", total: "1,909", totalCOP: "8,400,000"},
            {id: '9.2.23', nivel: 3, item: "9.2.23", descripcion: "Cableado completo", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Cableado sistema", vu: "7,704", vuCOP: "33,896,000", total: "15,408", totalCOP: "67,792,000"},
            {id: '9.2.24', nivel: 3, item: "9.2.24", descripcion: "Técnico HSEQ", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Supervisión técnica", vu: "5,318", vuCOP: "23,400,000", total: "10,636", totalCOP: "46,800,000"},
            {id: '9.2.25', nivel: 3, item: "9.2.25", descripcion: "Capacitación 40 horas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Capacitación personal", vu: "1,032", vuCOP: "4,542,300", total: "1,032", totalCOP: "4,542,300"},
            
            {id: '9.3', nivel: 2, item: "9.3", descripcion: "PUESTA A TIERRA", sistema: "WIM", tipo: "subcapitulo"},
            {id: '9.3.1', nivel: 3, item: "9.3.1", descripcion: "Varillas copperweld 2.4m", sistema: "WIM", cantidad: "12", unidad: "UND", tipo: "item", criterio: "Electrodos tierra", vu: "955", vuCOP: "4,200,000", total: "11,460", totalCOP: "50,424,000"},
            {id: '9.3.2', nivel: 3, item: "9.3.2", descripcion: "Cable desnudo 2/0 AWG", sistema: "WIM", cantidad: "200", unidad: "ML", tipo: "item", criterio: "Conductor tierra", vu: "1,136", vuCOP: "5,000,000", total: "227,200", totalCOP: "1,000,000,000"},
            {id: '9.3.3', nivel: 3, item: "9.3.3", descripcion: "Soldaduras exotérmicas", sistema: "WIM", cantidad: "24", unidad: "UND", tipo: "item", criterio: "Conexiones tierra", vu: "436", vuCOP: "1,920,000", total: "10,464", totalCOP: "46,041,600"},
            {id: '9.3.4', nivel: 3, item: "9.3.4", descripcion: "Bentonita + sales mejoramiento", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Mejoramiento suelo", vu: "568", vuCOP: "2,500,000", total: "568", totalCOP: "2,500,000"},
            {id: '9.3.5', nivel: 3, item: "9.3.5", descripcion: "Excavación + relleno", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Obra civil tierra", vu: "1,818", vuCOP: "8,000,000", total: "1,818", totalCOP: "8,000,000"},
            {id: '9.3.6', nivel: 3, item: "9.3.6", descripcion: "Medición resistencia + informe", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Medición certificada", vu: "545", vuCOP: "2,400,000", total: "1,090", totalCOP: "4,800,000"},
            {id: '9.3.7', nivel: 3, item: "9.3.7", descripcion: "Mano obra instalación", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación especializada", vu: "3,636", vuCOP: "16,000,000", total: "7,272", totalCOP: "32,000,000"},
            {id: '9.3.8', nivel: 3, item: "9.3.8", descripcion: "Planos + Asesoría INTERPESAJE", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Asesoría técnica", vu: "682", vuCOP: "3,000,000", total: "682", totalCOP: "3,000,000"},
            
            // CAPÍTULO 10: TELECOMUNICACIONES ITS
            {id: '10', nivel: 1, item: "10", descripcion: "TELECOMUNICACIONES ITS", sistema: "TELECOM", tipo: "capitulo"},
            {id: '10.1', nivel: 2, item: "10.1", descripcion: "EQUIPOS ACTIVOS L2/L3", sistema: "TELECOM", tipo: "subcapitulo"},
            {id: '10.1.1', nivel: 3, item: "10.1.1", descripcion: "Switches L2 Advantech EKI-7706G", sistema: "TELECOM", cantidad: "84", unidad: "UND", tipo: "item", criterio: "Sub-anillos ITS", vu: "258", vuCOP: "1,135", total: "21,672", totalCOP: "95,340"},
            {id: '10.1.2', nivel: 3, item: "10.1.2", descripcion: "Switches L3 Cisco C9300-24P-E", sistema: "TELECOM", cantidad: "7", unidad: "UND", tipo: "item", criterio: "Nodos core", vu: "4,525", vuCOP: "19,904", total: "31,675", totalCOP: "139,328"},
            {id: '10.1.3', nivel: 3, item: "10.1.3", descripcion: "Stock repuestos L2 (25%)", sistema: "TELECOM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Repuestos", vu: "5,418", vuCOP: "23,840", total: "5,418", totalCOP: "23,840"},
            {id: '10.1.4', nivel: 3, item: "10.1.4", descripcion: "Stock repuestos L3 (25%)", sistema: "TELECOM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Repuestos", vu: "6,902", vuCOP: "30,370", total: "6,902", totalCOP: "30,370"},
            
            {id: '10.2', nivel: 2, item: "10.2", descripcion: "FIBRA ÓPTICA - MATERIALES", sistema: "TELECOM", tipo: "subcapitulo"},
            {id: '10.2.1', nivel: 3, item: "10.2.1", descripcion: "Cable fibra óptica 48h Lanpro", sistema: "TELECOM", cantidad: "314824", unidad: "ML", tipo: "item", criterio: "Backbone principal", vu: "1.5", vuCOP: "6,600", total: "472,236", totalCOP: "2,077,838,400"},
            {id: '10.2.2', nivel: 3, item: "10.2.2", descripcion: "Cable fibra óptica 12h Lanpro", sistema: "TELECOM", cantidad: "10856", unidad: "ML", tipo: "item", criterio: "Ramales secundarios", vu: "1.5", vuCOP: "6,600", total: "16,284", totalCOP: "71,649,600"},
            {id: '10.2.3', nivel: 3, item: "10.2.3", descripcion: "Cajas empalme 120×120", sistema: "TELECOM", cantidad: "185", unidad: "UND", tipo: "item", criterio: "Empalmes principales", vu: "375", vuCOP: "1,650,000", total: "69,375", totalCOP: "305,250,000"},
            {id: '10.2.4', nivel: 3, item: "10.2.4", descripcion: "Cajas empalme 80×80", sistema: "TELECOM", cantidad: "65", unidad: "UND", tipo: "item", criterio: "Empalmes secundarios", vu: "344.1", vuCOP: "1,513,930", total: "22,366.5", totalCOP: "98,405,450"},
            {id: '10.2.5', nivel: 3, item: "10.2.5", descripcion: "Cajas empalme 60×60", sistema: "TELECOM", cantidad: "843", unidad: "UND", tipo: "item", criterio: "Empalmes terciarios", vu: "126.8", vuCOP: "557,920", total: "106,892.4", totalCOP: "470,329,560"},
            {id: '10.2.6', nivel: 3, item: "10.2.6", descripcion: "Cruces especiales puentes", sistema: "TELECOM", cantidad: "4132", unidad: "ML", tipo: "item", criterio: "Cruces estructuras", vu: "34.5", vuCOP: "152,000", total: "142,554", totalCOP: "628,064,000"},
            {id: '10.2.7', nivel: 3, item: "10.2.7", descripcion: "Cruces especiales muros", sistema: "TELECOM", cantidad: "236", unidad: "ML", tipo: "item", criterio: "Cruces estructuras", vu: "34.5", vuCOP: "152,000", total: "8,142", totalCOP: "35,872,000"},
            {id: '10.2.8', nivel: 3, item: "10.2.8", descripcion: "Cruces especiales box culvert", sistema: "TELECOM", cantidad: "6732", unidad: "ML", tipo: "item", criterio: "Cruces estructuras", vu: "34.5", vuCOP: "152,000", total: "232,254", totalCOP: "1,023,264,000"},
            {id: '10.2.9', nivel: 3, item: "10.2.9", descripcion: "Cruces especiales alcantarillas", sistema: "TELECOM", cantidad: "2006", unidad: "ML", tipo: "item", criterio: "Cruces estructuras", vu: "34.5", vuCOP: "152,000", total: "69,207", totalCOP: "304,912,000"},
            {id: '10.2.10', nivel: 3, item: "10.2.10", descripcion: "Empalmes y conectores globales", sistema: "TELECOM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Empalmes fibra", vu: "39.7", vuCOP: "174,801", total: "39.7", totalCOP: "174,801"},
            
            {id: '10.3', nivel: 2, item: "10.3", descripcion: "OBRA CIVIL", sistema: "TELECOM", tipo: "subcapitulo"},
            {id: '10.3.1', nivel: 3, item: "10.3.1", descripcion: "Excavación asfalto + tritubo", sistema: "TELECOM", cantidad: "27140", unidad: "ML", tipo: "item", criterio: "Excavación vial", vu: "18.17", vuCOP: "79,934", total: "493,134", totalCOP: "2,169,270,960"},
            {id: '10.3.2', nivel: 3, item: "10.3.2", descripcion: "Excavación andén + tritubo", sistema: "TELECOM", cantidad: "13570", unidad: "ML", tipo: "item", criterio: "Excavación peatonal", vu: "18.17", vuCOP: "79,934", total: "246,567", totalCOP: "1,084,635,480"},
            {id: '10.3.3', nivel: 3, item: "10.3.3", descripcion: "Excavación blanda + tritubo", sistema: "TELECOM", cantidad: "238560", unidad: "ML", tipo: "item", criterio: "Excavación terreno", vu: "5.19", vuCOP: "22,839", total: "1,238,126", totalCOP: "5,448,339,840"},
            {id: '10.3.4', nivel: 3, item: "10.3.4", descripcion: "Instalación cruces especiales", sistema: "TELECOM", cantidad: "13920", unidad: "ML", tipo: "item", criterio: "Instalación estructuras", vu: "11.7", vuCOP: "51,500", total: "162,864", totalCOP: "716,880,000"},
            {id: '10.3.5', nivel: 3, item: "10.3.5", descripcion: "Instalación cajas empalme", sistema: "TELECOM", cantidad: "1257", unidad: "UND", tipo: "item", criterio: "Instalación cajas", vu: "111.18", vuCOP: "489,200", total: "139,754", totalCOP: "615,025,000"},
            
            {id: '10.4', nivel: 2, item: "10.4", descripcion: "HALADO E INSTALACIÓN", sistema: "TELECOM", tipo: "subcapitulo"},
            {id: '10.4.1', nivel: 3, item: "10.4.1", descripcion: "Halado fibra óptica 48h", sistema: "TELECOM", cantidad: "293190", unidad: "ML", tipo: "item", criterio: "Halado principal (longitud ducto instalado)", vu: "1.2", vuCOP: "5,280", total: "351,828", totalCOP: "1,547,043,200"},
            {id: '10.4.2', nivel: 3, item: "10.4.2", descripcion: "Halado fibra óptica 12h", sistema: "TELECOM", cantidad: "9440", unidad: "ML", tipo: "item", criterio: "Halado secundario (longitud instalada)", vu: "1.4", vuCOP: "6,160", total: "13,216", totalCOP: "58,150,400"},
            {id: '10.4.3', nivel: 3, item: "10.4.3", descripcion: "Trabajos instalación especializada", sistema: "TELECOM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Instalación especializada y contingencias", vu: "50,000", vuCOP: "220,000,000", total: "50,000", totalCOP: "220,000,000"},
            
        ];
        
        // Datos Presupuesto (sincronizados con WBS)
        this.data.presupuesto = this.data.wbs.map(item => ({
            ...item,
            tipo: item.tipo === 'item' ? 'SUMINISTRO' : '',
            ubicacion: this.getUbicacionDefault(item.sistema),
            justificacion: item.criterio || ''
        }));
        
        // Layout y etiquetado por UF (si existe mapa PK→UF)
        this.data.layout = this.generateLayoutData().map((el, idx) => {
            // Si el elemento trae ruta/pk, intentar mapear a UF usando getUFByPK
            const ruta = el.ruta || el.ubicacionRuta || 'RN4510';
            const pk = el.pk || (typeof el.pkStr === 'string' ? el.pkStr : null);
            let uf = null;
            
            // Intentar usar getUFByPK si está disponible
            if (window && typeof window.getUFByPK === 'function' && pk !== null && pk !== undefined) {
                uf = window.getUFByPK(ruta, pk);
            }
            
            // Si no se encontró UF pero tenemos información de ubicación, asignar UF0 por defecto
            if (!uf && el.ubicacion) {
                // Para equipos distribuidos a lo largo del corredor, asignar UF0 (O&M)
                if (el.sistema === 'SOS' || el.sistema === 'PMV') {
                    uf = 'UF0'; // Distribuidos en todo el corredor
                }
            }
            
            return { ...el, uf: uf || 'N/A' };
        });
        
        // Datos Contractuales
        this.data.contratos = this.generateContractualData();
        
        // Cronograma por UF (fechas C1 Sección 5.2)
        const T0 = new Date('2024-11-26T00:00:00');
        const addMonths = (d,m)=>{ const r=new Date(d); r.setMonth(r.getMonth()+m); return r; };
        const plazos = { UF6:9, UF1:11, UF8:12, UF2:19, UF7:19, UF12:20, UF9:21, UF10:24, UF3:26, UF13:26, UF4:30, UF11:38, UF5:47};
        this.data.cronogramaUF = Object.entries(plazos).map(([uf,mes])=>({ uf, plazoMeses: mes, fechaMax: addMonths(T0, mes).toISOString().slice(0,10), fechaCura: addMonths(T0, Math.round(mes*1.2)).toISOString().slice(0,10) }));
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
        // Generar datos de layout desde tabla maestra con ubicaciones reales (PKR/PKD)
        // Referencia: 43_TABLA_MAESTRA_LAYOUT_PROYECTO_v1.0.md
        const layoutData = [];
        
        // === CCTV (30 ubicaciones reales) ===
        const cctvLocations = [
            {id: 'CCTV-001', pkr: '38+100', pkd: '245+100', ruta: 'RN 4510', uf: 'UF-5.2', via: 'Unidireccional', nombre: 'CCTV - Inicio monitoreo'},
            {id: 'CCTV-002', pkr: '40+050', pkd: '243+150', ruta: 'RN 4510', uf: 'UF-0D', via: 'Separador', nombre: 'CCTV - Inter Koran REACTIVADA'},
            {id: 'CCTV-003', pkr: '69+000', pkd: '214+100', ruta: 'RN 4510', uf: 'UF-0D', via: 'Separador', nombre: 'CCTV - Peatonal 68+434'},
            {id: 'CCTV-004', pkr: '81+000', pkd: '202+100', ruta: 'RN 4510', uf: 'UF-0D', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-005', pkr: '85+370', pkd: '197+730', ruta: 'RN 4510', uf: 'UF-1', via: 'Separador', nombre: 'CCTV - ETD integrada'},
            {id: 'CCTV-006', pkr: '87+100', pkd: '196+000', ruta: 'RN 4510', uf: 'UF-1', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-007', pkr: '91+850', pkd: '191+250', ruta: 'RN 4510', uf: 'UF-5.1', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-008', pkr: '93+920', pkd: '189+180', ruta: 'RN 4510', uf: 'UF-1', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-009', pkr: '97+030', pkd: '186+070', ruta: 'RN 4510', uf: 'UF-0D', via: 'Separador', nombre: 'CCTV - Inter Pto Boyacá'},
            {id: 'CCTV-010', pkr: '104+150', pkd: '178+950', ruta: 'RN 4510', uf: 'UF-0D', via: 'Separador', nombre: 'CCTV - Área Servicio Zambito'},
            {id: 'CCTV-011', pkr: '9+100', pkd: '141+400', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Izquierda', nombre: 'CCTV'},
            {id: 'CCTV-012', pkr: '9+365', pkd: '141+135', ruta: 'RN 4511', uf: 'UF-0D', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-013', pkr: '13+470', pkd: '137+030', ruta: 'RN 4511', uf: 'UF-2', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-014', pkr: '14+500', pkd: '136+000', ruta: 'RN 4511', uf: 'UF-2', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-015', pkr: '41+150', pkd: '109+350', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-016', pkr: '60+480', pkd: '90+020', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-017', pkr: '61+675', pkd: '88+825', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Izquierda', nombre: 'CCTV - Peatonal 61+346'},
            {id: 'CCTV-018', pkr: '63+250', pkd: '87+250', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-019', pkr: '81+650', pkd: '68+850', ruta: 'RN 4511', uf: 'UF-6', via: 'Izquierda', nombre: 'CCTV'},
            {id: 'CCTV-020', pkr: '81+900', pkd: '68+600', ruta: 'RN 4511', uf: 'UF-6', via: 'Izquierda', nombre: 'CCTV'},
            {id: 'CCTV-021', pkr: '113+300', pkd: '37+200', ruta: 'RN 4511', uf: 'UF-9', via: 'Separador', nombre: 'CCTV - A.S. Aguas Negras'},
            {id: 'CCTV-022', pkr: '115+800', pkd: '34+700', ruta: 'RN 4511', uf: 'UF-9', via: 'Separador', nombre: 'CCTV - Peatonal 113+410'},
            {id: 'CCTV-023', pkr: '116+900', pkd: '33+600', ruta: 'RN 4511', uf: 'UF-9', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-024', pkr: '128+000', pkd: '22+500', ruta: 'RN 4511', uf: 'UF-11', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-025', pkr: '0+320', pkd: '2+680', ruta: 'RN 4513', uf: 'UF-11', via: 'Separador', nombre: 'CCTV - Inter Lizama'},
            {id: 'CCTV-026', pkr: '3+875', pkd: '280+125', ruta: 'RN 4513', uf: 'UF-13', via: 'Separador', nombre: 'CCTV - Báscula WIM'},
            {id: 'CCTV-027', pkr: '4+150', pkd: '279+850', ruta: 'RN 4513', uf: 'UF-11', via: 'Separador', nombre: 'CCTV'},
            {id: 'CCTV-028', pkr: '4+400', pkd: '279+600', ruta: 'RN 4513', uf: 'UF-11', via: 'Separador', nombre: 'CCTV - CCO N1-CCO'},
            {id: 'CCTV-029', pkr: '9+800', pkd: '274+200', ruta: 'RN 4513', uf: 'UF-11', via: 'Sur', nombre: 'CCTV - Zona CCO'},
            {id: 'CCTV-030', pkr: '41+800', pkd: '108+700', ruta: 'RN 4511', uf: 'UF-0D', via: 'Separador', nombre: 'CCTV - Eliminada sin justificación (reactivar si necesario)'}
        ];
        
        cctvLocations.forEach(loc => {
            // Agregar CCTV
            layoutData.push({
                id: loc.id,
                nombre: loc.nombre,
                sistema: 'CCTV',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: loc.nombre,
                coordenadas: this.generateCoordinates('CCTV', loc.pkr, loc.pkd)
            });
            
            // Agregar Switch L2 asociado a este CCTV
            // PKD formato: "245+100" -> extraer parte entera: 245
            const pkdParts = loc.pkd.split('+');
            const pkdNum = parseInt(pkdParts[0]);
            const switchL2Id = `L2-${pkdNum.toString().padStart(3, '0')}`;
            layoutData.push({
                id: `${loc.id}-L2`,
                nombre: `Switch L2 ${switchL2Id} - ${loc.nombre}`,
                sistema: 'TELECOM',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: `Switch L2 asociado a ${loc.id}`,
                coordenadas: this.generateCoordinates('TELECOM', loc.pkr, loc.pkd)
            });
        });
        
        // === GÁLIBOS (8 ubicaciones reales) ===
        const galibosLocations = [
            {id: 'GAL-001', pkr: '41+350', pkd: '241+750', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'Gálibo - Intersección crítica'},
            {id: 'GAL-002', pkr: '116+200', pkd: '166+900', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'Gálibo - Puente vehicular'},
            {id: 'GAL-003', pkr: '3+600', pkd: '146+900', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'Gálibo - Separador central'},
            {id: 'GAL-004', pkr: '16+550', pkd: '133+950', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Izquierda', nombre: 'Gálibo - Intersección a desnivel'},
            {id: 'GAL-005', pkr: '72+890', pkd: '77+610', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'Gálibo - Paso elevado'},
            {id: 'GAL-006', pkr: '82+800', pkd: '67+700', ruta: 'RN 4511', uf: 'UF-6', via: 'Izquierda', nombre: 'Gálibo - Puente principal'},
            {id: 'GAL-007', pkr: '127+250', pkd: '23+250', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'Gálibo - Intersección compleja'},
            {id: 'GAL-008', pkr: '5+900', pkd: '278+100', ruta: 'RN 4513', uf: 'UF-13', via: 'Izquierda', nombre: 'Gálibo - Acceso urbano'}
        ];
        
        galibosLocations.forEach(loc => {
            // Agregar Gálibo
            layoutData.push({
                id: loc.id,
                nombre: loc.nombre,
                sistema: 'GALIBOS',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: loc.nombre,
                coordenadas: this.generateCoordinates('GALIBOS', loc.pkr, loc.pkd)
            });
            
            // Agregar Switch L2 asociado a este Gálibo
            // PKD formato: "241+750" -> extraer parte entera: 241
            const pkdParts = loc.pkd.split('+');
            const pkdNum = parseInt(pkdParts[0]);
            const switchL2Id = `L2-${pkdNum.toString().padStart(3, '0')}`;
            layoutData.push({
                id: `${loc.id}-L2`,
                nombre: `Switch L2 ${switchL2Id} - ${loc.nombre}`,
                sistema: 'TELECOM',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: `Switch L2 asociado a ${loc.id}`,
                coordenadas: this.generateCoordinates('TELECOM', loc.pkr, loc.pkd)
            });
        });
        
        // === ETD (14 ubicaciones: 3 explícitas + 11 integradas) ===
        const etdLocations = [
            {id: 'ETD-001', pkr: '85+370', pkd: '197+730', ruta: 'RN 4510', uf: 'UF-1', via: 'Separador', nombre: 'ETD - Integrada en poste CCTV'},
            {id: 'ETD-002', pkr: '106+580', pkd: '43+920', ruta: 'RN 4511', uf: 'UF-8', via: 'Izquierda', nombre: 'ETD - Integrada en pórtico PMV'},
            {id: 'ETD-003', pkr: '126+580', pkd: '23+920', ruta: 'RN 4511', uf: 'UF-10', via: 'Izquierda', nombre: 'ETD - Integrada en pórtico PMV'}
            // Nota: Las otras 11 ETD están integradas en CCTV/PMV según necesidades por UF
        ];
        
        etdLocations.forEach(loc => {
            // Agregar ETD
            layoutData.push({
                id: loc.id,
                nombre: loc.nombre,
                sistema: 'ETD',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: loc.nombre,
                coordenadas: this.generateCoordinates('ETD/RADAR', loc.pkr, loc.pkd)
            });
            
            // Agregar Switch L2 asociado a este ETD
            // PKD formato: "197+730" -> extraer parte entera: 197
            const pkdParts = loc.pkd.split('+');
            const pkdNum = parseInt(pkdParts[0]);
            const switchL2Id = `L2-${pkdNum.toString().padStart(3, '0')}`;
            layoutData.push({
                id: `${loc.id}-L2`,
                nombre: `Switch L2 ${switchL2Id} - ${loc.nombre}`,
                sistema: 'TELECOM',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: `Switch L2 asociado a ${loc.id}`,
                coordenadas: this.generateCoordinates('TELECOM', loc.pkr, loc.pkd)
            });
        });
        
        // === METEO (2 ubicaciones en peajes) ===
        const meteoLocations = [
            {id: 'METEO-001', pkr: '9+200', pkd: '141+300', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Izquierda', nombre: 'METEO - Peaje Zambito'},
            {id: 'METEO-002', pkr: '81+800', pkd: '68+700', ruta: 'RN 4511', uf: 'UF-6', via: 'Separador', nombre: 'METEO - Peaje Aguas Negras'}
        ];
        
        meteoLocations.forEach(loc => {
            // Agregar METEO
            layoutData.push({
                id: loc.id,
                nombre: loc.nombre,
                sistema: 'METEO',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: loc.nombre,
                coordenadas: this.generateCoordinates('METEO', loc.pkr, loc.pkd)
            });
            
            // Agregar Switch L2 asociado a este METEO
            // PKD formato: "141+300" -> extraer parte entera: 141
            const pkdParts = loc.pkd.split('+');
            const pkdNum = parseInt(pkdParts[0]);
            const switchL2Id = `L2-${pkdNum.toString().padStart(3, '0')}`;
            layoutData.push({
                id: `${loc.id}-L2`,
                nombre: `Switch L2 ${switchL2Id} - ${loc.nombre}`,
                sistema: 'TELECOM',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: `Switch L2 asociado a ${loc.id}`,
                coordenadas: this.generateCoordinates('TELECOM', loc.pkr, loc.pkd)
            });
        });
        
        // === PEAJES (2 ubicaciones) ===
        const peajesLocations = [
            {id: 'PEAJE-001', pkr: '9+200', pkd: '141+300', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Edificación', nombre: 'Peaje Zambito - N2-ZAMBITO'},
            {id: 'PEAJE-002', pkr: '81+800', pkd: '68+700', ruta: 'RN 4511', uf: 'UF-6', via: 'Edificación', nombre: 'Peaje Aguas Negras - N4-AGUAS_NEGRAS'}
        ];
        
        peajesLocations.forEach(loc => {
            layoutData.push({
                id: loc.id,
                nombre: loc.nombre,
                sistema: 'PEAJES',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: loc.nombre,
                coordenadas: this.generateCoordinates('PEAJES', loc.pkr, loc.pkd)
            });
        });
        
        // === CCO (1 ubicación) ===
        layoutData.push({
            id: 'CCO-001',
            nombre: 'Centro de Control - N1-CCO',
            sistema: 'CCO',
            cantidad: 1,
            uf: 'UF-11',
            pkr: '4+400',
            pkd: '0+000',
            ruta: 'RN 4513',
            ubicacionFisica: 'Edificación',
            ubicacion: 'RN 4513 4+400 (PKD 0+000)',
            observaciones: 'N1-CCO - Nodo L3 Core',
            coordenadas: this.generateCoordinates('CCO', '4+400', '0+000')
        });
        
        // === SWITCHES L3 (7 nodos principales) ===
        const switchesL3 = [
            {id: 'L3-001', pkr: '4+400', pkd: '0+000', ruta: 'RN 4513', uf: 'UF-11', nombre: 'Switch L3 - N1-CCO (Core)'},
            {id: 'L3-002', pkr: '9+200', pkd: '141+300', ruta: 'RN 4511', uf: 'UF-5.1', nombre: 'Switch L3 - N2-ZAMBITO (Peaje)'},
            {id: 'L3-003', pkr: '81+800', pkd: '68+700', ruta: 'RN 4511', uf: 'UF-6', nombre: 'Switch L3 - N4-AGUAS_NEGRAS (Peaje)'},
            {id: 'L3-004', pkr: '104+100', pkd: '178+000', ruta: 'RN 4510', uf: 'UF-5.1', nombre: 'Switch L3 - N6-AS_ZAMBITO'},
            {id: 'L3-005', pkr: '113+450', pkd: '37+050', ruta: 'RN 4511', uf: 'UF-9', nombre: 'Switch L3 - N5-AS_AGUAS_NEGRAS'},
            {id: 'L3-006', pkr: 'TBD', pkd: '70+450', ruta: 'RN 4511', uf: 'TBD', nombre: 'Switch L3 - N3-BUNKER01'},
            {id: 'L3-007', pkr: 'TBD', pkd: '233+150', ruta: 'RN 4510', uf: 'TBD', nombre: 'Switch L3 - N7-BUNKER02'}
        ];
        
        switchesL3.forEach(sw => {
            layoutData.push({
                id: sw.id,
                nombre: sw.nombre,
                sistema: 'TELECOM',
                cantidad: 1,
                uf: sw.uf,
                pkr: sw.pkr,
                pkd: sw.pkd,
                ruta: sw.ruta,
                ubicacionFisica: 'Edificación',
                ubicacion: `${sw.ruta} ${sw.pkr} (PKD ${sw.pkd})`,
                observaciones: 'Switch L3 - Nodo Core',
                coordenadas: this.generateCoordinates('TELECOM', sw.pkr, sw.pkd)
            });
        });
        
        // === SWITCHES L2 (en cada equipo ITS - datos aproximados) ===
        // Nota: Los switches L2 están en cada equipo ITS según la tabla maestra
        // Se generan automáticamente asociados a cada equipo (CCTV, SOS, PMV, etc.)
        // Ejemplo: L2-245, L2-243, L2-242, etc. según PKD del equipo
        
        // === SOS (88 unidades completas desde tabla maestra) ===
        const sosLocations = [
            {id: 'SOS-001', pkr: '41+180', pkd: '241+920', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #1'},
            {id: 'SOS-002', pkr: '43+560', pkd: '239+540', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #2'},
            {id: 'SOS-003', pkr: '46+550', pkd: '236+550', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #3'},
            {id: 'SOS-004', pkr: '49+550', pkd: '233+550', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #4'},
            {id: 'SOS-005', pkr: '52+550', pkd: '230+550', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #5'},
            {id: 'SOS-006', pkr: '55+500', pkd: '227+600', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #6'},
            {id: 'SOS-007', pkr: '58+500', pkd: '224+600', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #7'},
            {id: 'SOS-008', pkr: '61+500', pkd: '221+600', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #8'},
            {id: 'SOS-009', pkr: '64+450', pkd: '218+650', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #9'},
            {id: 'SOS-010', pkr: '67+150', pkd: '215+950', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #10'},
            {id: 'SOS-011', pkr: '70+150', pkd: '212+950', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #11'},
            {id: 'SOS-012', pkr: '73+110', pkd: '210+000', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #12'},
            {id: 'SOS-013', pkr: '76+020', pkd: '207+080', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #13'},
            {id: 'SOS-014', pkr: '78+800', pkd: '204+300', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #14'},
            {id: 'SOS-015', pkr: '81+500', pkd: '201+600', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #15'},
            {id: 'SOS-016', pkr: '83+950', pkd: '199+150', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #16'},
            {id: 'SOS-017', pkr: '86+900', pkd: '196+200', ruta: 'RN 4510', uf: 'UF-1', via: 'Derecha', nombre: 'SOS #17'},
            {id: 'SOS-018', pkr: '89+780', pkd: '193+320', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #18'},
            {id: 'SOS-019', pkr: '92+520', pkd: '190+580', ruta: 'RN 4510', uf: 'UF-1', via: 'Derecha', nombre: 'SOS #19'},
            {id: 'SOS-020', pkr: '95+300', pkd: '187+800', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #20'},
            {id: 'SOS-021', pkr: '98+250', pkd: '184+850', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #21'},
            {id: 'SOS-022', pkr: '100+750', pkd: '182+350', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #22'},
            {id: 'SOS-023', pkr: '102+800', pkd: '180+300', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #23'},
            {id: 'SOS-024', pkr: '105+360', pkd: '177+740', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #24'},
            {id: 'SOS-025', pkr: '108+130', pkd: '174+970', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #25'},
            {id: 'SOS-026', pkr: '111+070', pkd: '172+030', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #26'},
            {id: 'SOS-027', pkr: '114+050', pkd: '169+050', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #27'},
            {id: 'SOS-028', pkr: '117+020', pkd: '166+080', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #28'},
            {id: 'SOS-029', pkr: '119+940', pkd: '163+160', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #29'},
            {id: 'SOS-030', pkr: '122+940', pkd: '160+160', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #30'},
            {id: 'SOS-031', pkr: '125+940', pkd: '157+160', ruta: 'RN 4510', uf: 'UF-2', via: 'Derecha', nombre: 'SOS #31'},
            {id: 'SOS-032', pkr: '128+840', pkd: '154+260', ruta: 'RN 4510', uf: 'UF-5.1', via: 'Izquierda', nombre: 'SOS #32'},
            {id: 'SOS-033', pkr: '131+700', pkd: '151+400', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #33'},
            {id: 'SOS-034', pkr: '0+650', pkd: '149+850', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Izquierda', nombre: 'SOS #34'},
            {id: 'SOS-035', pkr: '3+550', pkd: '146+950', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #35'},
            {id: 'SOS-036', pkr: '6+450', pkd: '144+050', ruta: 'RN 4511', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #36'},
            {id: 'SOS-037', pkr: '11+155', pkd: '139+345', ruta: 'RN 4511', uf: 'UF-2', via: 'Derecha', nombre: 'SOS #37'},
            {id: 'SOS-038', pkr: '13+590', pkd: '136+910', ruta: 'RN 4511', uf: 'UF-2', via: 'Izquierda', nombre: 'SOS #38'},
            {id: 'SOS-039', pkr: '16+460', pkd: '134+040', ruta: 'RN 4511', uf: 'UF-2', via: 'Derecha', nombre: 'SOS #39'},
            {id: 'SOS-040', pkr: '19+390', pkd: '131+110', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Izquierda', nombre: 'SOS #40'},
            {id: 'SOS-041', pkr: '22+300', pkd: '128+200', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #41'},
            {id: 'SOS-042', pkr: '25+100', pkd: '125+400', ruta: 'RN 4511', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #42'},
            {id: 'SOS-043', pkr: '28+060', pkd: '122+440', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #43'},
            {id: 'SOS-044', pkr: '30+600', pkd: '119+900', ruta: 'RN 4511', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #44'},
            {id: 'SOS-045', pkr: '33+330', pkd: '117+170', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #45'},
            {id: 'SOS-046', pkr: '36+250', pkd: '114+250', ruta: 'RN 4511', uf: 'UF-0D', via: 'Izquierda', nombre: 'SOS #46'},
            {id: 'SOS-047', pkr: '39+100', pkd: '111+400', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'SOS #47'},
            {id: 'SOS-048', pkr: '41+940', pkd: '108+560', ruta: 'RN 4511', uf: 'UF-2', via: 'Izquierda', nombre: 'SOS #48'},
            {id: 'SOS-049', pkr: '44+550', pkd: '105+950', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'SOS #49'},
            {id: 'SOS-050', pkr: '47+510', pkd: '102+990', ruta: 'RN 4511', uf: 'UF-2', via: 'Izquierda', nombre: 'SOS #50'},
            {id: 'SOS-051', pkr: '50+470', pkd: '100+030', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'SOS #51'},
            {id: 'SOS-052', pkr: '53+320', pkd: '97+180', ruta: 'RN 4511', uf: 'UF-3', via: 'Izquierda', nombre: 'SOS #52'},
            {id: 'SOS-053', pkr: '55+905', pkd: '94+595', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'SOS #53'},
            {id: 'SOS-054', pkr: '58+970', pkd: '91+530', ruta: 'RN 4511', uf: 'UF-3', via: 'Izquierda', nombre: 'SOS #54'},
            {id: 'SOS-055', pkr: '61+900', pkd: '88+600', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'SOS #55'},
            {id: 'SOS-056', pkr: '64+510', pkd: '85+990', ruta: 'RN 4511', uf: 'UF-3', via: 'Izquierda', nombre: 'SOS #56'},
            {id: 'SOS-057', pkr: '67+000', pkd: '83+500', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'SOS #57'},
            {id: 'SOS-058', pkr: '69+955', pkd: '80+545', ruta: 'RN 4511', uf: 'UF-4', via: 'Izquierda', nombre: 'SOS #58'},
            {id: 'SOS-059', pkr: '72+890', pkd: '77+610', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'SOS #59'},
            {id: 'SOS-060', pkr: '76+200', pkd: '74+300', ruta: 'RN 4511', uf: 'UF-6', via: 'Izquierda', nombre: 'SOS #60'},
            {id: 'SOS-061', pkr: '79+290', pkd: '71+210', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #61'},
            {id: 'SOS-062', pkr: '84+805', pkd: '65+695', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #62'},
            {id: 'SOS-063', pkr: '87+103', pkd: '63+397', ruta: 'RN 4511', uf: 'UF-7', via: 'Izquierda', nombre: 'SOS #63'},
            {id: 'SOS-064', pkr: '89+840', pkd: '60+660', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #64'},
            {id: 'SOS-065', pkr: '92+643', pkd: '57+857', ruta: 'RN 4511', uf: 'UF-7', via: 'Izquierda', nombre: 'SOS #65'},
            {id: 'SOS-066', pkr: '95+400', pkd: '55+100', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #66'},
            {id: 'SOS-067', pkr: '97+950', pkd: '52+550', ruta: 'RN 4511', uf: 'UF-8', via: 'Izquierda', nombre: 'SOS #67'},
            {id: 'SOS-068', pkr: '100+600', pkd: '49+900', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #68'},
            {id: 'SOS-069', pkr: '103+300', pkd: '47+200', ruta: 'RN 4511', uf: 'UF-11', via: 'Izquierda', nombre: 'SOS #69'},
            {id: 'SOS-070', pkr: '106+145', pkd: '44+355', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #70'},
            {id: 'SOS-071', pkr: '109+100', pkd: '41+400', ruta: 'RN 4511', uf: 'UF-9', via: 'Izquierda', nombre: 'SOS #71'},
            {id: 'SOS-072', pkr: '111+930', pkd: '38+570', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #72'},
            {id: 'SOS-073', pkr: '116+200', pkd: '34+300', ruta: 'RN 4511', uf: 'UF-9', via: 'Derecha', nombre: 'SOS #73'},
            {id: 'SOS-074', pkr: '119+240', pkd: '31+260', ruta: 'RN 4511', uf: 'UF-10', via: 'Izquierda', nombre: 'SOS #74'},
            {id: 'SOS-075', pkr: '122+185', pkd: '28+315', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #75'},
            {id: 'SOS-076', pkr: '125+305', pkd: '25+195', ruta: 'RN 4511', uf: 'UF-10', via: 'Izquierda', nombre: 'SOS #76'},
            {id: 'SOS-077', pkr: '127+490', pkd: '23+010', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #77'},
            {id: 'SOS-078', pkr: '129+910', pkd: '20+590', ruta: 'RN 4511', uf: 'UF-12', via: 'Izquierda', nombre: 'SOS #78'},
            {id: 'SOS-079', pkr: '132+832', pkd: '17+668', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #79'},
            {id: 'SOS-080', pkr: '135+482', pkd: '15+018', ruta: 'RN 4511', uf: 'UF-12', via: 'Izquierda', nombre: 'SOS #80'},
            {id: 'SOS-081', pkr: '138+302', pkd: '12+198', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #81'},
            {id: 'SOS-082', pkr: '141+095', pkd: '9+405', ruta: 'RN 4511', uf: 'UF-12', via: 'Izquierda', nombre: 'SOS #82'},
            {id: 'SOS-083', pkr: '144+390', pkd: '6+110', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #83'},
            {id: 'SOS-084', pkr: '147+385', pkd: '3+115', ruta: 'RN 4511', uf: 'UF-12', via: 'Izquierda', nombre: 'SOS #84'},
            {id: 'SOS-085', pkr: '1+240', pkd: '1+760', ruta: 'RN 4513', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #85'},
            {id: 'SOS-086', pkr: '3+656', pkd: '280+344', ruta: 'RN 4513', uf: 'UF-13', via: 'Izquierda', nombre: 'SOS #86'},
            {id: 'SOS-087', pkr: '6+050', pkd: '277+950', ruta: 'RN 4513', uf: 'UF-11', via: 'Derecha', nombre: 'SOS #87'},
            {id: 'SOS-088', pkr: '9+000', pkd: '275+000', ruta: 'RN 4513', uf: 'UF-13', via: 'Sur', nombre: 'SOS #88'}
        ];
        
        sosLocations.forEach(loc => {
            // Agregar Poste SOS
            layoutData.push({
                id: loc.id,
                nombre: `Poste ${loc.nombre}`,
                sistema: 'SOS',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd}) - ${loc.via}`,
                observaciones: loc.nombre,
                coordenadas: this.generateCoordinates('SOS', loc.pkr, loc.pkd)
            });
            
            // Agregar Switch L2 asociado a este SOS
            // PKD formato: "241+920" -> extraer parte entera: 241
            const pkdParts = loc.pkd.split('+');
            const pkdNum = parseInt(pkdParts[0]);
            const switchL2Id = `L2-${pkdNum.toString().padStart(3, '0')}`;
            layoutData.push({
                id: `${loc.id}-L2`,
                nombre: `Switch L2 ${switchL2Id} - ${loc.nombre}`,
                sistema: 'TELECOM',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: `Switch L2 asociado a ${loc.id}`,
                coordenadas: this.generateCoordinates('TELECOM', loc.pkr, loc.pkd)
            });
        });
        
        // === PMV (28 unidades completas desde tabla maestra) ===
        const pmvLocations = [
            {id: 'PMV-001', pkr: '41+000', pkd: '242+100', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'Inter Koran'},
            {id: 'PMV-002', pkr: '41+200', pkd: '242+000', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-003', pkr: '57+350', pkd: '225+750', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-004', pkr: '58+950', pkd: '224+150', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-005', pkr: '77+350', pkd: '205+750', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-006', pkr: '78+950', pkd: '204+150', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-007', pkr: '97+250', pkd: '185+850', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-008', pkr: '98+750', pkd: '184+350', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-009', pkr: '117+250', pkd: '165+850', ruta: 'RN 4510', uf: 'UF-0D', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-010', pkr: '118+660', pkd: '164+440', ruta: 'RN 4510', uf: 'UF-0D', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-011', pkr: '2+790', pkd: '147+710', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-012', pkr: '4+200', pkd: '146+300', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'PMV - Peatonal'},
            {id: 'PMV-013', pkr: '14+200', pkd: '136+300', ruta: 'RN 4511', uf: 'UF-2', via: 'Izquierda', nombre: 'PMV - Peatonal'},
            {id: 'PMV-014', pkr: '22+300', pkd: '128+200', ruta: 'RN 4511', uf: 'UF-0D', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-015', pkr: '34+200', pkd: '116+300', ruta: 'RN 4511', uf: 'UF-0D', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-016', pkr: '42+300', pkd: '108+200', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-017', pkr: '54+200', pkd: '96+300', ruta: 'RN 4511', uf: 'UF-3', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-018', pkr: '60+480', pkd: '90+020', ruta: 'RN 4511', uf: 'UF-5.1', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-019', pkr: '74+200', pkd: '76+300', ruta: 'RN 4511', uf: 'UF-4', via: 'Izquierda', nombre: 'PMV - Peatonal'},
            {id: 'PMV-020', pkr: '77+350', pkd: '73+150', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-021', pkr: '86+800', pkd: '63+700', ruta: 'RN 4511', uf: 'UF-7', via: 'Izquierda', nombre: 'PMV'},
            {id: 'PMV-022', pkr: '97+200', pkd: '53+300', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'PMV - Peatonal'},
            {id: 'PMV-023', pkr: '106+580', pkd: '43+920', ruta: 'RN 4511', uf: 'UF-8', via: 'Izquierda', nombre: 'PMV - ETD integrada'},
            {id: 'PMV-024', pkr: '117+200', pkd: '33+300', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'PMV'},
            {id: 'PMV-025', pkr: '126+580', pkd: '23+920', ruta: 'RN 4511', uf: 'UF-10', via: 'Izquierda', nombre: 'PMV - ETD integrada'},
            {id: 'PMV-026', pkr: '136+750', pkd: '13+750', ruta: 'RN 4511', uf: 'UF-11', via: 'Derecha', nombre: 'PMV - Peatonal'},
            {id: 'PMV-027', pkr: '146+580', pkd: '3+920', ruta: 'RN 4511', uf: 'UF-12', via: 'Izquierda', nombre: 'PMV - Fin Ruta'},
            {id: 'PMV-028', pkr: '5+900', pkd: '278+100', ruta: 'RN 4513', uf: 'UF-11', via: 'Derecha', nombre: 'PMV'}
        ];
        
        pmvLocations.forEach(loc => {
            // Agregar Panel PMV
            layoutData.push({
                id: loc.id,
                nombre: `Panel ${loc.nombre}`,
                sistema: 'PMV',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd}) - ${loc.via}`,
                observaciones: loc.nombre,
                coordenadas: this.generateCoordinates('PMV', loc.pkr, loc.pkd)
            });
            
            // Agregar Switch L2 asociado a este PMV
            // PKD formato: "242+100" -> extraer parte entera: 242
            const pkdParts = loc.pkd.split('+');
            const pkdNum = parseInt(pkdParts[0]);
            const switchL2Id = `L2-${pkdNum.toString().padStart(3, '0')}`;
            layoutData.push({
                id: `${loc.id}-L2`,
                nombre: `Switch L2 ${switchL2Id} - PMV ${loc.nombre}`,
                sistema: 'TELECOM',
                cantidad: 1,
                uf: loc.uf,
                pkr: loc.pkr,
                pkd: loc.pkd,
                ruta: loc.ruta,
                ubicacionFisica: loc.via,
                ubicacion: `${loc.ruta} ${loc.pkr} (PKD ${loc.pkd})`,
                observaciones: `Switch L2 asociado a ${loc.id}`,
                coordenadas: this.generateCoordinates('TELECOM', loc.pkr, loc.pkd)
            });
        });
        
        return layoutData;
    }
    
    generateCoordinates(sistema, pkr = null, pkd = null) {
        // Intentar obtener coordenadas reales del KML por PKR o PKD
        if (pkr) {
            const coord = this.obtenerCoordenadasPorPK(pkr);
            if (coord) return coord;
        }
        if (pkd) {
            const coord = this.obtenerCoordenadasPorPK(pkd);
            if (coord) return coord;
        }
        
        // Fallback: Coordenadas aproximadas por sistema (si no hay KML o PK)
        const coordenadas = {
            'SOS': { lat: 7.5, lng: -73.2 },
            'ETD/RADAR': { lat: 7.6, lng: -73.1 },
            'CCTV': { lat: 7.4, lng: -73.3 },
            'PMV': { lat: 7.5, lng: -73.2 },
            'METEO': { lat: 7.5, lng: -73.2 },
            'WIM': { lat: 7.4, lng: -73.3 },
            'TELECOM': { lat: 7.5, lng: -73.2 },
            'GALIBOS': { lat: 7.5, lng: -73.2 },
            'PEAJES': { lat: 7.5, lng: -73.2 },
            'CCO': { lat: 7.5, lng: -73.2 }
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
