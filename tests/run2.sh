#!/usr/bin/env bash
# Second runner. Runs one session file the way Claude Code runs for someone who has just cloned
# this repository: the folder's own CLAUDE.md is loaded, and nothing personal to the tester is.
#
#   usage: tests/run2.sh <model> <session-file> <out-file>
#   run it from the repository root. Write <out-file> OUTSIDE the repository and copy it in
#   afterwards, so that a run in progress cannot be read by another run.
#
# Why it exists: tests/run.sh (committed first, unchanged) switches off every customisation, which
# includes this folder's CLAUDE.md, so it cannot show what a stranger's Claude Code does here. And
# tests/run-with-claude-md.sh loaded the builder's personal instruction file as well.
#
# What this runner changes:
#   - CLAUDE.md in this folder is loaded; instruction files under ~/.claude are excluded.
#   - Only project settings are read. No MCP servers. The model has two tools, Read and Glob.
#   - The header lists `git status --porcelain` in full, taken before the output file is created.
#   - If a call to `claude` fails, its exit code is written into the transcript.
# What it does not change: Claude Code always tells the model the signed-in user's email address
# and the git user name. The transcript is the reply text only, not a trace of tool calls.

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

n=0
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
  [ "$code" != 0 ] && printf '[%d] RUNNER: claude exited with code %d\n' "$n" "$code" >> "$OUT"
done < "$MOVES"
echo "# finished: $(date -Is)" >> "$OUT"
