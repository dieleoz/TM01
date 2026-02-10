# 📋 OBSERVACIONES TÉCNICAS Y CONTRACTUALES DETALLADAS
## TÉRMINOS DE REFERENCIA - POSTES SOS (SISTEMA DE EMERGENCIA)

**Documento Origen:** `def sos.md` (TDR Asesor Externo)  
**Fecha:** 10 de Febrero de 2026  
**Preparado por:** Ingeniería TM01 (EPC)

---

Las siguientes observaciones identifican deficiencias críticas en el TDR original que generan riesgos de sobrecosto, vendor lock-in, y rechazo por Interventoría. Cada observación incluye el texto corregido para reemplazar en el TDR final.

---

## **OBSERVACIÓN 1: NORMAS UNE ESPAÑOLAS EN GABINETES**

### **Observación:**

El TDR establece textualmente (líneas 627-649):
- "Resistencia que ofrece a la corrosión = 500 horas con niebla salina, según norma UNE 4826."
- "Adherencia pintura según norma UNE-EN 2409, clase 2 mínimo."
- "Resistencia a vibraciones según norma UNE 20-501-2-34."
- "Grado de protección... según norma UNE 20-550."
- "Puntos de conexión de toma de tierra según norma UNE 20460-5-54..."

**Problemas identificados:**

1. **Normas NO exigibles en Colombia:** Las normas UNE son estándares españoles voluntarios. En Colombia, la norma obligatoria es **RETIE 2024** (Resolución 40117/2024) + NTC 2050
2. **Limita competencia artificialmente:** Exigir certificación UNE española restringe a proveedores con laboratorios AENOR/TÜV europeos, eliminando fabricantes asiáticos y americanos con certificaciones equivalentes (IEC, ASTM, UL)
3. **Contradicción con RETIE:** El TDR dice "certificados bajo RETIE" (línea 651) pero las líneas anteriores piden normas UNE que contradicen RETIE
4. **Especificación absurda (400 kg):** Gabinete colgado en poste debe soportar 400 kg? Esta es una especificación copiada de racks de servidores de piso, no tiene sentido para gabinetes montados en poste

### **¿Cómo atenderlo?**

**ELIMINAR** todas las referencias UNE. **REEMPLAZAR** con sección completa:

### **TEXTO CORREGIDO:**

```markdown
**ESPECIFICACIONES DE GABINETES:**

**NORMATIVA APLICABLE:**
- **RETIE 2024** (Resolución 40117/2024) - Obligatorio
- NTC 2050 (Código Eléctrico Colombiano)
- IEC 60529 (Grados de protección IP)
- IEC 62262 (Resistencia impacto IK)
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

**Material:** Aluminio marino anodizado O Acero inoxidable AISI 304/316 O Policarbonato reforzado con fibra de vidrio (solo para gabinetes pequeños)

**NO se aceptan gabinetes de acero al carbono pintado** para instalación a la intemperie.

**Espesor mínimo paredes:** 2 mm (aluminio/acero inoxidable)

**Puerta:** Bisagras inoxidables con apertura >120°. Junta de goma/silicona perimetral.

**Cerradura:** Tipo industrial con llave pentagonal o triangular (anti-vandalismo).

**DIMENSIONAMIENTO:**

El gabinete será dimensionado para alojar holgadamente:
- Baterías (GEL o AGM según dimensionamiento energético)
- Controlador SOS (electrónica dual IP/GSM)
- Controlador solar MPPT
- Switch industrial + patch panel fibra óptica
- Borneras de conexión y protecciones
- Espacio libre >30% para ventilación y futuras ampliaciones

**MONTAJE:**

Fijación mediante:
- Pernos de anclaje inoxidables AISI 304, diámetro 3/8" mínimo
- Anclaje químico en concreto (si estructura metálica hueca)
- Factor seguridad: 3.0 contra arranque

**NO solicitar "carga estática 400 kg" - No aplica para gabinetes colgados en poste.**

**VENTILACIÓN Y CLIMATIZACIÓN:**

**Termostato:** Activación ventiladores a 35°C, apagado a 30°C  
**Ventiladores:** Tipo industrial IP65, caudal >100 CFM, bajo consumo (<10W c/u)  
**Rejillas:** Con filtro antimosquitos reemplazable

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

**COLOR:** RAL 2004 (naranja) para gabinetes y poste (según línea 633 del TDR)
```

**Fundamento Contractual:** RETIE 2024 (Resolución 40117/2024) + IEC 60529 + ASTM B117

---

## **OBSERVACIÓN 2: PUESTA A TIERRA - RIESGO GEOTÉCNICO ABIERTO**

### **Observación:**

El TDR establece textualmente (línea 719):  
*"La oferta incluirá el suministro e instalación de una tierra eléctrica acorde con lo especificado en la norma RETIE según Resolución 40117 del 2 de abril de 2024"*

**Problemas identificados:**

1. **Alcance abierto = Riesgo económico:** "Acorde con RETIE" es demasiado vago. Cada proveedor interpretará diferente:
   - Proveedor conservador: Infla precio +30% para cubrir riesgo de suelo rocoso
   - Proveedor agresivo: Cotiza mínimo, después reclama adicionales por "condiciones imprevistas"
2. **No define kit base:** RETIE exige R ≤ 10 Ω (Art 3.12.3) pero no dice cuántas varillas, qué cable, qué método de unión
3. **No prevé mejoramiento geotécnico:** Si el suelo es rocoso o arenoso (alta resistividad), se necesitan varillas adicionales, gel conductor, extensión de cable. Sin precios unitarios, hay disputa
4. **Exposición financiera:** 88 sitios × Probabilidad 40% suelo malo × Costo adicional $1,000 = **$35,200 USD no presupuestados** + disputas contractuales

### **¿Cómo atenderlo?**

**REEMPLAZAR** línea vaga con sección completa:

### **TEXTO CORREGIDO:**

```markdown
**SISTEMA DE PUESTA A TIERRA (SPT):**

**NORMATIVA:**

**RETIE 2024** (Resolución 40117), Artículo 3.12.3: *"La resistencia de puesta a tierra será menor o igual a 10 ohmios"*

**KIT BASE (Incluido en precio global por sitio):**

Cada Poste SOS incluirá obligatoriamente:

- **3 varillas Copperweld 5/8" × 2.4 m**, clavadas a 3 m de profundidad con separación >3 m entre varillas (triángulo)
- **Cable de cobre desnudo calibre 2/0 AWG** (67 mm²) enterrado a 50 cm profundidad
- **Uniones mediante soldadura exotérmica** (Cadweld o equivalente) - NO conectores mecánicos
- **Caja de inspección de concreto** con tapa metálica (30×30 cm) para registro
- **Barra equipotencial de cobre** en base de poste
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
- **Kit Base:** Precio global × 88 sitios (obligatorio)
- **Mejoramiento:** Precios unitarios condicionales (solo se paga lo ejecutado)

Esto elimina el riesgo de inflación preventiva en las ofertas.
```

**Fundamento Contractual:** RETIE 2024, Artículo 3.12.3

**Riesgo eliminado:** ~**$35,000 USD** en disputas + Ofertas infladas

---

## **OBSERVACIÓN 3: AUTONOMÍA FOTOVOLTAICA - SOBRE-ESPECIFICACIÓN**

### **Observación:**

El TDR establece textualmente (línea 440):  
*"Alimentación: Sistema Fotovoltaico incluida en la misma solución. La autonomía del sistema debe ser mínimo de 72 horas"*

**Problemas identificados:**

1. **Sobre-especificación vs estándar:** El Manual de Señalización Vial 2024 exige **48 horas** de autonomía para sistemas ITS. El TDR pide 72h (50% más)
2. **Sobrecosto innecesario:** 72h vs 48h requiere:
   - +50% más baterías
   - +50% más paneles solares
   - Sobrecosto: ~$500 USD/sitio × 88 = **$44,000 USD**
3. **No es requisito contractual:** El contrato APP 002/2022 no exige 72h para postes SOS
4. **Inconsistencia con PMV:** Los PMV del mismo proyecto tienen 48h de autonomía. ¿Por qué SOS tendría 72h?

### **¿Cómo atenderlo?**

**REEMPLAZAR** línea de autonomía con:

### **TEXTO CORREGIDO:**

```markdown
**SISTEMA DE ENERGÍA FOTOVOLTAICA:**

**Autonomía:** Mínimo **48 horas sin aporte solar** según Manual de Señalización Vial 2024 §2.7.6

**Voltaje BUS DC:** **12 VDC** (recomendado por economía según línea 442 del TDR)

**Equipos a alimentar:**
- Controlador SOS (electrónica dual IP/GSM)
- Switch industrial (15W)
- Sistema de iluminación LED del poste
- Altavoces y micrófono

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
- Memoria de cálculo energético
- Datasheet de paneles solares
- Datasheet de baterías con ciclos de vida
- Datasheet de controlador MPPT
```

**Fundamento Contractual:** Manual de Señalización Vial 2024, Numeral 2.7.6 (Autonomía 48h)

**Ahorro estimado:** $500 × 88 = **$44,000 USD**

---

## **OBSERVACIÓN 4: REPORTES LOCALES - ARQUITECTURA INCORRECTA**

### **Observación:**

El TDR establece textualmente (línea 476):  
*"Reporte de fallas diarias, semanal y mensual."*

**Problemas identificados:**

1. **Error conceptual:** El poste SOS es un dispositivo de campo (hardware periférico), no un servidor de base de datos. Pedir "reportes impresos" y "históricos" en el poste obliga a instalar un PC industrial costoso e innecesario
2. **Sobrecosto:** Incluir PC industrial + software propietario: ~$2,000 USD/unidad × 88 = **$176,000 USD desperdiciados**
3. **Arquitectura incorrecta:** La lógica de negocio, históricos y reportes son funciones del sistema SCADA del Centro de Control, NO del poste de campo
4. **Vendor lock-in:** Fuerza compra de software propietario del fabricante con licencias perpetuas

### **¿Cómo atenderlo?**

**ELIMINAR** completamente las líneas de reportes locales y **REEMPLAZAR** con:

### **TEXTO CORREGIDO:**

```markdown
**ARQUITECTURA DE COMUNICACIÓN:**

El controlador del Poste SOS se limitará a exponer sus variables de estado, alarmas y diagnóstico mediante protocolos estándar. La lógica de negocio, históricos de llamadas y generación de reportes (diarios/semanales/mensuales) residirán exclusivamente en el software del Centro de Control Operacional.

**El poste NO generará reportes locales.** El proveedor entregará:

- Sistema con protocolo SIP para VoIP
- Variables SNMP para monitoreo desde SCADA
- Documentación completa de API y protocolos

**El SISTEMA CCO será responsable de:**

- Almacenar históricos de llamadas y eventos
- Generar reportes estadísticos
- Mantener logs de alarmas y fallas
- Grabación de conversaciones (60 días mínimo según línea 583)

**MONITOREO DESDE SCADA:**

El poste reportará al SCADA las siguientes variables (líneas 460-472):
- Tensión de los paneles
- Corriente de los paneles
- Tensión de la batería
- Corriente de la batería
- Puerta abierta del poste SOS
- Estado del sistema fotovoltaico

**ALARMAS:**

El sistema reportará alarmas de (líneas 474-490):
- Falla del servidor de grabación
- Falla de comunicación del servidor
- Falla de micrófono
- Falla de comunicación
- Falla del equipo SOS
- Fallas del sistema fotovoltaico
- Poste SOS fuera de servicio
```

**Fundamento Contractual:** AT4 - Sistemas Inteligentes de Transporte: Interoperabilidad abierta mediante protocolos estándar

**Ahorro estimado:** **$176,000 USD** (eliminando PC industrial innecesario)

**NOTA:** Este es el ahorro MÁS GRANDE identificado en el TDR de SOS.

---

## **OBSERVACIÓN 5: COMUNICACIÓN DUAL - REDUNDANCIA INNECESARIA**

### **Observación:**

El TDR establece textualmente (líneas 438, 445):  
- "Comunicación: TCP/IP puerto Ethernet RJ45 y GSM, con conmutación automática."
- "Los postes SOS deberán disponer de electrónica dual (IP/ GSM), de tal manera que cuando se utilice la comunicación GSM, incluso no se anule el otro canal de comunicación."

**Problemas identificados:**

1. **Redundancia costosa:** Exigir comunicación dual (Fibra óptica + GSM) en TODOS los 88 postes es innecesario
2. **Sobrecosto:** Módulo GSM + SIM + plan de datos: ~$300 USD/sitio × 88 = **$26,400 USD**
3. **Fibra óptica ya disponible:** El TDR menciona que hay anillo de fibra óptica extendido (línea 515). Si hay fibra, ¿para qué GSM?
4. **Mantenimiento recurrente:** Plan de datos GSM: $15 USD/mes × 88 × 12 meses = **$15,840 USD/año** OPEX

### **¿Cómo atenderlo?**

**MODIFICAR** requisito de comunicación dual:

### **TEXTO CORREGIDO:**

```markdown
**SISTEMA DE COMUNICACIÓN:**

**COMUNICACIÓN PRIMARIA (Obligatoria):**
- **TCP/IP sobre Fibra Óptica** (puerto Ethernet RJ45)
- Protocolo VoIP: SIP
- Codec de voz: G.711A/u, G.729, G.722, G.726 (según línea 456)

**COMUNICACIÓN DE RESPALDO (Opcional - Solo sitios críticos):**
- **GSM/4G** con conmutación automática
- Solo para sitios donde la fibra óptica no llegue o sea inviable

**CRITERIO DE APLICACIÓN:**

El Oferente identificará en su propuesta:
- **Sitios con fibra óptica:** Comunicación IP únicamente (mayoría de los 88 sitios)
- **Sitios sin fibra:** Comunicación dual IP/GSM (estimado: 5-10 sitios máximo)

**ÍTEMS DE PAGO SEGREGADOS:**
- **ÍTEM 1:** Poste SOS con comunicación IP × XX unidades
- **ÍTEM 2:** Poste SOS con comunicación dual IP/GSM × XX unidades

**FUNCIONALIDAD ADICIONAL (Línea 445):**

El sistema deberá recibir llamadas de emergencia desde la red celular en el CCO, permitiendo al menos (2) dos o más proveedores de celular. Estas llamadas tendrán el mismo tratamiento que las llamadas de los postes SOS en cuanto a grabación y verificación.

**NOTA:** Esta funcionalidad se implementa en el servidor VoIP del CCO, NO requiere módulo GSM en cada poste.
```

**Fundamento Contractual:** Ingeniería de Detalle T04/T05 + Optimización CAPEX

**Ahorro estimado CAPEX:** $300 × 78 sitios (con fibra) = **$23,400 USD**  
**Ahorro estimado OPEX:** $15/mes × 78 × 12 = **$14,040 USD/año**

---

## **OBSERVACIÓN 6: ALTURA DEL POSTE - INCUMPLIMIENTO MANUAL 2024**

### **Observación:**

El TDR establece textualmente (línea 436):  
*"Postes de 6 m de altura: Las baterías se instalarán, por seguridad, en la parte alta del poste y con corona antiescalatoria."*

**Problemas identificados:**

1. **Incumplimiento normativo:** El Manual de Señalización Vial 2024 (Sección 9.3.3.6) establece taxativamente: *"Los postes SOS deben tener una altura de 4,90 m"*
2. **Altura arbitraria:** 6 metros no tiene sustento técnico ni normativo. No es estándar comercial ni cumple el Manual 2024
3. **Sobrecosto estructural:** Poste de 6m vs 4.90m requiere:
   - Tubo estructural más grueso
   - Cimentación más profunda
   - Sobrecosto estimado: ~$300 USD/sitio × 88 = **$26,400 USD**
4. **Mantenimiento complejo:** Requiere grúa canasta para acceder a baterías en altura

### **¿Cómo atenderlo?**

**REEMPLAZAR** especificación rígida de 6m con redacción que cumpla Manual 2024 y permita flexibilidad para nodos ITS:

### **TEXTO CORREGIDO:**

```markdown
**ESPECIFICACIONES DEL POSTE:**

**ALTURA MORFOLÓGICA (Cumplimiento Manual 2024):**

El poste deberá cumplir estrictamente la altura de **4.90 metros** y color **Naranja RAL 2004** definidos en el Manual de Señalización Vial 2024 (Sección 9.3.3.6) para efectos de señalización y morfología visual ante el usuario.

**FLEXIBILIDAD ESTRUCTURAL (Nodos ITS):**

Se permiten estructuras de mayor altura (10m - 12m) cuando el punto SOS se utilice como **Nodo ITS Multipropósito** (integración de cámaras CCTV, radares o enlaces de comunicaciones), siempre que:

1. **Cumplimiento Visual:** Los primeros 4.90 metros del poste se traten visualmente como el dispositivo SOS reglamentario:
   - Pintura Naranja RAL 2004 (0.00m a 5.00m)
   - Señalización reflectiva "SOS" (letras blancas sobre fondo azul)
   - Cintas retrorreflectivas Tipo IV hasta 2.50m de altura

2. **Sección Superior (Soporte Técnico):** El tramo superior (>5.00m) se tratará con acabado neutro (Gris Galvanizado o Blanco) para no alterar la morfología visual estandarizada del dispositivo SOS.

**UBICACIÓN DE COMPONENTES:**

**Configuración Estándar (Poste 4.90m):**
- Botón SOS: 1.20m altura
- Gabinete electrónica: Base del poste
- Gabinete baterías: Base del poste (acceso fácil)
- Panel solar: Montaje en brazo lateral o cima

**Configuración Nodo ITS (Poste 10-12m):**
- Botón SOS: 1.20m altura (zona naranja)
- Gabinete baterías: 8.00m altura (anti-vandalismo)
- Paneles solares: 10.00m altura (cima, sin sombras)
- Cámaras/Antenas: Cima del poste

**JUSTIFICACIÓN BATERÍAS EN ALTURA:**

Para zonas de alto riesgo de vandalismo, se permite instalar las baterías en altura (>4m) con las siguientes condiciones:

1. **Upgrade Estructural:** El poste debe ser certificado para carga de rotura mínima **750 kgf** (RETIE 2024 Art. 2.3.26) para soportar el peso de baterías (60-120 kg) en altura
2. **Upgrade Térmico:** Gabinete con doble pared aislada o uso de baterías de Litio (LiFePO4) que soporten temperaturas >50°C
3. **Mantenimiento:** Incluir breaker de desconexión/reset en zona baja para evitar grúa en cada intervención

**MATERIAL DEL POSTE:**

**Opción A - Acero Galvanizado:**
- Tubo estructural ASTM A36
- Diámetro: 4" a 6" según cálculo estructural
- Espesor: 3 mm mínimo
- Galvanizado en caliente ASTM A123

**Opción B - Fibra de Vidrio (PRFV):**
- Poste certificado RETIE (NTC 6275 / ASCE 104)
- Carga de rotura: 510 kgf o 750 kgf
- Incluir bajante de tierra interna (cable cobre desnudo) para aterrizar equipos metálicos

**CIMENTACIÓN:**

**Poste 4.90m:** Dado de concreto 60×60×60 cm  
**Poste 10-12m:** Dado de concreto 80×80×100 cm (según cálculo NSR-10)

**COLOR:** RAL 2004 (naranja) hasta 4.90m según Manual 2024
```

**Fundamento Contractual:** Manual de Señalización Vial 2024 (Sección 9.3.3.6) + RETIE 2024 (Art. 2.3.26) + NSR-10

**Ahorro estimado:** $300 × 88 = **$26,400 USD** (vs poste de 6m arbitrario)

**NOTA ESTRATÉGICA:** Esta redacción permite al oferente optimizar costos usando postes estándar de 4.90m en puntos simples, y usar postes de 12m (PRFV 750kgf) solo donde se requiera integración ITS, evitando sobrecosto generalizado.

---

## **OBSERVACIÓN 7: ESTRATEGIA DE NODO ITS HÍBRIDO (CRÍTICA)**

### **Observación:**

El TDR actual define el Poste SOS como un dispositivo aislado (solo teléfono de emergencia). Sin embargo, la infraestructura de 88 puntos SOS representa una oportunidad estratégica para crear **Nodos ITS Multipropósito** que integren:

- Sistema SOS (teléfono de emergencia)
- Cámaras CCTV de seguridad vial
- Radares de velocidad
- Puntos de concentración de comunicaciones (switches)

**Problemas del enfoque actual:**

1. **Subutilización de infraestructura:** Instalar 88 postes solo para teléfonos es ineficiente cuando se pueden aprovechar como nodos tecnológicos
2. **Doble inversión futura:** Si después se requieren cámaras, habrá que instalar nuevos postes cercanos (duplicando obra civil, energía, comunicaciones)
3. **Energía insuficiente:** El kit solar dimensionado solo para SOS (140W/50Ah) no soporta cargas adicionales

### **¿Cómo atenderlo?**

**AGREGAR** sección de configuración opcional para Nodos ITS:

### **TEXTO PROPUESTO (NUEVA SECCIÓN EN TDR):**

```markdown
**CONFIGURACIÓN OPCIONAL: NODO ITS MULTIPROPÓSITO**

El oferente podrá proponer, para sitios estratégicos identificados en su oferta, una configuración de **Poste SOS como Nodo ITS**, integrando funcionalidades adicionales de seguridad vial.

**ÍTEMS DE PAGO SEGREGADOS:**

- **ÍTEM A:** Poste SOS Estándar (Solo teléfono) × XX unidades
- **ÍTEM B:** Poste SOS + Nodo ITS (Teléfono + Cámara + Energía reforzada) × XX unidades

**ESPECIFICACIONES NODO ITS:**

**1. ESTRUCTURA:**
- Poste PRFV o Acero Galvanizado: 10m - 12m altura total
- Carga de rotura certificada: 750 kgf o 1350 kgf (RETIE 2024)
- Acabado bicolor:
  - 0.00m a 5.00m: Naranja RAL 2004 (Cumplimiento Manual 2024)
  - 5.00m a cima: Gris/Blanco (Soporte técnico)

**2. SISTEMA DE ENERGÍA REFORZADO:**

**Paneles Solares:**
- Potencia: 300W - 400W (Monocristalino, eficiencia >19%)
- Montaje: Cima del poste (10m) para evitar sombras
- Certificación: IEC 61215

**Baterías:**
- Capacidad: 200Ah - 250Ah (Banco 24V)
- Tecnología: Litio LiFePO4 (preferido por peso y temperatura) o AGM/GEL ciclo profundo
- Ubicación: Gabinete en altura (8m) para seguridad anti-vandalismo
- Vida útil: >2,000 ciclos @ DoD 80%

**Autonomía:** 48 horas sin aporte solar (Manual 2024 §2.7.6) para carga total (SOS + Cámara + Switch)

**Consumo estimado:**
- SOS: 2W continuo
- Cámara CCTV: 15-25W continuo
- Switch industrial: 10-15W continuo
- **Total:** ~50W continuo = 1,200 Wh/día

**3. EQUIPOS ITS INTEGRADOS:**

**Cámara CCTV:**
- Resolución: 2MP mínimo (1080p)
- Compresión: H.265
- Iluminación: IR 50m o Starlight
- Montaje: Cima del poste (10-12m) con ángulo ajustable

**Switch Industrial:**
- Puertos: 5 puertos Gigabit Ethernet mínimo
- Alimentación: PoE+ (802.3at) para cámara
- Rango térmico: -40°C a +75°C
- Certificación: IP67 (montaje intemperie)

**4. PUESTA A TIERRA (RETIE):**

Para postes de fibra de vidrio (material no conductor):
- Cable de cobre desnudo 2/0 AWG bajante interno desde cima hasta malla de tierra
- Borneras equipotenciales en cada gabinete metálico (baterías, cámara)
- Resistencia de puesta a tierra: R ≤ 10 Ω (Kit Base + mejoramiento según Observación #2)

**5. COMUNICACIONES:**

- Fibra óptica (primaria) + GSM 4G (backup opcional)
- Protocolos: ONVIF (cámara) + SNMP (monitoreo) + SIP (VoIP)

**JUSTIFICACIÓN ESTRATÉGICA:**

Esta configuración permite:
- **Maximizar ROI:** Una sola estructura para múltiples funciones (SOS + Seguridad + Comunicaciones)
- **Reducir OPEX futuro:** Evita duplicar mantenimiento de infraestructuras separadas
- **Cumplimiento normativo:** Mantiene morfología SOS reglamentaria (4.90m naranja) mientras aprovecha altura para ITS
```

**Fundamento Contractual:** Optimización de infraestructura ITS + Manual de Señalización Vial 2024 + RETIE 2024

**Ahorro estimado (vs instalar postes separados):** ~$150,000 USD en obra civil + energía + comunicaciones duplicadas

**NOTA:** Esta observación no elimina la opción de postes SOS estándar (4.90m), sino que ofrece una alternativa estratégica para maximizar la inversión en sitios críticos.

---

## 📊 RESUMEN CONSOLIDADO DE CORRECCIONES Y AHORROS

| Concepto | Observación | Ahorro USD |
|:---------|:------------|:-----------|
| Eliminación reportes locales → Arquitectura SCADA centralizada | #4 | **$176,000** |
| Autonomía 72h → 48h (Manual 2024) | #3 | **$44,000** |
| Altura poste 6m → 4.90m (Manual 2024) | #6 | **$26,400** |
| Comunicación dual → Segregada (solo sitios sin fibra) | #5 | **$23,400** |
| **SUBTOTAL AHORROS DIRECTOS** | - | **$269,800** |
| Riesgo eliminado: SPT con kit base + precios unitarios | #2 | **$35,000** |
| Riesgo eliminado: Normas UNE (competencia artificialmente limitada) | #1 | Variable |
| **Estrategia Nodo ITS Híbrido** (vs postes separados futuros) | #7 | **$150,000** |
| **AHORRO OPEX ANUAL** (Plan datos GSM eliminado) | #5 | **$14,040/año** |

**TOTAL AHORROS ESTIMADOS CAPEX:** **>$454,000 USD**  
**TOTAL AHORROS ESTIMADOS OPEX:** **$14,040 USD/año**

**NOTA ESTRATÉGICA:** La Observación #7 (Nodo ITS Híbrido) no genera ahorro inmediato, pero evita duplicar infraestructura futura (postes + energía + comunicaciones) si se requieren cámaras o radares posteriormente.

---

## ✅ OBSERVACIONES ADICIONALES MENORES

### **7. Placa de acceso - Sobre-dimensionada**

**Línea 420:** "Placa de concreto... mínimo un ancho 1,50 m x un largo de 1,70 m, con 20 cm de espesor reforzada."

**Problema:** Placa de 2.55 m² × 20 cm es excesiva. Estándar: 1.0 × 1.2 m × 10 cm

**Ahorro:** $150 × 88 = **$13,200 USD**

---

### **8. Barandas de protección - Innecesarias**

**Línea 422:** "Se debe considerar la colocación de barandas de protección... 3 barandas de 1,3 m de ancho por 1,2 m de alto"

**Problema:** Las barandas NO son requisito del Manual de Señalización Vial 2024. Solo se requieren en zonas de alto riesgo (puentes, curvas peligrosas)

**Ahorro:** $400 × 88 = **$35,200 USD** (si se eliminan de sitios no críticos)

---

### **9. Cimentación - Sobre-dimensionada**

**Línea 418:** "Cimentación tipo dado de 80x80x80 cm"

**Problema:** Para poste de 4m, cimentación de 60×60×60 cm es suficiente según NSR-10

**Ahorro:** $200 × 88 = **$17,600 USD**

---

## 📋 RESUMEN TOTAL DE AHORROS

| Categoría | Ahorro USD |
|:----------|:-----------|
| **Ahorros Principales (Obs. 1-7)** | **$454,800** |
| **Ahorros Adicionales (Obs. 8-10)** | **$66,000** |
| **TOTAL AHORROS CAPEX** | **$520,800** |
| **AHORRO OPEX ANUAL** | **$14,040/año** |

**NOTA:** Los ahorros de la Observación #7 (Nodo ITS Híbrido - $150K) se materializan al evitar duplicar infraestructura futura (postes + energía + comunicaciones) cuando se requieran cámaras o radares.

---

**Preparado por:** Ingeniería TM01 (EPC)  
**Fecha:** 10 de Febrero de 2026  
**Versión:** 1.0 - Observaciones Detalladas  
**Estado:** ✅ Listo para Consolidación
