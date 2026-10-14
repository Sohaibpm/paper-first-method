# Paper-First starter kit

From the Paper-First Method by Sohaib Waheed (paperfirstmethod.com). Free to use with credit, CC BY 4.0. The two hook scripts in `.claude/hooks/` are MIT-licensed (see `LICENSE-CODE` in the repo root).

## What's inside
```
paper-first/01-the-page.md            draw this before you open any tool
paper-first/02-the-five-questions.md  the pushback session with Claude
paper-first/03-the-build-brief.md     six lines: STACK · STRUCTURE · AI · RULES · DONE · NEVER
paper-first/04-the-review.md          five checks after every service
CLAUDE.md                             a one-page project brief Claude Code reads every session
.claude/settings.json                 permissions + hooks for Claude Code
.claude/hooks/format-after-edit.sh    formats every file Claude edits (Prettier)
.claude/hooks/block-never.sh          blocks commands on your NEVER list
```

## How to use it
1. Do the paper part first: draw the page, run the five questions, write the six-line brief.
2. Copy `CLAUDE.md` and `.claude/` into the root of your repo. Fill in CLAUDE.md from your brief.
3. Make the hooks executable: `chmod +x .claude/hooks/*.sh`
4. The hooks need `jq` (`brew install jq` or your package manager). The format hook uses the Prettier
   already installed in your project; it does nothing if Prettier isn't there.
5. Adjust `settings.json` to your scripts. The allow rules here match `npm run test` and `npm run lint`.

## Good to know
- CLAUDE.md is context, not enforcement. Anything that must never happen belongs in a hook.
- A hook blocks a command by exiting with code 2; the message it prints to stderr goes back to Claude.
- `Bash(git push *)` in deny doesn't catch every spelling (for example `git -C . push`); the NEVER hook is the backstop.
- Keep CLAUDE.md short (the docs suggest under 200 lines). When Claude repeats a mistake, add one line.

Checked against the Claude Code docs (code.claude.com/docs) on 12 Oct 2026.
