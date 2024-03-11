apk update
apk upgrade
apk add mariadb
apk add mariadb-client

rc-service mariadb setup
rc-service mariadb start

sed -i 's/^#bind-address/bind-address/g' /etc/my.cnf.d/mariadb-server.cnf

echo 'create database wpdb;' | mariadb
echo "create user 'jeongwok42'@'localhost' identified by 'jeongwok42'" | mariadb
echo 'grant all privileges on wpdb.* to jeongwok42@localhost;' | mariadb
echo 'flush privileges;' | mariadb

rc-update add mariadb default
