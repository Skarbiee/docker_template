FROM php:8.3-apache

# Installer les extensions nécessaires
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

# Copier le script d'entrée
COPY ./php/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

COPY ./src/storage /var/www/html/storage

# Définir l'entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Commande par défault
CMD ["apache2-foreground"]