#!/data/data/com.termux/files/usr/bin/bash
# demo-theme.sh — présente les éléments visuels du thème sans modifier le système
set -e

GREEN='\033[1;32m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

printf '\n%bTermux Hacker Theme%b\n' "$GREEN" "$RESET"
printf '%b==================%b\n\n' "$GREEN" "$RESET"

printf '%bPalette%b\n' "$CYAN" "$RESET"
printf '  %b████%b Noir et vert vif\n' "$GREEN" "$RESET"
printf '  %bDossier%b  %b%s%b\n' "$GREEN" "$RESET" "$GREEN" 'config/' "$RESET"
printf '  %bFichier%b  %b%s%b\n' "$CYAN" "$RESET" "$CYAN" 'README.md' "$RESET"
printf '  %bExécutable%b  %b%s%b\n\n' "$WHITE" "$RESET" "$WHITE" 'install.sh' "$RESET"

printf '%bPrompt Starship%b\n' "$CYAN" "$RESET"
printf '%b┌───────────────────%b\n' "$GREEN" "$RESET"
printf '%b│%b~/termux-hacker-theme %b(main)%b\n' "$GREEN" "$RESET" "$CYAN" "$RESET"
printf '%b└─❯%b commande\n\n' "$GREEN" "$RESET"

printf '%bCommandes disponibles après installation%b\n' "$CYAN" "$RESET"
printf '  ls  ll  la  lt  cat  grep  matrix\n\n'

if command -v eza >/dev/null 2>&1; then
	printf '%bDépendances détectées : eza, %s%b\n' "$GREEN" "OK" "$RESET"
else
	printf '%bDépendances non installées : lancez bash install.sh dans Termux.%b\n' "$WHITE" "$RESET"
fi
