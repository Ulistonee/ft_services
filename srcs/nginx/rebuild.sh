#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc nginx-svc
kubectl delete deploy nginx-deployment
docker build -t nginx_image srcs/nginx
kubectl apply -f srcs/nginx/srcs/nginx.yaml
kubectl apply -f srcs/nginx/srcs/configmap.yaml