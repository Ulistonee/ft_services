FROM alpine:latest

RUN apt-get -y install nginx

RUN mkdir /var/www/html/
COPY srcs/my_config /etc/nginx/sites-available

RUN chown -R www-data:www-data *
RUN chmod -R 755 /var/www/*

RUN ln -s /etc/nginx/sites-available/my_config /etc/nginx/sites-enabled/my_config && unlink /etc/nginx/sites-enabled/default
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt

COPY ./srcs/init.sh ./
EXPOSE 80 443
CMD bash init.sh
