#!/bin/sh
# sh docker_setup.sh
# from https://gist.github.com/gcamerli/b8cf836f8627cb285f33086db10096a2
GOINFRE="/goinfre/$USER";
echo $GOINFRE
rm -fr $GOINFRE/Containers/com.docker.docker
rm -fr ~/Library/Containers/com.docker.docker
mkdir -p ~/Library/Containers/com.docker.docker
rm -fr $GOINFRE/.docker
rm -fr ~/.docker
mkdir -p ~/.docker
rm -fr $GOINFRE/Containers
rm -fr $GOINFRE/Caches/
rm -fr ~/Library/Caches/com.docker.docker
mkdir -p ~/Library/Caches/com.docker.docker
rm -fr $GOINFRE/.minikube
rm -fr ~/.minikube
mkdir -p ~/.minikube
echo "goinfre is clear"