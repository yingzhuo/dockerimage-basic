FROM ubuntu:18.04

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.1.2

RUN apt-get update && \
    apt-get install -y curl \
                        wget \
                        procps \
                        zip \
                        unzip && \
    wget https://github.com/yingzhuo/docktool/releases/download/v${DOCKTOOL_VERSION}/docktool-linux-amd64-${DOCKTOOL_VERSION}.tar.gz -O ./docktool.tar.gz && \
    mkdir -p ./docktool/ && \
    tar -zxf ./docktool.tar.gz -C ./docktool/ && \
    cp ./docktool/docktool /bin/docktool && \
    chmod +x /bin/docktool && \
    rm -rf ./docktool ./docktool.tar.gz && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
