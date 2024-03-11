apk update
apk upgrade
apk add openssl
apk add nginx

adduser -D -G www-data www-data

chown -R www-data:www-data /var/lib/nginx

sed -i 's/^user nginx;/user www-data;/g' /etc/nginx/nginx.conf

openssl genrsa -out /etc/ssl/private/nginx.key 2048
openssl req -x509 -key /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj /

rc-update add nginx default
