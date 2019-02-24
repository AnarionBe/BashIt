# BashIt - SSH
> Ce workshop est réalisé par Marco De Bona et Valentin Grégoire dans le cadre de la formation BeCode

## Le SSH, what is that?
SSH, ou "Secure Shell", est un protocole d'administration qui permet l'authentification d'un utilisateur sur un serveur distant. Il existe plusieurs types de connection, de clé etc... Donc je vous invite (ci cela vous interesse particulièrement) à lire cette explication [SSH-tutorial](https://www.hostinger.com/tutorials/ssh-tutorial-how-does-ssh-work)

## Créer une clé SSH
Si vous n'avez jamais eu de clé SSH, il va falloir la générer. Exécutez donc la commande suivante pour générer votre clé:
```/bash/sh
$ ssh-keygen
```
La génération de la clé vous pose plusieurs questions, vous pouvez tout laisser tel qu'elle ou utiliser une paraphrase etc... Cependant, laissez les chemins de fichier tel quel, les mettre ailleurs nous compliquerait la vie.

## Se connecter à un serveur
Une foi votre clé **PUBLIQUE** partagée à votre administrateur réseau, vous devriez pouvoir vous connecter au serveur en utilisant cette commande:
```/bash/sh
$ ssh <user>@<host>
```
Des affichages dans la console se font, et vous vous retrouvez dans la console de votre serveur.

En fonction du système d'exploitation du serveur et de vos droits, vous pourrez naviguer dans différents dossiers.

### Exercice sur le serveur
Pour pouvoir un peu tester, les différentes possibilités, voici quelques petits exercices:
    - Se connecter en SSH au serveur;
    - Affichez la version de PHP dans la console du serveur;
    - Afficher les dossiers à la racine de votre dossier personnelle;
    - Créer un fichier "info.php" dans le dossier public_html du serveur;
    - Ecrire ```php <?php phpinfo(); ?> ``` dans le fichier.
    - Allez sur la page que vous venez de créer pour voir les infos php sur votre ordinateur;
    - Supprimer le fichier que vous venez de créer;
    - Afficher la liste des fichiers contenu dans *public_html* de votre espace;
    - Répétez la création d'un fichier mais en **locale** et envoyez le sur le serveur grâce à la commande SCP (pensez à utiliser le man pour comprendre comment cette commande fonctionne) sur le serveur distant et naviguer dessus depuis votre ordinateur.

<!-- 
## Un "remote fodler"
> Cette partie est dédiée au personne ayant un niveau un peu plus avancé. Elle est donc optionnelle. Finissez les exercices précédent est plus important.

SSH nous permet aussi de maintenir la connection pour créer un dossier partager. Pour le prochain exercice, je vous invite à consulter ce tutoriel, à comprendre par vous même, et si besoin, nous poser des questions.

(Tutoriel, monter un dossier distant en utilisant SSH)[https://www.howtogeek.com/howto/ubuntu/how-to-mount-a-remote-folder-using-ssh-on-ubuntu/]

L'idée est de faire en sorte que vous puissiez travailler directement dans un dossier de votre ordinateur et donc que vous puissez simplement en sauvegardant, mettre à jour les fichiers sur le serveur directement.
-->

## Pour les dangers envers l'OS
Les clés SSH sont en deux parties. La première est privée et la seconde est public. Quand on vous demande votre clé SSH, on vous demande toujours la public.
Quand vous vous connectez par SSH, la clé public est associée à la clé privée qui se trouve dans votre dossier .ssh. 

*Si vous perdez votre clé privée, vous ne pourrez pas la récupérer !*

Il est donc utile de sauvegarder votre clé privée SSH sur un dispositif *OFFLINE* (clé usb, disque dur externe...) pour vous permettre de garder vos accès même si vous devez reformater votre ordinateur.

Les clé privées ne sont pas des choses changeantes, après l'avoir généré, copiez votre dossier .ssh dans un endroit sécurisé, qui ne risque pas de disparaitre.

Cependant, si vous copiez simplement votre dossier, il pourrait être considéré comme corrompu. Vous devrez donc changer les droits du fichier ~/.ssh/id_rsa vià la commande chmod:
```/bash/sh
$ sudo chmod a=-rwx ~/.ssh/id_rsa
$ sudo chmod u=+rwx ~/.ssh/id_rsa
```

La première commande va retirer tous les droits à tous les utilisateurs:
 - a => signifie "all" donc tous les utilisateurs
 - =-rwx => on retire les droits de lecture (r = read), d'écriture (w = write) et d'exécution (x = exec).
 - Ensuite on place le chemin de fichier.

Redémarez votre ordinateur, et tout devrait aller comme avant.