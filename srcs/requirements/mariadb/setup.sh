apk update
apk upgrade
apk add mariadb
apk add mariadb-client

sed -i 's/skip-networking/#skip-networking/' /etc/my.cnf.d/mariadb-server.cnf
sed -i 's/#bind-address/bind-address/' /etc/my.cnf.d/mariadb-server.cnf

mariadb-install-db --user=mysql --datadir=/var/lib/mysql
mariadbd-safe & sleep 1
mariadb < /root/wpdb.sql
