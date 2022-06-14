#!/bin/bash

ls

PS3='Please enter your choice: '
options=("Discord.js" "Discord.py")

select opt in "${options[@]}"
do
    case $opt in
        "Discord.js")
            echo ls -la /usr/bin/;
            curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -;
            apt-get install -y nodejs npm;
            ls -la /usr/bin/
            #/usr/local/bin/npm install discord.js;
            #/usr/local/bin/node ${START_FILE}
            break
        ;;
        "Discord.py")
            apt install python3-pip;
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