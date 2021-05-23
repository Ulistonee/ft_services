#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc ftps-svc
kubectl delete deploy ftps-deployment
docker build -t ftps_image .
kubectl apply -f srcs/ftps.yaml