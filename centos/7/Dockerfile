FROM centos:7.7.1908

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.0.7

RUN yum install -y curl wget && \
    curl -fsSL "https://github.com/yingzhuo/docktool/releases/download/$DOCKTOOL_VERSION/docktool-linux-amd64-$DOCKTOOL_VERSION" -o /bin/docktool && \
    chmod +x /bin/docktool && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    rm -rf /var/log/*
