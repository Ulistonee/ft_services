#!/bin/sh

#nginx -g 'daemon off;'
#/usr/bin/supervisord -c /etc/supervisord.conf
/etc/init.d/mariadb setup
rc-service mariadb start
sh