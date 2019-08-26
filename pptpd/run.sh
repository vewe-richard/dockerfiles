#!/bin/bash

defaultIntf=`ip route list match 0/0 | awk '{print $5}'`

if [ ! -z "$defaultIntf" ]; then
    iptables -t nat -A POSTROUTING -o $defaultIntf -j MASQUERADE
fi
iptables -P FORWARD ACCEPT

pptpd -f
