FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add nginx supervisor vim
RUN apk add wget php7 php7-fpm php7-mysqli php7-xml php7-iconv php7-json php7-zlib php7-curl php7-mbstring php7-session

WORKDIR /var/www/html/

COPY srcs/my_config /etc/nginx/conf.d/default.conf
COPY srcs/supervisor.conf /etc/supervisord.conf

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin

WORKDIR /var/www/html/phpmyadmin

COPY ./srcs/config.inc.php phpmyadmin
COPY ./srcs/init.sh ./
RUN mkdir -p /run/nginx

EXPOSE 5000
CMD sh init.sh