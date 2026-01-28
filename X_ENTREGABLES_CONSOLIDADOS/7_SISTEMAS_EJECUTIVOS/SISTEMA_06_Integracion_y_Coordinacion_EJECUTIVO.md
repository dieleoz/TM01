# SISTEMA 06: EJECUTIVO DE INTEGRACIÓN Y COORDINACIÓN (SOFTWARE)
## Proyecto APP Puerto Salgar - Barrancabermeja

**Estado:** ✅ FINALIZADO PARA INTERVENTORÍA
**Versión:** 3.0 (AUDIT 5.0)
**Fecha:** 27 de Enero 2026

---

### 1. RESUMEN DE ALCANCE
Ecosistema de software y protocolos que garantiza la interoperabilidad de los subsistemas ITS, la validación contractual automática y la presentación de datos en tiempo real (Arquitectura 4 Capas).

**Componentes Clave:**
1.  **Motor de Integración:** Scripts PowerShell (`sync_wbs_tm01.ps1`) para ETL de datos de ingeniería.
2.  **Validación Contractual:** Sistema "Prompt Maestro" que cruza AT1-AT4 con T05.
3.  **Dashboard Web:** Interfaz HTML/JS para visualización financiera y técnica (Presupuesto, WBS, Mapa).
4.  **Gestión de Activos:** Base de datos maestra (`tm01_master_data.js`) como fuente única de verdad.

### 2. SANEAMIENTO TECNOLÓGICO (AUDIT 5.0)
*   **Eliminación de Middleware Costoso:** Se reemplazó la propuesta de ESB comercial por una arquitectura ligera basada en archivos estáticos y scripts de validación, reduciendo OPEX de licenciamiento.
*   **Automatización:** El 100% de los reportes contractuales (Anexo 4) se generan automáticamente desde la fuente de verdad.

### 3. CUMPLIMIENTO NORMATIVO
*   **ISO 27001:** Seguridad de la información en el manejo de datos del proyecto.
*   **Open Data:** Estructura de datos JSON accesible y auditable.
*   **AT4 (Indicadores):** Cálculo automático de disponibilidad y niveles de servicio.

---
**Firma:** Gerencia de Tecnología TM01
