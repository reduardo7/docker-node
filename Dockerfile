FROM ubuntu:18.10

ENV DEBIAN_FRONTEND=noninteractive
ARG NODE_VERSION=11

RUN apt-get update && apt-get install -y \
  apt-transport-https curl wget \
  gnupg \
  git

# Node
# https://github.com/nodesource/distributions/blob/master/README.md
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -

RUN apt-get clean && rm -rf /var/lib/apt/lists/* rm -rf /tmp/*

VOLUME [ "/data" ]

WORKDIR /data
ENTRYPOINT [ "node" ]
