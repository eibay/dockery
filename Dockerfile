FROM golang:alpine AS build

RUN apt update \
  apt upgrade \
  apt install curl \
  curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

RUN docker-compose --version
CMD [ "./bin/bash" ]