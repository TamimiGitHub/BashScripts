#! /bin/bash

UDID="$(instruments -s | grep '[a-zA-Z0-9]\{5\}[a-zA-Z0-9]\{15\}' | sed 's/.*\[\([^]]*\)\].*/\1/g')"

if [ "$UDID" = "" ] ; then
  echo "Device not connected"
else
  rvictl -s $UDID
  open /Applications/Wireshark.app
fi

