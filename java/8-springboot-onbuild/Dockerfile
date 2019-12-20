FROM registry.cn-shanghai.aliyuncs.com/yingzhuo/java:8-jre

MAINTAINER 应卓 <yingzhor@gmail.com>

ONBUILD ADD *.jar /opt/app.jar

ENV TIMEZONE=Asia/Shanghai \
    DEBUG_MODE=false

ADD ./docker-entrypoint.sh /bin/entrypoint

RUN chmod +x /bin/entrypoint && \
    mkdir -p /var/data && \
    mkdir -p /var/tmp && \
    mkdir -p /var/log && \
    mkdir -p /opt/cnf

VOLUME /var/data \
       /var/tmp \
       /var/log \
       /opt/cnf

STOPSIGNAL 15

CMD ["entrypoint"]
