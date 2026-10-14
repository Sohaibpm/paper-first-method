# Review like an architect · five checks after every service

1. **Structure.** Folders, service boundaries, tests beside the code. If a boundary moved, move it back first. Drift compounds.
2. **Failure paths.** Model down, empty result, bad input, timeout. Each one handled, logged with a request id, visible somewhere a human looks. Read these before the happy path.
3. **The gate.** Retrieval → draft → reviewer → confidence gate → send / flag / ask. Anything that can leave the building (email, money, a client-facing answer) passes the gate. No exceptions.
4. **NEVER lines.** One search per line in the brief. Thirty seconds a service.
5. **Hand-over.** Deploys from main. Seeded demo data. A runbook with three lines: restart, who to call, rollback. If only you can run it, it isn't done.

A hundred revisions across a build is normal. What matters is that each one passes the same five checks.

---
The Paper-First Method by Sohaib Waheed · paperfirstmethod.com · free to use with credit (CC BY 4.0)
