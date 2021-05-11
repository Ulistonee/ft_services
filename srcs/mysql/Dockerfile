FROM alpine:3.7

RUN apk update && apk upgrade
#RUN apk add mysql mysql-client openrc
COPY srcs/supervisor.conf /etc/supervisord.conf

RUN apk add mariadb mariadb-common mariadb-client

COPY srcs/init.sh ./
COPY srcs/my.cnf /etc/mysql/

EXPOSE 3306

#CMD sh init.sh
CMD sh
