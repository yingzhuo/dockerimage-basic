FROM mcr.microsoft.com/java/jdk:11u5-zulu-alpine

MAINTAINER 应卓 yingzhor@gmail.com

RUN apk add --no-cache --update font-adobe-100dpi ttf-dejavu fontconfig curl && \
    ln -sf "${JAVA_HOME}/bin/java" /bin/java

COPY --from=quay.io/yingzhuo/docktool:latest /bin/docktool /bin/docktool
