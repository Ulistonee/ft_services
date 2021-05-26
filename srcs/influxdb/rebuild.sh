#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc influxdb-svc
kubectl delete deploy influxdb-deployment
docker build -t influxdb_image srcs/influxdb/
kubectl apply -f srcs/influxdb/srcs/influxdb.yaml