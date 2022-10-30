FROM wordpress:latest

ENV WORDPRESS_DB_HOST=127.0.0.1 \
    WORDPRESS_DB_USER=user \
    WORDPRESS_DB_PASSWORD=1234qweR \
    WORDPRESS_DB_NAME=wp \
    WORDPRESS_TABLE_PREFIX=wp_

#RUN apt update && \
#    apt install -y \
#    wget \
#    mariadb-client

# Replace php.ini
# COPY php.ini /usr/local/etc/php

# Install php.ini
#RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
#    php wp-cli.phar --info
    # chmod +x wp-cli.phar /usr/local/bin/wp && \
    # mv wp-cli.phar /usr/local/bin/wp
    # Remove old php.ini files
    # rm /usr/local/etc/php/php.ini-development && \
    # rm /usr/local/etc/php/php.ini-production
