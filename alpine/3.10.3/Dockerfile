FROM alpine:3.10.3

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.1.2

RUN apk add --no-cache \
            curl \
            zip \
            unzip && \
            \
    curl -fsSL "https://github.com/yingzhuo/docktool/releases/download/v$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -o /bin/docktool && \
    chmod +x /bin/docktool