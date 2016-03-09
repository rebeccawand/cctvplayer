#!/bin/bash

if pgrep "omxplayer" > /dev/null
then
    echo "[60sec] OMXPlayer running! Doing nothing."
else
    echo "[60sec] OMXPlayer not running. Restarting the stream!"
    omxplayer "rtsp://10.0.30.251:554/user=admin&password=admin&channel=1&stream=0.sdp?real_stream--rtp-caching=100" --live --refresh ;
fi





