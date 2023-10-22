FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
  curl \
  iputils-ping \
  dnsutils \
  mtr \
  netcat \
  nmap \
  && rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]