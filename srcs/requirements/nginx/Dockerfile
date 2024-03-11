FROM alpine:3.18
EXPOSE 443
WORKDIR /var/www/html
COPY [ "setup.sh" , "/home/" ]
RUN [ "sh" , "/home/setup.sh" ]
COPY [ "wordpress.conf" , "/etc/nginx/http.d/" ]
CMD [ "nginx" , "-g" , "daemon off;" ]
