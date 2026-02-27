# dockerized creddump7


## Disclaimer

The image is for development and education only.  
The image is unsecure due to old and end of life software  
Use only in a safe sandboxed environment!  

## Tool info

[the dockerized tool - krbrelayx](https://github.com/dirkjanm/krbrelayx)

## start the container 

```bash
docker run --rm -it -v `pwd`:/app petersdockerid0815/krbrelayx  
# or 
docker run --rm -it --network="host" -v `pwd`:/app petersdockerid0815/dockerized-krbrelax
```

