FROM php:8.3-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["apache2-foreground"]