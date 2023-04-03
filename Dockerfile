FROM alpine:3.16.2

LABEL maintainer="Andrei Varabyeu <andrei_varabyeu@epam.com>"
LABEL version=5.7.3-custom

ENV APP_DOWNLOAD_URL https://github.com/maximilian-mueller67/service-index/releases/download/v5.7.3-custom-2/service-index_linux_amd64
RUN apk --no-cache add --upgrade apk-tools

ADD ${APP_DOWNLOAD_URL} /service-index

RUN chmod +x /service-index

EXPOSE 8080
ENTRYPOINT ["/service-index"]
