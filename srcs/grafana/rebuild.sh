#!/bin/bash

eval $(minikube docker-env)

kubectl delete svc grafana-svc
kubectl delete deploy grafana-deployment
docker build -t grafana_image srcs/grafana
kubectl apply -f srcs/grafana/srcs/grafana.yaml