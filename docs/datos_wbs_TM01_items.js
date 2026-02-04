window.wbsDataGlobal = window.datos_wbs = {
    "fecha_actualizacion": "2026-02-04",
    "total_items": 45,
    "version": "3.3 (Manual Calibration - Audit 6.0)",
    "items": [
        // CAPÍTULO 1: SOS (Postes de Auxilio)
        { item: '1', descripcion: 'SISTEMA SOS (POSTES DE AUXILIO)', id: '1', nivel: 1, tipo: 'capitulo', sistema: 'SOS' },
        { item: '1.1.1', id: '1.1.1', nivel: 3, descripcion: 'Suministro e Instalación SOS (88 UND)', sistema: 'SOS', cantidad: '88', total: '2200000', totalCOP: '9328000000', tipo: 'item' },

        // CAPÍTULO 2: ETD/RADAR (Cero Alcance Init)
        { item: '2', descripcion: 'SISTEMA ETD/RADAR', id: '2', nivel: 1, tipo: 'capitulo', sistema: 'ETD' },
        { item: '2.1.1', id: '2.1.1', nivel: 3, descripcion: 'Estrategia Mobiliaria / Diferido O&M', sistema: 'ETD', cantidad: '0', total: '0', totalCOP: '0', tipo: 'item' },

        // CAPÍTULO 3: CCTV (Seguridad)
        { item: '3', descripcion: 'SISTEMA CCTV (SEGURIDAD)', id: '3', nivel: 1, tipo: 'capitulo', sistema: 'CCTV' },
        { item: '3.1.1', id: '3.1.1', nivel: 3, descripcion: 'Nodos CCTV Solares Optimizado (9 UND)', sistema: 'CCTV', cantidad: '9', total: '116100', totalCOP: '492264000', tipo: 'item' },

        // CAPÍTULO 4: PMV (Mensajería Variable)
        { item: '4', descripcion: 'SISTEMA PMV (MENSAJERÍA VARIABLE)', id: '4', nivel: 1, tipo: 'capitulo', sistema: 'PMV' },
        { item: '4.1.1', id: '4.1.1', nivel: 3, descripcion: 'Paneles PMV Full RGB (39 UND)', sistema: 'PMV', cantidad: '39', total: '2360000', totalCOP: '10006400000', tipo: 'item' },

        // CAPÍTULO 7: PEAJES
        { item: '7', descripcion: 'SISTEMA PEAJES', id: '7', nivel: 1, tipo: 'capitulo', sistema: 'PEAJES' },
        { item: '7.1.1', id: '7.1.1', nivel: 3, descripcion: 'Equipamiento Peajes Certified (14 carriles)', sistema: 'PEAJES', cantidad: '14', total: '1890219', totalCOP: '8014528560', tipo: 'item' },

        // CAPÍTULO 9: WIM (Pesaje Dinámico)
        { item: '9', descripcion: 'SISTEMA WIM (PESAJE DINÁMICO)', id: '9', nivel: 1, tipo: 'capitulo', sistema: 'WIM' },
        { item: '9.1.1', id: '9.1.1', nivel: 3, descripcion: 'Equipamiento HS-WIM (Audit .42 Reconciled)', sistema: 'WIM', cantidad: '2', total: '256353', totalCOP: '1127953200', tipo: 'item' },
        { item: '9.2.1', id: '9.2.1', nivel: 3, descripcion: 'Básculas Estáticas Fairbanks (Audit .42)', sistema: 'WIM', cantidad: '2', total: '267185', totalCOP: '1175614000', tipo: 'item' },
        { item: '9.3.1', id: '9.3.1', nivel: 3, descripcion: 'Reserva Calibración e Instalación WIM', sistema: 'WIM', cantidad: '1', total: '27887', totalCOP: '122703800', tipo: 'item' },

        // CAPÍTULO 10: TELECOMUNICACIONES (Fibra Óptica) - TOTAL: $7.98M USD
        { item: '10', descripcion: 'SISTEMA TELECOMUNICACIONES (FIBRA ÓPTICA)', id: '10', nivel: 1, tipo: 'capitulo', sistema: 'TELECOM' },
        { item: '10.1', descripcion: 'DETALLE FIBRA Y OBRA CIVIL', id: '10.1', nivel: 2, tipo: 'subcapitulo', sistema: 'TELECOM' },
        { item: '10.1.1', id: '10.1.1', nivel: 3, descripcion: 'Cable Microfibra 48h / 12h (322 km)', sistema: 'TELECOM', cantidad: '322000', total: '275582', totalCOP: '1212560800', tipo: 'item' },
        { item: '10.1.2', id: '10.1.2', nivel: 3, descripcion: 'Microducto 3 vías Reforzado (Suministro)', sistema: 'TELECOM', cantidad: '322000', total: '718060', totalCOP: '3159464000', tipo: 'item' },
        { item: '10.1.3', id: '10.1.3', nivel: 3, descripcion: 'Empalmes, Cajas y Conectores Globales', sistema: 'TELECOM', cantidad: '1', total: '1436753', totalCOP: '6321713200', tipo: 'item' },
        { item: '10.1.4', id: '10.1.4', nivel: 3, descripcion: 'Excavación y Canalización (Asf/And/Bla)', sistema: 'TELECOM', cantidad: '279270', total: '1925036', totalCOP: '8470158400', tipo: 'item' },
        { item: '10.1.5', id: '10.1.5', nivel: 3, descripcion: 'Instalación HDD Cruces Especiales', sistema: 'TELECOM', cantidad: '13920', total: '1042330', totalCOP: '4586252000', tipo: 'item' },
        { item: '10.1.6', id: '10.1.6', nivel: 3, descripcion: 'Soplado y Halado Fibra Óptica', sistema: 'TELECOM', cantidad: '293190', total: '454445', totalCOP: '1999558000', tipo: 'item' },
        { item: '10.1.7', id: '10.1.7', nivel: 3, descripcion: 'Equipos Red L2/L3 y Seguridad Fortinet', sistema: 'TELECOM', cantidad: '97', total: '346351', totalCOP: '1523944400', tipo: 'item' },
        { item: '10.1.8', id: '10.1.8', nivel: 3, descripcion: 'Administración, IVA e Indirectos Telecom', sistema: 'TELECOM', cantidad: '1', total: '1781443', totalCOP: '7838349200', tipo: 'item' }
    ]
};
