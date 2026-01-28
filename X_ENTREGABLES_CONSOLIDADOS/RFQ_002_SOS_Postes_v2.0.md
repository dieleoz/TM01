# RFQ_002: SOLICITUD DE COTIZACIÓN – POSTES SOS (SISTEMA DE TELEFONÍA DE EMERGENCIA)

Proyecto: APP Puerto Salgar – Barrancabermeja (TM01 Troncal Magdalena)  
Entidad: Concesión APP (ruta RN4510 + RN4511 + conexión CCO RN4513)  
Fecha: 16/01/2026  
Versión: v2.0  
Contacto técnico: diego.zuniga@grupoortiz.com  

---

## 1. Introducción y alcance

Se solicita oferta para suministro, instalación, puesta en marcha y garantía de Postes SOS (telefonía de emergencia) duales para el proyecto TM01, incluyendo su integración con el Centro de Control Operacional (CCO). La solución debe contemplar todos los materiales, equipos, servicios, pruebas FAT/SAT, manuales, capacitación, repuestos críticos y O&M inicial.

## 2. Ubicación del proyecto y cantidades

- Corredor: RN4510 (Honda–Río Ermitaño) y RN4511 (Río Ermitaño–La Lizama), con conexión al CCO por RN4513.  
- Longitud total: ~293 km (259.6 km principales + ~33.4 km adicionales hacia CCO).  
- Cantidad total de Postes SOS: 88 unidades (criterio AT1 ≤3 km entre SOS).  
- Despliegue: distribución a lo largo del corredor; se definirá plan detallado por Unidad Funcional (UF) y PK en la orden de compra.  

## 3. Requerimientos funcionales mínimos del SOS

- Operación Full-Dúplex, audio manos libres, reducción de ruido, botones antivandálicos.  
- Señalización: baliza LED alta visibilidad y sirena (parametrizable).  
- DUAL link: IP sobre red de proyecto + respaldo GSM/LTE administrado.  
- Monitoreo: SNMP/HTTP con alarmas (energía, puerta, temperatura, comunicación).  
- Registro eventos y bitácora; sincronización NTP.  
- Seguridad: TLS en tráfico IP; perfiles de usuario; logs exportables.  

## 4. Requerimientos de energía y autonomía

- Alimentación solar con controlador MPPT y banco de baterías.  
- Autonomía requerida: ≥ 72 horas a carga nominal.  
- Baterías: LiFePO4 o equivalente, ≥ 2,000 ciclos; BMS integrado.  
- Entregar cálculo energético completo (HSP locales, pérdidas, sizing panel/batería).  
- Considerar carga adicional de equipo DIN rail (switch L2) con consumo: 0.11A @ 48VDC (≈5.28W) dentro del gabinete.  

## 5. Estructura, poste y gabinete

- Poste: 6 m altura libre; diseño conforme NSR-10 (viento del corredor); galvanizado en caliente ASTM A123.  
- Gabinete: IP66, IK10, acero/aluminio con recubrimiento; ventilación forzada; filtros; supresores de sobretensión (AC/DC y señal); espacio para switch DIN.  
- Puesta a tierra: R<10 Ω; barras, conductor y conectores incluidos.  
- Herrajes, anclajes y cableado incluidos.  

## 6. Cimentaciones

- Opción A (preferida): proveedor diseña, suministra y ejecuta cimentación (planos IFC, memorias y as-built).  
- Opción B: la concesión ejecuta la cimentación con planos/memorias del proveedor (incluir cargas de diseño y plantilla).  
- En ambos casos, cumplir NSR-10 y condiciones geotécnicas típicas de vía.

## 7. Comunicaciones e integración CCO

- Red IP del proyecto: integración vía Ethernet; direccionamiento, VLAN y NTP provistos por el CCO.  
- Respaldo GSM/LTE: SIM/APN administrado para continuidad (especificar carrier y bandas).  
- API/SDK para integración con plataforma CCO (HTTP/REST o SIP/RTP).  
- ONVIF, si la solución incorpora video.  
- SNMP para gestión y monitoreo (MIBs incluidos).  

## 8. Plataforma CCO y servidores

- Redundancia: N+1 para aplicación SOS en CCO (activo/standby; failover automático).  
- Preferencia: virtualización (VMware/Hyper‑V/KVM). Recurso por VM: ≥4 vCPU, 16 GB RAM, 500 GB SSD.  
- Alternativa: servidores físicos 19” (1U/2U); especificar consumo, BTU y RU.  
- Respaldos: snapshots/replicación y plan de contingencia documentado.  
- Puestos de operación: 2 consolas en CCO.  

## 9. Ambiente, operación y mantenimiento

- Temperatura: −10°C a +50°C; HR 5–95%.  
- MTBF documentado de componentes críticos.  
- Manuales de instalación/O&M en español; capacitación inicial (operación y mantenimiento).  
- Lista de repuestos críticos y % stock recomendado.  
- Garantía mínima: 24 meses (equipos y obra).  

## 10. Pruebas y aceptación

- FAT: procedimientos, checklists y evidencias antes de envío.  
- SAT: pruebas en sitio, integración con CCO, parámetros y alarmas.  
- Acta de puesta en marcha por UF; cierre de punch list.  

## 11. Entregables de la oferta

1. Fichas técnicas completas de cada componente del SOS.  
2. Cálculo energético (solar/autonomía) con dimensionamiento.  
3. Memoria de diseño estructural del poste y cimentación.  
4. Plan de instalación y puesta en marcha; cronograma por UF.  
5. Plan de O&M, capacitación y lista de repuestos.  
6. Esquemas de integración CCO; API/SDK; MIBs SNMP.  
7. Garantías y condiciones comerciales.  

## 12. Cronograma de referencia

- Fechas contractuales por UF según C1 §5.2 (T0=26/11/2024).  
- El oferente debe proponer entregas y puesta en marcha por UF; identificar ruta crítica y riesgos.  

## 13. Condiciones comerciales y administrativas

- Moneda: COP (alternar USD si aplica). TRM de referencia para evaluación.  
- Incoterm/Logística: entrega en sitio (corredor); incluir transporte, seguros y maniobras.  
- Validez de la oferta: ≥ 60 días.  
- RUT: se suministra por área administrativa de la Concesión para alta en ERP.  

## 14. Preguntas del proveedor (resueltas)

1) Autonomía requerida → 72 h a carga nominal; baterías LiFePO4; BMS.  
2) Altura estimada postes → 6 m sobre NPT; NSR‑10; galvanizado ASTM A123.  
3) Cimentación por concesión → Viable; preferida ejecución por proveedor; contemplar ambas opciones.  
4) Redundancia servidores → N+1 (aplicación SOS), backups y failover.  
5) Físicos vs virtualizados → Preferido virtualizados; alternativa físicos si se justifica.  

## 15. Formato de respuesta y plazo

- Formato: PDF + anexos técnicos (cálculos, planos, fichas, cronograma, garantías).  
- Plazo de respuesta: Hasta el 06 de febrero de 2026 (21 días calendario).  
- Enviar a: diego.zuniga@grupoortiz.com; CC: daniel.miranda@grupoortiz.com.  

---

Anexos recomendados:  
- T04 – Especificaciones Técnicas Postes SOS (ruta: `IV. Ingenieria Basica/01_T04_Especificaciones_Tecnicas_Postes_SOS_v1.0.md`)  
- Integración con cronograma UF (resumen C1 §5.2) y criterios AT1 (distancias SOS).  



<!-- BLOQUE AUTOMATICO INICIO: SOS -->
### Cantidades Validadas (T05)
| Versión | Fecha | Cambios | Autor |
| 1.0 | 22/10/2025 | Creación inicial - 87 postes SOS | Ing. ITS |
| 1.1 | 22/10/2025 | Revisión con información oficial: 88 postes SOS | Ing. ITS |
| v1.2 | 15/01/2026 | Actualización Contractual: Escalado a 98 unidades (AT1 compliance) | Adm. Contractual EPC |
| v1.3 | 15/01/2026 | Certificación Fase 0.5: Ajuste a 88 unidades (Optimización) | Adm. Contractual EPC |
| v1.4 | 20/01/2026 | Blindaje Técnico .42: Reconciliación 88 unidades y $2.2M CAPEX | Adm. Contractual EPC |
| v1.5 | 20/01/2026 | REVISIÓN NORMATIVA BLOQUEANTE: Restauración a 98 unidades, Color Naranja (RAL 2004), Altura 4.90m, Energía Solar Estándar | Administrador Contractual EPC |
| **v1.7** | **27/01/2026** | **CORRECCIÓN FINAL:** Validación con UF Rehabilitación confirma 88 postes nuevos (98 total - 10 existentes en UF Rehabilitación), CAPEX $2.2M | **Administrador Contractual EPC** |
| Parámetro | Valor | Referencia Contractual / Normativa |
| **Cantidad total** | **88 postes nuevos** | **AT1 L3525 (98 total - 10 existentes en UF Rehabilitación)** |
| **Color del poste** | **Naranja (RAL 2004)** | Manual de Señalización Vial 2024 |
| **Altura estructural** | **4.90 m** | Manual de Señalización Vial 2024 |
| **Energía** | **Solar Fotovoltaica** | Autonomía >48h (Independiente BT) |
| **Separación máxima** | 3.00 km | Apéndice Técnico 1, Línea 3175 |
| **Longitud Corredor** | **293.0 km** | AT1 - Alcance |
| **CAPEX Total** | **$2,200,000 USD** | $25,000/poste instalado |
| **OPEX Anual** | **$52,800 USD** | $600/poste/año |
| **1. EQUIPO POSTE SOS NORMATIVO** | **88** | **$18,000** | **
,584,000** | **72.0%** |
| Poste metálico galvanizado 4.9m | 88 | 
,200 | $105,600 | 4.8% |
| Gabinete control IP65 Naranja | 88 | $800 | $70,400 | 3.2% |
| Sistema Solar (150W + 200Ah) | 88 | 
,500 | $132,000 | 6.0% |
| Teléfono VoIP anti-vandálico | 88 | 
,800 | $158,400 | 7.2% |
| **2. INSTALACIÓN Y PUESTA EN SERVICIO** | **88** | **$4,000** | **$352,000** | **16.0%** |
| Mano de obra montaje 4.9m | 88 | $2,500 | $220,000 | 10.0% |
| Pruebas y comisionamiento SAT | 88 | 
,500 | $132,000 | 6.0% |
| **3. OBRAS CIVILES & INTEGRACIÓN** | **88** | **$3,000** | **$264,000** | **12.0%** |
| Cimentación Reforzada + Tierras | 88 | $2,000 | $176,000 | 8.0% |
| Integración CCO + SCADA | 1 | $85,000 | $85,000 | 3.5% |
| Stock Repuestos (0.5%) | 1 | $13,000 | $13,000 | 0.5% |
| **TOTAL CAPEX SOS** | | | **$2,200,000** | **100%** |
| Ruta | Tramo | Cantidad | PKR Inicio | PKR Fin | Espaciamiento Prom. |
| **RN 4510** | Magdalena | 37 | 41+180 | 131+700 | 2.43 km ✅ |
| **RN 4511** | Puerto Salgar | 46 | 0+650 | 147+385 | 3.19 km ⚠️ |
| **RN 4513** | Acceso CCO | 5 | 1+240 | 6+050 | 0.96 km ✅ |
| **TOTAL NUEVOS** | - | **88** | - | - | **2.99 km** |
| **UF Rehabilitación** | Existentes | 10 | - | - | - |
| **TOTAL PROYECTO** | - | **98** | - | - | **2.99 km ✅** |
| Concepto | Valor (USD) | % |
| **CAPEX (98 postes)** | $2,450,000 | 67.6% |
| **OPEX (20 años)** | 
,176,000 | 32.4% |
| **TOTAL 20 AÑOS** | **$3,626,000** | **100%** |
> Actualizado: 2026-01-28
<!-- BLOQUE AUTOMATICO FIN -->

---
> CERTIFICACION DE COMPRAS: Sincronizado con T05. Cantidades oficiales.

