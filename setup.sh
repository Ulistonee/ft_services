#!/bin/bash
minikube delete
minikube start --vm-driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)
docker build -t nginx_image srcs/nginx
eval $(minikube docker-env)
docker build -t phpmyadmin_image srcs/phpmyadmin/

kubectl apply -f srcs/nginx/srcs/configmap.yaml
kubectl apply -f srcs/nginx/srcs/nginx.yaml
kubectl apply -f srcs/phpmyadmin/srcs/phpmyadmin.yaml


# kubectl get pods --all-namespaces       мы можем увидеть список запущенных в кластере подов
# kubectl get nodes                       список нод
# kubectl get services                    список сервисов
# minikube service hello-minikube --url   команда, чтобы узнать его внешний IP и порт
# kubectl delete service
# kubectl delete deployment
