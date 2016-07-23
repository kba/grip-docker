FROM alpine:latest
MAINTAINER Konstantin Baierer <konstantin.baierer@gmail.com>

RUN apk add --update --progress \
    python \
    python-dev \
    elinks \
    lynx \
    py-setuptools \
    build-base \
    py-openssl \
    ca-certificates

ADD grip /tmp/grip

RUN cd /tmp/grip \
  && python setup.py install \
  && apk del --purge py-pip build-base py-openssl ca-certificates \
  && rm -rf /var/cache/apk/* /tmp/grip

WORKDIR /data

ADD settings.quiet.py /root/.grip-quiet/settings.py

EXPOSE 6419

ENTRYPOINT ["grip"]
