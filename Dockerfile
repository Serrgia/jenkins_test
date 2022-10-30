FROM wordpress:latest

RUN apt update && \
    apt install -y \
    wget \
    mariadb-client

# Replace php.ini
# COPY php.ini /usr/local/etc/php

# Install php.ini
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    php wp-cli.phar --info
    # chmod +x wp-cli.phar /usr/local/bin/wp && \
    # mv wp-cli.phar /usr/local/bin/wp
    # Remove old php.ini files
    # rm /usr/local/etc/php/php.ini-development && \
    # rm /usr/local/etc/php/php.ini-production
