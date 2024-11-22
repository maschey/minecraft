#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <url to server.jar>"
    exit 1
fi
wget -O server.jar $1
crontab -l | { cat; echo "@reboot screen -dmS server java -Xms2G -Xmx12G -jar /root/minecraft/server.jar --nogui"; } | crontab -
bash ./start.sh server.jar