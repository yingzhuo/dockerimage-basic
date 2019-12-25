FROM ubuntu:18.04

MAINTAINER 应卓 yingzhor@gmail.com

RUN apt-get update && \
    apt-get install -y curl \
                        wget \
                        procps \
                        zip \
                        unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY --from=quay.io/yingzhuo/docktool:latest /bin/docktool /bin/docktool