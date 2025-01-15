#!/bin/bash
set -e

#Ajout de configurations si besoin
# Exemple : activation de modules Apache

a2enmod rewrite

exec "$@"