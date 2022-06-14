#!/bin/bash

PS3='Please enter your choice: '
options=("Discord.js" "Discord.py")

select opt in "${options[@]}"
do
    case $opt in
        "Discord.js")
            apk add --update nodejs npm;
            npm install discord.js;
            node ${START_FILE}
            break
            ;;
        "Discord.py")
            apk add --update python3-pip;
            pip3 install discord;
            python3 ${START_FILE}
            break
            ;;
            "stop")
            exit 0
            ;;
        *) echo "invalid option $REPLY";;
    esac
done