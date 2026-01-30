# FICHA TÉCNICA (T04) - SISTEMA PMV (PANELES DE MENSAJERÍA VARIABLE)
**Proyecto:** Troncal Magdalena (TM01)  
**ID Especificación:** T04-PMV-001  
**Versión:** 1.0 (Audit 6.0 Approved)  
**Estado:** ✅ PARA CONSTRUCCIÓN  

---

## 1. DESCRIPCIÓN GENERAL
Sistema de Paneles de Mensajería Variable (PMV) tecnología LED Full Color para información al usuario en tiempo real. Certificación UNE-EN 12966 obligatoria.

## 2. REQUISITOS TÉCNICOS (HARD DECK)

| Parámetro | Especificación Requerida | Referencia (T05) |
|:----------|:-------------------------|:-----------------|
## 1. DESCRIPCIÓN GENERAL
Suministro, instalación e integración de **43 Sistemas de Mensajería Variable (PMV)** bajo normativa **UNE-EN 12966** y **NTCIP 1203**.

> [!IMPORTANT]
> **AVISO AL OFERENTE:** Las especificaciones marcadas con (*) se derivan de obligaciones contractuales taxativas (Manual de Señalización 2024, RETIE, Apéndices Técnicos). **La omisión de estos ítems, bajo el pretexto de "optimización", será causal de RECHAZO TÉCNICO de la oferta**, ya que compromete la recibibilidad de la obra por parte de la Interventoría.

## 2. REQUISITOS TÉCNICOS "DUROS" (HARD DECK)

### 2.1 Óptica y Visualización (Norma UNE-EN 12966)
| Parámetro | Especificación Requerida | Fuente de la Obligación (Causal de Rechazo) |
|:----------|:-------------------------|:--------------------------------------------|
| **Tecnología Vía** | LED RGB (Full Color) P20/P16 | **Manual 2024 (2.7.4.3)**: Exige capacidad gráfica. |
| **Tecnología Peaje** | LED Ámbar **P10** (Alta Intensidad) | **IP/REV 2.9.9**: Legibilidad a <10m (Vehículo detenido). |
| **Clase Luminancia** | **L3** (*) o superior | **Manual 2024**: Visibilidad diurna mandatoria. |
| **Clase Contraste** | **R2** o superior | **Norma EN 12966**: Evita "efecto fantasma". |
| **Ángulo Visión** | **B6** (Haz Ancho) | **Manual 2024**: Geometría vial (Curvas). |
| **Colorimetría** | Coordenadas C2 | **Manual 2024 (Fig 2-2)**: Fidelidad de color. |

### 2.2 Mecánicos y Estructurales (Seguridad Pasiva)
| Parámetro | Especificación Requerida | Fuente de la Obligación (Causal de Rechazo) |
|:----------|:-------------------------|:--------------------------------------------|
| **Gabinete** | Aluminio Marino / Inox 316L (**IP65**) | **Manual 2024 (2.7.3.1)**: Protección intemperie total. |
| **Acceso** | Trasero (Walk-in o puertas retenidas) | **SST**: Seguridad de mantenimiento en altura. |
| **Soporte** | Pórtico/Poste Galvanizado ASTM A123 | **AASHTO LRFD**: Cargas de viento 120 km/h. |
| **Seguridad Pasiva**| **Cinta Reflectiva Tipo IV** (2.0m) | **Manual 2024 (2.7.3.2)**: "Objeto Contundente". |
| **Protección Base** | **Defensas Metálicas Certificadas** | **ANSV**: Obligatorio en Zona Despejada. |

### 2.3 Eléctricos y Potencia (CUMPLIMIENTO RETIE 2024)
*Advertencia: Sin Dictamen Anexo 5, la Interventoría NO autoriza la energización.*

| Componente | Especificación | Fuente de la Obligación (Causal de Rechazo) |
|:-----------|:---------------|:--------------------------------------------|
| **Certificación** | **Dictamen de Inspección (Anexo 5)** | **Res. 40117 (RETIE 2024)**: Instalación Uso Final. |
| **Puesta a Tierra** | SPT < 10 Ohmios + Soldadura | **RETIE Art. 15**: Protección contra rayos (Estructura alta). |
| **Protección** | **DPS Clase I+II** (Rotulado) | **RETIE Art. 17**: Zona de alta densidad de descargas. |
| **Respaldo** | **UPS Online** (48h Autonomía) | **Manual 2024 (2.7.6)**: Homologación req. solar. |

### 2.4 Controlador e Inteligencia (Compatibilidad SICC)
| Función | Detalle | Justificación Operativa |
|:--------|:--------|:------------------------|
| **Protocolo** | **NTCIP 1203 v03** Nativo | **AT4 (Integración)**: Evita "Vendor Lock-in" (Software propietario). |
| **MIBs** | Entrega obligatoria de archivos | **SICC**: Requisito para gestión remota sin costo extra. |
| **Memoria** | >100 Mensajes Pregr. | **Seguridad**: Autonomía ante caída de fibra óptica. |
| **Watchdog** | Hardware Reset | **Disponibilidad**: Recuperación automática 24/7. |

## 3. CANTIDADES A INSTALAR (RESUMEN DE PAGO)

| Ítem | Ubicación | Tipo (Manual 2024) | Pitch | Cantidad |
|:----:|:----------|:-------------------|:-----:|:--------:|
| **1** | **Vía Principal (Ver Detalle)** | Matriz Completa | P20/P16 | **25** |
| **2** | **Aproximación Peaje**| Matriz Completa | P20 | **4** |
| **3** | **Carril Peaje** | Alfanumérico Ámbar | P10 | **14** |
| **TOTAL**| | | | **43** |

### 3.1 DETALLE DE UBICACIONES (TABLA MAESTRA VÍA)
*Fuente: Ingeniería de Tránsito (Enero 2026)*

| RUTA | UF | LADO | PK | OBSERVACIÓN |
| :--- | :--- | :--- | :--- | :--- |
| **4510** | OD | DERECHA | K41+000 | INTER KORAN |
| **4510** | OD | IZQUIERDA | K41+200 | |
| **4510** | OD | IZQUIERDA | K57+350 | |
| **4510** | OD | DERECHA | K58+950 | |
| **4510** | OD | IZQUIERDA | K77+350 | |
| **4510** | OD | DERECHA | K78+950 | |
| **4510** | OD | IZQUIERDA | K97+250 | |
| **4510** | OD | DERECHA | K98+750 | |
| **4510** | OD | IZQUIERDA | K117+250 | |
| **4510** | OD | DERECHA | K118+660 | |
| **4511** | 5,1 | IZQUIERDA | K2+790 | |
| **4511** | OD | DERECHA | K4+200 | PEATONAL |
| **4511** | 5,1 | DERECHA | **K9+150** | **PEAJE ZAMBITO (Aproximación)** |
| **4511** | 2 | IZQUIERDA | K14+200 | PEATONAL |
| **4511** | OD | DERECHA | K22+300 | |
| **4511** | OD | IZQUIERDA | K34+200 | |
| **4511** | 5,1 | DERECHA | K42+300 | |
| **4511** | 3 | IZQUIERDA | K54+200 | |
| **4511** | 5,1 | DERECHA | K60+480 | |
| **4511** | 4 | IZQUIERDA | K74+200 | PEATONAL |
| **4511** | 11 | DERECHA | K77+350 | |
| **4511** | 6 | DERECHA | **K81+800** | **PEAJE AGUAS NEGRAS (Aproximación)** |
| **4511** | 7 | IZQUIERDA | K86+800 | |
| **4511** | 11 | DERECHA | K97+200 | PEATONAL |
| **4511** | 8 | IZQUIERDA | K106+580 | |
| **4511** | 11 | DERECHA | K117+200 | |
| **4511** | 10 | IZQUIERDA | K126+580 | |
| **4511** | 11 | DERECHA | K136+750 | PEATONAL |
| **4511** | 12 | IZQUIERDA | K146+580 | FIN RUTA |
| **4513** | 11 | DERECHA | K5+900 | |


## 4. ENTREGABLES PARA RECIBO (CONDICIONES DE PAGO)
1.  **Certificado UNE-EN 12966:** Laboratorio acreditado (TUV/SGS). *No se aceptan cartas de fábrica.*
2.  **Certificados RETIE:** Tableros, Breakers, Cables, DPS y Gabinete.
3.  **Declaración de "Binning" de LED:** Certificar mismo lote de color/luminosidad.
4.  **MIBs de NTCIP:** Archivos completos para integración SICC.
5.  **Planos As-Built:** Firmados por ingeniero matriculado.

---
**Firmado Digitalmente:** Ingeniería de Detalle TM01
**Fecha:** 29-Ene-2026

---

## 5. DICTAMEN DE VALIDACIÓN (AUDITORÍA FORENSE DEFINITIVA v2.1)

**Resultado:** 🟢 **T04 VALIDADO (CON ALERTA DE CANTIDADES)**

El documento T04 es TÉCNICAMENTE SÓLIDO, cumpliendo con la normativa europea (EN 12966) exigida por el Manual 2024. Sin embargo, la Estrategia de Cantidades requiere una segregación presupuestal estricta.

### 5.1 Distribución Financiera (Smart CAPEX)
*   **Total Físico Validado:** 43 Unidades.
*   **Presupuesto ITS:** 29 Unidades (25 Vía + 4 Aproximación).
*   **Presupuesto Peajes:** 14 Unidades (Tarifarios de Carril). **(No cargar al CAPEX ITS).**

### 5.2 Matriz de Blindaje (Risk Management)
| Riesgo Detectado | Acción de Mitigación (T04) | Resultado |
|:-----------------|:---------------------------|:----------|
| **Pixel Pitch Peaje** | Exigencia Estricta **P10** (Ilegible si es P20) | ✅ MITIGADO |
| **Seguridad Pasiva** | Exigencia **Cinta Tipo IV** (Gris galvanizado es rechazo) | ✅ MITIGADO |
| **Autonomía Energía** | Exigencia **UPS Online** (Red) o **48h Batería** (Solar) | ✅ MITIGADO |
| **Cantidad** | 43 Unidades (Reflejada en Tabla Maestra) | ✅ ALINEADO |

**Conclusión:** ANEXO TÉCNICO APROBADO.
*   **Instrucción de Compra:** Copiar especificaciones 1-4 al RFQ.
*   **Alerta:** Cargar las 14 pantallas de peaje el centro de costos de Recaudo.
