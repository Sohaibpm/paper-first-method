# The Build Brief · six lines

```
STACK:      the exact stack (frontend, API, database, vector store, auth)
STRUCTURE:  folders, services, where tests live
AI:         retrieval, reviewer step, confidence gate, escalation
RULES:      typed, env-driven, errors handled and logged, no secrets in code
DONE:       deploys from main, seeded demo data, a runbook
NEVER:      mock data on production paths, silent failures
```

## A filled example
```
STACK:      Next.js · FastAPI · Postgres + pgvector · Clerk (roles: admin, operator, viewer)
STRUCTURE:  /apps/web  /services/api  /services/worker  /infra · tests beside each service
AI:         hybrid retrieval (keyword + vector, reranked) · a reviewer step checks the answer
            against the evidence · confidence gate: ≥0.8 send, 0.5–0.8 flag, <0.5 ask a human
RULES:      typed end to end · all config from env · every error handled and logged with a
            request id · no secrets in code · migrations, never manual schema changes
DONE:       deploys from main · seeded demo tenant · runbook: restart, who to call, rollback
NEVER:      mock data on a production path · a failure that doesn't log · a prompt that can
            send money or email without the gate
```

How it's used: Claude reads the architecture page and this brief, and writes one build prompt
per service, each with the files to create, the tests to write, and the acceptance line from DONE.
Cursor gets the prompts in order.

The line most people forget is NEVER.

---
The Paper-First Method by Sohaib Waheed · paperfirstmethod.com · free to use with credit (CC BY 4.0)
