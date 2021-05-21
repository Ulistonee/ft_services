FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add vim openssl vsftpd openrc

RUN rc-update add vsftpd default
#RUN rc-service vsftpd restart

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Kazan/O=School21/OU=21School/CN=myssl" -newkey rsa:2048 -keyout /etc/ssl/vsftpd.key -out /etc/ssl/vsftpd.crt

EXPOSE 21 30021

CMD vsftpd
