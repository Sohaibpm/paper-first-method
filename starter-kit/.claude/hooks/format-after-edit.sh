#!/bin/bash
# SPDX-License-Identifier: MIT · Copyright (c) 2026 Sohaib Waheed · paperfirstmethod.com
# PostToolUse: format the file Claude just edited. Reads the hook's JSON from stdin.
FILE_PATH=$(jq -r '.tool_input.file_path // empty')
[ -z "$FILE_PATH" ] && exit 0
[ -f "$FILE_PATH" ] || exit 0
cd "${CLAUDE_PROJECT_DIR:-.}" || exit 0
npx --no-install prettier --write "$FILE_PATH" >/dev/null 2>&1
exit 0
