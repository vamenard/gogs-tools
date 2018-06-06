#! /bin/bash

# Blocking Gogs default http port forcing https usage
iptables -A INPUT -p tcp -s localhost --dport 3000 -j ACCEPT
iptables -A INPUT -p tcp --dport 3000 -j DROP
