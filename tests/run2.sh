#!/usr/bin/env bash
# Second runner. Runs one session file in Claude Code, using flags meant to let this folder's own
# CLAUDE.md load.
#
#   usage: tests/run2.sh <model> <session-file> <out-file>
#   run it from the repository root. Write <out-file> OUTSIDE the repository and copy it in
#   afterwards, so that a run in progress cannot be read by another run.
#
# Why it exists: tests/run.sh (committed first, unchanged) switches off every customisation, which
# includes this folder's CLAUDE.md, so it cannot show what Claude Code does here for someone who
# opens it in this folder. And tests/run-with-claude-md.sh loaded the builder's personal
# instruction file as well.
#
# What this runner does:
#   - It does not switch off this folder's CLAUDE.md, and it supplies an exclusion for instruction
#     files under ~/.claude. What was actually loaded is not traced.
#   - The script asks for project settings only, and for no MCP servers. The model has two
#     tools, Read and Glob, and is never asked for permission.
#   - Each message is one non-interactive `claude -p` call, resumed into the same conversation.
#   - The header lists `git status --porcelain` in full, taken before the output file is created.
#   - If a model-message call (`claude -p`) fails, its exit code is written into the transcript,
#     and the script itself ends with exit code 1. The `claude --version` call is not checked.
#
# What it is not:
#   - It is a test configuration, not a stranger's interactive session.
#   - It does not establish every setting or instruction that was loaded, and it does not remove
#     the identity information Claude Code supplies to the model (the signed-in email address and
#     the git user name). Supplying an exclusion for ~/.claude is not proof that no other
#     instruction file or managed setting was loaded.
#   - The transcript is the reply text only. It is not a trace of which files the model read, so
#     "CLAUDE.md was loaded" rests on the flags above and on how the model behaved.

set -u
MODEL=$1; MOVES=$2; OUT=$3
ID=$(python3 -c 'import uuid; print(uuid.uuid4())')
STATUS=$(git status --porcelain 2>/dev/null)
SETTINGS="{\"claudeMdExcludes\":[\"$HOME/.claude/**\"]}"
FLAGS=(--model "$MODEL" --setting-sources project --settings "$SETTINGS" --strict-mcp-config --permission-mode dontAsk --tools Read Glob)

mkdir -p "$(dirname "$OUT")"
{
  echo "# runner: tests/run2.sh"
  echo "# model: $MODEL"
  echo "# tool: $(claude --version 2>/dev/null)"
  echo "# flags: --setting-sources project --settings {claudeMdExcludes: ~/.claude/**} --strict-mcp-config --permission-mode dontAsk --tools Read Glob"
  echo "# folder commit: $(git rev-parse HEAD 2>/dev/null || echo 'not a git repository')"
  echo "# git status before the run (empty means clean):"
  [ -n "$STATUS" ] && echo "$STATUS" | sed 's/^/#   /'
  echo "# session file: $MOVES"
  echo "# started: $(date -Is)"
} > "$OUT"

n=0; failed=0
while IFS= read -r line || [ -n "$line" ]; do
  [ -z "$line" ] && continue
  n=$((n+1))
  printf '\n[%d] USER: %s\n' "$n" "$line" >> "$OUT"
  if [ "$n" = 1 ]; then
    reply=$(claude -p "${FLAGS[@]}" --session-id "$ID" "$line" < /dev/null 2>>"$OUT.stderr"); code=$?
  else
    reply=$(claude -p "${FLAGS[@]}" --resume "$ID" "$line" < /dev/null 2>>"$OUT.stderr"); code=$?
  fi
  printf '[%d] REPLY: %s\n' "$n" "$reply" >> "$OUT"
  if [ "$code" != 0 ]; then
    printf '[%d] RUNNER: claude exited with code %d\n' "$n" "$code" >> "$OUT"; failed=1
  fi
done < "$MOVES"
echo "# finished: $(date -Is)" >> "$OUT"
exit "$failed"
