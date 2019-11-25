FROM openjdk:8u232-stretch

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.0.8

RUN apt-get update && \
    apt-get install -y curl \
                    procps && \
    curl -fsSL "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -o /bin/docktool && \
    chmod +x /bin/docktool && \
    rm -rf /var/lib/apt/lists/*