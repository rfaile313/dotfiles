#!/usr/bin/env bash

# Tool to check NIC interface speed
# TODO(rudy): Ideally grep for the interface dynamically
# + in a way that won't break.. idk.
# + maybe something better than:

INTERFACE=$(ip link | grep -oh "\w*enp\w*")

# ^^ ifconfig deprecated in favor of 'ip'

sudo cat /sys/class/net/$INTERFACE/speed

# NOTE(rudy): Also probably a good idea to provide an
# + option to pass a flag if you want to specify a
# + different interface. I guess we could really get
# + crazy and do something like an fzf menu for
# + interfaces... https://github.com/junegunn/fzf
