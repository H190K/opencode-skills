#!/usr/bin/env bash
set -euo pipefail

CACHE_DIR="$HOME/Library/Caches/ms-playwright"
MCP_DIR="$HOME/Library/Caches/ms-playwright-mcp"
TOTAL_FREED=0

echo "=== Playwright Cleanup ==="
echo ""

# 1. Browser binaries
if [ -d "$CACHE_DIR" ]; then
  SIZE=$(du -sh "$CACHE_DIR" 2>/dev/null | cut -f1)
  echo "Removing browser binaries ($SIZE)..."
  rm -rf "$CACHE_DIR"
  TOTAL_FREED=$((TOTAL_FREED + 1))
  echo "  Done."
else
  echo "No browser cache found at $CACHE_DIR"
fi

# 2. MCP browser profiles
if [ -d "$MCP_DIR" ]; then
  echo "Removing MCP browser profiles..."
  rm -rf "$MCP_DIR"
  TOTAL_FREED=$((TOTAL_FREED + 1))
  echo "  Done."
else
  echo "No MCP profiles found at $MCP_DIR"
fi

# 3. Screenshots in common locations
echo "Removing Playwright screenshots..."
find "$HOME/Desktop" "$HOME/Downloads" /tmp /var/tmp -maxdepth 2 \( -name "page-*.png" -o -name "page-*.jpeg" \) -delete 2>/dev/null
echo "  Done."

# 4. Playwright temp files
echo "Removing Playwright temp files..."
find /tmp /var/tmp -maxdepth 2 -name "*playwright*" -delete 2>/dev/null
echo "  Done."

echo ""
echo "Cleanup complete. Browser binaries will be re-downloaded on next Playwright use."
