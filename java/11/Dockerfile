FROM alpine:3.11.2

MAINTAINER 应卓 <yingzhor@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-11-openjdk/jre/bin:/usr/lib/jvm/java-11-openjdk/bin

RUN apk add --update bash curl tar wget ca-certificates unzip \
        openjdk11 font-adobe-100dpi ttf-dejavu fontconfig \
    && rm -rf /var/cache/apk/*
