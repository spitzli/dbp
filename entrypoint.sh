#!/bin/sh
cd /home/container || exit 1
PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0m%s\n" "$PARSED"
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0m%s\n" "Welcome to OwO!"
/install.sh