# ----------------------------------
# Pterodactyl Discord Bot - Dockerfile
# Environment: Ubuntu Linux
# Minimum Panel Version: 1.8.0
# ----------------------------------
FROM ubuntu:20.04

LABEL author="Dominik Spitzli"  \
      email="dominik@spitzli.dev"

RUN apt update && apt upgrade -y

RUN apt install curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
COPY ./install.sh /install.sh

CMD ["/bin/bash", "/entrypoint.sh"]