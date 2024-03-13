FROM alpine:3.18
EXPOSE 3306
WORKDIR /var/lib/mysql
COPY [ "setup.sh" , "/root/" ]
COPY [ "wpdb.sql" , "/root/" ]
RUN [ "sh" , "/root/setup.sh" ]
CMD [ "mariadbd" ]
