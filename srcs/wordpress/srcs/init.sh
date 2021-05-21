#!/bin/sh

echo "wordpress nginx is starting..."
#nginx -g 'daemon off;'
#php-fpm7 -F
mv wordpress /var/www/html

/usr/bin/supervisord -c /etc/supervisord.conf
#sh