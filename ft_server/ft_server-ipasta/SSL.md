https://abc-server.com/ru/blog/administration/creating-ssl-for-nginx-in-ubuntu-1604/

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout/etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048