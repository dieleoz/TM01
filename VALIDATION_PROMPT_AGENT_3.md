# VALIDATION PROMPT: AGENT 3 - Vercel Deployment & Integrity

## Objective
Validate the deployment of the TM01 "Troncal Magdalena" Web Dashboard on Vercel and ensure data integrity between the "Hard Deck" values and the live interface.

## Instructions for Agent 3
1. **Repository Link**: [dieleoz/TM01](https://github.com/dieleoz/TM01)
2. **Deployment Verification**:
    - Access the Vercel project dashboard.
    - Confirm the build status of the `main` branch.
    - Visit the live URL and navigate to the WBS section.
3. **Data Integrity Audit**:
    - Verify that Peaje CAPEX is exactly **$1,890,218.94 USD**.
    - Confirm SOS count is **88 units**.
    - Verify that all subtotals match `tm01_master_data.js`.
4. **Browser Testing**:
    - Use the browser agent to perform a "Full-Stack" verification of the interactive components (PMV, CCTV, Telecom).
5. **Report**:
    - Create a final `DEPLOYMENT_CERTIFICATE.md` once all checks pass.
