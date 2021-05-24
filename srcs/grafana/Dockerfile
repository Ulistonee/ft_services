FROM alpine:3.12

RUN apk update && apk upgrade
RUN apk add wget supervisor vim

RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.5.7.linux-amd64.tar.gz
RUN tar -zxvf grafana-enterprise-7.5.7.linux-amd64.tar.gz  &&  rm grafana-enterprise-7.5.7.linux-amd64.tar.gz

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk && apk add glibc-2.33-r0.apk

WORKDIR grafana-7.5.7

EXPOSE 3000

CMD ./bin/grafana-server
