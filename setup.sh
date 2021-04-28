#!/bin/bash
minikube delete
minikube start --vm-driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)
docker build -t nginx_image srcs/nginx
kubectl apply -f srcs/nginx/srcs/nginx.yaml
kubectl apply -f srcs/nginx/srcs/configmap.yaml