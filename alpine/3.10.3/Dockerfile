FROM alpine:3.10.3

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.1.3

RUN apk add --no-cache \
            curl \
            zip \
            unzip && \
    wget https://github.com/yingzhuo/docktool/releases/download/v${DOCKTOOL_VERSION}/docktool-linux-amd64-${DOCKTOOL_VERSION}.tar.gz -O ./docktool.tar.gz && \
    mkdir -p ./docktool/ && \
    tar -zxf ./docktool.tar.gz -C ./docktool/ && \
    cp ./docktool/docktool /bin/docktool && \
    chmod +x /bin/docktool && \
    rm -rf ./docktool ./docktool.tar.gz
