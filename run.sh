#!/bin/bash

# Set the device name
DEVICE_NAME="Home Assistant"
sed -i "s/DeviceName=.*/DeviceName=${DEVICE_NAME}/g" /etc/kdeconnect.conf

# Start the KDE Connect daemon
/usr/lib/kdeconnectd

# Set up the avahi daemon for device discovery
avahi-daemon -D
