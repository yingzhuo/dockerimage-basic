FROM openjdk:11.0.5-stretch

MAINTAINER 应卓 yingzhor@gmail.com

RUN apt-get update && \
    apt-get install -y \
                    wget \
                    curl \
                    procps \
                    zip \
                    unzip \
                    bash && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf "${JAVA_HOME}/bin/java" /bin/java

COPY --from=quay.io/yingzhuo/docktool:latest /bin/docktool /bin/docktool

CMD ["/bin/java", "-version"]
