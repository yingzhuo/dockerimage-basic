FROM centos:7.7.1908

LABEL MAINTAINER="应卓 <yingzhor@gmail.com>"

RUN yum install -y curl \
                    wget \
                    procps \
                    zip \
                    unzip && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    rm -rf /var/log/*

COPY --from=yingzhuo/docktool /bin/docktool /bin/docktool