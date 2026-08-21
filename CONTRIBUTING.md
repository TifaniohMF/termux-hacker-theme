# Contribuer à Termux Hacker Theme

Merci de contribuer à l’amélioration de ce thème pour Termux. Les changements
doivent rester ciblés, documentés et compatibles avec un environnement Termux
standard.

## Avant de commencer

- Utiliser une installation récente de Termux.
- Lire le [README](README.md) et vérifier que le changement correspond au
  périmètre du projet.
- Tester les scripts dans un environnement de test lorsque c’est possible.

## Proposer une modification

1. Forker le dépôt et cloner votre fork.

	```bash
	git clone https://github.com/<votre-compte>/termux-hacker-theme.git
	cd termux-hacker-theme
	```

2. Créer une branche descriptive depuis `main`.

	```bash
	git checkout -b feat/ajout-alias
	```

3. Effectuer une modification limitée à un objectif clairement défini.
4. Mettre à jour la documentation ou le [CHANGELOG](CHANGELOG.md) si le
	changement modifie le comportement ou l’expérience d’installation.
5. Tester `install.sh` et `uninstall.sh` dans Termux avant de soumettre la
	modification. Vérifier également les commandes et chemins copiés par les
	scripts.
6. Committer les changements avec un message explicite, puis pousser la branche
	et ouvrir une pull request vers `main`.

## Pull requests

Une pull request doit expliquer :

- le problème traité ou l’objectif de la modification ;
- les fichiers concernés et le comportement attendu ;
- les tests effectués et leur environnement ;
- les éventuelles étapes manuelles nécessaires.

Éviter les changements de formatage ou de configuration sans rapport avec la
demande. Les nouvelles dépendances doivent être justifiées et ajoutées au
script d’installation si nécessaire.

## Signaler un problème

Utiliser l’onglet [Issues](https://github.com/TifaniohMF/termux-hacker-theme/issues)
et fournir autant d’informations que possible :

- modèle de l’appareil et version d’Android ;
- version de Termux ;
- commande exécutée et message d’erreur complet ;
- étapes permettant de reproduire le problème ;
- résultat attendu et résultat obtenu.

Ne pas publier d’informations personnelles, de jetons ou de clés privées dans
un rapport.
