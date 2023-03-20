ARG BUILD_FROM=ghcr.io/hassio-addons/base:13.1.3
FROM $BUILD_FROM

# Install kdeconnect dependencies
RUN apk add --no-cache kdeconnect && \
    apk add --no-cache --upgrade dbus && \
    dbus-uuidgen > /var/lib/dbus/machine-id

# Copy root file system
COPY rootfs /

# Set up the avahi daemon for device discovery
RUN mkdir -p /var/run/dbus && \
    dbus-uuidgen > /var/lib/dbus/machine-id && \
    dbus-daemon --system --fork && \
    dbus-uuidgen > /etc/machine-id && \
    dbus-daemon --config-file=/usr/share/dbus-1/system.conf --print-address
