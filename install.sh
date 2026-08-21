#!/data/data/com.termux/files/usr/bin/bash
# install.sh — instal theme Termux Hacker complet
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG="$REPO_DIR/config"

echo "==> Termux update and install packages"
pkg update -y && pkg upgrade -y
pkg install -y git curl wget unzip zsh tmux fastfetch cmatrix \
eza bat ripgrep git-delta

echo "==> Copy configuration Termux"
mkdir -p ~/.termux
cp "$CONFIG/termux/colors.properties" ~/.termux/
cp "$CONFIG/termux/termux.properties" ~/.termux/
cp "$CONFIG/fonts/font.ttf" ~/.termux/
termux-reload-settings

echo "==> Installation  Oh My Zsh (if absent)"
if [ ! -d "$HOME/.oh-my-zsh" ]; then
sh -c "$(curl -fsSL
https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "==> Install Starship"
curl -sS https://starship.rs/install.sh | sh -s -- -y
mkdir -p ~/.config
cp "$CONFIG/starship/starship.toml" ~/.config/
echo "==> Configuration de dircolors, tmux et zsh"
cp "$CONFIG/dircolors/dircolors" ~/.dircolors
#cp "$CONFIG/tmux/tmux.conf" ~/.tmux.conf
cp "$CONFIG/zsh/zshrc" ~/.zshrc

chsh -s zsh

echo "==> Installation termined. Restart your terminal (or exec zsh) to see the theme."

backup_if_exists() {
local target="$1"
if [ -e "$target" ] && [ ! -L "$target" ]; then
mv "$target" "${target}.bak.$(date +%Y%m%d%H%M%S)"
echo " (ancienne version sauvegardée)"
fi
}
backup_if_exists ~/.zshrc
#backup_if_exists ~/.tmux.conf
backup_if_exists ~/.config/starship.toml

GREEN='\033[1;32m'; RESET='\033[0m'
step() { echo -e "${GREEN}==> $1${RESET}"; }
step "Update Termux"

command -v pkg >/dev/null || { echo "This script should be executed in Termux."; exit 1; }
