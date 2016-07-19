FROM alpine:latest
MAINTAINER Konstantin Baierer <konstantin.baierer@gmail.com>
RUN apk add --update --progress \
    python \
    python-dev \
    elinks \
    lynx \
    py-pip \
    build-base \
  && pip install grip \
  && apk del --purge build-base \
  && rm -rf /var/cache/apk/*

WORKDIR /data

ADD settings.quiet.py /root/.grip-quiet/settings.py

EXPOSE 6419

ENTRYPOINT ["grip"]
