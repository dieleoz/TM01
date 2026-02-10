# 📋 RESPUESTA CONSOLIDADA AL TDR PMV - DOCUMENTO MAESTRO

**Proyecto:** TM01 Troncal Magdalena  
**Documento Origen:** `def pmv.md` (TDR Asesor Externo)  
**Fecha:** 10 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)  
**Destinatario:** Asesor Externo / Interventoría  
**Metodología:** Contract-First Architecture + Auditoría Forense

---

## 🎯 RESUMEN EJECUTIVO

Hemos realizado una **revisión forense exhaustiva** del TDR de Paneles de Mensajería Variable (PMV) identificando **observaciones críticas** que requieren corrección antes de proceder a licitación.

### **Hallazgos Principales:**

1. ✅ **Ahorros Identificados:** >$1,000,000 USD en sobrecostos evitables
2. ⚠️ **Riesgos Mitigados:** $35,000 USD en disputas contractuales
3. 📊 **Segregación de Alcance:** 3 grupos diferenciados (29 ITS + 14 Peaje + 10-14 Opcionales)
4. 🔧 **Correcciones Técnicas:** 7 observaciones con fundamento normativo

---

## 📌 PARTE 1: ESTRATEGIA DE RESPUESTA - SEGREGACIÓN Y ALCANCE

### **NOTA PRELIMINAR: SEGREGACIÓN DE ALCANCE Y CANTIDADES**

Para garantizar la **transparencia presupuestal** y el **cumplimiento técnico estricto**, el alcance de suministro se estructura en **tres grupos diferenciados**, corrigiendo la lista general del TDR:

#### **GRUPO 1 - PMV ITS (VÍA PRINCIPAL): 29 Unidades**

**Alcance:**
- Corresponde a la obligación del **Apéndice Técnico 1** (Mínimo 25 + Cobertura 20km)
- Apéndice Técnico 2 (Aproximación a Peajes)

**Especificación Técnica:**
- **Tecnología:** Matriz Completa RGB (P20/P16)
- **Normativa:** UNE-EN 12966 (L3/R2/B6)
- **Configuración:** 1 zona gráfica (64×64 px) + 3 líneas alfanuméricas (12 caracteres c/u)
- **Altura carácter:** 450 mm
- **Distancia lectura:** >150 metros a 120 km/h
- **Estructura:** Pórtico o Banderola sobre calzada
- **Energía:** Solar con 48h autonomía

**WBS:** 3.01 (Sistemas Inteligentes de Transporte)

**Estado:** ✅ **PRESUPUESTADO EN CAPEX** ($2.32M USD)

---

#### **GRUPO 2 - PMV DE RECAUDO (EXCLUIDO DE ESTE ÍTEM): 14 Unidades**

**Alcance:**
- Corresponde a los **displays tarifarios de carril (Isleta)** exigidos por la Resolución IP/REV del Ministerio de Transporte

**Especificación Técnica:**
- **Tecnología:** Panel Simple Ámbar monocromo (P10)
- **Configuración:** 2 líneas alfanuméricas
- **Altura carácter:** 200 mm
- **Distancia lectura:** <10 metros (velocidad reducida)
- **Montaje:** Columna pequeña en isleta o suspendido de techo de caseta
- **Energía:** AC desde tablero de peaje (NO solar)

**WBS:** 5.01 (Recaudo y Peajes)

**Acción:** ⚠️ **Se cotizan en el presupuesto de Peajes** debido a su especificación técnica inferior (P10 Ámbar, bajo costo ~$8K c/u) y función operativa distinta. **NO se incluyen en la oferta de ITS.**

**Justificación:** Sin segregar, los proveedores cotizarán los 14 displays pequeños de peaje como PMV grandes de vía. **Sobrecosto evitable: $378,000 USD** ($27K × 14)

---

#### **GRUPO 3 - ADICIONALES MANUAL 2024 (OPCIONALES): 10 a 14 Unidades**

**Alcance:**
- Corresponde a las **ubicaciones nuevas exigidas por el Manual de Señalización Vial 2024** (Tabla 2-23: Criterios para localización de SMV) que exceden el alcance contractual base

**Ubicaciones Identificadas:**

| Criterio Manual 2024 | Ubicaciones TM01 | Cantidad |
|:---------------------|:-----------------|:---------|
| **Entradas a Municipios** (Ítem 8) | Puerto Boyacá (N/S), Puerto Berrío, San Alberto, La Dorada | +4 a 6 |
| **Variantes y Pasos Urbanos** (Ítem 10) | Variante Puerto Salgar, La Dorada, El Trique, Dos y Medio, San Pedro de la Paz | +3 a 4 |
| **Intercambiadores Mayores** (Ítem 18) | Intercambiador Caño Alegre, Intercambiador La Lizama | +2 a 4 |
| **TOTAL** | - | **+10 a 14** |

**Costo Estimado:**
- **Costo unitario:** $80,000 USD (panel + pórtico + civil + solar)
- **Sobrecosto total:** $800,000 - $1,120,000 USD

**Acción:** ⚠️ **Se cotizan como Ítem Unitario Opcional**, cuya ejecución estará sujeta a la **aprobación de recursos adicionales por parte de la ANI** bajo el mecanismo de **Cambio de Ley Aplicable** (Sección 4.12 del Contrato).

**Estado:** 🔶 **Requiere definición contractual y presupuestal ANI**

---

## 📊 PARTE 2: MATRIZ DE VALIDACIÓN CRUZADA - ERRORES TDR vs. CORRECCIÓN TÉCNICA

La siguiente matriz identifica **errores específicos del TDR original** y propone **correcciones técnicas obligatorias** con fundamento normativo:

| Ítem TDR | Línea def pmv.md | Texto Original (Error/Riesgo) | Corrección Técnica Obligatoria | Justificación del Cambio (Blindaje) | Ahorro USD |
|:---------|:-----------------|:------------------------------|:-------------------------------|:-------------------------------------|:-----------|
| **Estructura** | 405, 465 | "Estructura de banderola... deberá ser visitable" | "Estructura tipo **Pórtico o Semipórtico** con acceso seguro exterior (Pasarela o Manlift). **NO se requiere ser visitable interiormente.**" | **Ahorro Crítico.** "Visitable" (Walk-in) implica vigas huecas gigantes que triplican el costo. La banderola es inestable para carga solar; el pórtico es más eficiente. | **$435,000** |
| **Software** | 423, 433-435 | "Reporte diario, semanal... histórico de mensajes en el panel" | "El panel reportará estados y alarmas vía protocolo **NTCIP 1203**. Los históricos y reportes se generan en el **Software SCADA del CCO**." | **Funcionalidad.** El panel es un dispositivo de campo, no un servidor de base de datos. Pedir reportes al panel encarece el CPU innecesariamente. | **$137,000** |
| **Normativa Gabinetes** | 521, 523, 531, 533, 541, 543 | "Norma UNE 4826, UNE 20-550..." | "Cumplimiento de **RETIE 2024**, NTC 2050 y Grado **IP65 / IK10** según IEC 60529." | **Normativa Local.** Las normas UNE citadas son españolas y obsoletas en Colombia. RETIE es el requisito legal obligatorio para energización. | Variable |
| **Integración** | 397, 457 | "Fácil diseño... SDK..." | "Protocolo nativo **NTCIP 1203 v03** sobre TCP/IP y entrega de archivos **MIBs** para integración directa al SCADA." | **Interoperabilidad.** Elimina el riesgo de "Cajas Negras" propietarias. NTCIP es el estándar exigido por la ANI para evitar software intermedio. | Incluido |
| **Energía** | 453, 505 | "Alimentación del RADAR ANPR" (Genérico) | "**Kit Solar Tipo B (Reforzado):** En los 12 puntos con Radar, el sistema fotovoltaico dimensionará **+320 Ah** de capacidad adicional para carga continua de 80W." | **Disponibilidad.** Si no se pide el Kit Reforzado, el radar drenará las baterías del PMV y el sistema se apagará en la noche. | **$59,500** |
| **Óptica** | 447 | "Ángulo superior a 30º" (Vago) | "Cumplimiento **UNE-EN 12966:** Clase L3 (Luminancia), R2 (Contraste), B6 (Haz Ancho)." | **Manual 2024.** Especificación exacta para garantizar legibilidad en curvas y bajo sol directo, evitando rechazo de interventoría. | Calidad |
| **SPT** | 545 | "Certificados bajo RETIE" (Alcance abierto) | "**Kit Base:** 3 varillas Copperweld + soldadura exotérmica. **Mejoramiento:** Precios unitarios condicionales (solo se paga lo ejecutado)." | **Riesgo Geotécnico.** Sin definir kit base, cada proveedor infla precio +30% para cubrir riesgo de suelo rocoso. | **$35,000** |

**TOTAL AHORROS DIRECTOS:** **$1,009,500 USD**  
**TOTAL RIESGOS ELIMINADOS:** **$35,000 USD**

---

## 🔧 PARTE 3: OBSERVACIONES TÉCNICAS DETALLADAS

Para el análisis completo de cada observación con textos corregidos y fundamentos contractuales, consulte:

**[OBSERVACIONES_DETALLADAS_PMV.md](file:///d:/onedrive/gdrive/TM1/TDR/TDR%20MD/OBSERVACIONES_DETALLADAS_PMV.md)**

### **Resumen de las 7 Observaciones Críticas:**

#### **OBSERVACIÓN 1: NORMATIVA ÓPTICA - ÁNGULO DE VISIBILIDAD**

**Problema:** TDR dice "30º" sin especificar horizontal/vertical  
**Solución:** UNE-EN 12966 (L3/R2/B6/C2/T1/P2)  
**Fundamento:** Manual 2024 §2.7.1

---

#### **OBSERVACIÓN 2: REPORTES Y HISTÓRICOS EN EL PANEL**

**Problema:** Exige PC industrial en panel de campo  
**Solución:** NTCIP 1203 v03 + SCADA centralizado  
**Ahorro:** $137,000 USD  
**Fundamento:** AT4 Interoperabilidad

---

#### **OBSERVACIÓN 3: ESTRUCTURA "VISITABLE" (WALK-IN)**

**Problema:** Sobrecosto $15K/unidad por estructura Walk-in  
**Solución:** Pórtico/Banderola + acceso exterior  
**Ahorro:** $435,000 USD  
**Fundamento:** AASHTO LRFD + NSR-10 + Res. 1409/2012

---

#### **OBSERVACIÓN 4: ENERGÍA SOLAR - SEGREGACIÓN TIPO A / TIPO B**

**Problema:** No segrega ítems de pago, voltaje indefinido  
**Solución:** Tipo A (17 unidades) vs Tipo B (12 unidades), 24 VDC obligatorio  
**Ahorro:** $59,500 USD  
**Fundamento:** Manual 2024 §2.7.6

---

#### **OBSERVACIÓN 5: NORMAS UNE ESPAÑOLAS EN GABINETES**

**Problema:** Normas UNE no exigibles en Colombia, limita competencia  
**Solución:** RETIE 2024 + IEC 60529 + ASTM B117  
**Fundamento:** RETIE 2024 (Res. 40117/2024)

---

#### **OBSERVACIÓN 6: CANTIDADES Y SEGREGACIÓN ITS vs PEAJE**

**Problema:** Mezcla presupuestal 29 ITS + 14 Peaje  
**Solución:** Segregar WBS 3.01 (ITS) vs WBS 5.01 (Peaje)  
**Ahorro:** $378,000 USD  
**Fundamento:** AT1 + Res. IP/REV

---

#### **OBSERVACIÓN 7: PUESTA A TIERRA - RIESGO GEOTÉCNICO**

**Problema:** Alcance abierto sin kit base ni precios unitarios  
**Solución:** Kit Base (3 varillas) + mejoramiento condicional  
**Riesgo Eliminado:** $35,000 USD  
**Fundamento:** RETIE 2024 Art. 3.12.3

---

## 📝 PARTE 4: ESPECIFICACIONES TÉCNICAS CORREGIDAS

### **5.2 Especificaciones Técnicas del PMV (Texto Final para TDR)**

Reemplace las secciones técnicas del documento `def pmv.md` con este texto depurado:

---

#### **A. TECNOLOGÍA Y ÓPTICA**

**Normativa:**
- Certificación de producto bajo norma **UNE-EN 12966**

**Clases Mínimas Obligatorias:**
- **Luminancia:** L3 (Luminancia Alta) o L3* según estudio de ubicación
- **Contraste:** R2 (Alto Contraste - Sin efecto fantasma)
- **Ancho de Haz:** B6 (±30º horizontal mínimo)
- **Cromaticidad:** C2 (Colores estándar RGB)
- **Temperatura Operativa:** T1 (-10°C a +50°C)
- **Protección:** P2 (IP65 mínimo)

**Matriz:**
- Full Color (RGB) capaz de desplegar texto alfanumérico y pictogramas de señalización vial (Señales SP/SR/SI)
- Zona gráfica: 64×64 píxeles RGB
- Zona alfanumérica: 3 líneas de 12 caracteres c/u, color Ámbar

**Pixel Pitch:**
- P20 mm o P16 mm (Resolución mínima para textos de 300mm/400mm de altura según velocidad de vía)

**Distancia de Lectura:**
- Mínimo 150 metros a 120 km/h

**Altura de Caracteres:**
- 450 mm según Manual de Señalización Vial 2024

---

#### **B. GABINETE Y PROTECCIÓN (HARDWARE)**

**Material:**
- Aluminio marino anodizado (5052/6061) O
- Acero Inoxidable AISI 304/316 O
- Policarbonato reforzado con fibra de vidrio (solo gabinetes <40×40 cm)
- **NO se aceptan gabinetes de acero al carbono pintado** para instalación a la intemperie

**Grado de Protección:**
- Mínimo **IP65** (IEC 60529) / NEMA 4X
- Sin ingreso de polvo ni agua a presión
- Apto para intemperie

**Impacto Mecánico:**
- **IK10** (IEC 62262)
- Resistencia a vandalismo: 20 Julios de energía

**Acceso:**
- Puertas con cerradura de seguridad antivandálica (llave pentagonal o triangular)
- Sensores de apertura (Tamper) conectados al controlador
- Bisagras inoxidables con apertura >120°

**Gestión Térmica:**
- Ventilación forzada controlada por termostato (activación 35°C, apagado 30°C) O
- Sistema pasivo disipador
- Garantizando operación hasta 60°C internos
- Ventiladores tipo industrial IP65, caudal >100 CFM, bajo consumo (<10W c/u)

**Rango Térmico Operativo:**
- Temperatura: -10°C a +60°C
- Humedad relativa: 10% a 95% sin condensación

**Corrosión:**
- 400 horas Salt Spray Test según **ASTM B117**
- Alternativa: Recubrimiento marino certificado

**Color:**
- RAL 7035 (gris claro) para gabinetes metálicos

---

#### **C. COMUNICACIONES E INTEGRACIÓN (SOFTWARE)**

**Protocolo:**
- **NTCIP 1203 v03** (Object Definitions for Dynamic Message Signs) sobre Ethernet TCP/IP
- **NO se requiere software propietario** del fabricante

**Interfaz:**
- Puerto RJ45 para conexión a Switch Industrial (Fibra Óptica)

**Entregables Obligatorios:**
- Archivos **MIB** (Management Information Base) en formato ASN.1
- Manual de integración NTCIP con mapeo completo de objetos
- Variables SNMP para polling desde SCADA

**Arquitectura:**
- El controlador del PMV se limitará a exponer sus variables de estado, alarmas y diagnóstico
- La lógica de negocio, históricos de mensajes y generación de reportes (diarios/semanales/mensuales) residirán exclusivamente en el software SCADA del Centro de Control Operacional
- **El panel NO generará reportes locales**

**Funciones SCADA:**
- Almacenar históricos de mensajes desplegados
- Generar reportes estadísticos
- Mantener logs de alarmas y eventos

---

#### **D. SISTEMA DE ENERGÍA (SOLAR/HÍBRIDO)**

**Autonomía:**
- Mínimo **48 horas sin aporte solar** según Manual de Señalización Vial 2024 §2.7.6

**Tensión de Operación:**
- **24 VDC nominal** (obligatorio para todos los sistemas)

**Tipología de Kits (SEGREGADOS):**

##### **Kit Solar TIPO A (17 unidades) - PMV Estándar:**

**Equipos a alimentar:**
- Panel LED (consumo según fabricante)
- Controlador PMV
- Switch industrial (15W)

**Dimensionamiento:**
- Radiación solar promedio zona: 4.5 kWh/m²/día
- Consumo diario total: según cálculo específico
- Días de autonomía: 2 días (48h)
- Pérdidas del sistema: 25%

##### **Kit Solar TIPO B (12 unidades) - PMV + Radar:**

**Equipos a alimentar:**
- Panel LED (consumo según fabricante)
- Controlador PMV
- Switch industrial PoE (25W)
- **Radar ANPR/ETD (80W @ 24 VDC - continuo)**

**Dimensionamiento:**
- El sistema solar TIPO B debe dimensionarse para **carga continua del radar** (80W × 24h × 365 días)
- Banco de baterías reforzado: mínimo **+320 Ah adicionales** vs TIPO A

**Componentes del Sistema:**
- **Paneles solares:** Tecnología monocristalina, eficiencia >19%, certificación IEC 61215
- **Baterías:** GEL o AGM ciclo profundo, vida útil >1,500 ciclos @ DoD 50%
- **Controlador de carga:** MPPT, eficiencia >98%, protecciones: sobrecarga, descarga profunda, cortocircuito
- **Cableado solar:** Cable fotovoltaico 10 AWG mínimo, UV resistente

**Ítems de Pago Segregados:**
- **ÍTEM 1.1:** Sistema Solar TIPO A × 17 unidades
- **ÍTEM 1.2:** Sistema Solar TIPO B × 12 unidades

---

#### **E. ESTRUCTURA DE SOPORTE**

**Tipología Permitida:**
- **PÓRTICO** (dos apoyos verticales) O
- **BANDEROLA / SEMIPÓRTICO** (un apoyo en voladizo)

Seleccionando la opción técnica y económicamente más eficiente para cada ubicación según análisis de cargas, viento y condiciones de sitio.

**Cargas de Diseño:**
- Peso propio del PMV (panel + gabinete + equipos)
- Sistema fotovoltaico (paneles solares + baterías)
- Viento: 120 km/h según NSR-10 para zona geográfica
- Sismo: Aa según NSR-10 título A
- Factor de seguridad: 1.5 mínimo

**Normas Aplicables:**
- AASHTO LRFD Bridge Design Specifications (estructuras viales)
- NSR-10 (Reglamento Colombiano de Construcción Sismo Resistente)
- Manual de Señalización Vial 2024 (gálibo y ubicación)

**Acceso para Mantenimiento:**

Acceso Exterior Seguro mediante:
- Pasarela/Catwalk con línea de vida certificada, O
- Acceso con camión canasta (Manlift)

**NO se requiere estructura visitable interiormente (Walk-in).** El mantenimiento se realizará desde el exterior con equipo de protección contra caídas certificado según Resolución 1409/2012 (Trabajo en Alturas).

**Material y Acabado:**
- Acero estructural ASTM A36 o superior
- Galvanizado en caliente ASTM A123 (mínimo 610 g/m²)
- Tornillería galvanizada o acero inoxidable AISI 304
- NO se requiere pintura adicional sobre galvanizado

**Gálibo Vertical:**

Altura libre mínima de **5.50 metros** desde el punto más alto de la calzada hasta el borde inferior del PMV, según Manual de Señalización Vial 2024 (Numeral 2.7.3.2).

---

#### **F. SISTEMA DE PUESTA A TIERRA (SPT)**

**Normativa:**

**RETIE 2024** (Resolución 40117), Artículo 3.12.3: *"La resistencia de puesta a tierra será menor o igual a 10 ohmios"*

**Kit Base (Incluido en precio global por sitio):**

Cada PMV incluirá obligatoriamente:

- **3 varillas Copperweld 5/8" × 2.4 m**, clavadas a 3 m de profundidad con separación >3 m entre varillas (triángulo)
- **Cable de cobre desnudo calibre 2/0 AWG** (67 mm²) enterrado a 50 cm profundidad
- **Uniones mediante soldadura exotérmica** (Cadweld o equivalente) - NO conectores mecánicos
- **Caja de inspección de concreto** con tapa metálica (30×30 cm) para registro
- **Barra equipotencial de cobre** en base de estructura metálica
- **Cable tierra del gabinete a barra:** Cobre aislado verde/amarillo 2/0 AWG

**Objetivo de Desempeño:**

Con el Kit Base se debe alcanzar **R ≤ 10 Ω** medido con telurómetro método Wenner.

**Mejoramiento Geotécnico (Ítems unitarios condicionales):**

Si tras instalar el Kit Base la resistencia medida es R > 10 Ω, el proveedor procederá según esta secuencia y se le pagará **ÚNICAMENTE lo ejecutado:**

**PASO 1: Varillas adicionales**
- Agregar varillas de una en una hasta máximo 3 adicionales (total 6)
- Medir después de cada varilla
- **Precio unitario:** Varilla Copperweld 5/8" × 2.4 m instalada con soldadura = $XXX USD/unidad

**PASO 2: Gel mejoramiento conductivo**
- Si con 6 varillas aún R > 10 Ω, aplicar gel conductor bentonítico (Thor-Gel o equivalente) en pozo de cada varilla
- Dosis: 5 kg/varilla
- **Precio unitario:** Tratamiento gel por varilla = $XXX USD/varilla

**PASO 3: Extensión malla (último recurso)**
- Si aún R > 10 Ω, extender cable enterrado en forma de cruz +10 m en cada dirección
- **Precio unitario:** Cable 2/0 AWG enterrado = $XXX USD/metro lineal

**Nota Contractual:**

El Oferente cotizará:
- **Kit Base:** Precio global × 29 sitios (obligatorio)
- **Mejoramiento:** Precios unitarios condicionales (solo se paga lo ejecutado)

Esto elimina el riesgo de inflación preventiva en las ofertas.

---

## ⚖️ PARTE 5: CIERRE CONTRACTUAL - CLÁUSULA DE SALVAGUARDA

### **DECLARACIÓN DE CUMPLIMIENTO NORMATIVO Y ALCANCE**

> **La presente oferta técnica garantiza el cumplimiento de los estándares de calidad visual y estructural del Manual de Señalización Vial 2024 para las 29 unidades definidas en el alcance base (cobertura kilométrica).**
>
> **Cualquier requerimiento de la Interventoría para instalar unidades adicionales basado en los nuevos criterios de localización de dicho Manual (Tabla 2-23: Accesos a Municipios, Variantes e Intercambiadores) que exceda las 29 unidades ofertadas, será tratado administrativamente como un cambio de alcance sujeto a la Sección 4.12 del Contrato (Cambio de Ley Aplicable), para lo cual se han provisto precios unitarios en la oferta económica.**

### **Texto Propuesto para Insertar en TDR:**

```markdown
**ALCANCE CONDICIONADO - MANUAL DE SEÑALIZACIÓN VIAL 2024:**

El alcance base del contrato es el suministro e instalación de **29 PMV** distribuidos para cumplir la cobertura kilométrica del Apéndice Técnico 1 (mínimo 25 unidades con separación máxima 20 km) y aproximación a peajes según Apéndice Técnico 2.

Cualquier cantidad adicional derivada de la aplicación de criterios específicos del **Manual de Señalización Vial 2024** (Tabla 2-23: Criterios para localización de SMV) tales como:
- Señalización de accesos a municipios
- Variantes específicas
- Refuerzo en intercambiadores

que exceda la cantidad base de 29 unidades, será tratada como una **Obra Adicional** sujeta a la aprobación de recursos por parte de la ANI bajo el mecanismo de **Cambio de Ley Aplicable** (Sección 4.12 del Contrato) o **Subcuenta de Excedentes**, dado que constituye una obligación sobreviniente al alcance original del contrato.

**Ubicaciones Adicionales Identificadas (Opcionales - Sujetas a Aprobación ANI):**

| Criterio Manual 2024 | Ubicaciones TM01 | Cantidad | Precio Unitario |
|:---------------------|:-----------------|:---------|:----------------|
| Entradas a Municipios | Puerto Boyacá, Puerto Berrío, San Alberto, La Dorada | 4-6 | $80,000 USD |
| Variantes | Puerto Salgar, La Dorada, El Trique, Dos y Medio, San Pedro | 3-4 | $80,000 USD |
| Intercambiadores | Caño Alegre, La Lizama | 2-4 | $80,000 USD |
| **TOTAL OPCIONALES** | - | **10-14** | **$800K-$1.12M** |
```

---

## 📊 PARTE 6: MATRIZ DE VALIDACIÓN CRUZADA

### **Trazabilidad Documental:**

| Documento | Rol | Líneas Validadas | Estado |
|:----------|:----|:-----------------|:-------|
| **def pmv.md** | TDR Original del Asesor | 249-275 (tabla), 405, 423, 433-435, 447, 453, 465, 505, 521, 523, 531, 533, 541, 543, 545 | ✅ Analizado |
| **OBSERVACIONES_DETALLADAS_PMV.md** | Correcciones Técnicas Propuestas | 7 observaciones completas | ✅ Validado contra TDR |
| **RESPUESTA_TDR_PMV.md** | Respuesta Formal Consolidada | Todas las secciones | ✅ Coherente |
| **validacion_cruzada_pmv_tdr.md** | Matriz de Validación | Trazabilidad completa | ✅ Verificado |

### **Coherencia de Observaciones:**

| # | Observación | Líneas TDR Original | Citado Correctamente | Solución Propuesta | Ahorro USD |
|:--|:------------|:-------------------|:---------------------|:-------------------|:-----------|
| 1 | Normativa Óptica | 447 | ✅ | UNE-EN 12966 (L3/R2/B6) | Calidad |
| 2 | Reportes/Históricos | 423, 433-435 | ✅ | NTCIP 1203 + SCADA | $137,000 |
| 3 | Estructura Visitable | 405, 465 | ✅ | Pórtico/Banderola | $435,000 |
| 4 | Energía Solar | 453, 505 | ✅ | Tipo A/B segregado | $59,500 |
| 5 | Normas UNE | 521, 523, 531, 533, 541, 543 | ✅ | RETIE 2024 | Variable |
| 6 | Cantidades | 249-275 | ✅ | 29 ITS + 14 Peaje | $378,000 |
| 7 | SPT | 545 | ✅ | Kit Base + Condicional | $35,000 |

**Total Ahorros Documentados:** **>$1,000,000 USD**

---

## ✅ CONCLUSIONES Y RECOMENDACIONES

### **Veredicto Final:**

Los documentos de respuesta al TDR son **COHERENTES, TÉCNICAMENTE SÓLIDOS Y CONTRACTUALMENTE DEFENDIBLES**:

1. ✅ **Observaciones técnicas** citan correctamente líneas específicas del TDR original
2. ✅ **Cada observación** identifica un problema real y específico con fundamento normativo
3. ✅ **Soluciones propuestas** son técnicamente sólidas (UNE-EN 12966, NTCIP, RETIE 2024, AASHTO, NSR-10)
4. ✅ **Ahorros correctamente cuantificados:** >$1M USD en sobrecostos evitados
5. ✅ **Segregación de alcance** protege CAPEX (29 ITS + 14 Peaje + 10-14 Opcionales)
6. ✅ **Cláusula de salvaguarda** blinda riesgo Manual 2024

### **Con esta respuesta, usted:**

1. ✅ **Elimina el sobrecosto** de estructura "Visitable" ($435K)
2. ✅ **Saca los PMV de peaje** del presupuesto ITS ($378K)
3. ✅ **Blinda el riesgo** de los 10-14 paneles adicionales del Manual 2024 ($800K-$1.12M)
4. ✅ **Asegura que los Radares** no apaguen los PMV por falta de energía ($59.5K)
5. ✅ **Elimina vendor lock-in** con NTCIP 1203 ($137K)
6. ✅ **Mitiga riesgo geotécnico** SPT ($35K)

### **Recomendación:**

**Proceder con la respuesta al asesor externo utilizando este documento MAESTRO como base técnica y contractual.**

Los documentos están listos para:
- ✅ Envío al asesor externo
- ✅ Revisión por Interventoría
- ✅ Incorporación en TDR final corregido
- ✅ Defensa contractual ante ANI

---

## 📎 ANEXOS Y REFERENCIAS

### **Documentos de Soporte:**

1. **TDR Original:** [def pmv.md](file:///d:/onedrive/gdrive/TM1/TDR/TDR%20MD/def%20pmv.md)
2. **Observaciones Detalladas:** [OBSERVACIONES_DETALLADAS_PMV.md](file:///d:/onedrive/gdrive/TM1/TDR/TDR%20MD/OBSERVACIONES_DETALLADAS_PMV.md)
3. **Respuesta Consolidada:** [RESPUESTA_TDR_PMV.md](file:///d:/onedrive/gdrive/TM1/TDR/TDR%20MD/RESPUESTA_TDR_PMV.md)
4. **Matriz de Validación:** [validacion_cruzada_pmv_tdr.md](file:///C:/Users/Diego.Zu%C3%B1iga/.gemini/antigravity/brain/a8eb61f3-d6b1-4c30-a8f7-59a8cccf0e9e/validacion_cruzada_pmv_tdr.md)
5. **Validación Contractual:** [validacion_forense_contractual_pmv.md](file:///C:/Users/Diego.Zu%C3%B1iga/.gemini/antigravity/brain/a8eb61f3-d6b1-4c30-a8f7-59a8cccf0e9e/validacion_forense_contractual_pmv.md)
6. **Dictamen Jurídico:** [dictamen_juridico_pmv_cantidades.md](file:///C:/Users/Diego.Zu%C3%B1iga/.gemini/antigravity/brain/a8eb61f3-d6b1-4c30-a8f7-59a8cccf0e9e/dictamen_juridico_pmv_cantidades.md)

### **Fundamentos Normativos:**

- Manual de Señalización Vial 2024 (Capítulo 2.7)
- UNE-EN 12966 (Sistema óptico PMV)
- NTCIP 1203 v03 (Protocolo comunicación)
- RETIE 2024 (Resolución 40117/2024)
- NTC 2050 (Código Eléctrico Colombiano)
- AASHTO LRFD Bridge Design Specifications
- NSR-10 (Reglamento Sismo Resistente)
- Resolución 1409/2012 (Trabajo en Alturas)
- IEC 60529 (Grados de protección IP)
- IEC 62262 (Resistencia impacto IK)
- ASTM B117 (Corrosión Salt Spray)

### **Fundamentos Contractuales:**

- Contrato APP 002/2022
- Apéndice Técnico 1 (AT1) - Alcance del Proyecto
- Apéndice Técnico 2 (AT2) - Especificaciones Técnicas
- Apéndice Técnico 4 (AT4) - Sistemas Inteligentes de Transporte
- Sección 4.11 - Cambio en la Ley Aplicable
- Sección 4.12 - Mecanismo de Cambio de Ley
- Resolución IP/REV - Displays Tarifarios de Peaje

---

**FIN DEL DOCUMENTO MAESTRO**

---

**Preparado por:** Ingeniería TM01 (EPC)  
**Fecha:** 10 de Febrero de 2026  
**Versión:** 1.0 - Consolidación Final  
**Estado:** ✅ Listo para Envío
