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

Fondamentalement, vous n'aurez jamais réellement à chipoter dans ces dossiers, mais il est toujours utile d'en retenir certains:
- **bin** contient les fichiers binaires (ou des liens symboliques) des programmes du terminal. 
- **home** est le dossier accueillant les fichiers privés des utilisateurs.
- **sbin** contient les fichiers binaires du système.
- **usr** contiendra les utilitaires et applications des utilisateurs.
- **etc** contient les fichiers de configuration de la machine dites "hôte"

Pour ce qui est des autres, ils ont tous une fonction spécifique, mais par manque de temps et surtout, ce n'est pas forcément nécessaire de les connaitre pour s'en sortir.

## Mais pourquoi des sudo alors?
Donc vous l'avez compris, vous ne pouvez pas chipoter partout dans linux, si vous n'êtes pas le super admin de votre machine hôte. 

La commande **SUDO** permet de modifier les fichiers se trouvant dans des dossiers qui ne peuvent être modifier sans les droits d'administration.

Attention: lors d'une installation de Linux depuis l'invité de commande (je pense à arch particulièrement), nous devons ajouter au sudoers (utilisateurs pouvant utiliser le **SUDO**), il faut l'ajouter au fichier /etc/sudoers sous le format suivant:

```bash 
$ <username> ALL=(ALL) ALL
```

## Les dotfiles
La configuration de linux est pratiquement dans son entièreté contenue dans des fichiers **dotfiles**. 

Ce sont tout simplement des fichiers (écrit en script bash pour la plupart) capable d'être compris par linux. Ainsi, vous pouvez configurer assez facilement la plupart de vos programme. Pour ce qui est de la synthaxe, tout dépends des applications que vous allez vouloir modifier.

Il serait très compliquer en quelques heures d'expliquer les dotfiles eux même, et je pense que le mieux est de pratiquer, donc voici mon conseil: *trouvez une configuration qui vous plait, récupérez le(s) dotfile(s), et modifiez les pour observer les comportements, et les adapter à vous.
