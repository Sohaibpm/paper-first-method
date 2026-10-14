#!/bin/bash
# SPDX-License-Identifier: MIT · Copyright (c) 2026 Sohaib Waheed · paperfirstmethod.com
# PreToolUse on Bash: block anything on the NEVER list. Exit 2 blocks the call;
# the message on stderr is shown to Claude as the reason. Add your own patterns below.
CMD=$(jq -r '.tool_input.command // empty')
[ -z "$CMD" ] && exit 0
NEVER=(
  'rm[[:space:]]+-[a-zA-Z]*r[a-zA-Z]*f'
  'rm[[:space:]]+-[a-zA-Z]*f[a-zA-Z]*r'
  'git[[:space:]]+push[[:space:]].*(--force|[[:space:]]-f([[:space:]]|$))'
)
for re in "${NEVER[@]}"; do
  if printf '%s' "$CMD" | grep -Eq "$re"; then
    echo "Blocked by the project's NEVER list (matched: $re). Use a safer alternative, or ask the user." >&2
    exit 2
  fi
done
exit 0
