DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%'
CREATE DATABASE wpdb;
CREATE USER 'jeongwok42'@'localhost' IDENTIFIED BY 'jeongwok42'
GRANT ALL PRIVILEGES ON wpdb.* TO jeongwok42@localhost;
FLUSH PRIVILEGES;