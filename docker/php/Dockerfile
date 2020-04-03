FROM php:7.4.1-fpm-alpine

RUN docker-php-ext-install pdo_mysql

# apcu
RUN docker-php-source extract \
    && apk add --no-cache --virtual .phpize-deps-configure $PHPIZE_DEPS \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && apk del .phpize-deps-configure \
    && docker-php-source delete

# git client
RUN apk add --update --no-cache git

RUN apk add --update libzip-dev

RUN docker-php-ext-install zip
RUN docker-php-ext-enable apcu

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install
RUN composer --version

WORKDIR /usr/src/app

COPY myCantine /usr/src/app

RUN chown -R www-data:www-data /usr/src/app/
RUN PATH=$PATH:/usr/src/app/vendor/bin:bin
