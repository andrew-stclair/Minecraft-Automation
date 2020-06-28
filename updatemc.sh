#!/bin/sh

#------------
# Wrapper for updatemcjar.sh
#------------

SERVER_PATH="/opt/minecraft/survival"
JAR_PATH="${SERVER_PATH}/server.jar"
echo "Stopping Minecraft"
systemctl stop minecraft
echo "Minecraft Stopped"
/updatemcjar.sh -y --jar-path $JAR_PATH
chown -R minecraft:minecraft $SERVER_PATH
chmod 750 $JAR_PATH
chmod +x $JAR_PATH
echo "Starting Minecraft"
systemctl start minecraft
echo "Minecraft Started"