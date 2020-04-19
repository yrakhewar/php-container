FROM php:7.3-apache
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
RUN chown -R www-data:www-data  /var/www/html
RUN chmod -R 777 /var/www/html
WORKDIR /var/www/html/
EXPOSE 80 