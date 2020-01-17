FROM ubuntu:18.04

LABEL maintainer="应卓 yingzhor@gmail.com"

RUN apt-get update && \
    apt-get install -y curl wget procps zip unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY --from=yingzhuo/docktool /bin/docktool /bin/docktool