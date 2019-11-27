FROM alpine:3.10.3

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=v1.1.0

RUN apk add --no-cache \
            curl \
            zip \
            unzip && \
    curl -fsSL "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-darwin-amd64-$DOCKTOOL_VERSION" -o /bin/docktool && \
    chmod +x /bin/docktool