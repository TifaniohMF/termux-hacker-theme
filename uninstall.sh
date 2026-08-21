#!/data/data/com.termux/files/usr/bin/bash
# uninstall.sh — restaure the save most recent if exists

set -e

restore_backup() {
local target="$1"
local latest
latest=$(ls -t "${target}.bak.* 2>/dev/null | head -n1 || true)
if [ -n "$latest" ]; then
mv "$latest" "$target"
echo "Restaured : $target"
else
echo "Nothing save finded for : $target"
fi
}
restore_backup ~/.zshrc
#restore_backup ~/.tmux.conf
restore_backup ~/.config/starship.toml
echo "Uninstall termined. Restart your terminal."
