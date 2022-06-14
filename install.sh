#!/bin/bash

PS3='Please enter your choice: '
options=("Discord.js" "Discord.py")

select opt in "${options[@]}"
do
    case $opt in
        "Discord.js")
            echo "you chose choice 1"
            ;;
        "Discord.py")
            echo "you chose choice 2"
            ;;
        *) echo "invalid option $REPLY";;
    esac
done