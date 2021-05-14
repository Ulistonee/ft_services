#!/bin/sh

echo "im running..."
#nginx -g 'daemon off;'
openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
/usr/bin/supervisord -c /etc/supervisord.conf
#sh