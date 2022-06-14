# ----------------------------------
# Pterodactyl Discord Bot - Dockerfile
# Environment: Alpine Linux
# Minimum Panel Version: 1.8.0
# ----------------------------------
FROM alpine:3

LABEL author="Dominik Spitzli"  \
      email="dominik@spitzli.dev"

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
COPY ./install.sh /install.sh

CMD ["/bin/bash", "/entrypoint.sh"]