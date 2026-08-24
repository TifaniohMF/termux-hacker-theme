# ~/.zshrc — Termux Hacker Theme

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="" # le prompt est entièrement géré par Starship
plugins=(git)
[ -r "$ZSH/oh-my-zsh.sh" ] && source "$ZSH/oh-my-zsh.sh"
export TERM=xterm-256color
export COLORTERM=truecolor
export BAT_THEME="ansi"

# Couleurs de fichiers
if command -v dircolors >/dev/null 2>&1 && [ -f "$HOME/.dircolors" ]; then
	eval "$(dircolors -b "$HOME/.dircolors")"
fi

# Alias de navigation et d'affichage
if command -v eza >/dev/null 2>&1; then
	alias ls='eza --icons --group-directories-first'
	alias ll='eza --icons --long --classify --group-directories-first'
	alias la='eza --icons --long --all --group-directories-first'
	alias lt='eza --icons --tree --level=2'
fi
command -v bat >/dev/null 2>&1 && alias cat='bat --paging=never --style=numbers,header'
command -v rg >/dev/null 2>&1 && alias grep='rg'

# Effets et bannière
command -v cmatrix >/dev/null 2>&1 && alias matrix='cmatrix -b -C green'
[[ -o interactive && -x "$(command -v fastfetch 2>/dev/null)" ]] && fastfetch

# Prompt
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"