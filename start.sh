#!/bin/bash

ImageName=`cat image-name.txt`

docker run --rm -it -v `pwd`:/app $ImageName  

