FROM php:7.1-alpine

RUN mkdir -p /composer &&  chmod -R 777 /composer
ENV COMPOSER_HOME=/composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN composer global require \
    phpmd/phpmd \
    squizlabs/php_codesniffer \
    friendsofphp/php-cs-fixer \
    phpstan/phpstan \
    vimeo/psalm

ENV PATH=$PATH:/composer/vendor/bin