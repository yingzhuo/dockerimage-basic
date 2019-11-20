FROM openjdk:8u232-jre-stretch

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.0.6

RUN apt-get update \
&&  apt-get install -y curl \
&&  wget "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -O /bin/docktool \
&&  chmod +x /bin/docktool \
&&  rm -rf /var/lib/apt/lists/*
