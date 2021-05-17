#!/bin/sh

echo "wordpress nginx is starting..."
#nginx -g 'daemon off;'
#php-fpm7 -F

/usr/bin/supervisord -c /etc/supervisord.conf
#sh