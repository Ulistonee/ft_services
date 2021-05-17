#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc phpmyadmin-svc
kubectl delete deploy phpmyadmin-deployment
docker build -t phpmyadmin_image srcs/phpmyadmin/
kubectl apply -f srcs/phpmyadmin/srcs/phpmyadmin.yaml