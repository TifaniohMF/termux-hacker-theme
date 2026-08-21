#!/data/data/com.termux/files/usr/bin/bash
# install.sh — installe le thème Termux Hacker complet
set -e

command -v pkg >/dev/null || { echo "Ce script doit être exécuté dans Termux."; exit 1; }

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG="$REPO_DIR/config"

echo "==> Termux update and install packages"
pkg update -y && pkg upgrade -y
pkg install -y git curl wget unzip zsh tmux fastfetch cmatrix \
eza bat ripgrep git-delta

backup_if_exists() {
	local target="$1"
	if [ -e "$target" ] || [ -L "$target" ]; then
		local backup="${target}.bak.$(date +%Y%m%d%H%M%S)"
		local suffix=1
		while [ -e "$backup" ] || [ -L "$backup" ]; do
			backup="${target}.bak.$(date +%Y%m%d%H%M%S)-$suffix"
			suffix=$((suffix + 1))
		done
		mv "$target" "$backup"
		echo "==> Ancienne configuration sauvegardée : $target"
	fi
}

backup_if_exists "$HOME/.zshrc"
backup_if_exists "$HOME/.config/starship.toml"
backup_if_exists "$HOME/.tmux.conf"

echo "==> Copie de la configuration Termux"
mkdir -p ~/.termux
cp "$CONFIG/termux/colors.properties" ~/.termux/
cp "$CONFIG/termux/termux.properties" ~/.termux/
cp "$CONFIG/fonts/font.ttf" ~/.termux/
termux-reload-settings

echo "==> Installation d'Oh My Zsh (si absent)"
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "==> Installation de Starship"
curl -sS https://starship.rs/install.sh | sh -s -- -y
mkdir -p ~/.config
cp "$CONFIG/starship/starship.toml" ~/.config/
echo "==> Configuration de dircolors, tmux et zsh"
cp "$CONFIG/dircolors/.dircolors" ~/.dircolors
cp "$CONFIG/tmux/.tmux.conf" ~/.tmux.conf
cp "$CONFIG/zsh/zshrc" ~/.zshrc

chsh -s zsh

echo "==> Installation terminée. Redémarrez Termux (ou exécutez exec zsh) pour voir le thème."
