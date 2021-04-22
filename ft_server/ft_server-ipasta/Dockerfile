FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql
RUN apt-get install -y php-mbstring
RUN apt-get install -y default-mysql-server
RUN apt-get install -y zip
RUN apt-get install -y openssl
ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip /
ADD https://wordpress.org/wordpress-5.6.zip /

RUN apt-get install -y vim
RUN apt-get install -y procps

COPY ./srcs/default /etc/nginx/sites-enabled/default
COPY ./srcs/start_script.sh start_script.sh
COPY ./srcs/localhost.sql localhost.sql
COPY ./srcs/ssl /etc/nginx/ssl

EXPOSE 80 443

CMD bash start_script.sh

COPY ./srcs/wp-config.php /var/www/html/wordpress/wp-config.php
COPY ./srcs/config.inc.php /var/www/html/wordpress/phpmyadmin/config.inc.php