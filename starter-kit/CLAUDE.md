# <project name>

## Stack
<frontend> · <API> · <database> · <auth, with roles>

## Commands
- dev: `npm run dev`
- test: `npm run test`
- lint: `npm run lint`

## Structure
- /apps/web: UI only, no business logic
- /services/api: one router per domain
- /services/worker: queues, agents, scheduled jobs
- /infra: docker, migrations, env templates
- Tests live beside the code they test

## Rules
- Read a file before editing it.
- Typed end to end. Every error handled and logged with a request id.
- Prefer the existing pattern in the folder over a new one.
- All config from env. No secrets in code.

## Never
- Mock data on a production path.
- Swallow an exception.
- Touch /infra, run a migration, delete data or add a dependency without asking first.

## Done means
Tests pass, lint is clean, the feature works in the browser, and you show me the diff summary and the test output.
