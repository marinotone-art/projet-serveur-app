#!/bin/bash

# Configuration
SOURCE="index.html"
DESTINATION="sauvegardes"
DATE=$(date +%Y-%m-%d)

# 1. SAUVEGARDE COMPLÈTE (Tous les dimanches)
if [ "$(date +%u)" -eq 7 ]; then
    tar -czvf $DESTINATION/full_$DATE.tar.gz $SOURCE
    echo "Sauvegarde COMPLÈTE effectuée."

# 2. SAUVEGARDE DIFFÉRENTIELLE (Du lundi au samedi, basée sur la complète)
elif [ "$(date +%u)" -lt 7 ]; then
    tar -czvf $DESTINATION/diff_$DATE.tar.gz $SOURCE
    echo "Sauvegarde DIFFÉRENTIELLE effectuée."
fi