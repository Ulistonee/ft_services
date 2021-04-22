FROM debian:buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install nginx && apt-get -y install wget && apt install vim -y
COPY srcs/my_config /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/my_config /etc/nginx/sites-enabled/my_config && unlink /etc/nginx/sites-enabled/default
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt
RUN apt-get -y install mariadb-server
RUN apt-get -y install php7.3 php-mysql php-fpm php-mbstring
# php-pdo php-gd php-cli
WORKDIR /var/www/html/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin
COPY ./srcs/config.inc.php phpmyadmin
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz
COPY ./srcs/wp-config.php /var/www/html/wordpress
RUN chown -R www-data:www-data *
RUN chmod -R 755 /var/www/*
COPY ./srcs/init.sh ./
COPY ./srcs/autoindex.sh /etc/nginx/sites-available/
#COPY ./srcs/index.html /var/www/html/
CMD bash init.sh
