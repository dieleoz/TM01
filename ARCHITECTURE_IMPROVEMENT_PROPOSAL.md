# ARCHITECTURE IMPROVEMENT PROPOSAL: Node.js & GeoJSON Migration

## Context
The current architecture relies on Static HTML and JS objects (`tm01_master_data.js`). While robust for a "Fast-Start" MVP, the spatial data handling (Layout) and scalability of the WBS/Presupuesto systems require a more modern stack for Phase 6.1 and beyond.

## Proposed Changes

### 1. GeoJSON Transformation
- **Migrate Layout Data**: Convert `layout_datos.js` into a standard `layout.geojson` file.
- **Advantages**: Compatibility with industrial GIS tools (QGIS, ArcGIS), native support in Leaflet/MapLibere without custom coordinate mapping, and improved spatial queries.

### 2. Node.js Backend Integration (Optional)
- **Local Dev Server**: Implement a lightweight Vite/Express server to handle data synchronization.
- **Dynamic API**: Transition from reading `.js` files to consuming a local JSON API.

### 3. Vercel Deployment
- Automate the hosting of the "Sistema de Validación Web" using Vercel.
- Enable CI/CD for instant validation of engineering changes (DTs).

## Implementation Path
1. **Refactor `sincronizar_layout.ps1`** to output `.geojson`.
2. **Update `WBS_Layout_Maestro.html`** to load GeoJSON layers.
3. **Configure `vercel.json`** for the project root.
