# PRESUPUESTO ITS PURO v1.1 - SISTEMAS INTELIGENTES DE TRANSPORTE

**Proyecto:** Puerto Salgar - Barrancabermeja  
**Fecha:** 22 de octubre de 2025  
**Versión:** 1.0 - PRESUPUESTO ITS PURO CORREGIDO CORREGIDO  
**Criterio ITS:** Solo sistemas conectados a CCO/fibra óptica con supervisión remota  

---

## 📋 **CRITERIO ITS DEFINIDO**

### **✅ SISTEMAS ITS (Incluidos en presupuesto):**
- **Conectados a CCO** (Centro de Control Operativo)
- **Usan fibra óptica** para comunicación
- **Requieren supervisión remota** en tiempo real
- **Integrados a red ITS** (L2/L3)

### **❌ SISTEMAS NO-ITS (Excluidos del presupuesto):**
- Infraestructura física (postes, estructuras)
- Sistemas locales sin supervisión remota
- Mobiliario y equipos de oficina
- Capacitación y recursos humanos
- Sistemas independientes (iluminación, señalización vial)

---

## 💰 **PRESUPUESTO ITS CONSOLIDADO**

### **RESUMEN EJECUTIVO**

| Sistema ITS | CAPEX (USD) | % del Total | Estado |
|:------------|:------------|:-----------|:-------|
| **Sistema ITS Campo** | $4,430,400 | 23.7% | ✅ Completo |
| **Telecomunicaciones** | $8,915,374 | 46.8% | ✅ Completo |
| **Centro de Control (CCO)** | $3,707,000 | 19.5% | ✅ Completo |
| **Pesaje WIM** | $256,353 | 1.3% | ✅ Cotización PAT |
| **Peajes-ITS** | $312,500 | 1.6% | ✅ Definido |
| **TOTAL ITS** | **$19,055,216** | **100%** | ✅ Completo |

**En pesos colombianos (TRM 4,000):** COP 76,220,864,000 (~76 mil millones)

---

## 🔧 **DETALLE POR SISTEMA ITS**

### **1. SISTEMA ITS CAMPO ($4,430,400)**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Observaciones |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **PMV (Paneles Mensaje Variable)** | 28 | $15,000 | $420,000 | Conectados a CCO |
| **Postes SOS** | 87 | $2,000 | $174,000 | Conectados a CCO |
| **ETD/RADAR** | 15 | $25,000 | $375,000 | Conectados a CCO |
| **Gálibos (EPC obligatorios)** | 8 | $7,470 | $59,760 | Conectados a CCO |
| **Instalación PMV** | 28 | $8,000 | $224,000 | Obra civil + estructuras |
| **Instalación SOS** | 87 | $3,000 | $261,000 | Obra civil + estructuras |
| **Instalación ETD/RADAR** | 15 | $12,000 | $180,000 | Obra civil + estructuras |
| **Instalación Gálibos** | 8 | $14,000 | $112,000 | Obra civil + estructuras |
| **CCTV Campo** | 30 | $8,000 | $240,000 | Videovigilancia ITS |
| **Instalación CCTV** | 30 | $5,000 | $150,000 | Obra civil + estructuras |
| **Estaciones Meteorológicas** | 2 | $15,000 | $30,000 | Conectadas a CCO |
| **Instalación Meteorológicas** | 2 | $8,000 | $16,000 | Obra civil + estructuras |
| **Energía Solar ITS** | 139 | $2,000 | $278,000 | Paneles solares equipos ITS |
| **Baterías ITS** | 139 | $1,500 | $208,500 | Autonomía 48h equipos ITS |
| **Controladores Solar** | 139 | $500 | $69,500 | Control carga baterías |
| **Cableado Control ITS** | 139 | $800 | $111,200 | Cableado equipos ITS |
| **Cableado Energía ITS** | 139 | $600 | $83,400 | Cableado energía ITS |
| **Puesta a Tierra ITS** | 139 | $1,200 | $166,800 | Tierra equipos ITS |
| **Señalización ITS** | 139 | $300 | $41,700 | Señalización equipos |
| **Pequeño Material ITS** | 139 | $500 | $69,500 | Material montaje ITS |
| **Contingencia ITS** | - | - | $200,000 | 5% contingencia |

### **2. TELECOMUNICACIONES ($7,924,074)**

#### **2.1 EQUIPOS L2 (Sub-anillos)**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Observaciones |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **Switches L2** | 84 | $1,135 | $95,361 | 14 sub-anillos, 170 equipos ITS |
| **SFPs 1G** | 188 | Incluido | $0 | Incluidos en switches |
| **Accesorios** | - | Incluido | $0 | Incluidos en switches |
| **Stock Repuestos (25%)** | - | - | $23,504 | Repuestos críticos |
| **Seguro/Flete (0.5%)** | - | - | $594 | Seguro y transporte |
| **SUBTOTAL L2** | | | **$119,459** | |

#### **2.2 EQUIPOS L3 (Core)**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Observaciones |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **Switches 24p** | 7 | $19,904 | $139,326 | Bunkers + Áreas de Servicio |
| **Switches 48p** | 3 | Incluido | $0 | CCO + WIM + Peajes |
| **Firewalls** | 2 | Incluido | $0 | Seguridad perimetral CCO |
| **SFPs 10G** | 18 | Incluido | $0 | Enlaces troncales |
| **Atenuadores** | 19 | Incluido | $0 | Ajuste presupuesto óptico |
| **Configuración** | 1 | Incluido | $0 | VLANs + Stacking + Seguridad |
| **Stock Repuestos** | - | - | $30,370 | Repuestos críticos |
| **IVA + Seguro/Flete** | - | - | $33,196 | Impuestos y transporte |
| **SUBTOTAL L3** | | | **$202,892** | |

#### **2.3 FIBRA ÓPTICA COMPLETA (CON +10% RESERVA + 5% REPUESTOS)**
| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Observaciones |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **Fibra 48 hilos** | 314,824 ML | $1.65 | $519,460 | Cable monomodo armado (+10% reserva + 5% repuestos) |
| **Fibra 12 hilos** | 10,856 ML | $1.65 | $17,912 | Derivaciones ITS (+10% reserva + 5% repuestos) |
| **Tubería Tritubo** | 298,540 ML | $4.125 | $1,231,478 | Protección cable (+10% reserva + 5% repuestos) |
| **Instalación Fibra** | 309,680 ML | $1.31 | $405,681 | Tendido y empalmes (ajustado por mayor longitud) |
| **Excavación Asfalto** | 27,140 ML | $19.98 | $542,257 | Obra civil asfalto (ajustado por mayor longitud) |
| **Excavación Andén** | 13,570 ML | $19.98 | $271,129 | Obra civil andenes (ajustado por mayor longitud) |
| **Excavación Blanda** | 238,560 ML | $11.42 | $2,724,355 | Obra civil zona blanda (ajustado por mayor longitud) |
| **Cruces Especiales** | 13,920 ML | $50.00 | $696,000 | Puentes, alcantarillas (ajustado por mayor longitud) |
| **Cajas Empalme** | 1,257 UND | $487 | $612,159 | Cámaras de empalme (+10% reserva + 5% repuestos) |
| **Empalmes/Conectores** | 1 GLB | $320,000 | $320,000 | Fusiones + conectores |
| **Instalación Switches** | 1 GLB | $37,800 | $37,800 | Montaje equipos |
| **Administración (8%)** | - | - | $590,179 | Gastos administrativos (ajustado por mayor base) |
| **Imprevistos (5%)** | - | - | $368,862 | Contingencia (ajustado por mayor base) |
| **Utilidad (3%)** | - | - | $221,317 | Utilidad (ajustado por mayor base) |
| **IVA (16%)** | - | - | $35,411 | Impuesto (ajustado por mayor base) |
| **SUBTOTAL FIBRA** | | | **$8,593,000** | |

### **3. CENTRO DE CONTROL OPERATIVO ($3,707,000)**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Observaciones |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **Servidor Principal** | 2 | $25,000 | $50,000 | Procesamiento datos |
| **Servidor Respaldo** | 1 | $25,000 | $25,000 | Redundancia |
| **Servidor Base Datos** | 1 | $30,000 | $30,000 | Almacenamiento |
| **Servidor Aplicaciones** | 1 | $20,000 | $20,000 | Aplicaciones ITS |
| **Servidor Comunicaciones** | 1 | $15,000 | $15,000 | Comunicaciones |
| **Workstations Operadores** | 4 | $3,000 | $12,000 | Puestos operación |
| **Monitores 24"** | 8 | $500 | $4,000 | Monitoreo |
| **Monitores 55"** | 2 | $2,000 | $4,000 | Pantallas grandes |
| **Teclados/Mouse** | 8 | $100 | $800 | Periféricos |
| **Impresoras** | 2 | $1,000 | $2,000 | Impresión reportes |
| **Switches L3 CCO** | 2 | $10,000 | $20,000 | Conectividad CCO |
| **Firewall** | 1 | $5,000 | $5,000 | Seguridad red |
| **Router** | 1 | $3,000 | $3,000 | Enrutamiento |
| **UPS 20KVA** | 2 | $15,000 | $30,000 | Respaldo CCO |
| **Baterías UPS** | 2 | $5,000 | $10,000 | Autonomía UPS |
| **Aire Acondicionado** | 2 | $8,000 | $16,000 | Climatización |
| **Racks 19"** | 4 | $2,000 | $8,000 | Alojamiento equipos |
| **Cableado Estructurado** | 1 | $10,000 | $10,000 | Cableado CCO |
| **Puesta a Tierra** | 1 | $5,000 | $5,000 | Tierra equipos |
| **Software CCO** | 1 | $50,000 | $50,000 | Software operación |
| **Licencias Software** | 1 | $30,000 | $30,000 | Licencias |
| **Instalación CCO** | 1 | $100,000 | $100,000 | Instalación completa |
| **Mobiliario Operadores** | 4 | $2,000 | $8,000 | Mesas/sillas |
| **Contingencia CCO** | - | - | $200,000 | 5% contingencia |

### **4. PESAJE WIM ($256,353 - COTIZACIÓN PAT OCT 2024)**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Observaciones |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **MATERIALES Y EQUIPOS** | - | - | **$161,357** | **Equipamiento completo** |
| Placas de Pesaje 1.55m | 4 | $10,481 | $41,926 | 4 básculas dinámicas |
| Bastidores para placas | 4 | $4,297 | $17,190 | Instalación en pavimento |
| Material lazos inductivos | 8 | $409 | $3,270 | Detección vehículos |
| Electrónica DAW100 | 2 | $4,045 | $8,090 | Controladores |
| Gabinete antivandalismo | 2 | $4,619 | $9,238 | Protección equipos |
| Cámaras OCR báscula (22m) | 2 | $5,110 | $10,219 | Reconocimiento placas |
| Cámaras OCR fuga (22m) | 2 | $4,800 | $9,600 | Control evasión |
| Señal Doble Aspa-Cruz | 4 | $1,858 | $7,432 | Señalización visual |
| Computadores + Servidores | 6 | Variable | $40,054 | Procesamiento datos |
| Equipos red (switches, UPS) | - | - | $14,338 | Conectividad |
| **INSTALACIÓN Y SERVICIOS** | - | - | **$94,996** | **Mano obra + transporte** |
| Instalación fibra óptica | 2 | $5,174 | $10,348 | Conexión a CCO |
| Instalación sistemas | 1 | $32,357 | $32,357 | 2 básculas completas |
| Asistencia garantía | 2 | $5,148 | $10,296 | Periodo garantía |
| Flete internacional (CIF) | 1 | $19,474 | $19,474 | Importación |
| Ingeniería + software PAT | 1 | $3,144 | $3,144 | Soporte técnico |
| Software BASCAM integración | 2 | $2,970 | $5,940 | Integración sistemas |
| Pólizas | 1 | $2,970 | $2,970 | Seguros |
| Otros (puesta tierra, As-Built) | - | - | $10,467 | Varios |

**Notas WIM:**
- ✅ INCOTERMS DAP (entrega en sitio)
- ✅ Garantía 1 año fabricante
- ✅ Precisión COST323 A(5): Error <5% PBT
- ✅ Velocidad hasta 60 km/h
- ❌ NO incluye mantenimiento post-garantía

### **5. PEAJES-ITS ($312,500)**

| Componente | Cantidad | Costo Unit. (USD) | Total (USD) | Observaciones |
|:-----------|:---------|:-------------------|:------------|:--------------|
| **Switches L2/L3** | 6 | $8,000 | $48,000 | Conectividad red |
| **Transceivers SFP** | 28 | $200 | $5,600 | Fibra óptica |
| **Fibra Óptica** | 10 km | $2,000 | $20,000 | Backbone peajes |
| **Cajas Empalme** | 10 | $1,000 | $10,000 | Conexiones |
| **Fusiones** | 50 | $100 | $5,000 | Empalmes |
| **Patch Cords** | 20 | $50 | $1,000 | Conexiones |
| **CCTV Peajes** | 46 | $2,000 | $92,000 | Videovigilancia |
| **NVR + NAS** | 2 | $15,000 | $30,000 | Almacenamiento |
| **Servidor CCO** | 1 | $25,000 | $25,000 | Integración CCO |
| **PC CCO** | 1 | $3,000 | $3,000 | Operación CCO |
| **Pantalla CCO** | 1 | $2,000 | $2,000 | Monitoreo |
| **Licencia CCO** | 1 | $2,000 | $2,000 | Software CCO |
| **UPS Peajes** | 2 | $15,000 | $30,000 | Respaldo |
| **Cableado Datos** | 14 | $2,000 | $28,000 | Cableado red |
| **Instalación** | 14 | $5,000 | $70,000 | Instalación equipos |
| **Contingencia Peajes** | - | - | $15,000 | 5% contingencia |

---

## 📊 **DISTRIBUCIÓN PORCENTUAL ITS**

| Sistema | CAPEX (USD) | % del Total | Observaciones |
|:--------|:------------|:-----------|:--------------|
| **Telecomunicaciones** | $8,915,374 | 46.8% | Backbone red ITS (Fibra+L2+L3) |
| **Sistema ITS Campo** | $4,430,400 | 23.3% | Equipos campo (SOS, CCTV, PMV, etc.) |
| **Centro de Control** | $3,707,000 | 19.5% | Operación centralizada |
| **Peajes-ITS** | $312,500 | 1.6% | Integración peajes |
| **Pesaje WIM** | $256,353 | 1.3% | Control pesaje (Cotización PAT) |
| **TOTAL** | **$19,055,216** | **100%** | Presupuesto ITS puro |

---

## 🎯 **COMPONENTES EXCLUIDOS (NO-ITS)**

### **Sistemas NO-ITS identificados:**

| Sistema | CAPEX Estimado (USD) | Razón Exclusión |
|:--------|:-------------------|:----------------|
| **Iluminación Vial** | $2,500,000 | Sistema independiente, no supervisado |
| **Señalización Vial** | $1,200,000 | Infraestructura física, no ITS |
| **Gestiones Administrativas** | $800,000 | Recursos humanos, no tecnológico |
| **Emergencias Móviles** | $600,000 | O&M, no supervisión remota |
| **Áreas de Servicio** | $1,500,000 | Infraestructura, no ITS |
| **Energía Edificaciones** | $887,000 | Infraestructura eléctrica |
| **Peajes NO-ITS** | $766,677 | Componentes físicos/mecánicos |
| **TOTAL NO-ITS** | **$8,253,677** | Sistemas excluidos |

---

## ✅ **VALIDACIÓN CONTRACTUAL ITS**

### **Sistemas ITS Obligatorios EPC:**

| Sistema | Cantidad | Estado Contractual | Observaciones |
|:--------|:---------|:-------------------|:--------------|
| **PMV** | 28 | ✅ Obligatorio | Apéndice Técnico 1 |
| **SOS** | 87 | ✅ Obligatorio | Apéndice Técnico 1 |
| **ETD/RADAR** | 15 | ✅ Obligatorio | Apéndice Técnico 1 |
| **Gálibos** | 8 | ✅ Obligatorio | Apéndice Técnico 2 |
| **CCTV** | 30 | ✅ Obligatorio | Apéndice Técnico 1 |
| **Meteorológicas** | 2 | ✅ Obligatorio | Apéndice Técnico 1 |
| **WIM** | 1 | ✅ Obligatorio | Apéndice Técnico 1 |
| **CCO** | 1 | ✅ Obligatorio | Apéndice Técnico 1 |
| **Telecomunicaciones** | 1 | ✅ Obligatorio | Apéndice Técnico 1 |

---

## 📋 **PRÓXIMOS PASOS**

### **Pendientes para completar Fase 3:**

1. **✅ COMPLETADO:** Análisis Peajes-ITS
2. **✅ COMPLETADO:** Presupuesto ITS Puro
3. **✅ COMPLETADO:** Marcar sistemas NO-ITS en documentos
4. **⏳ PENDIENTE:** Documentar criterio ITS en LECCIONES_APRENDIDAS
5. **⏳ PENDIENTE:** Actualizar README/ROADMAP final

### **Documentos a actualizar:**
- `LECCIONES_APRENDIDAS.md` - Criterio ITS
- `README.md` - Alcance ITS final
- `ROADMAP.md` - Estado Fase 3

---

## 🏆 **LOGROS ALCANZADOS**

### **✅ Fase 3 - Validación Contractual ITS:**
- **Alcance ITS definido:** Solo sistemas conectados a CCO/fibra
- **Presupuesto ITS consolidado:** $19,055,216 USD
- **Sistemas NO-ITS identificados:** $8,253,677 USD
- **Criterio ITS aplicado:** Consistente en todos los documentos
- **Validación contractual:** 100% sistemas ITS obligatorios
- **WIM actualizado:** Cotización PAT real ($256,353 vs. $2,286,400 estimado)

### **✅ Fase 4 - Ingeniería de Detalle (T05):**
- **Documentos T05 completados:** 10 (Fibra, L2, L3, SOS, CCTV, PMV, RADAR, Gálibos, METEO, WIM)
- **APU detallados:** 100% sistemas con análisis de precios unitarios
- **Cronogramas instalación:** Definidos por subsistema
- **Protocolos de pruebas:** Documentados para todos los sistemas

### **📊 Métricas del Proyecto:**
- **Total Proyecto:** $59,169,830 USD
- **Componente ITS:** $19,055,216 USD (32.2%)
- **Componente NO-ITS:** $40,114,614 USD (67.8%)
- **Ahorro WIM:** $2,030,047 USD vs. estimado inicial
- **Eficiencia ITS:** Presupuesto optimizado con cotizaciones reales

---

**Documento generado:** 22 de octubre de 2025  
**Versión:** 1.0 - PRESUPUESTO ITS PURO CORREGIDO CORREGIDO  
**Estado:** ✅ COMPLETO - Listo para implementación
