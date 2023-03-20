ARG BUILD_FROM=ghcr.io/hassio-addons/base:13.1.3

FROM ${BUILD_FROM}

RUN apk add --no-cache \
    python3 \
    py3-dbus \
    dbus \
    avahi \
    avahi-dev \
    gcc \
    g++

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
