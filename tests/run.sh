#!/usr/bin/env bash
# Runs one session file against the simulator and writes the raw transcript.
#
#   usage: tests/run.sh <model> <session-file> <out-file>
#   run it from the repository root, e.g.
#          tests/run.sh claude-sonnet-5-5 tests/sessions/s1-promised-moves.txt tests/runs/sonnet/s1.txt
#
# Each line of the session file is typed as one user message, in order, into one
# conversation. Nothing is added to a message and nothing is removed from a reply.
# Needs: bash, git, python3, and the Claude Code command line (`claude`), signed in.

set -u
MODEL=$1; MOVES=$2; OUT=$3
ID=$(python3 -c 'import uuid; print(uuid.uuid4())')

# No user settings, plug-ins, memory or MCP servers; the model may only read files in this folder.
FLAGS=(--model "$MODEL" --safe-mode --restricted --strict-mcp-config --permission-mode dontAsk --tools Read Glob)

mkdir -p "$(dirname "$OUT")"
{
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
