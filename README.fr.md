# Thème Hacker pour Termux

[Lire en anglais](README.md)

![Licence](https://img.shields.io/badge/license-MIT-brightgreen)
![Shell](https://img.shields.io/badge/shell-zsh-brightgreen)

Un thème noir et vert complet pour [Termux](https://termux.dev/), construit
autour de Zsh et Starship. Il améliore la lisibilité des fichiers, ajoute des
alias utiles au shell et propose un prompt compact au style hacker.

## Fonctionnalités

- Fond noir et couleurs de terminal vert vif.
- Touches supplémentaires dans Termux pour la navigation et les raccourcis
	courants.
- Configuration d'Oh My Zsh et du prompt Starship.
- Couleurs distinctes pour les dossiers, liens, exécutables, archives, fichiers
	de code, images et documents.
- Alias `eza` avec icônes, affichage détaillé, fichiers cachés et arborescence
	sur deux niveaux.
- `bat` comme alternative lisible à `cat` et `ripgrep` comme alternative à
	`grep`.
- Lancement de `fastfetch` à l'ouverture du shell et alias `matrix` basé sur
	`cmatrix`.

## Prérequis

- Une installation à jour de Termux depuis
	[F-Droid](https://f-droid.org/packages/com.termux/) ou les versions
	officielles publiées sur GitHub.
- Un accès Internet pendant l'installation.
- Le dépôt cloné dans Termux, ou accessible depuis le chemin où
	`install.sh` est exécuté.

## Installation

Exécuter ces commandes dans Termux :

```bash
git clone https://github.com/TifaniohMF/termux-hacker-theme.git
cd termux-hacker-theme
bash install.sh
```

L'installeur met à jour Termux, installe les paquets nécessaires, copie les
fichiers de configuration, installe Oh My Zsh et Starship si besoin, puis
configure Zsh comme shell par défaut. Redémarrer Termux ou exécuter `exec zsh`
à la fin de l'installation.

## Commandes utiles

| Commande | Description |
| --- | --- |
| `ls` | Affiche les fichiers avec icônes et place les dossiers en premier |
| `ll` | Affiche une liste détaillée |
| `la` | Affiche une liste détaillée incluant les fichiers cachés |
| `lt` | Affiche une arborescence sur deux niveaux |
| `cat` | Affiche un fichier avec `bat` |
| `grep` | Effectue une recherche avec `ripgrep` |
| `matrix` | Lance l'effet vert de `cmatrix` |

## Démonstration

Prévisualiser les couleurs, le prompt et les alias disponibles sans modifier la
configuration :

```bash
bash demo-theme.sh
```

## Désinstallation

Exécuter :

```bash
bash uninstall.sh
```

Le désinstalleur restaure les sauvegardes les plus récentes de `.zshrc` et de
`starship.toml` lorsqu'elles existent. Les fichiers Termux dans `~/.termux/` et
les paquets installés par le script peuvent nécessiter une suppression ou une
modification manuelle.

## Contribuer

Les rapports de bugs et les pull requests sont les bienvenus. Consulter
[CONTRIBUTING.md](CONTRIBUTING.md) pour connaître la procédure.

## Licence

MIT. Voir [LICENSE](LICENSE).
