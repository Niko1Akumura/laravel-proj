FROM php:8.4-fpm-alpine

WORKDIR /var/www/laravel

RUN apk add --no-cache shadow \
    && usermod -u 1000 www-data \
    && groupmod -g 1000 www-data \
    && docker-php-ext-install pdo pdo_mysql

USER www-data
