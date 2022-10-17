FROM alpine:3.16.2

ARG version=5.0.11

LABEL maintainer="Andrei Varabyeu <andrei_varabyeu@epam.com>"
LABEL version=$version

ENV APP_DOWNLOAD_URL https://github.com/reportportal/service-index/releases/download/v5.0.11/service-index_linux_amd64
RUN apk --no-cache add --upgrade apk-tools

ADD ${APP_DOWNLOAD_URL} /service-index

ENV VERSION=$version

RUN chmod +x /service-index

EXPOSE 8080
ENTRYPOINT ["/service-index"]
