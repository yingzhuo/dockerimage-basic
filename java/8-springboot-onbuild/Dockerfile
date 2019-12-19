FROM openjdk:8u232-jre-slim

MAINTAINER 应卓 <yingzhor@gmail.com>

ONBUILD ADD *.jar /opt/app.jar

ARG DOCKTOOL_VERSION=1.1.5

ENV TIMEZONE=Asia/Shanghai \
    DEBUG_MODE=false

ADD ./docker-entrypoint.sh /bin/entrypoint

RUN chmod +x /bin/entrypoint && \
    ln -sf ${JAVA_HOME}/bin/java /bin/java && \
    mkdir -p /var/data && \
    mkdir -p /var/tmp && \
    mkdir -p /var/log && \
    mkdir -p /opt/cnf && \
    wget "https://github.com/yingzhuo/docktool/releases/download/v${DOCKTOOL_VERSION}/docktool-linux-amd64-${DOCKTOOL_VERSION}.tar.gz" -O ./docktool.tar.gz && \
    mkdir -p ./docktool/ && \
    tar -zxf ./docktool.tar.gz -C ./docktool/ && \
    cp ./docktool/docktool /bin/docktool && \
    chmod +x /bin/docktool && \
    rm -rf ./docktool ./docktool.tar.gz

VOLUME /var/data \
       /var/tmp \
       /var/log \
       /opt/cnf

STOPSIGNAL 15

CMD ["entrypoint"]