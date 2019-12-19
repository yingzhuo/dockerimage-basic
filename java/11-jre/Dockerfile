FROM openjdk:11.0.5-jre-slim

MAINTAINER 应卓 yingzhor@gmail.com

ARG DOCKTOOL_VERSION=1.1.5

RUN apt-get update && \
    apt-get install -y \
                    wget \
                    curl \
                    procps \
                    zip \
                    unzip && \
    wget https://github.com/yingzhuo/docktool/releases/download/v${DOCKTOOL_VERSION}/docktool-linux-amd64-${DOCKTOOL_VERSION}.tar.gz -O ./docktool.tar.gz && \
    mkdir -p ./docktool/ && \
    tar -zxf ./docktool.tar.gz -C ./docktool/ && \
    cp ./docktool/docktool /bin/docktool && \
    chmod +x /bin/docktool && \
    rm -rf ./docktool ./docktool.tar.gz && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf ${JAVA_HOME}/bin/java /bin/java

CMD ["/bin/java", "-version"]
