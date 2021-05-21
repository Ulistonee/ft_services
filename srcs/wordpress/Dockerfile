FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add nginx supervisor vim wget php7 php7-fpm
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-json
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz
#RUN mv wordpress /var/www/html/

COPY srcs/my_config /etc/nginx/conf.d/default.conf
COPY srcs/supervisor.conf /etc/supervisord.conf

# RUN mkdir /var/www/html
#WORKDIR /var/www/html/


COPY srcs/wp-config.php /wordpress/wp-config.php
COPY srcs/init.sh /home/init.sh
RUN mkdir -p /run/nginx

EXPOSE 5050
CMD sh /home/init.sh
