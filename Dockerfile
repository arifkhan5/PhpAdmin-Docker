FROM php:apache

RUN echo "LISTEN 8083" >> /etc/apache2/ports.conf
EXPOSE 8083

RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install -y python3 python3-pip 
RUN apt-get install -y certbot python3-certbot-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
