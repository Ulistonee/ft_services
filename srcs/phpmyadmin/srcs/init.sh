#!/bin/sh

#nginx -g 'daemon off;'
echo "Im working my master..."
/usr/bin/supervisord -c /etc/supervisord.conf
