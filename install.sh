#!/bin/bash
# Hook scripts into linux system

# Set permissions
chmod +x /startup.sh
chmod +x /updatemc.sh
chmod +x /updatemcjar.sh
chmod +x /etc/systemd/system/minecraft.service
chown root:root /startup.sh
chown root:root /updatemc.sh
chown root:root /updatemcjar.sh
chown root:root /etc/systemd/system/minecraft.service

# Add crontab entry
(crontab -l 2>/dev/null; echo "@reboot /startup.sh") | crontab -

# Setup minecraft user
useradd -M -U -s /usr/sbin/nologin minecraft

# Make server directory
mkdir -p /opt/minecraft/survival
touch /opt/minecraft/survival/server.jar
chown -R minecraft:minecraft /opt/minecraft

# Enable systemd service
systemctl daemon-reload
systemctl enable minecraft
