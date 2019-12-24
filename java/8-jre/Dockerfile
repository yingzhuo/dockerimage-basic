FROM openjdk:8u232-jre-stretch

MAINTAINER 应卓 yingzhor@gmail.com

RUN apt-get update && \
    apt-get install -y \
                    wget \
                    curl \
                    procps \
                    zip \
                    unzip \
                    bash &&
    ln -sf "${JAVA_HOME}/bin/java" /bin/java

COPY --from=quay.io/yingzhuo/docktool:latest /bin/docktool /bin/docktool

CMD ["/bin/java", "-version"]