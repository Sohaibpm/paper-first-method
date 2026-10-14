# The Paper-First Method

**Paper. Pushback. Production.**

The Paper-First Method is a way to build software with AI where you do the thinking and the AI does the building: you design it on one page, make the AI argue with it, then let it build inside the structure you decided.

Created by [Sohaib Waheed](https://sohaibwaheed.com). Full method, examples and the recorded build: **[paperfirstmethod.com](https://paperfirstmethod.com/)**

This repo holds the free templates, a Claude Code starter kit, the printable worksheet and the agent guides.

---

## Why

AI can write the code. It can't decide what's worth building. Most AI-built software fails before the first prompt: nobody drew the flow, nobody asked where it breaks, and nobody decided where a human has to say yes.

- **Prompting without a plan.** You describe the app in a chat box, it builds something plausible, and you rebuild it three times as you discover what you meant.
- **An AI that only agrees.** If it never pushes back, you're not designing. You're decorating.
- **Nobody owns the structure.** Let the tool pick the stack and the folders, and you inherit a codebase nobody can explain.

## The three beats

| Beat | What happens | Steps |
|---|---|---|
| **Paper** | One page, pen not keyboard. The flow, the journey, the architecture. Where the AI sits, and where a human must say yes. | 1 |
| **Pushback** | Read the page out loud to Claude (or any AI) and make it disagree. Then you decide the architecture and the stack. | 2–4 |
| **Production** | A six-line brief becomes one build prompt per service. The AI builds inside your structure. You review like an architect, ship, and go back to paper. | 5–7 |

You own the first two. The AI is good at the third, and it's only safe when the first two are done by a person.

## The seven steps

Same order, every time. Swap in your tools; keep the order.

1. **[Paper: draw the page](https://paperfirstmethod.com/steps/paper/)**
   One sheet, three boxes, before you touch a tool: flow, journey, architecture. Draw the hand (where a human says yes) first. An empty box means you're not ready.
2. **[Pushback: read it out loud to Claude](https://paperfirstmethod.com/steps/pushback/)**
   A 20–40 minute voice session. Read the whole page first, then ask the [five questions](templates/02-the-five-questions.md). End the call when the page is honest, not when it's pretty.
3. **[Architecture: turn the page into an architecture](https://paperfirstmethod.com/steps/architecture/)**
   Boxes become services. Data becomes stores. The AI becomes a retrieval step, a reviewer and a confidence gate. The hand becomes an approval nobody can skip. You decide; the AI checks.
4. **[Stack: pick the stack yourself](https://paperfirstmethod.com/steps/stack/)**
   You'll own it in production, so it's your call. The AI can suggest; it doesn't decide.
5. **[Brief: write the six-line brief](https://paperfirstmethod.com/steps/brief/)**
   STACK · STRUCTURE · AI · RULES · DONE · NEVER. The AI turns the page and the brief into one build prompt per service. The line most people forget is NEVER.
6. **[Build: let it build, review like an architect](https://paperfirstmethod.com/steps/build/)**
   One service at a time. After every service, [five checks](templates/04-the-review.md): structure, failure paths, the gate, the NEVER lines, hand-over. Read the error paths before the happy path.
7. **[Ship: then back to paper](https://paperfirstmethod.com/steps/ship/)**
   Deploys from main. Seeded demo data. A runbook with three lines: restart, who to call, rollback. If only you can run it, it isn't done.

## Quick start

1. **Do the paper part first.** Print a [worksheet](worksheets/) (A4 or US Letter), or copy [`templates/01-the-page.md`](templates/01-the-page.md). Fill every box by hand.
2. **Run the pushback session** with [`templates/02-the-five-questions.md`](templates/02-the-five-questions.md).
3. **Write the brief** with [`templates/03-the-build-brief.md`](templates/03-the-build-brief.md).
4. **Copy the starter kit into your project:**

   ```bash
   git clone https://github.com/Sohaibpm/paper-first-method.git
   cp -R paper-first-method/starter-kit/CLAUDE.md paper-first-method/starter-kit/.claude your-project/
   cp -R paper-first-method/starter-kit/paper-first your-project/   # optional: the templates, next to your code
   chmod +x your-project/.claude/hooks/*.sh
   ```

5. **Fill in `CLAUDE.md`** from your brief and adjust `.claude/settings.json` to your own scripts.

The hooks need [`jq`](https://jqlang.github.io/jq/). The format hook uses the Prettier already installed in your project and does nothing if it isn't there.

### What's in the starter kit

| File | What it does |
|---|---|
| `CLAUDE.md` | A one-page project brief Claude Code reads at the start of every session: stack, commands, structure, rules, a NEVER list, and what "done" means. |
| `.claude/settings.json` | Permissions (allow your test and lint scripts; deny reading `.env` and `git push`) and wires up the two hooks. |
| `.claude/hooks/format-after-edit.sh` | Runs after every Edit or Write and formats that file with Prettier. |
| `.claude/hooks/block-never.sh` | Runs before every shell command and blocks anything on your NEVER list (by default `rm -rf` and force-push). Exit code 2 blocks the call and tells the AI why. Add your own patterns. |
| `paper-first/` | Templates 01–04, so they live in the repo next to the code. |

`CLAUDE.md` is context, not enforcement. Anything that must never happen belongs in a hook.

## Templates

| # | Template | Beat | What it's for |
|---|---|---|---|
| 01 | [The page](templates/01-the-page.md) | Paper | Three boxes on one sheet: flow, journey, architecture. |
| 02 | [The five questions](templates/02-the-five-questions.md) | Pushback | The script for the voice session, with what a good answer looks like. |
| 03 | [The build brief](templates/03-the-build-brief.md) | Production | Six lines, with a filled example from a real build. |
| 04 | [The review](templates/04-the-review.md) | Production | Five checks after every service, before the next one starts. |
| 05 | [Autonomy levels](templates/05-autonomy-levels.md) | Agents | One question grades every task: what happens if it's wrong? Three levels. |
| 06 | [The SOP an agent can follow](templates/06-agent-sop.md) | Agents | Eight lines per agent, with a filled example. |
| 07 | [Agent or automation?](templates/07-agent-or-automation.md) | Agents | Three tests before you call anything an agent. |
| 08 | [RAG that doesn't guess](templates/08-rag-six-checks.md) | Retrieval | Six checks before a client sees a retrieval system. |

Printable worksheets for step 1: [A4](worksheets/paper-first-page-worksheet-a4.pdf) · [US Letter](worksheets/paper-first-page-worksheet-letter.pdf)

## Works with

Claude Code, Cursor, or any AI coding tool. The creator uses Claude to think and Cursor to build; the method doesn't depend on either. The starter kit's `.claude/` folder is specific to Claude Code. Everything else is plain Markdown you can paste into any tool.

## Built with it

**[JobFuture AI](https://jobfutureai.com)**, an AI readiness app, was built with this method in one evening on 12 October 2026 and recorded step by step:

- about 45 minutes of planning with Claude before any code
- under five hours of building, from the first Cursor prompt to a live site
- 41 commits, live at about 11:25 pm

The case study, six episodes and the documents Cursor got: **[paperfirstmethod.com/build](https://paperfirstmethod.com/build/)**

## Author

**Sohaib Waheed** is the creator of the Paper-First Method and the founder of Zaltech AI. A product manager who learned to build, he has built 25–30+ applications this way.

- Website: [sohaibwaheed.com](https://sohaibwaheed.com)
- LinkedIn: [linkedin.com/in/sohaibwaheedpm](https://www.linkedin.com/in/sohaibwaheedpm)
- YouTube: [youtube.com/@sohaibwaheedai](https://www.youtube.com/@sohaibwaheedai)
- Instagram: [instagram.com/sohaibbuildsai](https://www.instagram.com/sohaibbuildsai)

## Licence

- **Docs, templates and worksheets** (everything except the hook scripts): [CC BY 4.0](LICENSE). Use, adapt and share them, including commercially, with credit: *"The Paper-First Method by Sohaib Waheed, paperfirstmethod.com"*.
- **Hook scripts** (`starter-kit/.claude/hooks/*.sh`): [MIT](LICENSE-CODE).

If you write about or teach the method, please link to [paperfirstmethod.com](https://paperfirstmethod.com/). To cite it, see [`CITATION.cff`](CITATION.cff).
