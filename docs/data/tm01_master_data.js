// SISTEMA DE DATOS MAESTRO TM01 - FUENTE ÚNICA DE VERDAD
// Archivo: Sistema_Validacion_Web/data/tm01_master_data.js

class TM01MasterData {
    // NORMATIVA: Resolución 20213040035125 (IP/REV) Vigente
    // NORMATIVA: Res. 40117 (RETIE 2024) Compliant - Audit 6.0 Validated
    constructor() {
        this.data = {
            wbs: [],
            presupuesto: [],
            layout: [],
            contratos: [],
            dts: [],
            cambios: [],
        };

        this.initializeData();
    }

    initializeData() {
        // Datos WBS - Fuente: PRESUPUESTO_ITS_PURO_v2.0.md + Especificaciones Técnicas Detalladas
        this.data.wbs = [
            // CAPÃTULO 1: SISTEMA SOS
            { id: '1', nivel: 1, item: "1", descripcion: "SISTEMA SOS", sistema: "SOS", tipo: "capitulo" },
            { id: '1.1', nivel: 2, item: "1.1", descripcion: "SUMINISTROS SOS", sistema: "SOS", tipo: "subcapitulo" },
            { id: '1.1.1', nivel: 3, item: "1.1.1", descripcion: "Suministro Equipos SOS Cielo Abierto (Intercom, Protecciones, VPN)", sistema: "SOS", cantidad: "98", unidad: "UND", tipo: "item", tipoPresupuestal: "SUMINISTRO", vu: "1004.94", vuCOP: "4,422,956", total: "98484.12", totalCOP: "433,450,128" },
            { id: '1.1.2', nivel: 3, item: "1.1.2", descripcion: "Suministro Estructuras Metálicas SOS (Poste, Gabinete, Barandas)", sistema: "SOS", cantidad: "98", unidad: "UND", tipo: "item", tipoPresupuestal: "SUMINISTRO", vu: "3339", vuCOP: "14,692,348", total: "327,222", totalCOP: "1,439,776,800" },
            { id: '1.1.3', nivel: 3, item: "1.1.3", descripcion: "Suministro Arreglo Fotovoltaico SOS (Paneles, Baterías, Cargador)", sistema: "SOS", cantidad: "98", unidad: "UND", tipo: "item", tipoPresupuestal: "SUMINISTRO", vu: "1592", vuCOP: "7,006,832", total: "156,016", totalCOP: "686,469,536" },
            { id: '1.1.4', nivel: 3, item: "1.1.4", descripcion: "Instalación Sistema SOS Cielo Abierto (Montaje, Cableado, Hincado)", sistema: "SOS", cantidad: "98", unidad: "UND", tipo: "item", tipoPresupuestal: "OBRA", vu: "723", vuCOP: "3,181,182", total: "70,854", totalCOP: "311,757,600" },
            { id: '1.1.5', nivel: 3, item: "1.1.5", descripcion: "Suministro Equipos CCO (Servidores SIP, Estación Maestra)", sistema: "SOS", cantidad: "1", unidad: "GLB", tipo: "item", tipoPresupuestal: "SUMINISTRO", vu: "14592", vuCOP: "64,206,380", total: "14,592", totalCOP: "64,206,380" },

            // CAPÍTULO 2: SISTEMA ETD & RADARES (Smart CAPEX Dahua)
            { id: '2', nivel: 1, item: "2", descripcion: "SISTEMA ETD & RADARES", sistema: "ETD", tipo: "capitulo" },
            { id: '2.1', nivel: 2, item: "2.1", descripcion: "SUMINISTROS ETD (DATOS ANI - SMART CAPEX)", sistema: "ETD", tipo: "subcapitulo" },
            { id: '2.1.1', nivel: 3, item: "2.1.1", descripcion: "Nodo Dahua DHI-ITC431 (Radar 4MP + LPR + Flash + Acc) incl. Inst. 20%", sistema: "ETD", cantidad: "13", unidad: "UND", tipo: "item", criterio: "AT4 (Radar No Intrusivo) - Uso Infra SOS/PMV", vu: "1940.33", total: "25224.29", totalCOP: "110986876" },
            { id: '2.1.2', nivel: 3, item: "2.1.2", descripcion: "Unidad Spare (Nodo Dahua Completo)", sistema: "ETD", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Redundancia Operativa", vu: "1616.94", total: "1616.94", totalCOP: "7114536" },

            { id: '2.2', nivel: 2, item: "2.2", descripcion: "SISTEMA SAST (SINCRONIZADO SMART CAPEX)", sistema: "RADAR", tipo: "subcapitulo" },
            { id: '2.2.1', nivel: 3, item: "2.2.1", descripcion: "Equipo Sancionatorio Completo (ANPR + Doppler Certificado)", sistema: "RADAR", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Diferido / Integrado en ETD", vu: "0", total: "0", totalCOP: "0" },

            { id: '2.3', nivel: 2, item: "2.3", descripcion: "INFORMATIVOS & PEDAGÓGICOS", sistema: "RADAR", tipo: "subcapitulo" },
            { id: '2.3.1', nivel: 3, item: "2.3.1", descripcion: "Monitor de Velocidad Pedagógico (SI-27B)", sistema: "RADAR", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Mensajería vía PMV", vu: "0", total: "0", totalCOP: "0" },

            { id: '2.4', nivel: 2, item: "2.4", descripcion: "PLATAFORMA & SERVICIOS (SMART CAPEX)", sistema: "ETD", tipo: "subcapitulo" },
            { id: '2.4.1', nivel: 3, item: "2.4.1", descripcion: "Plataforma Gestión Overseas Dahua (Hasta 16 equipos)", sistema: "ETD", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Cumplimiento Web Services ANI", vu: "10620.18", total: "10620.18", totalCOP: "46728792" },
            { id: '2.4.2', nivel: 3, item: "2.4.2", descripcion: "Infraestructura (Postes/Pórticos)", sistema: "ETD", cantidad: "0", unidad: "UND", tipo: "item", criterio: "OPTIMIZADO: Uso sobre estructura PMV/SOS existente", vu: "0", total: "0", totalCOP: "0" },
            { id: '2.4.3', nivel: 3, item: "2.4.3", descripcion: "Integración SICC/ANI + Comisionamiento", sistema: "ETD", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Incluido en Presupuesto Central de Integración SCADA", vu: "0", total: "0", totalCOP: "0" },
            { id: '2.4.4', nivel: 3, item: "2.4.4", descripcion: "Repuestos Críticos & Garantía", sistema: "ETD", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Soporte fábrica 24 meses", vu: "1000", total: "1000", totalCOP: "4400000" },

            // CAPÍTULO 3: SISTEMA CCTV
            { id: '3', nivel: 1, item: "3", descripcion: "SISTEMA CCTV", sistema: "CCTV", tipo: "capitulo" },
            { id: '3.1', nivel: 2, item: "3.1", descripcion: "SUMINISTROS CCTV", sistema: "CCTV", tipo: "subcapitulo" },
            { id: '3.1.1', nivel: 3, item: "3.1.1", descripcion: "Cámara PTZ Dahua 32X + Solar + Poste 12m", sistema: "CCTV", cantidad: "9", unidad: "UND", tipo: "item", criterio: "Specs: 1/2.8\" 4MP CMOS, 32x Opt Zoom, Auto Tracking 3.0, Face Det, SMD 4.0, PoE+, IP67, IK10", vu: "12900", vuCOP: "56,760,000", total: "116,100", totalCOP: "510,840,000" },
            { id: '3.1.2', nivel: 3, item: "3.1.2", descripcion: "Domo policarbonato anti-vandálico", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "ELIMINADO: Cámara PTZ ya cuenta con protección IK10/IP67 nativa", vu: "800", vuCOP: "3,520,000", total: "0", totalCOP: "0" },
            { id: '3.1.3', nivel: 3, item: "3.1.3", descripcion: "Soporte montaje poste/pared", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "500", vuCOP: "2,200,000", total: "0", totalCOP: "0" },
            { id: '3.1.4', nivel: 3, item: "3.1.4", descripcion: "Cable UTP Cat6 ext 100m", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "100", vuCOP: "440,000", total: "0", totalCOP: "0" },
            { id: '3.1.5', nivel: 3, item: "3.1.5", descripcion: "Caja paso hermética", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "150", vuCOP: "660,000", total: "0", totalCOP: "0" },
            { id: '3.1.6', nivel: 3, item: "3.1.6", descripcion: "Inyector PoE+ 30W", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "200", vuCOP: "880,000", total: "0", totalCOP: "0" },
            { id: '3.1.7', nivel: 3, item: "3.1.7", descripcion: "DPS datos + energía", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "150", vuCOP: "660,000", total: "0", totalCOP: "0" },
            { id: '3.1.8', nivel: 3, item: "3.1.8", descripcion: "Accesorios montaje", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "300", vuCOP: "1,320,000", total: "0", totalCOP: "0" },
            { id: '3.1.9', nivel: 3, item: "3.1.9", descripcion: "Instalación y comisionamiento (Integral)", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "1364", vuCOP: "6,000,000", total: "0", totalCOP: "0" },
            { id: '3.1.10', nivel: 3, item: "3.1.10", descripcion: "Pruebas FAT/SAT", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "500", vuCOP: "2,200,000", total: "0", totalCOP: "0" },
            { id: '3.1.11', nivel: 3, item: "3.1.11", descripcion: "Sistema Central (VMS Ref: DT-019 CCO)", sistema: "CCTV", cantidad: "0", unidad: "SISTEMA", tipo: "item", criterio: "Integrado en CCO (DT-019)", vu: "0", vuCOP: "0", total: "0", totalCOP: "0" },
            { id: '3.1.12', nivel: 3, item: "3.1.12", descripcion: "Documentación técnica", sistema: "CCTV", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "0", vuCOP: "0", total: "0", totalCOP: "0" },
            { id: '3.1.13', nivel: 3, item: "3.1.13", descripcion: "Postes Metálicos 12m (Nodos Críticos)", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "410", vuCOP: "1,800,000", total: "0", totalCOP: "0" },
            { id: '3.1.14', nivel: 3, item: "3.1.14", descripcion: "Kit Energía Solar 540W (Panel + Batería 200Ah + MPPT + Estructura)", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "2000", vuCOP: "8,800,000", total: "0", totalCOP: "0" },
            { id: '3.1.15', nivel: 3, item: "3.1.15", descripcion: "Gabinete de Integración Outdoor IP66 (Acero/Poliéster)", sistema: "CCTV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Incluido en Kit Item 3.1.1", vu: "340", vuCOP: "1,500,000", total: "0", totalCOP: "0" },

            // CAPÃTULO 4: SISTEMA PMV
            { id: '4', nivel: 1, item: "4", descripcion: "SISTEMA PMV", sistema: "PMV", tipo: "capitulo" },
            { id: '4.1', nivel: 2, item: "4.1", descripcion: "SUMINISTROS PMV", sistema: "PMV", tipo: "subcapitulo" },
            { id: '4.1.1', nivel: 3, item: "4.1.1", descripcion: "Panel PMV Graphic RGB (NTCIP 1203/1204)", sistema: "PMV", cantidad: "29", unidad: "UND", tipo: "item", tipoPresupuestal: "SUMINISTRO", criterio: "Blindaje Contractual (25 Vía + 4 Peaje Aprx)", vu: "45000", total: "1305000", totalCOP: "5742000000" },
            { id: '4.1.2', nivel: 3, item: "4.1.2", descripcion: "Estructura Reforzada (CCP-14 / Poste)", sistema: "PMV", cantidad: "29", unidad: "UND", tipo: "item", tipoPresupuestal: "SUMINISTRO", criterio: "Estructura sismo-resistente", vu: "35000", total: "1015000", totalCOP: "4466000000" },
            { id: '4.1.3', nivel: 3, item: "4.1.3", descripcion: "Instalación, RETIE + Software Central PMV (Sincronizado)", sistema: "PMV", cantidad: "1", unidad: "GLB", tipo: "item", tipoPresupuestal: "OBRA", criterio: "Ajuste de Cierre Financiero", vu: "70000", total: "70000", totalCOP: "308000000" },
            { id: '4.1.4', nivel: 3, item: "4.1.4", descripcion: "Controlador/Switch (Incluido)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integrado en panel", vu: "0", total: "0", totalCOP: "0" },
            { id: '4.1.5', nivel: 3, item: "4.1.5", descripcion: "Conversor FO/Conectividad (Incluido)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integrado en panel", vu: "0", total: "0", totalCOP: "0" },
            { id: '4.1.6', nivel: 3, item: "4.1.6", descripcion: "Fuente/UPS (Incluida)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integrada en panel", vu: "0", total: "0", totalCOP: "0" },
            { id: '4.1.7', nivel: 3, item: "4.1.7", descripcion: "DPS (Incluido)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integrado en RETIE", vu: "0", total: "0", totalCOP: "0" },
            { id: '4.1.8', nivel: 3, item: "4.1.8", descripcion: "Cableado/Ductos (Incluidos)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integrado", vu: "0", total: "0", totalCOP: "0" },
            { id: '4.1.9', nivel: 3, item: "4.1.9", descripcion: "Instalación/Comisionamiento (Incluido)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integrado en item 4.1.3", vu: "0", total: "0", totalCOP: "0" },
            { id: '4.1.10', nivel: 3, item: "4.1.10", descripcion: "Pruebas FAT/SAT (Incluidas)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integradas", vu: "0", total: "0", totalCOP: "0" },
            { id: '4.1.11', nivel: 3, item: "4.1.11", descripcion: "CMS Central + Licencias", sistema: "PMV", cantidad: "1", unidad: "SIS", tipo: "item", criterio: "Licencia Perpetua", vu: "15,000", total: "15,000", totalCOP: "66,000,000" },
            { id: '4.1.12', nivel: 3, item: "4.1.12", descripcion: "Manuales/Documentación", sistema: "PMV", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Consolidado", vu: "0", total: "0", totalCOP: "0" },

            // CAPÃTULO 5: SISTEMA GÃLIBOS
            { id: '5', nivel: 1, item: "5", descripcion: "SISTEMA GÃLIBOS", sistema: "GALIBOS", tipo: "capitulo" },
            { id: '5.1', nivel: 2, item: "5.1", descripcion: "SUMINISTROS GÃLIBOS", sistema: "GALIBOS", tipo: "subcapitulo" },
            { id: '5.1.1', nivel: 3, item: "5.1.1", descripcion: "Sensor cortina láser infrarrojo", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Control altura vehicular", vu: "8,500", vuCOP: "37,400,000", total: "68,000", totalCOP: "299,200,000" },
            { id: '5.1.2', nivel: 3, item: "5.1.2", descripcion: "Controlador gálibo", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Procesamiento datos", vu: "2,800", vuCOP: "12,320,000", total: "22,400", totalCOP: "98,560,000" },
            { id: '5.1.3', nivel: 3, item: "5.1.3", descripcion: "Gabinete exterior IP65", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "1,200", vuCOP: "5,280,000", total: "9,600", totalCOP: "42,240,000" },
            { id: '5.1.4', nivel: 3, item: "5.1.4", descripcion: "Conversor FO/Ethernet", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Comunicación fibra", vu: "150", vuCOP: "660,000", total: "1,200", totalCOP: "5,280,000" },
            { id: '5.1.5', nivel: 3, item: "5.1.5", descripcion: "Fuente alimentación 24VDC", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Alimentación eléctrica", vu: "350", vuCOP: "1,540,000", total: "2,800", totalCOP: "12,320,000" },
            { id: '5.1.6', nivel: 3, item: "5.1.6", descripcion: "DPS protección eléctrica", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Protección sobretensión", vu: "120", vuCOP: "528,000", total: "960", totalCOP: "4,224,000" },
            { id: '5.1.7', nivel: 3, item: "5.1.7", descripcion: "Cable señal 100m", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Conexión datos", vu: "180", vuCOP: "792,000", total: "1,440", totalCOP: "6,336,000" },
            { id: '5.1.8', nivel: 3, item: "5.1.8", descripcion: "Software de gestión", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Gestión sistema", vu: "350", vuCOP: "1,540,000", total: "2,800", totalCOP: "12,320,000" },
            { id: '5.1.9', nivel: 3, item: "5.1.9", descripcion: "Accesorios montaje", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Instalación completa", vu: "420", vuCOP: "1,848,000", total: "3,360", totalCOP: "14,784,000" },
            { id: '5.1.10', nivel: 3, item: "5.1.10", descripcion: "Panel LED señalización", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización visual", vu: "2,500", vuCOP: "11,000,000", total: "20,000", totalCOP: "88,000,000" },
            { id: '5.1.11', nivel: 3, item: "5.1.11", descripcion: "Señal PMV pre-aviso", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Prevención", vu: "800", vuCOP: "3,520,000", total: "6,400", totalCOP: "28,160,000" },
            { id: '5.1.12', nivel: 3, item: "5.1.12", descripcion: "Baliza LED ámbar", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización", vu: "120", vuCOP: "528,000", total: "960", totalCOP: "4,224,000" },
            { id: '5.1.13', nivel: 3, item: "5.1.13", descripcion: "Sirena 100dB", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización sonora", vu: "180", vuCOP: "792,000", total: "1,440", totalCOP: "6,336,000" },
            { id: '5.1.14', nivel: 3, item: "5.1.14", descripcion: "Señalización reflectiva", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Señalización pasiva", vu: "600", vuCOP: "2,640,000", total: "4,800", totalCOP: "21,120,000" },
            { id: '5.1.15', nivel: 3, item: "5.1.15", descripcion: "Instalación y comisionamiento", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Servicios especializados", vu: "2,800", vuCOP: "12,320,000", total: "22,400", totalCOP: "98,560,000" },
            { id: '5.1.16', nivel: 3, item: "5.1.16", descripcion: "Obras civiles (anclajes)", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Infraestructura", vu: "1,200", vuCOP: "5,280,000", total: "9,600", totalCOP: "42,240,000" },
            { id: '5.1.17', nivel: 3, item: "5.1.17", descripcion: "Canalización FO/energía", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Infraestructura", vu: "600", vuCOP: "2,640,000", total: "4,800", totalCOP: "21,120,000" },
            { id: '5.1.18', nivel: 3, item: "5.1.18", descripcion: "Pruebas y certificación", sistema: "GALIBOS", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Validación funcional", vu: "420", vuCOP: "1,848,000", total: "3,360", totalCOP: "14,784,000" },
            { id: '5.1.19', nivel: 3, item: "5.1.19", descripcion: "Documentación técnica", sistema: "GALIBOS", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "1,500", vuCOP: "6,600,000", total: "1,500", totalCOP: "6,600,000" },

            // CAPÍTULO 6: SISTEMA METEO (Smart CAPEX v2 - Meteoagro)
            { id: '6', nivel: 1, item: "6", descripcion: "SISTEMA METEO", sistema: "METEO", tipo: "capitulo" },
            { id: '6.1', nivel: 2, item: "6.1", descripcion: "SUMINISTROS METEO (DAVIS PRO2)", sistema: "METEO", tipo: "subcapitulo" },
            { id: '6.1.1', nivel: 3, item: "6.1.1", descripcion: "Estación Davis Vantage Pro2 Plus + WeatherLink Live + Trípode Universal", sistema: "METEO", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Cotización Meteoagro #1357 - Wireless/Surface", vu: "3415.64", vuCOP: "15,028,800", total: "6831.27", totalCOP: "30,057,600" },

            { id: '6.2', nivel: 2, item: "6.2", descripcion: "SERVICIOS E INSTALACIÓN (SMART CAPEX)", sistema: "METEO", tipo: "subcapitulo" },
            { id: '6.2.1', nivel: 3, item: "6.2.1", descripcion: "Configuración y Montaje (10% Sum. Benchmark)", sistema: "METEO", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Instalación Wireless sobre Superficie", vu: "1000", vuCOP: "4,400,000", total: "1000", totalCOP: "4,400,000" },
            { id: '6.2.2', nivel: 3, item: "6.2.2", descripcion: "Integración SCADA / CCO", sistema: "METEO", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Costo 0 - Incluido en Licencia SCADA del CCO", vu: "0", total: "0", totalCOP: "0" },

            // CAPÍTULO 7: SISTEMA PEAJES
            { id: '7', nivel: 1, item: "7", descripcion: "SISTEMA PEAJES", sistema: "PEAJES", tipo: "capitulo" },
            { id: '7.1', nivel: 2, item: "7.1", descripcion: "EQUIPAMIENTO DE RECAUDO (FTS)", sistema: "PEAJES", tipo: "subcapitulo" },
            { id: '7.1.1', nivel: 3, item: "7.1.1", descripcion: "Lectores TAG RFID", sistema: "PEAJES", cantidad: "14", unidad: "UND", tipo: "item", criterio: "IP/REV", vu: "8000", total: "112000", totalCOP: "448000000" },
            { id: '7.1.2', nivel: 3, item: "7.1.2", descripcion: "Cámaras Recaudo (14 LPR + 14 Ejes)", sistema: "PEAJES", cantidad: "28", unidad: "UND", tipo: "item", criterio: "IP/REV Transaccional (No ITS)", vu: "3000", total: "84000", totalCOP: "336000000" },
            { id: '7.1.3', nivel: 3, item: "7.1.3", descripcion: "Barreras Alta Velocidad (0.7s)", sistema: "PEAJES", cantidad: "14", unidad: "UND", tipo: "item", criterio: "Telepeaje", vu: "15000", total: "210000", totalCOP: "840000000" },

            { id: '7.1.5', nivel: 3, item: "7.1.5", descripcion: "Displays Carril P10 Ámbar (640x320mm)", sistema: "PEAJES", cantidad: "14", unidad: "UND", tipo: "item", criterio: "Manual 2024 Tipo 4 (Banner)", vu: "2500", total: "35000", totalCOP: "140000000" },
            { id: '7.1.6', nivel: 3, item: "7.1.6", descripcion: "PMV Aproximación Peaje (MOVED TO ITS)", sistema: "PMV", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Integrado en WBS 3.01 (ITS)", vu: "0", total: "0", totalCOP: "0" },
            { id: '7.1.7', nivel: 3, item: "7.1.7", descripcion: "Semáforos (Paso + Marquesina)", sistema: "PEAJES", cantidad: "28", unidad: "UND", tipo: "item", criterio: "Control Tráfico", vu: "1250", total: "35000", totalCOP: "140000000" },
            { id: '7.1.8', nivel: 3, item: "7.1.8", descripcion: "Consolas y Software Gestión", sistema: "PEAJES", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "CCO Integration", vu: "470000", total: "470000", totalCOP: "1880000000" },
            { id: '7.1.9', nivel: 3, item: "7.1.9", descripcion: "Instalación e Imprevistos (Certificado RETIE)", sistema: "PEAJES", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Cumplimiento Res. 40117", vu: "882577", total: "882577", totalCOP: "3530308000" },
            { id: '7.2', nivel: 2, item: "7.2", descripcion: "INTEGRACIÓN WIM-DAC (AT2 3.3.4.2)", sistema: "PEAJES", tipo: "subcapitulo" },
            { id: '7.2.1', nivel: 3, item: "7.2.1", descripcion: "Kit Pista Pesaje (Placas+Bastidor)", sistema: "PEAJES", cantidad: "14", unidad: "UND", tipo: "item", criterio: "Clasificación automática", vu: "14778.86", total: "206904.04", totalCOP: "910377776" },
            { id: '7.2.2', nivel: 3, item: "7.2.2", descripcion: "Controlador WIM (1 cada 2 carriles)", sistema: "PEAJES", cantidad: "7", unidad: "UND", tipo: "item", criterio: "Procesamiento DAC", vu: "4045.18", total: "28316.26", totalCOP: "124591544" },
            { id: '7.2.3', nivel: 3, item: "7.2.3", descripcion: "Materiales e Integración", sistema: "PEAJES", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Instalación y puesta en marcha", vu: "45138", total: "45138", totalCOP: "198607200" },

            // CAPÃTULO 8: SISTEMA CCO
            // CAPÍTULO 8: SISTEMA CCO (Ref: DT-TM01-CCO-019 Propuesta Imagen)
            { id: '8', nivel: 1, item: "8", descripcion: "SISTEMA CCO", sistema: "CCO", tipo: "capitulo" },
            { id: '8.1', nivel: 2, item: "8.1", descripcion: "EQUIPAMIENTO CCO (DT-019)", sistema: "CCO", tipo: "subcapitulo" },
            { id: '8.1.1', nivel: 3, item: "8.1.1", descripcion: "Servidores SCADA", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Server Main", vu: "38512", total: "38512", totalCOP: "169452800" },
            { id: '8.1.2', nivel: 3, item: "8.1.2", descripcion: "Servidores Aplicaciones Virtualizados", sistema: "CCO", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Virtual Host", vu: "29917", total: "59834", totalCOP: "263269600" },
            { id: '8.1.3', nivel: 3, item: "8.1.3", descripcion: "Cabina de Almacenamiento iSCSI", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Storage Principal", vu: "57357", total: "57357", totalCOP: "252370800" },
            { id: '8.1.4', nivel: 3, item: "8.1.4", descripcion: "Cabina de Back-up", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Backup Storage", vu: "12376", total: "12376", totalCOP: "54454400" },
            { id: '8.1.5', nivel: 3, item: "8.1.5", descripcion: "Videograbador", sistema: "CCO", cantidad: "2", unidad: "UND", tipo: "item", criterio: "NVR Hardware", vu: "16862", total: "33724", totalCOP: "148385600" },
            { id: '8.1.6', nivel: 3, item: "8.1.6", descripcion: "Software Virtualización VMware", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Licencia Virt", vu: "6596", total: "6596", totalCOP: "29022400" },
            { id: '8.1.7', nivel: 3, item: "8.1.7", descripcion: "Controlador Videowall", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Video Process", vu: "7353", total: "7353", totalCOP: "32353200" },
            { id: '8.1.8', nivel: 3, item: "8.1.8", descripcion: "Videowall 70\" 4x2 Cubos", sistema: "CCO", cantidad: "1", unidad: "SISTEMA", tipo: "item", criterio: "Visualización", vu: "6885", total: "6885", totalCOP: "30294000" },
            { id: '8.1.9', nivel: 3, item: "8.1.9", descripcion: "Monitor TFT 55\"", sistema: "CCO", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Auxiliar Video", vu: "1652", total: "3304", totalCOP: "14537600" },
            { id: '8.1.10', nivel: 3, item: "8.1.10", descripcion: "Monitor TFT 22\"", sistema: "CCO", cantidad: "12", unidad: "UND", tipo: "item", criterio: "Operadores", vu: "270", total: "3240", totalCOP: "14256000" },
            { id: '8.1.11', nivel: 3, item: "8.1.11", descripcion: "Puestos de Operación y Jefe", sistema: "CCO", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Mobiliario Técnico", vu: "4338", total: "17352", totalCOP: "76348800" },
            { id: '8.1.12', nivel: 3, item: "8.1.12", descripcion: "Puestos de Operación Peajes", sistema: "CCO", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Mobiliario Peaje", vu: "4338", total: "8676", totalCOP: "38174400" },
            { id: '8.1.13', nivel: 3, item: "8.1.13", descripcion: "Licencia CAL SQL y Windows", sistema: "CCO", cantidad: "5", unidad: "UND", tipo: "item", criterio: "Licenciamiento", vu: "1781", total: "8905", totalCOP: "39182000" },
            { id: '8.1.14', nivel: 3, item: "8.1.14", descripcion: "Licencia Veeam Backup", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Software Backup", vu: "9675", total: "9675", totalCOP: "42570000" },
            { id: '8.1.15', nivel: 3, item: "8.1.15", descripcion: "Teclado Sistema Video", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Joystick PTZ", vu: "571", total: "571", totalCOP: "2512400" },
            { id: '8.1.16', nivel: 3, item: "8.1.16", descripcion: "Teléfono IP", sistema: "CCO", cantidad: "6", unidad: "UND", tipo: "item", criterio: "Comms", vu: "441", total: "2646", totalCOP: "11642400" },
            { id: '8.1.17', nivel: 3, item: "8.1.17", descripcion: "Central Telefónica IP", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "PBX", vu: "1030", total: "1030", totalCOP: "4532000" },
            { id: '8.1.18', nivel: 3, item: "8.1.18", descripcion: "Impresora Láser Red", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Impresión", vu: "988", total: "988", totalCOP: "4347200" },
            { id: '8.1.19', nivel: 3, item: "8.1.19", descripcion: "Rack 19\" 42U ITS/Eléctrico", sistema: "CCO", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Gabinete", vu: "4017", total: "8034", totalCOP: "35349600" },
            { id: '8.1.20', nivel: 3, item: "8.1.20", descripcion: "Rack 19\" 42U Servidores", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Gabinete", vu: "4017", total: "4017", totalCOP: "17674800" },
            { id: '8.1.21', nivel: 3, item: "8.1.21", descripcion: "Gestión de Consola (KVM)", sistema: "CCO", cantidad: "1", unidad: "UND", tipo: "item", criterio: "Acceso", vu: "3847", total: "3847", totalCOP: "16926800" },

            // CAPÃTULO 9: SISTEMA WIM
            { id: '9', nivel: 1, item: "9", descripcion: "SISTEMA WIM", sistema: "WIM", tipo: "capitulo" },
            { id: '9.1', nivel: 2, item: "9.1", descripcion: "BÃSCULAS DINÃMICAS WIM (PAT)", sistema: "WIM", tipo: "subcapitulo" },
            { id: '9.1.1', nivel: 3, item: "9.1.1", descripcion: "Placas de pesaje 1.55m", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Plataformas pesaje", vu: "10,481", vuCOP: "46,116,400", total: "41,926", totalCOP: "184,474,400" },
            { id: '9.1.2', nivel: 3, item: "9.1.2", descripcion: "Bastidores con epóxico", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Soporte placas", vu: "4,297", vuCOP: "18,906,800", total: "17,190", totalCOP: "75,639,600" },
            { id: '9.1.3', nivel: 3, item: "9.1.3", descripcion: "Material lazos inductivos", sistema: "WIM", cantidad: "8", unidad: "UND", tipo: "item", criterio: "Detección vehículos", vu: "409", vuCOP: "1,799,600", total: "3,270", totalCOP: "14,388,000" },
            { id: '9.1.4', nivel: 3, item: "9.1.4", descripcion: "Electrónica DAW100", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Procesamiento datos", vu: "4,045", vuCOP: "17,798,000", total: "8,090", totalCOP: "35,596,000" },
            { id: '9.1.5', nivel: 3, item: "9.1.5", descripcion: "Gabinete antivandalismo", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Protección equipos", vu: "4,619", vuCOP: "20,323,600", total: "9,238", totalCOP: "40,647,200" },
            { id: '9.1.6', nivel: 3, item: "9.1.6", descripcion: "Cámara OCR báscula (22m)", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Reconocimiento placas", vu: "5,110", vuCOP: "22,484,000", total: "10,219", totalCOP: "44,963,800" },
            { id: '9.1.7', nivel: 3, item: "9.1.7", descripcion: "Cámara OCR fuga (22m)", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control evasión", vu: "4,800", vuCOP: "21,120,000", total: "9,600", totalCOP: "42,240,000" },
            { id: '9.1.8', nivel: 3, item: "9.1.8", descripcion: "Tablero protección eléctrica", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Protección eléctrica", vu: "1,048", vuCOP: "4,611,200", total: "2,096", totalCOP: "9,222,400" },
            { id: '9.1.9', nivel: 3, item: "9.1.9", descripcion: "Señal Aspa-Flecha (600x600)", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Señalización M2024", vu: "1,858", vuCOP: "8,175,200", total: "7,432", totalCOP: "32,700,800" },
            { id: '9.1.10', nivel: 3, item: "9.1.10", descripcion: "Switch PoE 8 puertos", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación red", vu: "681", vuCOP: "2,996,400", total: "1,363", totalCOP: "5,997,200" },
            { id: '9.1.11', nivel: 3, item: "9.1.11", descripcion: "Computador aplicación Rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Gestión sistema", vu: "3,983", vuCOP: "17,525,200", total: "7,966", totalCOP: "35,050,400" },
            { id: '9.1.12', nivel: 3, item: "9.1.12", descripcion: "Monitor, teclado, mouse", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Interfaz usuario", vu: "558", vuCOP: "2,455,200", total: "1,117", totalCOP: "4,914,800" },
            { id: '9.1.13', nivel: 3, item: "9.1.13", descripcion: "Servidor Rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Procesamiento central", vu: "6,272", vuCOP: "27,596,800", total: "12,544", totalCOP: "55,193,600" },
            { id: '9.1.14', nivel: 3, item: "9.1.14", descripcion: "Switch para Rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación rack", vu: "769", vuCOP: "3,383,600", total: "1,538", totalCOP: "6,767,200" },
            { id: '9.1.15', nivel: 3, item: "9.1.15", descripcion: "Impresora láser", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Impresión documentos", vu: "734", vuCOP: "3,229,600", total: "1,467", totalCOP: "6,454,800" },
            { id: '9.1.16', nivel: 3, item: "9.1.16", descripcion: "Rack equipos caseta", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Infraestructura", vu: "1,991", vuCOP: "8,760,400", total: "3,983", totalCOP: "17,525,200" },
            { id: '9.1.17', nivel: 3, item: "9.1.17", descripcion: "UPS 2KVA rack", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Respaldo energético", vu: "1,572", vuCOP: "6,916,800", total: "3,144", totalCOP: "13,833,600" },
            { id: '9.1.18', nivel: 3, item: "9.1.18", descripcion: "Poste brazo 3m cámaras LPR", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Soporte cámaras", vu: "2,503", vuCOP: "11,013,200", total: "5,005", totalCOP: "22,022,000" },
            { id: '9.1.19', nivel: 3, item: "9.1.19", descripcion: "Poste brazo 3m señales", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Soporte señales", vu: "2,503", vuCOP: "11,013,200", total: "5,005", totalCOP: "22,022,000" },
            { id: '9.1.20', nivel: 3, item: "9.1.20", descripcion: "Poste brazo 3m cámaras fuga", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Soporte cámaras fuga", vu: "2,503", vuCOP: "11,013,200", total: "5,005", totalCOP: "22,022,000" },
            { id: '9.1.21', nivel: 3, item: "9.1.21", descripcion: "Cables y materiales", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Cableado sistema", vu: "2,079", vuCOP: "9,147,600", total: "4,157", totalCOP: "18,295,200" },
            { id: '9.1.22', nivel: 3, item: "9.1.22", descripcion: "Instalación fibra óptica", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Comunicación", vu: "5,174", vuCOP: "22,765,600", total: "10,348", totalCOP: "45,531,200" },
            { id: '9.1.23', nivel: 3, item: "9.1.23", descripcion: "Documentación As-Built", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Manuales y planos", vu: "5,241", vuCOP: "23,060,400", total: "5,241", totalCOP: "23,060,400" },
            { id: '9.1.24', nivel: 3, item: "9.1.24", descripcion: "Instalación sistemas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servicios especializados", vu: "32,357", vuCOP: "142,370,800", total: "32,357", totalCOP: "142,370,800" },
            { id: '9.1.25', nivel: 3, item: "9.1.25", descripcion: "Puesta a tierra", sistema: "WIM", cantidad: "6", unidad: "UND", tipo: "item", criterio: "Sistema puesta tierra", vu: "871", vuCOP: "3,832,400", total: "5,226", totalCOP: "22,994,400" },
            { id: '9.1.26', nivel: 3, item: "9.1.26", descripcion: "Asistencia garantía", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Servicio postventa", vu: "5,148", vuCOP: "22,651,200", total: "10,296", totalCOP: "45,302,400" },
            { id: '9.1.27', nivel: 3, item: "9.1.27", descripcion: "Flete internacional CIF", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transporte", vu: "19,474", vuCOP: "85,685,600", total: "19,474", totalCOP: "85,685,600" },
            { id: '9.1.28', nivel: 3, item: "9.1.28", descripcion: "Ingeniería PAT", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servicios ingeniería", vu: "3,144", vuCOP: "13,833,600", total: "3,144", totalCOP: "13,833,600" },
            { id: '9.1.29', nivel: 3, item: "9.1.29", descripcion: "Pólizas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Seguros", vu: "2,970", vuCOP: "13,068,000", total: "2,970", totalCOP: "13,068,000" },
            { id: '9.1.30', nivel: 3, item: "9.1.30", descripcion: "Software BASCAM integración", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Integración sistema", vu: "2,970", vuCOP: "13,068,000", total: "5,940", totalCOP: "26,136,000" },

            { id: '9.2', nivel: 2, item: "9.2", descripcion: "BÃSCULAS ESTÃTICAS (INTERPESAJE)", sistema: "WIM", tipo: "subcapitulo" },
            { id: '9.2.1', nivel: 3, item: "9.2.1", descripcion: "Báscula Fairbanks Talon 100t", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Pesaje estático precisión", vu: "58,870", vuCOP: "259,028,000", total: "117,740", totalCOP: "518,056,000" },
            { id: '9.2.2', nivel: 3, item: "9.2.2", descripcion: "Computador + Software", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Gestión estática", vu: "2,590", vuCOP: "11,396,000", total: "5,180", totalCOP: "22,792,000" },
            { id: '9.2.3', nivel: 3, item: "9.2.3", descripcion: "Sistema control barreras", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Control acceso", vu: "3,239", vuCOP: "14,251,600", total: "12,955", totalCOP: "57,006,400" },
            { id: '9.2.4', nivel: 3, item: "9.2.4", descripcion: "Sistema semafórico", sistema: "WIM", cantidad: "4", unidad: "UND", tipo: "item", criterio: "Señalización semáforos", vu: "410", vuCOP: "1,804,000", total: "1,639", totalCOP: "7,211,600" },
            { id: '9.2.5', nivel: 3, item: "9.2.5", descripcion: "Impresora térmica + Intercom", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Impresión y comunicación", vu: "1,318", vuCOP: "5,799,200", total: "2,635", totalCOP: "11,598,400" },
            { id: '9.2.6', nivel: 3, item: "9.2.6", descripcion: "Display alfanumérico LED", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Información conductor", vu: "1,704", vuCOP: "7,497,600", total: "3,408", totalCOP: "14,995,200" },
            { id: '9.2.7', nivel: 3, item: "9.2.7", descripcion: "Gabinete controlador digital", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control digital", vu: "2,830", vuCOP: "12,452,000", total: "5,660", totalCOP: "24,904,000" },
            { id: '9.2.8', nivel: 3, item: "9.2.8", descripcion: "Software gestión (licencia vitalicia)", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Software gestión", vu: "3,898", vuCOP: "17,151,200", total: "3,898", totalCOP: "17,151,200" },
            { id: '9.2.9', nivel: 3, item: "9.2.9", descripcion: "Sistema grabación ejes", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Registro ejes", vu: "664", vuCOP: "2,921,600", total: "1,329", totalCOP: "5,843,200" },
            { id: '9.2.10', nivel: 3, item: "9.2.10", descripcion: "Cámara LPR placas", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Reconocimiento placas", vu: "3,241", vuCOP: "14,260,400", total: "6,481", totalCOP: "28,520,800" },
            { id: '9.2.11', nivel: 3, item: "9.2.11", descripcion: "Sistema video seguridad", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Seguridad video", vu: "2,911", vuCOP: "12,808,400", total: "5,822", totalCOP: "25,616,800" },
            { id: '9.2.12', nivel: 3, item: "9.2.12", descripcion: "Sistema categorización vehicular", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Clasificación vehículos", vu: "3,573", vuCOP: "15,721,200", total: "7,147", totalCOP: "31,442,400" },
            { id: '9.2.13', nivel: 3, item: "9.2.13", descripcion: "Sistema fiscalización", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Control fiscal", vu: "705", vuCOP: "3,102,000", total: "1,410", totalCOP: "6,204,000" },
            { id: '9.2.14', nivel: 3, item: "9.2.14", descripcion: "Instalación básculas", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación especializada", vu: "12,755", vuCOP: "56,123,320", total: "25,510", totalCOP: "112,246,640" },
            { id: '9.2.15', nivel: 3, item: "9.2.15", descripcion: "Instalación software", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación software", vu: "4,405", vuCOP: "19,380,240", total: "8,810", totalCOP: "38,760,480" },
            { id: '9.2.16', nivel: 3, item: "9.2.16", descripcion: "Instalación periféricos", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación periféricos", vu: "4,473", vuCOP: "19,683,300", total: "8,946", totalCOP: "39,366,600" },
            { id: '9.2.17', nivel: 3, item: "9.2.17", descripcion: "Transporte básculas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transporte equipos", vu: "1,573", vuCOP: "6,920,000", total: "1,573", totalCOP: "6,920,000" },
            { id: '9.2.18', nivel: 3, item: "9.2.18", descripcion: "Calibración NTC 2031 ONAC", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Calibración certificada", vu: "1,255", vuCOP: "5,520,000", total: "2,510", totalCOP: "11,040,000" },
            { id: '9.2.19', nivel: 3, item: "9.2.19", descripcion: "Transporte masas patrones", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Transporte calibración", vu: "2,545", vuCOP: "11,200,000", total: "2,545", totalCOP: "11,200,000" },
            { id: '9.2.20', nivel: 3, item: "9.2.20", descripcion: "Grúa descargue", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Servicios grúa", vu: "1,182", vuCOP: "5,200,000", total: "1,182", totalCOP: "5,200,000" },
            { id: '9.2.21', nivel: 3, item: "9.2.21", descripcion: "Montacarga calibración", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Equipos calibración", vu: "596", vuCOP: "2,624,440", total: "596", totalCOP: "2,624,440" },
            { id: '9.2.22', nivel: 3, item: "9.2.22", descripcion: "Manuales + Planos", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Documentación técnica", vu: "1,909", vuCOP: "8,400,000", total: "1,909", totalCOP: "8,400,000" },
            { id: '9.2.23', nivel: 3, item: "9.2.23", descripcion: "Cableado completo", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Cableado sistema", vu: "7,704", vuCOP: "33,896,000", total: "15,408", totalCOP: "67,792,000" },
            { id: '9.2.24', nivel: 3, item: "9.2.24", descripcion: "Técnico HSEQ", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Supervisión técnica", vu: "5,318", vuCOP: "23,400,000", total: "10,636", totalCOP: "46,800,000" },
            { id: '9.2.25', nivel: 3, item: "9.2.25", descripcion: "Capacitación 40 horas", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Capacitación personal", vu: "1,032", vuCOP: "4,542,300", total: "1,032", totalCOP: "4,542,300" },

            { id: '9.3', nivel: 2, item: "9.3", descripcion: "PUESTA A TIERRA", sistema: "WIM", tipo: "subcapitulo" },
            { id: '9.3.1', nivel: 3, item: "9.3.1", descripcion: "Varillas copperweld 2.4m", sistema: "WIM", cantidad: "12", unidad: "UND", tipo: "item", criterio: "Electrodos tierra", vu: "955", vuCOP: "4,200,000", total: "11,460", totalCOP: "50,424,000" },
            { id: '9.3.2', nivel: 3, item: "9.3.2", descripcion: "Cable desnudo 2/0 AWG", sistema: "WIM", cantidad: "200", unidad: "ML", tipo: "item", criterio: "Conductor tierra", vu: "1,136", vuCOP: "5,000,000", total: "227,200", totalCOP: "1,000,000,000" },
            { id: '9.3.3', nivel: 3, item: "9.3.3", descripcion: "Soldaduras exotérmicas", sistema: "WIM", cantidad: "24", unidad: "UND", tipo: "item", criterio: "Conexiones tierra", vu: "436", vuCOP: "1,920,000", total: "10,464", totalCOP: "46,041,600" },
            { id: '9.3.4', nivel: 3, item: "9.3.4", descripcion: "Bentonita + sales mejoramiento", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Mejoramiento suelo", vu: "568", vuCOP: "2,500,000", total: "568", totalCOP: "2,500,000" },
            { id: '9.3.5', nivel: 3, item: "9.3.5", descripcion: "Excavación + relleno", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Obra civil tierra", vu: "1,818", vuCOP: "8,000,000", total: "1,818", totalCOP: "8,000,000" },
            { id: '9.3.6', nivel: 3, item: "9.3.6", descripcion: "Medición resistencia + informe", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Medición certificada", vu: "545", vuCOP: "2,400,000", total: "1,090", totalCOP: "4,800,000" },
            { id: '9.3.7', nivel: 3, item: "9.3.7", descripcion: "Mano obra instalación", sistema: "WIM", cantidad: "2", unidad: "UND", tipo: "item", criterio: "Instalación especializada", vu: "3,636", vuCOP: "16,000,000", total: "7,272", totalCOP: "32,000,000" },
            { id: '9.3.8', nivel: 3, item: "9.3.8", descripcion: "Planos + Asesoría INTERPESAJE", sistema: "WIM", cantidad: "1", unidad: "GLB", tipo: "item", criterio: "Asesoría técnica", vu: "682", vuCOP: "3,000,000", total: "682", totalCOP: "3,000,000" },

            // CAPÃTULO 10: TELECOMUNICACIONES ITS
            // CAPÍTULO 10: TELECOMUNICACIONES (T05 v1.1 Microfibra - Audit 6.0 252km)
            { id: '10', nivel: 1, item: "10", descripcion: "TELECOMUNICACIONES ITS", sistema: "TELECOM", tipo: "capitulo" },
            { id: '10.1', nivel: 2, item: "10.1", descripcion: "SUMINISTROS FIBRA ÓPTICA", sistema: "TELECOM", tipo: "subcapitulo" },
            { id: '10.1.1', nivel: 3, item: "10.1.1", descripcion: "Cable fibra optica 48h (Microfibra)", sistema: "TELECOM", cantidad: "252000", unidad: "ML", tipo: "item", criterio: "Microfibra (Trunk)", vu: "1.02", total: "257040", totalCOP: "1130976000" },
            { id: '10.1.2', nivel: 3, item: "10.1.2", descripcion: "Cable fibra optica 12h", sistema: "TELECOM", cantidad: "10856", unidad: "ML", tipo: "item", criterio: "Ramales", vu: "0.57", total: "6188", totalCOP: "27227200" },
            { id: '10.1.3', nivel: 3, item: "10.1.3", descripcion: "Cajas empalme 80x80 (Suministro)", sistema: "TELECOM", cantidad: "65", unidad: "UND", tipo: "item", criterio: "Empalmes 80x80", vu: "381", total: "24765", totalCOP: "108966000" },
            { id: '10.1.4', nivel: 3, item: "10.1.4", descripcion: "Cajas empalme 60x60 (Suministro)", sistema: "TELECOM", cantidad: "1192", unidad: "UND", tipo: "item", criterio: "Empalmes 60x60", vu: "316.89", total: "377733", totalCOP: "1662025200" },
            { id: '10.1.5', nivel: 3, item: "10.1.5", descripcion: "Cajas reserva FO (Suministro)", sistema: "TELECOM", cantidad: "1257", unidad: "UND", tipo: "item", criterio: "Reservas", vu: "147.95", total: "185973", totalCOP: "818281200" },
            { id: '10.1.6', nivel: 3, item: "10.1.6", descripcion: "Microducto 3 vias (Suministro)", sistema: "TELECOM", cantidad: "252000", unidad: "ML", tipo: "item", criterio: "Microducto (Trunk)", vu: "2.70", total: "680400", totalCOP: "2993760000" },
            { id: '10.1.7', nivel: 3, item: "10.1.7", descripcion: "Empalmes y conectores (Global)", sistema: "TELECOM", cantidad: "62736", unidad: "UND", tipo: "item", criterio: "Accesorios", vu: "21.30", total: "1336277", totalCOP: "5879618800" },

            { id: '10.2', nivel: 2, item: "10.2", descripcion: "OBRA CIVIL TELECOM", sistema: "TELECOM", tipo: "subcapitulo" },
            { id: '10.2.1', nivel: 3, item: "10.2.1", descripcion: "Excavacion asfalto + tritubo", sistema: "TELECOM", cantidad: "27140", unidad: "ML", tipo: "item", criterio: "Excavación", vu: "11.89", total: "322695", totalCOP: "1419858000" },
            { id: '10.2.2', nivel: 3, item: "10.2.2", descripcion: "Excavacion anden + tritubo", sistema: "TELECOM", cantidad: "13570", unidad: "ML", tipo: "item", criterio: "Excavación", vu: "9.60", total: "130272", totalCOP: "573196800" },
            { id: '10.2.3', nivel: 3, item: "10.2.3", descripcion: "Excavacion blanda + tritubo", sistema: "TELECOM", cantidad: "212000", unidad: "ML", tipo: "item", criterio: "Excavación (Adjusted)", vu: "7.87", total: "1668440", totalCOP: "7341136000" },
            { id: '10.2.4', nivel: 3, item: "10.2.4", descripcion: "Instalacion Cruces Especiales (HDD)", sistema: "TELECOM", cantidad: "13920", unidad: "ML", tipo: "item", criterio: "Cruces", vu: "90.60", total: "1261152", totalCOP: "5549068800" },
            { id: '10.2.5', nivel: 3, item: "10.2.5", descripcion: "Instalacion Cajas (48h + 12h)", sistema: "TELECOM", cantidad: "1457", unidad: "UND", tipo: "item", criterio: "Instalación", vu: "100.00", total: "145700", totalCOP: "641080000" },

            { id: '10.3', nivel: 2, item: "10.3", descripcion: "INSTALACIÓN Y EQUIPOS", sistema: "TELECOM", tipo: "subcapitulo" },
            { id: '10.3.1', nivel: 3, item: "10.3.1", descripcion: "Soplado fibra 48h", sistema: "TELECOM", cantidad: "252000", unidad: "ML", tipo: "item", criterio: "Blowing (Trunk)", vu: "1.88", total: "473760", totalCOP: "2084544000" },
            { id: '10.3.2', nivel: 3, item: "10.3.2", descripcion: "Equipos de Red L2/L3 + Firewalls (Sincronizado Audit 6.0)", sistema: "TELECOM", cantidad: "1", unidad: "GLB", tipo: "item", tipoPresupuestal: "SUMINISTRO", criterio: "Activos (Switches+FW)", vu: "1109605", total: "1109605", totalCOP: "4882262000" },

            // CAPÍTULO 11: EMISORA DE RADIO FM
            { id: '11', nivel: 1, item: "11", descripcion: "SISTEMA RADIO FM", sistema: "RADIO", tipo: "capitulo" },
            { id: '11.1', nivel: 2, item: "11.1", descripcion: "ESTACIÓN BASE Y COBERTURA", sistema: "RADIO", tipo: "subcapitulo" },
            { id: '11.1.1', nivel: 3, item: "11.1.1", descripcion: "Estación Transmisora Base CCO", sistema: "RADIO", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Eliminado DT-002", vu: "45000", total: "0", totalCOP: "0" },
            { id: '11.1.2', nivel: 3, item: "11.1.2", descripcion: "Repetidoras / Gap-fillers Corredor", sistema: "RADIO", cantidad: "0", unidad: "UND", tipo: "item", criterio: "Eliminado DT-002", vu: "25000", total: "0", totalCOP: "0" },
            { id: '11.1.3', nivel: 3, item: "11.1.3", descripcion: "Trámites Licencias y Puesta en Marcha", sistema: "RADIO", cantidad: "0", unidad: "GLB", tipo: "item", criterio: "Eliminado DT-002", vu: "30000", total: "0", totalCOP: "0" },


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

    // MÃ‰TODOS DE GESTIÓN DE CAMBIOS

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

    // MÃ‰TODOS DE CONSULTA

    getItem(itemId) {
        return this.data.wbs.find(item => item.id === itemId);
    }

    getItemsBySistema(sistema) {
        return this.data.wbs.filter(item => item.sistema === sistema);
    }

    getTotalPorSistema(sistema) {
        const items = this.getItemsBySistema(sistema);
        return items.reduce((sum, item) => {
            const val = String(item.total || "0").replace(/,/g, '');
            return sum + (parseFloat(val) || 0);
        }, 0);
    }

    getTotalGeneral() {
        return this.data.wbs.reduce((sum, item) => {
            const val = String(item.total || "0").replace(/,/g, '');
            return sum + (parseFloat(val) || 0);
        }, 0);
    }

    getEstadisticas() {
        const sistemas = [...new Set(this.data.wbs.map(item => item.sistema))].filter(Boolean);
        const estadisticas = {};

        sistemas.forEach(sistema => {
            const totalUSD = this.getTotalPorSistema(sistema);
            estadisticas[sistema] = {
                cantidadItems: this.getItemsBySistema(sistema).length,
                totalUSD: totalUSD,
                totalCOP: totalUSD * 4400,
                porcentaje: 0 // Se calcula al final
            };
        });

        const totalGeneral = this.getTotalGeneral();
        Object.values(estadisticas).forEach(s => {
            s.porcentaje = totalGeneral > 0 ? (s.totalUSD / totalGeneral) * 100 : 0;
        });

        return estadisticas;
    }

    getContractualSummary() {
        // Fuente Dinámica: Agregación de Capa 5 (WBS)
        const sistemasMap = {};

        this.data.wbs.forEach(item => {
            if (item.tipo !== 'item') return;

            const sys = item.sistema || 'OTROS';
            if (!sistemasMap[sys]) {
                sistemasMap[sys] = {
                    id: sys,
                    sistema: sys,
                    capexUSD: 0,
                    capexCOP: 0,
                    cantidad: 0,
                    estado: 'Validado', // Por defecto todos los validados en Audit 6.0
                    descripcion: item.descripcion // Tomamos la descripción del primer ítem como referencia
                };
            }

            const totalUSD = parseFloat(String(item.total || '0').replace(/,/g, ''));
            const totalCOP = parseFloat(String(item.totalCOP || '0').replace(/,/g, ''));
            const cantidad = parseFloat(String(item.cantidad || '0').replace(/,/g, ''));

            sistemasMap[sys].capexUSD += totalUSD;
            sistemasMap[sys].capexCOP += totalCOP;
            sistemasMap[sys].cantidad += cantidad;
        });

        return Object.values(sistemasMap).sort((a, b) => b.capexCOP - a.capexCOP);
    }

    // MÃ‰TODOS DE EXPORTACIÓN

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
window.modificarItemWBS = function (itemId, nuevosDatos) {
    return window.tm01MasterData.modificarItem(itemId, nuevosDatos);
};

window.obtenerItemWBS = function (itemId) {
    return window.tm01MasterData.getItem(itemId);
};

window.obtenerEstadisticas = function () {
    return window.tm01MasterData.getEstadisticas();
};

window.obtenerResumenContractual = function () {
    return window.tm01MasterData.getContractualSummary();
};

window.exportarDatosCompletos = function () {
    return window.tm01MasterData.exportarDatos();
};


