#!/bin/sh

echo "im running..."

PASSWDDB='1234'
MAINDB='wordpress'
USER='admin'

#nginx -g 'daemon off;'
openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
#/usr/bin/mysqld_safe
mysql -e "CREATE DATABASE ${MAINDB}"
mysql -e "CREATE USER ${USER}@'%' IDENTIFIED BY '${PASSWDDB}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"
mysql wordpress < /home/wordpress.sql
#mysql -h mysql-svc:3306 -u admin --password='1234' wordpress < ./wordpress.sql
/usr/bin/supervisord -c /etc/supervisord.conf
#sh

