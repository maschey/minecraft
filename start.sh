#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path to server.jar>"
    exit 1
fi
screen -dmS server java -Xms2G -Xmx12G -jar $1 --nogui
