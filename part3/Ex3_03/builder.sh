#!/bin/sh
#
# Downloads a repository from GitHub, builds a Dockerfile located
# in the root and then publishes it into Docker Hub.
#
# As the first argument gets the GitHub repository 
# and as the second argument the Docker Hub repository.
# 
# Example use: ./builder.sh someuser/some_app someuser/some_image
#

GITHUB=$1
DOCKERHUB=$2

git clone "https://github.com/$GITHUB.git" tmp
cd tmp

docker build -t $DOCKERHUB .
docker push $DOCKERHUB

cd ..
rm -rf tmp