#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc wordpress-svc
kubectl delete deploy wordpress-deployment
docker build -t wordpress_image srcs/wordpress/
kubectl apply -f srcs/wordpress/srcs/wordpress.yaml