FROM prom/prometheus:v2.14.0

MAINTAINER 应卓 yingzhor@gmail.com

USER root

ARG DOCKTOOL_VERSION=1.1.3

RUN wget https://github.com/yingzhuo/docktool/releases/download/v${DOCKTOOL_VERSION}/docktool-linux-amd64-${DOCKTOOL_VERSION}.tar.gz -O ./docktool.tar.gz && \
        mkdir -p ./docktool/ && \
        tar -zxf ./docktool.tar.gz -C ./docktool/ && \
        cp ./docktool/docktool /bin/docktool && \
        chmod +x /bin/docktool && \
        rm -rf ./docktool ./docktool.tar.gz
