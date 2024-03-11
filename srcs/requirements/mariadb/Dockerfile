FROM alpine:3.18
EXPOSE 3306
WORKDIR /var/lib/mysql
COPY [ "setup.sh" , "/home/" ]
RUN [ "sh" , "/home/setup.sh" ]
CMD [ "mariadbd" ]
