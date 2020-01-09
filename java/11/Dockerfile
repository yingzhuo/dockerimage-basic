FROM alpine:3.11.2

MAINTAINER 应卓 <yingzhor@gmail.com>

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk \
    PATH=$PATH:/usr/lib/jvm/java-11-openjdk/jre/bin:/usr/lib/jvm/java-11-openjdk/bin

RUN apk add --update bash curl tar wget ca-certificates zip unzip openjdk11 font-adobe-100dpi ttf-dejavu fontconfig procps git && \
    rm -rf /var/cache/apk/* && \
    rm -rf "$JAVA_HOME/man/" && \
    rm -rf "$JAVA_HOME/demo/" && \
    rm -rf "$JAVA_HOME/ASSEMBLY_EXCEPTION" && \
    rm -rf "$JAVA_HOME/LICENSE" && \
    rm -rf "$JAVA_HOME/README" && \
    rm -rf "$JAVA_HOME/release"

COPY --from=yingzhuo/docktool /bin/docktool /bin/docktool