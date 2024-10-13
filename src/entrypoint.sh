#!/bin/bash

set -e

if [ ! -f /etc/wireguard/wg0.conf ]; then
    echo "WireGuard configuration file not found. Please provide a valid /etc/wireguard/wg0.conf file."
    exit 1
fi

chmod 644 /etc/wireguard/wg0.conf

# sysctl -w net.ipv4.ip_forward=1
# sysctl -w net.ipv6.conf.all.forwarding=1

wg-quick up wg0

tail -f /dev/null
