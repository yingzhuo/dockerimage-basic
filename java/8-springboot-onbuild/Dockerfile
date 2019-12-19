FROM openjdk:8u232-jre-slim

MAINTAINER 应卓 <yingzhor@gmail.com>

ONBUILD RUN ln -sf ${JAVA_HOME}/bin/java /bin/java && \
            mkdir -p /var/data && \
            mkdir -p /var/tmp && \
            mkdir -p /var/log && \
            mkdir -p /opt/cnf

ONBUILD ADD *.jar /opt/app.jar

ENV TIMEZONE=Asia/Shanghai \
    DEBUG_MODE=false

ADD ./docker-entrypoint.sh /bin/entrypoint

RUN chmod +x /bin/entrypoint

VOLUME /var/data \
       /var/tmp \
       /var/log \
       /opt/cnf

STOPSIGNAL 15

CMD ["entrypoint"]