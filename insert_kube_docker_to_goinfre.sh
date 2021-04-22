#!/bin/sh
# sh docker_setup.sh
# from https://gist.github.com/gcamerli/b8cf836f8627cb285f33086db10096a2
GOINFRE="/goinfre/$USER";
echo $GOINFRE
rm -fr ~/.minikube/
mkdir -p $GOINFRE/.minikube
ln -sf $GOINFRE/.minikube ~/.minikube
mkdir -p $GOINFRE/Caches
mkdir -p $GOINFRE/Caches/com.docker.docker
rm -rf ~/Library/Caches/com.docker.docker
ln -sf $GOINFRE/Caches/com.docker.docker ~/Library/Caches/com.docker.docker
mkdir -p $GOINFRE/Containers
mkdir -p $GOINFRE/.docker
rm -rf ~/.docker
ln -sf $GOINFRE/.docker ~/.docker
mkdir -p $GOINFRE/Containers/com.docker.docker
rm -rf ~/Library/Containers/com.docker.docker
ln -sf $GOINFRE/Containers/com.docker.docker ~/Library/Containers/com.docker.docker
echo "install success complete"