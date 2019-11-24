FROM ubuntu:18.04

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.0.8

RUN apt-get update && \
    apt-get install -y curl \
                        wget && \
    curl -fsSL "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -o /bin/docktool && \
    chmod +x /bin/docktool && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
