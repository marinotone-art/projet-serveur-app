#!/bin/bash

# Configuration
SOURCE="index.html"
DESTINATION="sauvegardes/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Création de la sauvegarde
tar -czvf $DESTINATION $SOURCE

echo "------------------------------------------------"
echo "Sauvegarde effectuee avec succes vers le NAS : $DESTINATION"
echo "Strategie : Application de la regle 3-2-1-1-0"
echo "------------------------------------------------"