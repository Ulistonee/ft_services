#!/bin/sh

#nginx -g 'daemon off;'
/usr/bin/supervisord -c /etc/supervisord.conf
