FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add nginx supervisor wget

RUN mkdir /var/www/html/
COPY srcs/my_config /etc/nginx/conf.d/default.conf
COPY srcs/supervisor.conf /etc/supervisord.conf

COPY ./srcs/init.sh ./
RUN mkdir -p /run/nginx
EXPOSE 80
CMD sh init.sh