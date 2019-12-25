#!/bin/sh

# Add group for access to mounted storage
pw groupadd -n mnt -g 1002
pw groupmod 1002 -m 817

# Enable the service
sysrc -f /etc/rc.conf rslsync_enable="YES"

# Start the service
service rslsync start 2>/dev/null

echo "Resilio Sync successfully installed" > /root/PLUGIN_INFO
