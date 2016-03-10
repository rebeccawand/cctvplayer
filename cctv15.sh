#!/bin/bash

if pgrep "omxplayer" > /dev/null
then
    echo "[15min] OMXPlayer restarting!"
    killall -9 omxplayer
    killall -9 omxplayer.bin
    killall -9 screen
else
    echo "[15min] OMXPlayer not running. Restarting the stream!"
fi

bash /etc/init.d/streams.sh


