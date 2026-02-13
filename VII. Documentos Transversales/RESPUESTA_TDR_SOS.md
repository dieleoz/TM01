OBSERVACIONES TÉCNICAS Y CONTRACTUALES
TÉRMINOS DE REFERENCIA
SISTEMA DE POSTES DE EMERGENCIA SOS
Convocatoria Privada No. 001 de 2026
Contrato de Concesión APP No. 002 de 2022
ANI - Autopistas del Magdalena Medio S.A.S.
TM01 - Puerto Salgar - Barrancabermeja
Febrero 2026
 
RESUMEN EJECUTIVO
El presente documento contiene las observaciones técnicas y contractuales identificadas en la revisión de los Términos de Referencia (TDR) del Sistema de Postes de Emergencia SOS, emitidos en el marco de la Convocatoria Privada No. 001 de 2026.
Las observaciones se fundamentan en el marco normativo colombiano vigente, específicamente el Manual de Señalización Vial 2024 (Resolución 20243040001135), el RETIE 2024 (Resolución 40117 del 2 de abril de 2024), la NTC 2050 (Código Eléctrico Colombiano) y los Apéndices Técnicos del Contrato APP No. 002 de 2022.
El objetivo es aportar precisiones que fortalezcan los TDR, aseguren el cumplimiento normativo y faciliten la comparabilidad de las ofertas técnicas.
Resumen de Observaciones:
No.	Observación	Fundamento
1	Depuración de normas aplicables	RETIE 2024 / NTC 2050
2	Puesta a Tierra - Definición de alcance y kit base	RETIE 2024, Art. 3.12.3
3	Autonomía fotovoltaica - Ajuste a Manual 2024	Manual de Señalización Vial 2024, §2.7.6
4	Reportes y alarmas - Precisión de arquitectura	Arquitectura SCADA/ITS estándar
5	Altura del poste - Ajuste a Manual 2024	Manual 2024, §9.3.3.6
6	Ingeniería de Detalle y Dimensionamiento	Buena práctica contractual
7	Protección del poste - Revisión con Seguridad Vial	Manual 2024, §9.3.3.6
8	Dimensionamiento de obra civil (placa y cimentación)	NSR-10 / Responsabilidad EPC
9	Estrategia Nodo ITS Híbrido (recomendación)	Optimización de infraestructura ITS
 
OBSERVACIÓN 1: DEPURACIÓN DE NORMAS APLICABLES
1.1 Diagnóstico
El TDR incluye referencias normativas que corresponden a otros subsistemas (pesaje, iluminación) o que no son exigibles en Colombia. Se recomienda depurar el listado para evitar confusiones en la evaluación de propuestas y asegurar el cumplimiento del marco regulatorio colombiano vigente.
1.2 Normas que se sugiere retirar del TDR
Norma en TDR	Observación	Sustento
Resolución 77506/2016 (SIC)	Regula Instrumentos de Pesaje (Básculas)	No aplica al subsistema de telefonía SOS.
NTC 2031	Sistemas de Iluminación y Alumbrado Público	Corresponde al subsistema de Iluminación, no a postes SOS.
NEC (National Electrical Code, USA)	Norma estadounidense	En Colombia la norma aplicable es la NTC 2050 (Código Eléctrico Colombiano).
Normas UNE (España)	Normas europeas	UNE 4826, UNE 20-550, UNE 20-324, UNE 20-501 no son exigibles ante RETIE 2024. Se sugiere reemplazar por equivalentes NTC/NEMA.
1.3 Normas a Mantener (Obligatorias)
A. Marco Legal y Eléctrico
RETIE 2024 (Resolución 40117): Aplicable al gabinete, protecciones, puesta a tierra y sistema solar.
NTC 2050 (Código Eléctrico Colombiano): Base del diseño eléctrico interno del poste y acometidas.
Manual de Señalización Vial 2024: Define color Naranja RAL 2004, altura 4.90 m y señalización gráfica del poste SOS.
B. Telecomunicaciones y Tecnología
ITU: Voz sobre IP (VoIP), códecs G.711 y G.729.
IEEE 802.3: Ethernet para red de Fibra Óptica y alimentación PoE.
ISO TC-204: Arquitectura ITS. ISO 9001: Calidad de fabricación.
C. Materiales y Gabinetes
NEMA: Estanqueidad de gabinetes (NEMA 4X equivalente a IP65/IP66).
TIA/EIA: Cableado estructurado Cat. 6 y conectores RJ45 dentro del poste.
1.4 Acción Sugerida
Retirar del TDR las normas que no corresponden al subsistema SOS y reemplazar las referencias a normas UNE por sus equivalentes colombianos (NTC) o internacionales (NEMA, IEC) según corresponda.
OBSERVACIÓN 2: PUESTA A TIERRA - DEFINICIÓN DE ALCANCE
2.1 Texto Actual del TDR
"La oferta incluirá el suministro e instalación de una tierra eléctrica acorde con lo especificado en la norma RETIE según Resolución 40117 del 2 de abril de 2024"
2.2 Observación
La redacción actual es abierta y cada proponente podría interpretar de manera diferente el alcance del sistema de puesta a tierra. Se sugiere definir un kit base estándar y un mecanismo de mejoramiento escalonado con precios unitarios, para que las ofertas sean comparables y se eviten reclamaciones posteriores por condiciones de suelo.
2.3 Texto Sugerido
SISTEMA DE PUESTA A TIERRA (SPT)
Normativa: RETIE 2024 (Resolución 40117), Artículo 3.12.3: "La resistencia de puesta a tierra será menor o igual a 10 ohmios."
KIT BASE (Incluido en precio global por sitio):
Cada Poste SOS incluirá:
•	3 varillas Copperweld 5/8" x 2.4 m, clavadas a 3 m de profundidad con separación >3 m entre varillas (triángulo)
•	Cable de cobre desnudo calibre 2/0 AWG (67 mm²) enterrado a 50 cm de profundidad
•	Uniones mediante soldadura exotérmica (Cadweld o equivalente)
•	Caja de inspección de concreto con tapa metálica (30x30 cm)
•	Barra equipotencial de cobre en base de poste
•	Cable tierra del gabinete a barra: Cobre aislado verde/amarillo 2/0 AWG
Objetivo de desempeño: R ≤ 10 Ω medido con telurómetro método Wenner.
MEJORAMIENTO GEOTÉCNICO (Ítems unitarios condicionales):
Si tras instalar el Kit Base la resistencia medida es R > 10 Ω, se aplicará la siguiente secuencia escalonada, pagando únicamente lo ejecutado:
Paso	Descripción	Unidad de Pago
Paso 1	Varillas adicionales (una a la vez, máx. 3 adicionales = total 6). Medir después de cada varilla.	COP/varilla instalada
Paso 2	Gel conductor bentonítico (Thor-Gel o equiv.) en pozo de cada varilla. Dosis: 5 kg/varilla.	COP/varilla tratada
Paso 3	Extensión de cable enterrado en forma de cruz +10 m en cada dirección.	COP/metro lineal
Procedimiento de verificación:
1.	Medir resistividad aparente del suelo antes de instalación (registro fotográfico)
2.	Instalar Kit Base completo
3.	Medir resistencia final con telurómetro método Wenner 4 puntos (registro fotográfico)
4.	Si R ≤ 10 Ω: Aprobado
5.	Si R > 10 Ω: Aplicar secuencia escalonada hasta lograr R ≤ 10 Ω
6.	Llenar formato de prueba SPT con valores medidos y firma Interventoría
Entregables por sitio: Medición de resistividad del suelo (Ω·m); protocolo de prueba con telurómetro (marca, modelo, certificado calibración vigente); fotografías; certificado R ≤ 10 Ω firmado por Interventoría.
Nota contractual: El Oferente cotizará Kit Base como precio global x 88 sitios y Mejoramiento como precios unitarios condicionales. Esto permite comparabilidad de ofertas.
OBSERVACIÓN 3: AUTONOMÍA FOTOVOLTAICA
3.1 Texto Actual del TDR
"Alimentación: Sistema Fotovoltaico incluida en la misma solución. La autonomía del sistema debe ser mínimo de 72 horas"
3.2 Observación
El Manual de Señalización Vial 2024 (numeral 2.7.6) establece 48 horas de autonomía para sistemas ITS. El Contrato APP 002/2022 no establece un requerimiento diferente para postes SOS. Se sugiere ajustar a lo normado.
3.3 Texto Sugerido
SISTEMA DE ENERGÍA FOTOVOLTAICA
Autonomía: Mínimo 48 horas sin aporte solar según Manual de Señalización Vial 2024, numeral 2.7.6.
Voltaje BUS DC: 12 VDC.
Equipos a alimentar:
•	Controlador SOS (electrónica dual IP/GSM)
•	Switch industrial (15W)
•	Sistema de iluminación LED del poste
•	Altavoces y micrófono
Componentes del sistema:
•	Paneles solares: Tecnología monocristalina, eficiencia >19%
•	Baterías: GEL o AGM ciclo profundo, vida útil >1,500 ciclos
•	Controlador de carga: MPPT, eficiencia >98%, protecciones contra sobrecarga, descarga profunda y cortocircuito
•	Cableado solar: Cable fotovoltaico 10 AWG mínimo
Dimensionamiento: El proponente deberá calcular y justificar: radiación solar promedio de la zona (kWh/m²/día), consumo diario total (Wh/día), días de autonomía: 2 días (48h), y pérdidas del sistema: 25%.
Entregables: Memoria de cálculo energético, datasheet de paneles solares, datasheet de baterías con ciclos de vida, datasheet de controlador MPPT.
 
OBSERVACIÓN 4: REPORTES Y ALARMAS - PRECISIÓN DE ARQUITECTURA
4.1 Texto Actual del TDR
"Reporte de fallas diarias, semanal y mensual."
4.2 Observación
La redacción actual podría interpretarse como que el controlador del poste SOS debe generar reportes administrativos localmente, lo cual implicaría instalar hardware adicional innecesario. Un controlador de campo es un dispositivo embebido cuya función es gestionar llamadas VoIP y exponer su estado operativo. Los reportes son responsabilidad del software SCADA del Centro de Control.
Adicionalmente, se recomienda no detallar alarmas específicas del hardware en el TDR (ej. sensores puntuales), ya que esto podría restringir la participación a soluciones de marcas específicas. Lo adecuado es exigir que la solución exponga sus alarmas estándar mediante protocolo abierto, dejando al oferente presentar las capacidades de su equipo.
4.3 Redacción Sugerida
Gestión y Monitoreo
El controlador del Poste SOS no almacenará históricos ni generará reportes localmente. Su función se limitará a la gestión de llamadas VoIP y a la exposición de su estado operativo mediante protocolo estándar MODBUS TCP/IP o SNMP v3 hacia el software SCADA del Centro de Control.
Variables de monitoreo: El poste deberá permitir la lectura remota de sus variables de estado en tiempo real mediante protocolo estándar. Las variables específicas serán las propias de la solución ofertada y deberán incluir, como mínimo, el estado de conectividad (latencia, registro SIP) y el estado general del equipo.
Alarmas: El TDR no detallará alarmas puntuales del hardware. Se exigirá que la solución ofertada exponga sus alarmas estándar de fábrica mediante protocolo abierto (SNMP v3 / Modbus TCP/IP) para integración con el SCADA del CCO. El oferente deberá entregar en su propuesta el listado de alarmas disponibles en su solución (MIB files / mapa de registros Modbus).
Integración: El sistema deberá permitir integración con el software SCADA del CCO mediante al menos uno de los siguientes mecanismos: API REST, ODBC, SNMP Traps o archivos MIB. El diccionario de datos (TAGs/OIDs) será entregable del contratista.
Responsabilidad del SCADA (CCO): Será función exclusiva del software central y no del poste: detectar pérdida de comunicación, generar históricos de disponibilidad, reportes de fallas y estadísticas de llamadas, y almacenar grabaciones de audio y logs de eventos.
 
OBSERVACIÓN 5: ALTURA DEL POSTE
5.1 Texto Actual del TDR
"Postes de 6 m de altura: Las baterías se instalarán, por seguridad, en la parte alta del poste y con corona antiescalatoria."
5.2 Observación
El Manual de Señalización Vial 2024 (Sección 9.3.3.6) establece que los postes SOS deben tener una altura de 4.90 metros. Se sugiere ajustar la especificación base a lo normado y dejar la posibilidad de mayor altura solo para puntos donde se requiera integración ITS.
5.3 Texto Sugerido
El poste deberá cumplir la altura de 4.90 metros y color Naranja RAL 2004 definidos en el Manual de Señalización Vial 2024 (Sección 9.3.3.6).
Flexibilidad Estructural (Nodos ITS)
Se permiten estructuras de mayor altura (6m - 12m) cuando el punto SOS se utilice como Nodo ITS Multipropósito, siempre que:
7.	Cumplimiento Visual: Los primeros 4.90 metros se traten visualmente como dispositivo SOS reglamentario: Pintura Naranja RAL 2004, señalización reflectiva "SOS" (letras blancas sobre fondo azul), cintas retrorreflectivas Tipo IV hasta 2.50m de altura.
8.	Sección Superior (>5.00m): Acabado neutro (Gris Galvanizado o Blanco) para no alterar la morfología visual del dispositivo SOS.
Ubicación de Componentes
Componente	Poste Estándar (4.90m)	Nodo ITS (6-12m)
Botón SOS	1.20m altura	1.20m altura (zona naranja)
Gabinete electrónica	Base del poste	Base del poste
Gabinete baterías	Base del poste	En altura (anti-vandalismo)
Panel solar	Brazo lateral o cima	Cima del poste
Cámaras/Antenas	N/A	Cima del poste
Material del Poste
Opción A - Acero Galvanizado: Tubo estructural ASTM A36, diámetro 4" a 6", espesor 3 mm mínimo, galvanizado en caliente ASTM A123.
Opción B - Fibra de Vidrio (PRFV): Poste certificado RETIE (NTC 6275 / ASCE 104), carga de rotura 510 kgf o 750 kgf. Incluir bajante de tierra interna.
Cimentación
Poste 4.90m: Dado de concreto 60x60x60 cm.
Poste 6-12m: Dado de concreto 80x80x100 cm (según cálculo NSR-10).
 
OBSERVACIÓN 6: INGENIERÍA DE DETALLE Y DIMENSIONAMIENTO
6.1 Entregables Fase 1
Una vez perfeccionado el contrato, el contratista deberá entregar la siguiente documentación técnica para aprobación de la Interventoría:
•	Planos de Implantación y Topología: Ubicación georreferenciada de cada poste SOS indicando PK, sentido y coordenadas.
•	Memoria de Cálculo del Sistema Fotovoltaico: Justificación del dimensionamiento para garantizar autonomía de 48 horas.
•	Planos de Obra Civil y Cimentación: Dados de concreto, pernos de anclaje, acometidas y caja de inspección para fibra óptica.
•	Diagramas de Conexión: Esquemas unifilares eléctricos y diagramas de bloques (Red IP/VoIP).
•	Diccionario de Datos (TAGs): Listado de variables (OIDs/Registros Modbus) para integración SCADA, mediante API o ODBC.
•	Planos de Seguridad Vial: Ubicación de Defensa Metálica y señalización vertical según Manual 2024.
•	Fichas Técnicas Homologadas: Dossier de todos los equipos demostrando cumplimiento de especificaciones.
6.2 Dimensionamiento del Gabinete
El gabinete será dimensionado para alojar holgadamente:
•	Baterías (GEL o AGM según dimensionamiento energético)
•	Controlador SOS (electrónica dual IP/GSM)
•	Controlador solar MPPT
•	Switch industrial + patch panel fibra óptica
•	Borneras de conexión y protecciones
•	Espacio libre >30% para ventilación y futuras ampliaciones
 
OBSERVACIÓN 7: PROTECCIÓN DEL POSTE - REVISIÓN CON SEGURIDAD VIAL
7.1 Texto Actual del TDR
"Se debe considerar la colocación de barandas de protección... 3 barandas de 1,3 m de ancho por 1,2 m de alto"
7.2 Observación
El TDR especifica "barandas peatonales" (pasamanos arquitectónicos). Sin embargo, el Manual de Señalización Vial 2024 §9.3.3.6 indica que el área frente al poste SOS debe estar protegida con una barrera metálica que delimita una zona segura. La protección vehicular es normalmente responsabilidad del especialista de seguridad vial, quien debería integrar la defensa del poste SOS dentro de su diseño general de seguridad del corredor.
7.3 Sugerencia
Se recomienda coordinar con el especialista de seguridad vial para definir el tipo de protección adecuada (Defensa Metálica Certificada / Guardarrail) en función de la exposición de cada punto al tráfico vehicular. No todos los 88 puntos requieren el mismo nivel de protección.
Criterio orientativo:
•	Requiere defensa vehicular: Poste en zona despejada con tráfico >60 km/h; poste en curva o pendiente.
•	No requiere defensa vehicular: Poste en berma protegida o zona peatonal.
OBSERVACIÓN 8: DIMENSIONAMIENTO DE OBRA CIVIL
8.1 Placa de Acceso
Texto TDR: "Placa de concreto... mínimo un ancho 1,50 m x un largo de 1,70 m, con 20 cm de espesor reforzada."
Observación: Las dimensiones indicadas parecen excesivas para el acceso peatonal a un poste SOS. Adicionalmente, las adecuaciones civiles son temas propios del EPC (constructor) y no deberían solicitarse al especialista en tecnologías ITS/SOS.
8.2 Cimentación
Texto TDR: "Cimentación tipo dado de 80x80x80 cm"
Observación: Para un poste de 4.90m, una cimentación de 60x60x60 cm es suficiente según NSR-10. La cimentación mayor solo se justifica para postes de 6-12m si la estructura lo amerita.
OBSERVACIÓN 9: ESTRATEGIA NODO ITS HÍBRIDO (RECOMENDACIÓN)
9.1 Contexto
La infraestructura de 88 puntos SOS representa una oportunidad para diseñar algunos de estos puntos como Nodos ITS Multipropósito, integrando en una sola estructura: sistema SOS, cámaras CCTV, radares de velocidad y puntos de concentración de comunicaciones.
9.2 Consideraciones del Enfoque Actual
•	Aprovechamiento de infraestructura: Se puede optimizar el uso de los puntos donde ya se instalarán postes con energía solar, fibra óptica y cimentación.
•	Inversión futura: Si posteriormente se requieren cámaras o radares, se evita duplicar obra civil, energía y comunicaciones.
•	Dimensionamiento energético: El kit solar dimensionado solo para SOS no soporta cargas adicionales; se requiere un segundo cálculo solar para la configuración ampliada.
9.3 Configuración Sugerida: Nodo ITS Multipropósito
Ítems de pago segregados:
•	ÍTEM A: Poste SOS Estándar (solo teléfono) x XX unidades
•	ÍTEM B: Poste SOS + Nodo ITS (teléfono + cámara + energía reforzada) x XX unidades
Especificaciones Nodo ITS
Estructura: Poste PRFV o Acero Galvanizado 6m-12m, carga de rotura 750 kgf o 1350 kgf (RETIE 2024). Acabado bicolor: 0.00m a 5.00m Naranja RAL 2004; 5.00m a cima Gris/Blanco.
Sistema de energía reforzado:
•	Paneles solares: 300W-400W monocristalino, eficiencia >19%, certificación IEC 61215
•	Baterías: 200Ah-250Ah banco 24V, LiFePO4 preferido o AGM/GEL ciclo profundo, >2,000 ciclos @DoD 80%
•	Autonomía: 48h sin aporte solar (Manual 2024 §2.7.6) para carga total
•	Consumo estimado total: ~50W continuo = 1,200 Wh/día (SOS 2W + Cámara 15-25W + Switch 10-15W)
•	Soporte para ampliación: Gabinete dimensionado para panel adicional y batería adicional. Soporte estructural para montaje de panel dual.
Equipos ITS integrados (segundo cálculo solar a soportar):
•	Cámara CCTV: 2MP mínimo (1080p), compresión H.265, IR 50m o Starlight
•	Switch Industrial: 5 puertos Gigabit mínimo, PoE+ (802.3at), rango -40°C a +75°C, IP67
•	Comunicaciones: Fibra óptica (primaria) + GSM 4G (backup). Protocolos: ONVIF + SNMP + SIP
Nota: Esta observación no elimina la opción de postes SOS estándar (4.90m), sino que ofrece una alternativa para maximizar la inversión en sitios estratégicos. Se contempla incluso la posibilidad de instalar cámaras y radares de manera "movible" entre postes SOS, rotando equipos según necesidad operativa.
