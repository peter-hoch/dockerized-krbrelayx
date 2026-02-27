#!/bin/bash -x

Local=`pwd`
echo $Local

if ! [ -z "$1"]
  then
    Local=$1
fi
echo $Local

ImageName=`cat image-name.txt`
Latest=$(echo $ImageName | awk -F":" '{ print $1 }')":latest"

ContainerName=$(echo $Latest | sed 's/petersdockerid0815\/dockerized-//' | sed 's/:latest//')


#docker build --no-cache --progress=plain -t $ImageName .  2>&1 | tee docker-build.log
docker build -t $ImageName .

docker build -t $Latest .

docker run --rm -it  \
    -v $Local:/app  \
    --name $ContainerName \
    $ImageName  

