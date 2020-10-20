#!/usr/bin/bash
 
######"listen-to-the-radio.sh" is a member of the //Quantifier//Consortium//. All rights reserved.

comment0="#EXTM3U"
comment1="##https://github.com/llamakc/Lttr"
comment2="##Config file for the listen-to-the-radio music player $(date)"
##two separate comments is annoying, but necessary, since not all versions of echo respect the newline parameter, or the -e flag

#superfluous comment to try and merge this bih

if ! [ -x "$(command -v mpv)" ]; then
  echo "Oh, no! This script requires that you have mpv installed and available in your path. You should either install mpv, or edit the script to include your preferred player. Exiting..." >&2
  exit 1
fi

touch /home/$USER/.lttr;
chmod -x /home/$USER/.lttr;
clear;
 
read -n 1 -p "Which college rock or NPR news station would you like to listen to? 
1=WVFS (Tallahassee)		2=WTUL (New Orleans)
3=WNYC (NPR New York)		4=WWNO (NPR New Orleans)
5=KEXP (Seatle)			6=DR P6 Beat (Denmark)
7=WUOG Radio (Athens GA)	8=KVRX (Austin)
9=WFUV (Bronx, NY)		0=Last Station Played
q=quit
==> ? " answer;

clear;

echo ""
echo " -- Happy Listening, $(whoami). The time and date right now is $(date) -- "
echo ""

case $answer in
      0)
                mpv --cache=yes --playlist=/home/$USER/.lttr;;
      1)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, WVFS Tallahassee" >> /home/$USER/.lttr;
                echo "http://voice.wvfs.fsu.edu:8000/stream" >> /home/$USER/.lttr;
		exec mpv --cache=yes http://voice.wvfs.fsu.edu:8000/stream;;
      2)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, WTUL New Orleans" >> /home/$USER/.lttr;
                echo "http://129.81.156.83:8000/listen" >> /home/$USER/.lttr;
		exec mpv --cache=yes http://129.81.156.83:8000/listen;;
      3)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, WNYC New York" >> /home/$USER/.lttr;
                echo "http://fm939.wnyc.org/wnycfm" >> /home/$USER/.lttr;
		exec mpv --cache=yes http://fm939.wnyc.org/wnycfm;;
      4)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, WWNO New Orleans" >> /home/$USER/.lttr;
                echo "https://tektite.streamguys1.com:5145/wwnolive" >> /home/$USER/.lttr;
		exec mpv --cache=yes https://tektite.streamguys1.com:5145/wwnolive;;
      5)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, KEXP Seatle" >> /home/$USER/.lttr;
                echo "http://live-mp3-128.kexp.org:8000/kexp128.mp3" >> /home/$USER/.lttr;
		exec mpv --cache=yes http://live-mp3-128.kexp.org:8000/kexp128.mp3;;
      6)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, DR P6 Denmark" >> /home/$USER/.lttr;
                echo "http://live-icy.gslb01.dr.dk:80/A/A29H.mp3" >> /home/$USER/.lttr;
		exec mpv --cache=yes http://live-icy.gslb01.dr.dk:80/A/A29H.mp3;;
      7)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, WUOG Athens" >> /home/$USER/.lttr;
                echo "http://stream.wuog.org:8000" >> /home/$USER/.lttr;
		exec mpv --cache=yes http://stream.wuog.org:8000;;
      8)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, KVRX Austin" >> /home/$USER/.lttr;
                echo "http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream" >> /home/$USER/.lttr;
		exec mpv --cache=yes http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream;;
      9)
		echo "$comment0" > /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "$comment1" >> /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
		echo "#EXTINF:-1, WFUV New York" >> /home/$USER/.lttr;
                echo "http://onair.wfuv.org/onair-hi" >> /home/$USER/.lttr;
		exec mpv --cache=yes 250 http://onair.wfuv.org/onair-hi;;
      s|S)
                /usr/bin/telnet towel.blinkenlights.nl;;
      q|Q)
                exit;;
      *)
                echo "***>>> That's not one of the options, but you can run again for another try <<<***";;

esac
