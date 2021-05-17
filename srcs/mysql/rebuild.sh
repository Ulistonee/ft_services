#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc mysql-svc
kubectl delete deploy mysql-deployment
docker build -t mysql_image srcs/mysql/
kubectl apply -f srcs/mysql/srcs/mysql.yaml