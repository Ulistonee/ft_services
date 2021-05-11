#!/bin/sh

#nginx -g 'daemon off;'
echo "I'm working my master..."
/usr/bin/supervisord -c /etc/supervisord.conf
