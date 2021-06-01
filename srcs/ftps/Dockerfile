FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add vim openssl vsftpd openrc

RUN rc-update add vsftpd default
#RUN rc-service vsftpd restart

COPY srcs/vsftpd.conf ./
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout /etc/ssl/vsftpd.key -out /etc/ssl/vsftpd.crt

COPY srcs/init.sh ./
COPY srcs/vsftpd.userlist /etc/vsftpd/vsftpd.userlist

RUN mv /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.backup

EXPOSE 21 30021

CMD sh init.sh
