FROM alpine:3.7

RUN apk update && apk upgrade
#RUN apk add mysql mysql-client openrc supervisor vim

RUN apk add mariadb mariadb-common mariadb-client supervisor vim openrc

#COPY srcs/supervisor.conf /etc/supervisord.conf
COPY srcs/init.sh ./
COPY srcs/my.cnf /etc/mysql/
COPY srcs/wordpress.sql /home/wordpress.sql

EXPOSE 3306

CMD sh init.sh
#CMD ["sh"]
