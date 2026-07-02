#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE="$HOME/.config/opencode/opencode.jsonc"
BACKUP_FILE="$CONFIG_FILE.bak"

if ! command -v jq &>/dev/null; then
  echo "Error: jq is required. Install it with: brew install jq"
  exit 1
fi

if ! command -v ollama &>/dev/null; then
  echo "Error: ollama CLI not found. Is Ollama installed?"
  exit 1
fi

[ -f "$BACKUP_FILE" ] && rm "$BACKUP_FILE"
cp "$CONFIG_FILE" "$BACKUP_FILE"
echo "Backup saved to $BACKUP_FILE"

MODELS_JSON=$(ollama list --json 2>/dev/null || ollama list 2>/dev/null | tail -n +2 | awk '{print $1}')

if [ -z "$MODELS_JSON" ]; then
  echo "No models found via ollama list. Exiting."
  exit 0
fi

MODEL_NAMES=""
if echo "$MODELS_JSON" | head -1 | grep -q '^{'; then
  MODEL_NAMES=$(echo "$MODELS_JSON" | jq -r '.models[]?.name // .[]?.name // empty')
fi

if [ -z "$MODEL_NAMES" ]; then
  MODEL_NAMES=$(ollama list 2>/dev/null | tail -n +2 | awk '{print $1}')
fi

if [ -z "$MODEL_NAMES" ]; then
  echo "Could not parse model names from ollama list output."
  exit 1
fi

echo "Found models:"
echo "$MODEL_NAMES"

jq --arg models "$MODEL_NAMES" '
  .provider["ollama-local"].models = (
    [$models | split("\n")[] | select(length > 0)] | map({(.): {name: ., attachment: true, modalities: {input: ["text", "image"], output: ["text"]}, options: {reasoningEffort: "high"}}}) | add
  )
' "$CONFIG_FILE" > "$CONFIG_FILE.tmp" && mv "$CONFIG_FILE.tmp" "$CONFIG_FILE"

echo "Updated $CONFIG_FILE with $(echo "$MODEL_NAMES" | wc -l | tr -d ' ') model(s)."
