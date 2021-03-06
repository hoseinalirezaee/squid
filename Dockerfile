FROM ubuntu:20.04

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y squid --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["squid", "-NYCd", "1"]