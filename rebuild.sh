#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc nginx-svc
kubectl delete deploy nginx-deployment
kubectl delete svc phpmyadmin-svc
kubectl delete deploy phpmyadmin-deployment
kubectl delete svc mysql-svc
kubectl delete deploy mysql-deployment

docker build -t nginx_image srcs/nginx
docker build -t phpmyadmin_image srcs/phpmyadmin/
docker build -t mysql_image srcs/mysql/

kubectl apply -f srcs/nginx/srcs/nginx.yaml
kubectl apply -f srcs/nginx/srcs/configmap.yaml
kubectl apply -f srcs/phpmyadmin/srcs/phpmyadmin.yaml
kubectl apply -f srcs/mysql/srcs/mysql.yaml