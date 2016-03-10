#!/bin/bash

screen -dmS stream1 sh -c 'omxplayer --refresh "rtsp://10.0.1.31:554/user=admin&password=&channel=1&stream=0.sdp?real_stream--rtp-caching=100"'


#screen -dmS stream1 sh -c 'omxplayer --refresh --win "0 0 640 540" "rtsp://10.0.1.31:554/user=admin&password=&channel=1&stream=0.sdp?real_stream--rtp-caching=100"'
#screen -dmS stream2 sh -c 'omxplayer --refresh --win "640 0 1280 540" "rtsp://viewer:1234@10.0.1.2/live/h264/ch2"'
#screen -dmS stream3 sh -c 'omxplayer --refresh --win "1280 0 1920 540" "rtsp://viewer:1234@10.0.1.2/live/h264/ch3"'
#screen -dmS stream4 sh -c 'omxplayer --refresh --win "0 540 640 1080" "rtsp://viewer:1234@10.0.1.2/live/h264/ch4"'
#screen -dmS stream5 sh -c 'omxplayer --refresh --win "640 540 1280 1080" "rtsp://10.0.30.251:554/user=admin&password=admin&channel=1&stream=0.sdp?real_stream--rtp-caching=100"'
#screen -dmS stream6 sh -c 'omxplayer --refresh --win "1280 540 1920 1080" "rtsp://10.0.1.31:554/user=admin&password=&channel=1&stream=0.sdp?real_stream--rtp-caching=100"'