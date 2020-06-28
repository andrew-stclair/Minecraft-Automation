# Minecraft-Automation
Linux Scripts to automate the process of installing and updating a minecraft server

This also uses systemd to manage the minecraft server

# Installation
the contents of this git repository should be copied to the root of your linux server

Then run the following commands as root

`chmod +x /install.sh && /install.sh`

# Usage
simply rebooting the server will update the game to the lastest jar, but if you do not wish to do that, you can use the following commands instead

## Update server
`/startup.sh`

## Stop server
`sudo systemctl stop minecraft`

## Start server
`sudo systemctl start minecraft`

## Get server status
`sudo systemctl status minecraft`