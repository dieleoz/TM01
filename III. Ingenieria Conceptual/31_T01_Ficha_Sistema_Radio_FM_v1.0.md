# T01: FICHA DE SISTEMA - EMISORA DE RADIO FM
## Proyecto APP Puerto Salgar - Barrancabermeja

**Fecha:** 21 de Enero 2026  
**Sistema:** Emisora de Radio FM Sintonizable  
**Responsable:** Administrador Contractual EPC  
**Versión:** 1.0 (Audit Reconciliation)  
**Estado:** 🔴 Pendiente Aprobación (Hueco de Alcance Identificado)

---

## 1. IDENTIFICACIÓN DEL SISTEMA

| Campo | Valor |
|:------|:------|
| **Nombre del sistema** | Emisora de Radio FM (Información al Usuario) |
| **Categoría** | ITS - Sistemas de Información Variable / Comunicación Masiva |
| **Prioridad** | 🟠 Media-Alta (Obligación AT2) |
| **Fase contractual** | Operación y Mantenimiento |
| **AT relacionados** | AT2 (Sección 3.3.3.2.3) |

---

## 2. DESCRIPCIÓN GENERAL

### 2.1 Propósito del Sistema

El sistema de Emisora de Radio FM tiene como misión proporcionar un canal de audio sintonizable en todo el corredor vial (293 km) para:
- Transmitir información de seguridad vial y estado de la vía.
- Alertar sobre incidentes graves o bloqueos en tiempo real.
- Divulgar campañas de prevención y cultura vial.
- Cumplir con la obligación contractual de "cobertura sintonizable en toda la longitud".

### 2.2 Alcance del Sistema

**Cobertura:** 
- 293 km continuos entre Puerto Salgar y Barrancabermeja.
- Sintonización en radios convencionales de vehículos (Banda FM).

**Componentes:**
- Estación base transmisora en CCO (La Lizama).
- Repetidoras / Gap-fillers a lo largo del corredor.
- Enlace IP vía Fibra Óptica para distribución de señal.
- Gestión de licencias ante el Ministerio TIC.

---

## 3. REQUISITOS CONTRACTUALES

**AT2, Sección 3.3.3.2.3:**
"El Concesionario deberá contar con una emisora de radio sintonizable en toda la longitud del corredor vial... la información transmitida será de carácter informativo sobre el estado de la vía, seguridad vial y eventos especiales."

---

## 4. ESTIMACIÓN PRELIMINAR (Hueco de Alcance)

| Ítem | Cantidad | Costo Est. (USD) | Total (USD) |
|:-----|:---------|:-----------------|:------------|
| Estación Base + Antena CCO | 1 | $45,000 | $45,000 |
| Repetidores / Gap-fillers | 5 | $25,000 | $125,000 |
| Trámites MinTIC (Licencia) | 1 | $15,000 | $15,000 |
| Integración y Puesta en Marcha | 1 | $15,000 | $15,000 |
| **TOTAL ESTIMADO CAPEX** | | | **$200,000** |

---

## 5. PRÓXIMOS PASOS
- [ ] Validar disponibilidad de frecuencias con MinTIC.
- [ ] Definir ubicaciones de repetidores en nodos de FO.
- [ ] Incorporar costo al presupuesto maestro (Master Data).
