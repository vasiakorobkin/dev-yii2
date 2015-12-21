FROM composer/composer:latest

RUN composer self-update
RUN composer global require "fxp/composer-asset-plugin:~1.1.0"
RUN composer install

RUN docker-php-ext-install pdo_mysql
