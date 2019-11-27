FROM ubuntu:18.04

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=v1.1.0

RUN apt-get update && \
    apt-get install -y curl \
                        wget \
                        procps \
                        zip \
                        unzip && \
    curl -fsSL "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -o /bin/docktool && \
    chmod +x /bin/docktool && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
