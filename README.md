# Minecraft-Automation
Linux Scripts to automate the process of installing and updating a minecraft server

This also uses systemd to manage the minecraft server

# Minecraft EULA
Please be aware that these scripts do automatically set the eula.txt file to true

because of this, you must have read and agree to mojang's eula which can be found [here](https://account.mojang.com/documents/minecraft_eula)

# Installation
the contents of this git repository should be copied to the root of your linux server

Then run the following commands as root

`chmod +x /install.sh && /install.sh`

# Usage
simply rebooting the server will update the game to the lastest jar, but if you do not wish to do that, you can use the following commands instead

## Update server
`sudo /updatemc.sh`

This will stop the server, check to see if an update is available, install the update, then start the server again. You do not need to stop the server before running this.

## Stop server
`sudo systemctl stop minecraft`

## Start server
`sudo systemctl start minecraft`

## Get server status
`sudo systemctl status minecraft`

# Sources
Some of the included scripts are either modified or original examples from [Minecraft's Gamepedia article on Linux server update scripts](https://minecraft.gamepedia.com/Tutorials/Linux_server_update_script)

`/updatemc.sh` was modified slightly
`/updatemcjar.sh` is original as of 28/06/2020