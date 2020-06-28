#!/bin/bash
# Install and update minecraft server on system startup
# By Andrew St Clair

# Assume path variable not set and set it for this script
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

# Install and update java install
apt install openjdk-8-jdk-headless jq -y

# Make server directory
mkdir -p /opt/minecraft/survival
cd /opt/minecraft/survival

# Get system memory in MB and remove 100MB for system overhead
mem=$(echo "$(cat /proc/meminfo | awk '$1=$1' | grep MemTotal | cut -d ' ' -f2)/1024-100" | bc)

# Create/recreate start script
echo "eula=true" > eula.txt
echo "#!/bin/bash" > start.sh
echo "cd /opt/minecraft/survival" >> start.sh
echo "java -Xms${mem}M -Xmx${mem}M -jar server.jar -nogui" >> start.sh

# Set execute permissions on start script and run the updater
chmod +x start.sh
chown minecraft:minecraft start.sh
/updatemc.sh
