FROM alpine:3.15

ARG DOMAIN_NAME
ARG DB_NAME
ARG DB_USER
ARG DB_USER_PASSWORD
ARG WP_ADMIN
ARG WP_ADMIN_PASSWORD
ARG WP_USER
ARG WP_USER_PASSWORD

RUN apk update && apk upgrade && apk add curl mariadb-client php8 php8-fpm php8-json php8-zlib php8-xml php8-xmlwriter php8-simplexml php8-pdo php8-phar php8-openssl php8-pdo_mysql php8-mysqli php8-session php8-gd php8-iconv php8-gmp php8-zip php8-curl php8-opcache php8-ctype php8-apcu php8-intl php8-bcmath php8-dom php8-mbstring php8-xmlreader php8-redis php8-tokenizer

COPY ./conf/wp-config.php  /
COPY ./scripts/setup.sh /
COPY ./scripts/setup2.sh /
COPY ./conf/www.conf /etc/php8/php-fpm.d/
RUN chmod +x setup.sh && ./setup.sh

EXPOSE 9000

CMD ["/bin/sh","./setup2.sh"]
