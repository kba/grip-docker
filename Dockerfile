FROM alpine:latest
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install grip \
  && rm -rf /var/cache/apk/*

WORKDIR /data

EXPOSE 6419

ENTRYPOINT grip
