FROM alpine:3.10.3

MAINTAINER 应卓 yingzhor@gmail.com

RUN apk add --no-cache curl zip unzip

COPY --from=quay.io/yingzhuo/docktool:latest /bin/docktool /bin/docktool