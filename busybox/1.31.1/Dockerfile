FROM busybox:1.31.1

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.1.4

RUN wget https://github.com/yingzhuo/docktool/releases/download/v${DOCKTOOL_VERSION}/docktool-linux-amd64-${DOCKTOOL_VERSION}.tar.gz -O ./docktool.tar.gz && \
        mkdir -p ./docktool/ && \
        tar -zxf ./docktool.tar.gz -C ./docktool/ && \
        cp ./docktool/docktool /bin/docktool && \
        chmod +x /bin/docktool && \
        rm -rf ./docktool ./docktool.tar.gz