#!/data/data/com.termux/files/usr/bin/bash
# uninstall.sh — restaure les sauvegardes les plus récentes si elles existent

set -e

restore_backup() {
	local target="$1"
	local latest
	latest=$(find "$(dirname "$target")" -maxdepth 1 -type f -name "$(basename "$target").bak.*" -print 2>/dev/null | sort -r | head -n1 || true)
	if [ -n "$latest" ]; then
		mv "$latest" "$target"
		echo "Configuration restaurée : $target"
	else
		echo "Aucune sauvegarde trouvée pour : $target"
	fi
}
restore_backup ~/.zshrc
restore_backup ~/.config/starship.toml
restore_backup ~/.tmux.conf
echo "Désinstallation terminée. Redémarrez votre terminal."
