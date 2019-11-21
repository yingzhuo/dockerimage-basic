FROM busybox:1.31.1

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.0.7

RUN wget "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -O /bin/docktool && \
    chmod +x /bin/docktool