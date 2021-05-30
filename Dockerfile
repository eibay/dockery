FROM golang:buster

RUN apt-get update \
  apt-get upgrade \
  apt-get install curl \
  curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

RUN docker-compose --version
CMD [ "./bin/bash" ]