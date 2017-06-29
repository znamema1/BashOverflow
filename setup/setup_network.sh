#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
	echo "Root privileges needed" >&2
	exit 1
fi

ADDRESS="130.193.15.100"
MASK="255.255.255.0"
GATEWAY="130.193.15.254"
NAMESERVER="130.193.9.36"
CFG_FILE="/run/resolvconf/resolv.conf"

echo "Setting address and mask: $ADDRESS/$MASK"
ifconfig ens3 "$ADDRESS" netmask "$MASK"

echo "Setting gateway: $GATEWAY"
sudo route add default gw "$GATEWAY"

echo "Setting nameserver: $NAMESERVER"
sudo chmod u+rw "$CFG_FILE"
sudo echo "nameserver $NAMESERVER" > "$CFG_FILE"
