FROM php:7.2-cli

LABEL "com.github.actions.name"="icanhazstring-composer-unused"
LABEL "com.github.actions.description"="composer-unused"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/icanhazstring/composer-unused-ga"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Andreas Frömer <blubb0r05@gmail.com>"

COPY --from=composer:1.9.0 /usr/bin/composer /usr/local/bin/composer

RUN apt-get update \
    && apt install -y \
     curl \
     git \
     zip \
     unzip \
     openssl \
     libzip-dev \
     libicu-dev \
    && docker-php-ext-install zip \
    && docker-php-ext-install intl\
    && rm -r /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]