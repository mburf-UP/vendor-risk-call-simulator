#!/usr/bin/env bash
# An APPROXIMATION of the Claude-project route, for when no person is available to run the real one.
#
#   usage: tests/run-project-approx.sh <model> <session-file> <out-file> [extra-file ...]
#
# In a Claude project on claude.ai the uploaded files sit in the model's context and it has no file
# tools. This script imitates that: it puts the six files the README says to upload into a system
# prompt as documents, switches every tool off, and types the session file in. Extra files named on
# the command line (for example README.md) are added too, to imitate someone uploading more than
# the README says.
#
# It is NOT claude.ai. The real product has its own system prompt and its own way of presenting
# project files, and this script has neither. A pass here is not a pass there.

set -u
MODEL=$1; MOVES=$2; OUT=$3; shift 3
ID=$(python3 -c 'import uuid; print(uuid.uuid4())')
SYS=$(mktemp)
{
  echo "You are Claude, made by Anthropic. The user is chatting with you inside a project. The project's knowledge holds the following files, which the user uploaded."
  echo "<documents>"
  for f in identity.md rules.md examples.md reference/bank.md reference/vr-7.md reference/vendor-file.md "$@"; do
    echo "<document><source>$(basename "$f")</source><document_content>"; cat "$f"; echo "</document_content></document>"
  done
  echo "</documents>"
} > "$SYS"
FLAGS=(--model "$MODEL" --safe-mode --restricted --strict-mcp-config --permission-mode dontAsk --system-prompt-file "$SYS" --tools "")
mkdir -p "$(dirname "$OUT")"
{
  echo "# runner: tests/run-project-approx.sh (an approximation of a Claude project; not claude.ai)"
  echo "# model: $MODEL"
  echo "# tool: $(claude --version 2>/dev/null)"
  echo "# files in context: identity.md rules.md examples.md reference/bank.md reference/vr-7.md reference/vendor-file.md $*"
  echo "# folder commit: $(git rev-parse HEAD 2>/dev/null)"
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
rm -f "$SYS"
