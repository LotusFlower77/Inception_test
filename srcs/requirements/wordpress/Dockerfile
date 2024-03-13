FROM alpine:3.18
EXPOSE 9000
WORKDIR /var/www/html
ADD [ "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" , "/root/" ]
COPY [ "setup.sh" , "/root/" ]
RUN [ "sh" , "/root/setup.sh" ]
CMD [ "php-fpm82" , "-F" ]
