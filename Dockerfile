FROM php:7.4-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

ENV DB_HOST mysql-service
ENV DB_USER ecomuser
ENV DB_PASSWORD ecompassword
ENV DB_NAME ecomdb

COPY ./app /var/www/html

EXPOSE 80