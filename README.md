# Termux Hacker Theme

![License](https://img.shields.io/badge/license-MIT-brightgreen)
![Shell](https://img.shields.io/badge/shell-zsh-brightgreen)

A complete black-and-green theme for [Termux](https://termux.dev/), built around
Zsh and Starship. It improves file visibility, adds useful shell aliases, and
provides a compact hacker-style prompt.

## Features

- Black background with bright green terminal colors.
- Extra Termux keys for navigation and common control shortcuts.
- Oh My Zsh and Starship prompt configuration.
- File type colors for directories, links, executables, archives, code, images,
	and documents.
- `eza` aliases with icons, long listings, hidden files, and a two-level tree.
- `bat` as a readable replacement for `cat` and `ripgrep` as a replacement for
	`grep`.
- `fastfetch` on shell startup and a `matrix` alias powered by `cmatrix`.

## Requirements

- An up-to-date Termux installation from [F-Droid](https://f-droid.org/packages/com.termux/)
	or the official GitHub releases.
- Internet access during installation.
- The repository cloned inside Termux, or otherwise available at the path from
	which `install.sh` is run.

## Installation

Run these commands in Termux:

```bash
git clone https://github.com/TifaniohMF/termux-hacker-theme.git
cd termux-hacker-theme
bash install.sh
```

The installer updates Termux, installs the required packages, copies the
configuration files, installs Oh My Zsh and Starship when needed, and changes
the default shell to Zsh. Restart Termux or run `exec zsh` when it finishes.

## Useful Commands

| Command | Description |
| --- | --- |
| `ls` | List files with icons and directories first |
| `ll` | Show a detailed listing |
| `la` | Show a detailed listing including hidden files |
| `lt` | Show a two-level directory tree |
| `cat` | Display a file with `bat` |
| `grep` | Search with `ripgrep` |
| `matrix` | Start the green `cmatrix` effect |

## Demonstration

Preview the colors, prompt, and available aliases without changing your
configuration:

```bash
bash demo-theme.sh
```

## Uninstallation

Run:

```bash
bash uninstall.sh
```

The uninstaller restores the most recent backups of `.zshrc` and
`starship.toml` when available. Termux files in `~/.termux/` and other packages
installed by the script may need to be removed or changed manually.

## Contributing

Bug reports and pull requests are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md)
for the contribution workflow.

## License

MIT. See [LICENSE](LICENSE).
