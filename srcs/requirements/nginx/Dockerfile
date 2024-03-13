FROM alpine:3.18
EXPOSE 443
WORKDIR /var/www/html
COPY [ "setup.sh" , "/root/" ]
RUN [ "sh" , "/root/setup.sh" ]
COPY [ "wordpress.conf" , "/etc/nginx/http.d/" ]
CMD [ "nginx" , "-g" , "daemon off;" ]
