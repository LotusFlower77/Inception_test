apk update
apk upgrade
apk add mariadb
apk add mariadb-client

sed -i 's/skip-networking/#skip-networking/' /etc/my.cnf.d/mariadb-server.cnf
sed -i 's/#bind-address/bind-address/' /etc/my.cnf.d/mariadb-server.cnf

mysql_secure_installation << EOF

Y
Y
jeongwok42
jeongwok42
Y
Y
Y
Y
EOF

mariadb << EOF
CREATE DATABASE wpdb;
CREATE USER 'jeongwok42'@'localhost' IDENTIFIED BY 'jeongwok42'
GRANT ALL PRIVILEGES ON wpdb.* TO jeongwok42@localhost;
FLUSH PRIVILEGES;
EOF
