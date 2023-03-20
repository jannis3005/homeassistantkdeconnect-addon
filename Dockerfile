FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y kdeconnect dbus avahi-daemon && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
