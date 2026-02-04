window.wbsDataGlobal = window.datos_wbs = {
    "fecha_actualizacion": "2026-02-04",
    "total_items": 46,
    "version": "3.4 (Total Reconciliation - Audit 6.0)",
    "items": [
        // CAPÍTULO 1: SOS (Postes de Auxilio)
        { item: '1', descripcion: 'SISTEMA SOS (POSTES DE AUXILIO)', id: '1', nivel: 1, tipo: 'capitulo', sistema: 'SOS' },
        { item: '1.1.1', id: '1.1.1', nivel: 3, descripcion: 'Suministro e Instalación SOS (88 UND)', sistema: 'SOS', cantidad: '88', totalUSD: 1642404, totalCOP: 7226577081, tipo: 'item', tipo_presupuesto: 'OBRA' },

        // CAPÍTULO 2: ETD/RADAR (Cero Alcance Audit 6.0)
        { item: '2', descripcion: 'SISTEMA ETD/RADAR', id: '2', nivel: 1, tipo: 'capitulo', sistema: 'ETD' },
        { item: '2.1.1', id: '2.1.1', nivel: 3, descripcion: 'Estrategia Diferida a O&M (Cero Alcance)', sistema: 'ETD', cantidad: '0', totalUSD: 0, totalCOP: 0, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },

        // CAPÍTULO 3: CCTV (Seguridad)
        { item: '3', descripcion: 'SISTEMA CCTV (SEGURIDAD)', id: '3', nivel: 1, tipo: 'capitulo', sistema: 'CCTV' },
        { item: '3.1.1', id: '3.1.1', nivel: 3, descripcion: 'Nodos CCTV Solares Optimizado (9 UND)', sistema: 'CCTV', cantidad: '9', totalUSD: 116100, totalCOP: 510840000, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },

        // CAPÍTULO 4: PMV (Mensajería Variable)
        { item: '4', descripcion: 'SISTEMA PMV (MENSAJERÍA VARIABLE)', id: '4', nivel: 1, tipo: 'capitulo', sistema: 'PMV' },
        { item: '4.1.1', id: '4.1.1', nivel: 3, descripcion: 'Paneles PMV Full RGB (39 UND)', sistema: 'PMV', cantidad: '39', totalUSD: 2360000, totalCOP: 10384000000, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },

        // CAPÍTULO 6: METEO (Estaciones Meteorológicas)
        { item: '6', descripcion: 'SISTEMA METEO (ESTACIONES METEOROLÓGICAS)', id: '6', nivel: 1, tipo: 'capitulo', sistema: 'METEO' },
        { item: '6.1.1', id: '6.1.1', nivel: 3, descripcion: 'Estaciones Meteorológicas Davis + API (3 UND)', sistema: 'METEO', cantidad: '3', totalUSD: 150000, totalCOP: 660000000, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },

        // CAPÍTULO 7: PEAJES
        { item: '7', descripcion: 'SISTEMA PEAJES', id: '7', nivel: 1, tipo: 'capitulo', sistema: 'PEAJES' },
        { item: '7.1.1', id: '7.1.1', nivel: 3, descripcion: 'Equipamiento Peajes Certified (14 carriles)', sistema: 'PEAJES', cantidad: '14', totalUSD: 1890219, totalCOP: 8316963600, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },

        // CAPÍTULO 9: WIM (Pesaje Dinámico)
        { item: '9', descripcion: 'SISTEMA WIM (PESAJE DINÁMICO)', id: '9', nivel: 1, tipo: 'capitulo', sistema: 'WIM' },
        { item: '9.1.1', id: '9.1.1', nivel: 3, descripcion: 'Equipamiento HS-WIM (Audit 6.0)', sistema: 'WIM', cantidad: '2', totalUSD: 256353, totalCOP: 1127953200, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },
        { item: '9.2.1', id: '9.2.1', nivel: 3, descripcion: 'Básculas Estáticas Fairbanks (Audit 6.0)', sistema: 'WIM', cantidad: '2', totalUSD: 267185, totalCOP: 1175614000, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },
        { item: '9.3.1', id: '9.3.1', nivel: 3, descripcion: 'Reserva Calibración WIM', sistema: 'WIM', cantidad: '1', totalUSD: 20836, totalCOP: 91603434, tipo: 'item', tipo_presupuesto: 'OBRA' },

        // CAPÍTULO 10: TELECOMUNICACIONES (Fibra Óptica)
        { item: '10', descripcion: 'SISTEMA TELECOMUNICACIONES (FIBRA ÓPTICA)', id: '10', nivel: 1, tipo: 'capitulo', sistema: 'TELECOM' },
        { item: '10.1', descripcion: 'DETALLE FIBRA Y OBRA CIVIL', id: '10.1', nivel: 2, tipo: 'subcapitulo', sistema: 'TELECOM' },
        { item: '10.1.1', id: '10.1.1', nivel: 3, descripcion: 'Cable Microfibra 48h / 12h (322 km)', sistema: 'TELECOM', cantidad: '322000', totalUSD: 275582, totalCOP: 1212560800, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },
        { item: '10.1.2', id: '10.1.2', nivel: 3, descripcion: 'Microducto 3 vías Reforzado (Suministro)', sistema: 'TELECOM', cantidad: '322000', totalUSD: 718060, totalCOP: 3159464000, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },
        { item: '10.1.3', id: '10.1.3', nivel: 3, descripcion: 'Empalmes, Cajas y Conectores Globales', sistema: 'TELECOM', cantidad: '1', totalUSD: 1436753, totalCOP: 6321713200, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },
        { item: '10.1.4', id: '10.1.4', nivel: 3, descripcion: 'Excavación y Canalización (Asf/And/Bla)', sistema: 'TELECOM', cantidad: '279270', totalUSD: 1437130, totalCOP: 6323373200, tipo: 'item', tipo_presupuesto: 'OBRA' },
        { item: '10.1.5', id: '10.1.5', nivel: 3, descripcion: 'Instalación HDD Cruces Especiales', sistema: 'TELECOM', cantidad: '13920', totalUSD: 778148, totalCOP: 3423853677, tipo: 'item', tipo_presupuesto: 'OBRA' },
        { item: '10.1.6', id: '10.1.6', nivel: 3, descripcion: 'Soplado y Halado Fibra Óptica', sistema: 'TELECOM', cantidad: '293190', totalUSD: 454445, totalCOP: 1999558000, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },
        { item: '10.1.7', id: '10.1.7', nivel: 3, descripcion: 'Equipos Red L2/L3 y Seguridad Fortinet', sistema: 'TELECOM', cantidad: '97', totalUSD: 346351, totalCOP: 1523944400, tipo: 'item', tipo_presupuesto: 'SUMINISTRO' },
        { item: '10.1.8', id: '10.1.8', nivel: 3, descripcion: 'Administración, IVA e Indirectos Telecom', sistema: 'TELECOM', cantidad: '1', totalUSD: 1781443, totalCOP: 7838349200, tipo: 'item', tipo_presupuesto: 'CONSOLIDADO' }
    ]
};
