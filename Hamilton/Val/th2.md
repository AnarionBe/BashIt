# La structure UNIX
## Le ROOT et ses dangers
Si vous avez déjà utiliser Linux (peut importe la distribution), vous avez surement remarquer que la modification, l'affichage, ou autre de certains fichiers ne vous est pas permisse sans le SUDO. 

Déja par principe, il faut comprendre ce que veux dire SUDO: Super User DO, et donc en français "Fait le en Super Utilisateur". 

## Mémoriser la plupart des commandes Linux
Je fait ce petit apparté pour vous exprimer une technique de mémorisation de certaines commandes. 

La plus grande partie des commandes du terminal on été choisie car elles sont un diminutif de phrases logiques.
```bash
$ pwd # Va vous afficher le dossier courant dans lequel vous êtes, il va donc "Print Working Directory"
$ cd # Va changer le dossier courant, il va donc "Change Directory"
$ mkdir # Va créer un nouveau dossier, il va donc "MaKe DIRectory" 
```
Des termes génériques aussi sont utilisé pour qualifier certains type de programme, comme par exemple les CLI. CLI veut dire "Command Line Interface", ce qui vous indique que c'est un ensemble d'outils vous facilitant l'utilisation des lignes de commandes. Un des meilleurs exemples, à mon goût, est le NetworkManagerCLI, qui permet dans le terminal de se connecter à internet.

```bash
$ nmcli dev wifi
$ nmcli dev wifi connect <SSID> password <PASSWORD>
```

## La structure de fichiers linux
Voici une illustration (vraiment parlante pour moi) définissant tous les dossiers à la racine de Linux (peut importe la distro):
![FHS](https://cdncontribute.geeksforgeeks.org/wp-content/uploads/linuxDir.jpg)
