#!/usr/bin/env bash
set -euo pipefail

CURSOR_USER_DIR="$HOME/Library/Application Support/Cursor/User"
CSS_DEST="$CURSOR_USER_DIR/liquid-glass-chat-fix.css"
SETTINGS="$CURSOR_USER_DIR/settings.json"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$CURSOR_USER_DIR"
cp "$REPO_DIR/liquid-glass-chat-fix.css" "$CSS_DEST"

echo "Installed CSS -> $CSS_DEST"
echo ""
echo "Next steps:"
echo "1. Merge settings from: $REPO_DIR/settings.vibrancy.json"
echo "   into: $SETTINGS"
echo "2. Set vscode_vibrancy.imports to:"
echo "   \"$CSS_DEST\""
echo "3. Install extensions: cat extensions.txt | xargs -L1 cursor --install-extension"
echo "4. Cmd+Shift+P -> Reload Vibrancy"
echo "5. Cmd+Q restart Cursor"
