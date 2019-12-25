FROM mcr.microsoft.com/java/jdk:8u232-zulu-alpine

MAINTAINER 应卓 yingzhor@gmail.com

RUN apk add --no-cache --update font-adobe-100dpi ttf-dejavu fontconfig curl

COPY --from=quay.io/yingzhuo/docktool:latest /bin/docktool /bin/docktool

CMD ["java", "-version"]