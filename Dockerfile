FROM php:8.2-apache

# Copia tus archivos al servidor
COPY . /var/www/html/

# Configura permisos y habilita mod_rewrite (útil para webs)
RUN chown -R www-data:www-data /var/www/html && a2enmod rewrite

# Le dice a Render que el puerto es el 80
EXPOSE 80
