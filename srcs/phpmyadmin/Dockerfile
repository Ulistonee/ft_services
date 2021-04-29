FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add nginx supervisor wget
RUN apk add php7.3 php-mysql php-fpm php-mbstring

RUN mkdir /var/www/html/
COPY srcs/my_config /etc/nginx/conf.d/default.conf
COPY srcs/supervisor.conf /etc/supervisord.conf

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin

COPY ./srcs/init.sh ./
RUN mkdir -p /run/nginx
EXPOSE 80
CMD sh init.sh