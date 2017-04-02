# æternity docker
This docker file will build the current æternity testnet node. 

## Building
First clone this repo and "cd" to the cloned directory. Then build the docker image:
```
docker build -t aeternity/aeternity-testnet-node .
```
This can take a while, depending on your internet connection and computing power. Grab a coffee and relax.

## Running
```
docker run -it aeternity/aeternity-testnet-node /bin/bash start.sh
```

### Commands
See [the official aeternity repo](https://github.com/aeternity/testnet)

### Support
- Tested on MacOSX Sierra
- Tested on Ubuntu 16.04

### ToDo
- expose RPC port
- test on windows
