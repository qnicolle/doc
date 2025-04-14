#!/bin/bash

# Demander le nom du fichier
echo "Entrez le nom du fichier (sans extension) :"
read nom_fichier

# Créer le fichier avec le nom donné
touch "${nom_fichier}.md"

# Copier les permissions de README.md
chmod --reference=README.md "${nom_fichier}.md"

# Vérification
ls -l "${nom_fichier}.md"
