#! /bin/bash

WEB_SERVER=nginx
DB=mysql
VER_PHP="7.4"
BACKEND_SERV="php$VER_PHP"

apt update && apt install -y $WEB_SERVER && apt install -y $DB-server && mysql_secure_instalalation
apt install -y $BACKEND_SERV-cgi $BACKEND_SERV $BACKEND_SERV-fpm $BACKEND_SERV-mysql && 
cp ./nginx.conf /etc/nginx/ && systemctl reload nginx
