#!/bin/sh

if [ -d ".git" ]
then
    printf "This is already a repository\n"
    exit 1
fi

file="/home/marco/.generatedprojects"

# test if file exist
if [ ! -f "$file" ]
then
    # création du fichier de config
    touch $file
fi

# lecture nom du projet
printf "Enter the project name: "
read name
printf "$name:" >> "$file"
#----------------------

# ajout du chemin du dossier courant
pwd >> "$file"
#----------------------

# création du repo
git init
npx @becode/cli generate readme
#----------------------