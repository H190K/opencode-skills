---
name: ollama-local-models
description: Auto-sync opencode configuration with locally downloaded Ollama models, setting highest reasoning effort by default.
---

# Ollama Local Models Sync

Automatically updates the `ollama-local` provider models in `opencode.jsonc` to match the models currently downloaded via `ollama list`.

## Usage

Run this skill whenever you add, remove, or update Ollama models locally:

```bash
opencode run skill ollama-local-models
```

Or run the script directly:

```bash
~/.config/opencode/skills/ollama-local-models/sync-models.sh
```

## What It Does

1. Runs `ollama list` to get all currently downloaded models.
2. Reads the existing `opencode.jsonc` configuration.
3. Rebuilds the `models` block under `ollama-local` provider with every downloaded model.
 4. Enables vision/image support (`attachment: true`, `modalities: { input: ["text", "image"], output: ["text"] }`).
 5. Sets `reasoningEffort` to `"high"` for every model (the highest available).
 6. Writes the updated config back, preserving all other settings (MCP servers, other providers, etc.).

## Notes

- The script uses `jq` to safely manipulate JSON. Install it with `brew install jq` if missing.
- A single persistent backup is kept at `opencode.jsonc.bak` — old backups are removed before creating a new one.
- If you want different reasoning efforts per model, edit `opencode.jsonc` after running the sync.

## Restoring from Backup

If the sync breaks your config, restore the backup:

```bash
cp ~/.config/opencode/opencode.jsonc.bak ~/.config/opencode/opencode.jsonc
```

This overwrites the current config with the pre-sync version. The backup is always the config from *before* the last sync run.
