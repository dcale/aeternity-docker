FROM ubuntu:16.04
MAINTAINER Alessandro De Carli

RUN apt-get clean && apt-get update -y && apt-get install -y \
    erlang libncurses5-dev libssl-dev unixodbc-dev g++ git erlang-base-hipe \
    wget \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /home/docker/
RUN git clone https://github.com/aeternity/testnet.git code
WORKDIR /home/docker/code
RUN sh install.sh
CMD sh start.sh

VOLUME  ["/home/docker/code/"]
