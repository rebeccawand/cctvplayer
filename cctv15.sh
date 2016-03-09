#!/bin/bash

if pgrep "omxplayer" > /dev/null
then
    echo "[15min] OMXPlayer restarting!"
    killall -9 omxplayer
    killall -9 omxplayer.bin
else
    echo "[15min] OMXPlayer not running. Restarting the stream!"
fi

omxplayer "rtsp://10.0.30.251:554/user=admin&password=admin&channel=1&stream=0.sdp?real_stream--rtp-caching=100" --live --refresh ;


