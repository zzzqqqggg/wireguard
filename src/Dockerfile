FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y procps iptables wireguard iproute2 curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 51820/udp

ENTRYPOINT ["/entrypoint.sh"]