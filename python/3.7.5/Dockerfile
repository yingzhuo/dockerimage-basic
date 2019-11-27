FROM python:3.7.5-alpine3.10

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=v1.1.0

RUN apk add --no-cache curl \
            zip \
            unzip && \
    curl -fsSL "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -o /bin/docktool && \
    chmod +x /bin/docktool