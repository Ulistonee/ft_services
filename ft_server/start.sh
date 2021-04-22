docker images
docker rmi $(docker images -a -q)
docker build -t server ../.
docker run --rm -itp 80:80 -p 443:443 server