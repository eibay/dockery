FROM golang:buster

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  curl \
  && rm -rf /var/lib/apt/lists/* \
  && curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

RUN echo $PATH
RUN /usr/local/bin/docker-compose --version
CMD [ "./bin/bash" ]