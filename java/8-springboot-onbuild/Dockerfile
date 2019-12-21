FROM registry.cn-shanghai.aliyuncs.com/yingzhuo/java:8-jre

MAINTAINER 应卓 <yingzhor@gmail.com>

WORKDIR /

USER root

ADD ./docker-entrypoint.sh /bin/entrypoint

RUN chmod +x /bin/entrypoint && \
    mkdir -p /var/data/ && \
    mkdir -p /var/tmp/ && \
    mkdir -p /var/log/ && \
    mkdir -p /config && \
    ln -sf /config /opt/config

VOLUME /var/data \
       /var/tmp \
       /var/log \
       /opt/config

STOPSIGNAL 15

ONBUILD ADD *.jar /opt/app.jar

ONBUILD COPY .configkeep *.yaml *.yml *.properties *.xml *.toml /opt/config/

CMD ["entrypoint"]