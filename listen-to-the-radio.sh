#!/bin/bash

#"listen-to-the-radio.sh" is a member of the quantifier consortium. All rights reserved
clear;

read -n 1 -p "What awesome college rock or NPR news station would you like to listen to? 

1=WVFS

2=WTUL

3=WNYC

4=WWNO

5=KEXP

6=DR P6 Beat

7=Dandelion Radio

9=Other

q=quit

==> ? " answer;

clear;

echo ""
echo "   -   Happy Listening!!  -       "
echo ""

case $answer in
      1)
                mplayer -cache 250 http://voice.wvfs.fsu.edu:8000/stream;;
      2)
                mplayer -cache 250 http://129.81.156.83:8000/listen;;
      3)
                mplayer -cache 250 http://fm939.wnyc.org/wnycfm;;
      4)
                mplayer -cache 1500 -cache-min 50 https://tektite.streamguys1.com:5145/wwnolive;;
      5)
                /usr/bin/xdg-open https://kexp.org/listen/;;
      6)
                mplayer -cache 1500 -cache-min 50 http://live-icy.gslb01.dr.dk:80/A/A29H.mp3;;
      7)
                mplayer -cache 250 -cache-min 25 http://stream.dandelionradio.com:9414;;
      9)
                /usr/bin/xdg-open https://flypaper.soundfly.com/discover/10-of-the-most-influential-college-radio-stations-in-the-us/;;
      s|S)
		/usr/bin/telnet towel.blinkenlights.nl;;
      q|Q)
                exit;;
      *)
                echo "*********That's not one of the options, but you can run again for another try*****";;

esac
