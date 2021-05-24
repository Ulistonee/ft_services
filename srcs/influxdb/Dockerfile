FROM alpine:3.7

RUN apk update && apk upgrade
RUN apk add wget vim

RUN wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.6-linux-amd64.tar.gz
RUN tar xvzf influxdb2-2.0.6-linux-amd64.tar.gz && rm -rf influxdb2-2.0.6-linux-amd64.tar.gz

CMD sh

