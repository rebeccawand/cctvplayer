#!/bin/bash

if pgrep "omxplayer" > /dev/null
then
    echo "[60sec] At least one instance of OMXPlayer running! Doing nothing."
else
    echo "[60sec] No instances of OMXPlayer running. Restarting the stream!"
    bash /etc/init.d/streams.sh

fi





