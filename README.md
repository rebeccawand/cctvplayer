#cctvPlayer
Simple system for playing out a live RTSP feed full screen on a Raspberry Pi using OMXplayer

##Pi Setup

Run `sudo raspi-config`

and set up the following:

-Enable as large a video split as possible.
-Disable overscan.
-Force HDMI hotplug (assuming you're intending to use HDMI).
-Boot to console, no auto login.


##Installation

Modify cctv.sh and cctv15.sh to your appropriate RTSP stream parameters.

Make scripts executable:

```
sudo chmod +x /etc/init.d/cctv.sh
sudo chmod +x /etc/init.d/cctv15.sh
```

Add standard 60 second script to start on boot:


```
sudo update-rc.d cctv.sh defaults
```

Edit /etc/crontab and add to end of file:

```
* * * * * pi bash /etc/init.d/cctv.sh
*/15 * * * * pi bash /etc/init.d/cctv15.sh
```

to run cctv.sh every 1 minute and cctv15.sh every 15 minutes.

Reboot!