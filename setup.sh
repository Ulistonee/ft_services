#!/bin/bash
minikube delete
minikube start --vm-driver=virtualbox
minikube addons enable metallb
# update metallb addon
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2

eval $(minikube docker-env)
docker build -t nginx_image srcs/nginx
docker build -t phpmyadmin_image srcs/phpmyadmin/
docker build -t mysql_image srcs/mysql/
docker build -t wordpress_image srcs/wordpress/
docker build -t ftps_image srcs/ftps/

kubectl apply -f srcs/nginx/srcs/configmap.yaml
kubectl apply -f srcs/nginx/srcs/nginx.yaml
kubectl apply -f srcs/phpmyadmin/srcs/phpmyadmin.yaml
kubectl apply -f srcs/mysql/srcs/mysql.yaml
kubectl apply -f srcs/wordpress/srcs/wordpress.yaml
kubectl apply -f srcs/ftps/srcs/ftps.yaml

# kubectl get pods --all-namespaces       мы можем увидеть список запущенных в кластере подов
# kubectl get nodes                       список нод
# kubectl get services                    список сервисов
# minikube service hello-minikube --url   команда, чтобы узнать его внешний IP и порт
# kubectl delete service
# kubectl delete deployment
