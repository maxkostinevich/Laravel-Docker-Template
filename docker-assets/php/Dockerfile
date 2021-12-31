FROM php:8.1.0-fpm-alpine
RUN apk add --no-cache \
        zip \
        libzip-dev \
        libpng \
        libpng-dev \
        libjpeg \
        icu \
        icu-dev \
        libxml2 \
        libxml2-dev \
        git \
        openssl \
        openssl-dev 
RUN docker-php-ext-install \
        pdo_mysql \
        mysqli \
        gd \
        intl \
        xml \
        opcache \
	pcntl \
	bcmath \
        zip 
	
	
RUN apk add mysql-client
	
ENV PHPREDIS_VERSION 5.3.5

RUN mkdir -p /usr/src/php/ext/redis \
    && curl -L https://github.com/phpredis/phpredis/archive/$PHPREDIS_VERSION.tar.gz | tar xvz -C /usr/src/php/ext/redis --strip 1 \
    && echo 'redis' >> /usr/src/php-available-exts \
    && docker-php-ext-install redis
    
RUN curl -sS https://getcomposer.org/installer | php ;mv composer.phar /usr/local/bin/composer;
RUN composer global require laravel/installer

ENV PATH="/root/.composer/vendor/bin:${PATH}"

RUN composer global require phpunit/phpunit

RUN apk add --update nodejs 
RUN apk add --update npm 
RUN apk add yarn
