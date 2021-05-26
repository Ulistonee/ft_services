FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add wget vim openrc --no-cache supervisor influxdb

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk && apk add glibc-2.33-r0.apk

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.1_linux_amd64.tar.gz && tar -zxvf telegraf-1.18.1_linux_amd*64.tar.gz

COPY ./srcs/supervisord.conf /etc/supervisord.conf

# CMD influxd -config /etc/influxdb.conf
COPY srcs/telegraf.conf /etc/telegraf/telegraf.conf
RUN mkdir -p /etc/telegraf && ./telegraf-1.18.1/usr/bin/telegraf -sample-config --input-filter docker --output-filter influxdb > /etc/telegraf/telegraf.conf

CMD ["/usr/bin/supervisord"]

