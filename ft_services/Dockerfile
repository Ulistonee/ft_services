FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add nginx openssl openssh supervisor

RUN mkdir /var/www/html/
COPY srcs/my_config /etc/nginx/conf.d/default.conf
COPY ./supervisor.conf /etc/supervisor.conf

#RUN chown -R www-data:www-data *
#RUN chmod -R 755 /var/www/*
#
#RUN ln -s /etc/nginx/sites-available/my_config /etc/nginx/sites-enabled/my_config && unlink /etc/nginx/sites-enabled/default
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt

COPY ./srcs/init.sh ./
RUN mkdir -p /run/nginx
EXPOSE 80 443
CMD sh init.sh
