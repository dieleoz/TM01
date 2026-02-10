# 📋 OBSERVACIONES TÉCNICAS Y CONTRACTUALES DETALLADAS
## TÉRMINOS DE REFERENCIA - PANELES DE MENSAJERÍA VARIABLE (PMV)

**Documento Origen:** `def pmv.md` (TDR Asesor Externo)  
**Fecha:** 10 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)

---

Las siguientes observaciones identifican deficiencias críticas en el TDR original que generan riesgos de sobrecosto, vendor lock-in, y rechazo por Interventoría. Cada observación incluye el texto corregido para reemplazar en el TDR final.

---

## **OBSERVACIÓN 1: NORMATIVA ÓPTICA - ÁNGULO DE VISIBILIDAD**

### **Observación:**

El TDR establece: *"El ángulo de visibilidad deberá ser igual o superior a treinta grados (30º)"*

**Problemas identificados:**

1. **Vaguedad técnica:** No especifica si son 30º horizontales, verticales, o totales
2. **Falta norma adoptada:** El Manual de Señalización Vial 2024 (Capítulo 2.7.1) adopta la norma **UNE-EN 12966** que define clases específicas de desempeño óptico
3. **Riesgo de rechazo por Interventoría:** Sin certificación UNE-EN 12966 con las clases L3/R2/B6, el panel puede:
   - Verse "lavado" bajo el sol (falta Clase L3 - Luminancia Alta)
   - Mostrar "efecto fantasma" - LEDs apagados que reflejan luz (falta Clase R2 - Contraste)
   - Verse negro en curvas (falta Clase B6 - Ancho de Haz)

### **¿Cómo atenderlo?**

**REEMPLAZAR** el texto vago con:

### **TEXTO CORREGIDO:**

```markdown
**SISTEMA ÓPTICO Y CERTIFICACIÓN:**

El sistema óptico del PMV deberá cumplir obligatoriamente con la norma **UNE-EN 12966** vigente, certificando mediante reporte de laboratorio acreditado (TÜV, SGS, ILAC) las siguientes clases:

- **Luminancia:** Clase L3 (Luminancia Alta)
- **Contraste:** Clase R2 (Alto Contraste - Sin efecto fantasma)
- **Ancho de Haz:** Clase B6 (±30º horizontal mínimo)
- **Cromaticidad:** Clase C2 (Colores estándar RGB)
- **Temperatura Operativa:** Clase T1 (-10°C a +50°C)
- **Protección:** Clase P2 (IP65 mínimo)

El Proponente deberá anexar copia del **Certificado de Conformidad vigente** emitido por organismo acreditado. Paneles sin este certificado serán rechazados en evaluación técnica.
```

**Fundamento Contractual:** Manual de Señalización Vial 2024, Capítulo 2.7.1 (adopta UNE-EN 12966)

---

## **OBSERVACIÓN 2: REPORTES Y HISTÓRICOS EN EL PANEL (SOFTWARE vs HARDWARE)**

### **Observación:**

El TDR establece textualmente:
- "Histórico de mensajes."
- "Reporte diario semanal y mensual de mensajes proyectados."
- "Reporte de fallas diarias, semanal y mensual."

**¿Por qué está mal?**

1. **Error conceptual:** El panel es un dispositivo de campo (hardware periférico), no un servidor de base de datos. Pedir "reportes impresos" y "históricos" en el poste obliga a instalar un PC industrial costoso e innecesario
2. **Sobrecosto:** Incluir PC industrial + software propietario: ~$3,000 USD/unidad × 29 = **$87,000 USD desperdiciados**
3. **Arquitectura incorrecta:** La lógica de negocio, históricos y reportes son funciones del sistema SCADA del Centro de Control, NO del panel de campo
4. **Vendor lock-in:** Fuerza compra de software propietario del fabricante con licencias perpetuas (~$50,000 USD)

### **¿Cómo atenderlo?**

**ELIMINAR** completamente las líneas de reportes locales y **REEMPLAZAR** con:

### **TEXTO CORREGIDO:**

```markdown
**ARQUITECTURA DE COMUNICACIÓN:**

El controlador del PMV se limitará a exponer sus variables de estado, alarmas y diagnóstico mediante el protocolo estándar **NTCIP 1203 v03**. La lógica de negocio, históricos de mensajes y generación de reportes (diarios/semanales/mensuales) residirán exclusivamente en el software SCADA del Centro de Control Operacional.

**El panel NO generará reportes locales.** El proveedor entregará:

- Archivos MIB (Management Information Base) en formato ASN.1
- Manual de integración NTCIP con mapeo completo de objetos
- Variables SNMP para polling desde SCADA

**El SCADA será responsable de:**

- Almacenar históricos de mensajes desplegados
- Generar reportes estadísticos
- Mantener logs de alarmas y eventos
```

**Fundamento Contractual:** AT4 - Sistemas Inteligentes de Transporte: Interoperabilidad abierta mediante protocolos estándar

**Ahorro estimado:** **$137,000 USD**

---

## **OBSERVACIÓN 3: ESTRUCTURA "VISITABLE" (WALK-IN)**

### **Observación:**

El TDR establece textualmente:
- "La estructura deberá ser visitable (según las normas técnicas de seguridad aplicables en Colombia)."
- "La estructura deberá ser visitable... y que permita un fácil mantenimiento."

**¿Por qué está mal?**

1. **Sobrecosto estructural masivo:** "Visitable" implica estructura hueca Walk-in (tubo estructural gigante) que el personal puede caminar dentro. Esto requiere:
   - Tubo estructural de mínimo 1.2m de diámetro interno
   - Escalera interior marinera con línea de vida
   - +70% más acero → Sobrecosto: **$15,000 USD/unidad**
2. **Tipo estructural limitado:** Solo permite banderola (1 apoyo). Prohíbe usar pórtico (2 apoyos) que es más eficiente para paneles con sistema solar grande
3. **No es requisito contractual:** El contrato APP 002/2022 no exige estructuras "visitables". Solo exige acceso seguro para mantenimiento
4. **Alternativas más seguras y económicas:** Acceso exterior con pasarela/catwalk + línea de vida O camión canasta (Manlift)

### **¿Cómo atenderlo?**

**ELIMINAR** líneas de "estructura visitable". **AGREGAR** nueva sección "ESTRUCTURA DE SOPORTE":

### **TEXTO CORREGIDO:**

```markdown
**ESTRUCTURA DE SOPORTE:**

**TIPOLOGÍA:** El Proponente podrá ofertar diseño estructural tipo:
- **PÓRTICO** (dos apoyos verticales)
- **BANDEROLA / SEMIPÓRTICO** (un apoyo en voladizo)

Seleccionando la opción técnica y económicamente más eficiente para cada ubicación según análisis de cargas, viento y condiciones de sitio.

**CARGAS DE DISEÑO:**
- Peso propio del PMV (panel + gabinete + equipos)
- Sistema fotovoltaico (paneles solares + baterías)
- Viento: 120 km/h según NSR-10 para zona geográfica
- Sismo: Aa según NSR-10 título A
- Factor de seguridad: 1.5 mínimo

**NORMAS APLICABLES:**
- AASHTO LRFD Bridge Design Specifications (estructuras viales)
- NSR-10 (Reglamento Colombiano de Construcción Sismo Resistente)
- Manual de Señalización Vial 2024 (gálibo y ubicación)

**ACCESO PARA MANTENIMIENTO:**

Acceso Exterior Seguro mediante:
- Pasarela/Catwalk con línea de vida certificada, O
- Acceso con camión canasta (Manlift)

**NO se requiere estructura visitable interiormente (Walk-in).** El mantenimiento se realizará desde el exterior con equipo de protección contra caídas certificado según Resolución 1409/2012 (Trabajo en Alturas).

**MATERIAL Y ACABADO:**
- Acero estructural ASTM A36 o superior
- Galvanizado en caliente ASTM A123 (mínimo 610 g/m²)
- Tornillería galvanizada o acero inoxidable AISI 304
- NO se requiere pintura adicional sobre galvanizado

**GÁLIBO VERTICAL:**

Altura libre mínima de **5.50 metros** desde el punto más alto de la calzada hasta el borde inferior del PMV, según Manual de Señalización Vial 2024 (Numeral 2.7.3.2).
```

**Fundamento Contractual:** AASHTO LRFD + NSR-10 + Resolución 1409/2012 (Trabajo en Alturas)

**Ahorro estimado:** $15,000/unidad × 29 = **$435,000 USD**

---

## **OBSERVACIÓN 4: ENERGÍA SOLAR - FALTA SEGREGACIÓN TIPO A / TIPO B**

### **Observación:**

El TDR establece textualmente:
- "Alimentación Eléctrica: Alimentación fotovoltaica, con una autonomía de 48 horas. Considerar el consumo del Switch y para 12 de ellos la alimentación del RADAR ANPR, con unos 80 Watios y un voltaje que depende del fabricante y puede ser de 24 o 36 VDC."
- "Considerar para 12 PMV la alimentación adicional del RADAR ANPR."

**¿Por qué está mal?**

1. **No segrega ítems de pago:** Mezcla PMV estándar con PMV+Radar. Los proveedores cotizarán baterías gigantes para todos los 29 sitios cuando solo 12 necesitan el refuerzo
2. **Sobrecosto por sobre-diseño:** 17 sitios sin radar NO necesitan las baterías extra. Sobrecosto evitable: $3,500 × 17 = **$59,500 USD**
3. **Voltaje indefinido:** Dice "puede ser 24 o 36 VDC". Esto obliga a cada proveedor de radar a cotizar conversor DC-DC, incrementando costo. Debe definirse un voltaje estándar
4. **Cálculo energético:** Radar 80W × 24h × 2 días = 3,840 Wh. En 24V = 160 Ah reales. Baterías GEL (DoD 50%) = 320 Ah adicionales necesarias. Costo: 2 baterías 200Ah × $1,750 = $3,500 USD/sitio

### **¿Cómo atenderlo?**

**REEMPLAZAR** líneas de energía solar con:

### **TEXTO CORREGIDO:**

```markdown
**SISTEMA DE ENERGÍA FOTOVOLTAICA:**

El proponente deberá segregar la oferta en **DOS tipos de configuración:**

**CONFIGURACIÓN TIPO A (17 unidades) - PMV Estándar:**

Equipos a alimentar:
- Panel LED (consumo según fabricante)
- Controlador PMV
- Switch industrial (15W)

Autonomía: **48 horas sin sol** según Manual de Señalización 2024 §2.7.6  
Voltaje BUS DC: **24 VDC obligatorio**

**CONFIGURACIÓN TIPO B (12 unidades) - PMV + Radar:**

Equipos a alimentar:
- Panel LED (consumo según fabricante)
- Controlador PMV
- Switch industrial PoE (25W)
- Radar ANPR/ETD (80W @ 24 VDC - continuo)

Autonomía: **48 horas sin sol**  
Voltaje BUS DC: **24 VDC obligatorio**

**NOTA:** El sistema solar TIPO B debe dimensionarse para carga continua del radar (80W × 24h × 365 días). Banco de baterías reforzado: mínimo **+320 Ah adicionales** vs TIPO A.

**COMPONENTES DEL SISTEMA:**
- **Paneles solares:** Tecnología monocristalina, eficiencia >19%, certificación IEC 61215
- **Baterías:** GEL o AGM ciclo profundo, vida útil >1,500 ciclos @ DoD 50%
- **Controlador de carga:** MPPT, eficiencia >98%, protecciones: sobrecarga, descarga profunda, cortocircuito
- **Cableado solar:** Cable fotovoltaico 10 AWG mínimo, UV resistente

**DIMENSIONAMIENTO:**

El proponente deberá calcular y justificar:
- Radiación solar promedio zona (kWh/m²/día)
- Consumo diario total (Wh/día)
- Días de autonomía: 2 días (48h)
- Pérdidas del sistema: 25% (cableado, controlador, baterías, suciedad)

**ENTREGABLES:**
- Memoria de cálculo energético TIPO A y TIPO B
- Datasheet de paneles solares
- Datasheet de baterías con ciclos de vida
- Datasheet de controlador MPPT

**ÍTEMS DE PAGO SEGREGADOS:**

- **ÍTEM 1.1:** Sistema Solar TIPO A × 17 unidades
- **ÍTEM 1.2:** Sistema Solar TIPO B × 12 unidades
```

**Fundamento Contractual:** Manual de Señalización Vial 2024, Numeral 2.7.6 (Autonomía 48h) + Ingeniería T04

**Ahorro estimado:** $3,500 × 17 = **$59,500 USD**

---

## **OBSERVACIÓN 5: NORMAS UNE ESPAÑOLAS EN GABINETES**

### **Observación:**

El TDR establece textualmente:
- "Resistencia que ofrece a la corrosión = 500 horas con niebla salina, según norma UNE 4826."
- "Adherencia pintura según norma UNE-EN 2409, clase 2 mínimo."
- "Resistencia a vibraciones según norma UNE 20-501-2-34."
- "Mínima carga estática que debe soportar gabinetes SE, NODOS = 400 Kg."
- "Grado de protección... según norma UNE 20-550."
- "Puntos de conexión de toma de tierra según norma UNE 20460-5-54..."

**¿Por qué está mal?**

1. **Normas NO exigibles en Colombia:** Las normas UNE son estándares españoles voluntarios. En Colombia, la norma obligatoria es **RETIE 2024** (Resolución 40117/2024) + NTC 2050
2. **Limita competencia artificialmente:** Exigir certificación UNE española restringe a proveedores con laboratorios AENOR/TÜV europeos, eliminando fabricantes asiáticos y americanos con certificaciones equivalentes (IEC, ASTM, UL)
3. **Especificación absurda (400 kg):** Gabinete colgado en poste debe soportar 400 kg? Esta es una especificación copiada de racks de servidores de piso, no tiene sentido para gabinetes montados en muro
4. **Contradicción con RETIE:** El TDR dice "certificados bajo RETIE" pero las líneas anteriores piden normas UNE que contradicen RETIE

### **¿Cómo atenderlo?**

**ELIMINAR** todas las referencias UNE. **REEMPLAZAR** con sección completa:

### **TEXTO CORREGIDO:**

```markdown
**ESPECIFICACIONES DE GABINETES:**

**NORMATIVA APLICABLE:**
- **RETIE 2024** (Resolución 40117/2024) - Obligatorio
- NTC 2050 (Código Eléctrico Colombiano)
- IEC 60529 (Grados de protección IP)
- IEC 60068-2-27 (Resistencia a choques)
- ASTM B117 (Corrosión - Salt Spray)

**CARACTERÍSTICAS AMBIENTALES:**

**Protección:** IP65 mínimo (IEC 60529)  
Sin ingreso de polvo ni agua a presión. Apto para intemperie.

**Corrosión:** 400 horas Salt Spray Test según ASTM B117  
Alternativa: Recubrimiento marino certificado.

**Impacto mecánico:** IK10 (IEC 62262)  
Resistencia a vandalismo: 20 Julios de energía.

**Rango térmico operativo:**
- Temperatura: -10°C a +60°C
- Humedad relativa: 10% a 95% sin condensación

**MATERIAL Y CONSTRUCCIÓN:**

**Material:** Aluminio marino anodizado O Acero inoxidable AISI 304/316 O Policarbonato reforzado con fibra de vidrio (solo para gabinetes pequeños <40x40 cm)

**NO se aceptan gabinetes de acero al carbono pintado** para instalación a la intemperie.

**Espesor mínimo paredes:** 2 mm (aluminio/acero inoxidable)

**Puerta:** Bisagras inoxidables con apertura >120°. Junta de goma/silicona perimetral.

**Cerradura:** Tipo industrial con llave pentagonal o triangular (anti-vandalismo).

**DIMENSIONAMIENTO:**

El gabinete será dimensionado para alojar holgadamente:
- Baterías (GEL o AGM según dimensionamiento energético)
- Controlador PMV
- Controlador solar MPPT
- Switch industrial + patch panel fibra óptica
- Borneras de conexión y protecciones
- Espacio libre >30% para ventilación y futuras ampliaciones

**MONTAJE:**

Fijación mediante:
- Pernos de anclaje inoxidables AISI 304, diámetro 3/8" mínimo
- Anclaje químico en concreto (si estructura metálica hueca)
- Factor seguridad: 3.0 contra arranque

**NO solicitar "carga estática 400 kg" - No aplica para gabinetes colgados.**

**VENTILACIÓN Y CLIMATIZACIÓN:**

**Termostato:** Activación ventiladores a 35°C, apagado a 30°C  
**Ventiladores:** Tipo industrial IP65, caudal >100 CFM, bajo consumo (<10W c/u)  
**Rejillas:** Con filtro antimosquitos reemplazable

**Opcional** (solo si cálculo térmico lo justifica):  
Sistema Peltier o aire acondicionado compacto para gabinetes en zona con T ambiente >45°C sostenida.

**PROTECCIÓN ELÉCTRICA:**

**Barra de tierra:** Cobre electrolítico, conexión con perno y arandela de presión  
**Puntos de tierra:** Uno en chasis fijo + uno en puerta (si es metálica)

**Protecciones obligatorias:**
- Interruptores termomagnéticos por circuito (IEC 60898)
- DPS Tipo 2 (20 kA mínimo) en entrada DC solar (IEC 61643-11)
- Fusibles en positivo y negativo de cada circuito

**ETIQUETADO:**

Cada gabinete incluirá placa de identificación indestructible (grabado láser en acero inoxidable) con:
- Fabricante y modelo
- Fecha de fabricación
- Tensión nominal
- Código TAG del sitio
- Logo Concesionario

**COLOR:** RAL 7035 (gris claro) para gabinetes metálicos
```

**Fundamento Contractual:** RETIE 2024 (Resolución 40117/2024) + IEC 60529 + ASTM B117

---

## **OBSERVACIÓN 6: CANTIDADES Y SEGREGACIÓN ITS vs PEAJE**

### **Observación:**

El TDR lista únicamente 25 ubicaciones en Tabla 2 correspondientes a PMV en vía.  
**NO menciona displays tarifarios de peaje** ni realiza segregación presupuestal por WBS.

**¿Por qué está mal?**

1. **Cantidad incompleta:** El proyecto completo requiere 43 displays LED, no 25:
   - 29 PMV ITS en vía (P20-P25 RGB)
   - 14 Displays tarifarios en peajes (P10 Ámbar, 2 líneas)
2. **Mezcla presupuestal:** Sin segregar, los proveedores cotizarán los 14 displays pequeños de peaje ($8K c/u) como PMV grandes de vía ($35K c/u). Sobrecosto: $27K × 14 = **$378,000 USD**
3. **WBS incorrectos:** Los PMV ITS deben cargarse al WBS 3.01 (Sistemas Inteligentes). Los displays de peaje al WBS 5.01 (Recaudo y Peajes)
4. **Especificaciones diferentes:** Displays de peaje requieren P10 Ámbar (2 líneas, lectura <10m). PMV de vía requieren P20 RGB (3 líneas + gráfico, lectura >150m)

### **¿Cómo atenderlo?**

**AGREGAR** nueva sección antes de la Tabla 2:

### **TEXTO CORREGIDO:**

```markdown
**CANTIDADES Y SEGREGACIÓN PRESUPUESTAL:**

El proyecto requiere **DOS tipos de displays LED** con especificaciones y presupuestos separados:

**TIPO 1: PMV ITS CARRETERA (29 unidades - WBS 3.01)**

**Ubicación:** Vía abierta + aproximación a peajes

**Especificación:**
- Panel Combinado: Zona gráfica RGB (64×64 px) + 3 líneas texto Ámbar
- Pixel Pitch: P20 (vía) o P25 (texto)
- Altura carácter: 450 mm
- Distancia lectura: >150 metros a 120 km/h
- Estructura: Pórtico o Banderola sobre calzada
- Energía: Solar con 48h autonomía
- Listado: Ver Tabla A

**TIPO 2: DISPLAYS TARIFARIOS PEAJE (14 unidades - WBS 5.01)**

**Ubicación:** Isletas de carriles de peaje

**Especificación:**
- Panel Simple: 2 líneas alfanuméricas Ámbar monocromo
- Pixel Pitch: P10
- Altura carácter: 200 mm
- Distancia lectura: <10 metros (velocidad reducida)
- Montaje: Columna pequeña en isleta o suspendido de techo de caseta
- Energía: AC desde tablero de peaje (NO solar)
- Cumplimiento: Resolución IP/REV Ministerio Transporte
- Listado: Ver Tabla B

**NOTA IMPORTANTE:** Estos dos tipos de displays **NO deben mezclarse** en una misma oferta global. Se requieren ítems de pago separados:

- **ÍTEM 1:** PMV ITS Carretera × 29 unidades (WBS 3.01)
- **ÍTEM 2:** Display Tarifario Peaje × 14 unidades (WBS 5.01)

**Para efectos de este TDR, el alcance se limita al ÍTEM 1 (29 PMV ITS).** Los displays tarifarios de peaje se licitarán separadamente bajo el contrato de Sistemas de Recaudo.
```

**Fundamento Contractual:** AT1 (PMV ITS) + Resolución IP/REV (Displays Peaje) + Estructura WBS del Proyecto

**Ahorro estimado:** $27,000 × 14 = **$378,000 USD**

---

## **OBSERVACIÓN 7: PUESTA A TIERRA - RIESGO GEOTÉCNICO ABIERTO**

### **Observación:**

El TDR establece textualmente:  
*"La oferta incluirá el suministro e instalación de una tierra eléctrica acorde con lo especificado en la norma RETIE según Resolución 40117 del 2 de abril de 2024"*

**¿Por qué está mal?**

1. **Alcance abierto = Riesgo económico:** "Acorde con RETIE" es demasiado vago. Cada proveedor interpretará diferente:
   - Proveedor conservador: Infla precio +30% para cubrir riesgo de suelo rocoso
   - Proveedor agresivo: Cotiza mínimo, después reclama adicionales por "condiciones imprevistas"
2. **No define kit base:** RETIE exige R ≤ 10 Ω (Art 3.12.3) pero no dice cuántas varillas, qué cable, qué método de unión
3. **No prevé mejoramiento geotécnico:** Si el suelo es rocoso o arenoso (alta resistividad), se necesitan varillas adicionales, gel conductor, extensión de cable. Sin precios unitarios, hay disputa
4. **Exposición financiera:** 29 sitios × Probabilidad 40% suelo malo × Costo adicional $3,000 = **$34,800 USD no presupuestados** + disputas contractuales

### **¿Cómo atenderlo?**

**REEMPLAZAR** línea vaga con sección completa:

### **TEXTO CORREGIDO:**

```markdown
**SISTEMA DE PUESTA A TIERRA (SPT):**

**NORMATIVA:**

**RETIE 2024** (Resolución 40117), Artículo 3.12.3: *"La resistencia de puesta a tierra será menor o igual a 10 ohmios"*

**KIT BASE (Incluido en precio global por sitio):**

Cada PMV incluirá obligatoriamente:

- **3 varillas Copperweld 5/8" × 2.4 m**, clavadas a 3 m de profundidad con separación >3 m entre varillas (triángulo)
- **Cable de cobre desnudo calibre 2/0 AWG** (67 mm²) enterrado a 50 cm profundidad
- **Uniones mediante soldadura exotérmica** (Cadweld o equivalente) - NO conectores mecánicos
- **Caja de inspección de concreto** con tapa metálica (30×30 cm) para registro
- **Barra equipotencial de cobre** en base de estructura metálica
- **Cable tierra del gabinete a barra:** Cobre aislado verde/amarillo 2/0 AWG

**OBJETIVO DE DESEMPEÑO:**

Con el Kit Base se debe alcanzar **R ≤ 10 Ω** medido con telurómetro método Wenner.

**MEJORAMIENTO GEOTÉCNICO (Ítems unitarios condicionales):**

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

**PROCEDIMIENTO:**

1. **Antes de instalación:** Medir resistividad aparente del suelo con telurómetro (registro fotográfico)
2. **Instalar Kit Base completo**
3. **Medir resistencia final** con telurómetro método Wenner 4 puntos (registro fotográfico)
4. **Si R ≤ 10 Ω** → Aprobado, no se paga nada adicional
5. **Si R > 10 Ω** → Aplicar PASO 1, luego PASO 2, luego PASO 3 hasta lograr R ≤ 10 Ω
6. **Llenar formato de prueba SPT** con valores medidos y firma Interventoría

**ENTREGABLES POR CADA SITIO:**

- Medición de resistividad del suelo (Ω·m) antes de instalación
- Protocolo de prueba con telurómetro (marca, modelo, certificado calibración vigente)
- Fotografías: varillas instaladas, soldaduras exotérmicas, medición final
- **Certificado de resistencia R ≤ 10 Ω** firmado por Interventoría

**NOTA CONTRACTUAL:**

El Oferente cotizará:
- **Kit Base:** Precio global × 29 sitios (obligatorio)
- **Mejoramiento:** Precios unitarios condicionales (solo se paga lo ejecutado)

Esto elimina el riesgo de inflación preventiva en las ofertas.
```

**Fundamento Contractual:** RETIE 2024, Artículo 3.12.3

**Riesgo eliminado:** ~**$35,000 USD** en disputas + Ofertas infladas

---

## 📊 RESUMEN CONSOLIDADO DE CORRECCIONES Y AHORROS

| Concepto | Observación | Ahorro USD |
|:---------|:------------|:-----------|
| Eliminación estructura "Visitable" Walk-in → Pórtico/Banderola estándar | #3 | **$435,000** |
| Segregación Peaje (Display P10 Ámbar pequeño vs PMV RGB grande) | #6 | **$378,000** |
| Reportes/Históricos en panel → Eliminar PC industrial + SDK propietario | #2 | **$137,000** |
| Baterías segregadas TIPO A / TIPO B (Radar solo donde necesita) | #4 | **$59,500** |
| **SUBTOTAL AHORROS DIRECTOS** | - | **$1,009,500** |
| Riesgo eliminado: SPT con kit base + precios unitarios | #7 | **$35,000** |
| Riesgo eliminado: Normas UNE (competencia artificialmente limitada) | #5 | Variable |

**TOTAL AHORROS ESTIMADOS:** **>$1,000,000 USD**
