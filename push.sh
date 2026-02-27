#!/bin/bash

ImageName=`cat image-name.txt`
Latest=$(echo $ImageName | awk -F":" '{ print $1 }')":latest"

docker push $ImageName
docker push $Latest 
