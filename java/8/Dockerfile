FROM alpine:3.11.2

MAINTAINER 应卓 <yingzhor@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

RUN apk add --update bash curl tar wget ca-certificates unzip \
        openjdk8 font-adobe-100dpi ttf-dejavu fontconfig \
    && rm -rf /var/cache/apk/*

COPY --from=quay.io/yingzhuo/docktool:latest /bin/docktool /bin/docktool
