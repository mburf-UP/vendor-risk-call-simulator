#!/usr/bin/env bash
# Runs one session file the way Claude Code runs for a stranger: CLAUDE.md in this folder is loaded.
#
# tests/run.sh switches off every customisation, and that includes this folder's own CLAUDE.md, so it
# cannot show what CLAUDE.md does. This runner leaves CLAUDE.md on. The price: on the builder's machine
# it also loads the builder's personal instruction file, which cannot be switched off separately. Runs
# made with this script are therefore less clean than run.sh's, and each transcript says which script made it.
#
#   usage: tests/run-with-claude-md.sh <model> <session-file> <out-file>
#   run it from the repository root, e.g.
#          tests/run-with-claude-md.sh claude-sonnet-5-5 tests/sessions/s5a-wrong-door-bare-start.txt out.txt
#
# Each line of the session file is typed as one user message, in order, into one
# conversation. Nothing is added to a message and nothing is removed from a reply.
# Needs: bash, git, python3, and the Claude Code command line (`claude`), signed in.

set -u
MODEL=$1; MOVES=$2; OUT=$3
ID=$(python3 -c 'import uuid; print(uuid.uuid4())')

# Project settings only, no MCP servers; the model may only use the Read and Glob tools.
FLAGS=(--model "$MODEL" --setting-sources project --strict-mcp-config --permission-mode dontAsk --tools Read Glob)

mkdir -p "$(dirname "$OUT")"
{
  echo "# runner: tests/run-with-claude-md.sh (CLAUDE.md loaded; builder's personal instruction file also loaded)"
  echo "# model: $MODEL"
  echo "# tool: $(claude --version 2>/dev/null)"
  echo "# flags: ${FLAGS[*]}"
  echo "# folder commit: $(git rev-parse HEAD 2>/dev/null || echo 'not a git repository')"
  echo "# uncommitted changes: $(git status --porcelain 2>/dev/null | wc -l) file(s)"
  echo "# session file: $MOVES"
  echo "# started: $(date -Is)"
} > "$OUT"

n=0
while IFS= read -r line || [ -n "$line" ]; do
  [ -z "$line" ] && continue
  n=$((n+1))
  printf '\n[%d] USER: %s\n' "$n" "$line" >> "$OUT"
  if [ "$n" = 1 ]; then
    reply=$(claude -p "${FLAGS[@]}" --session-id "$ID" "$line" < /dev/null 2>>"$OUT.stderr")
  else
    reply=$(claude -p "${FLAGS[@]}" --resume "$ID" "$line" < /dev/null 2>>"$OUT.stderr")
  fi
  printf '[%d] REPLY: %s\n' "$n" "$reply" >> "$OUT"
done < "$MOVES"
echo "# finished: $(date -Is)" >> "$OUT"
