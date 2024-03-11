FROM alpine:3.18
EXPOSE 9000
WORKDIR /var/www/html
ADD [ "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" , "/home/" ]
COPY [ "setup.sh" , "/home/" ]
RUN [ "sh" , "/home/setup.sh" ]
CMD [ "php-fpm82" , "-F" ]
