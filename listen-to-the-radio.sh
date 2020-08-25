#!/bin/bash
 
#"listen-to-the-radio.sh" is a member of the //Quantifier//Consortium//. All rights reserved.


comment1="##https://github.com/llamakc/Lttr"
comment2="##Config file for the listen-to-the-radio music player"
##two separate comments is annoying, but necessary, since not all versions of echo respect the newline parameter, or the -e flag


if ! [ -x "$(command -v mplayer)" ]; then
  echo "Oh, no! This script requires that you have mplayer installed and available in your path. You should either install mplayer, or edit the script to include your preferred player. Exiting..." >&2
  exit 1
fi


touch /home/$USER/.lttr;
chmod 755 /home/$USER/.lttr;
clear;
 
read -n 1 -p "Which college rock or NPR news station would you like to listen to? 
1=WVFS (Tallahassee)                            2=WTUL (New Orleans)
3=WNYC (NPR New York)                           4=WWNO (NPR New Orleans)
5=KEXP (Seatle)                                 6=DR P6 Beat (Denmark)
7=WUOG Radio (Athens GA)                        8=KVRX (Austin)
9=WFUV (Bronx, NY)                              0=Last Station Played
q=quit
==> ? " answer;

clear;

echo ""
echo "   -   Happy Listening!!  -       "
echo ""

case $answer in
      0)
                mplayer -cache 250 -cache-min 25 -playlist /home/$USER/.lttr;;
      1)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://voice.wvfs.fsu.edu:8000/stream" >> /home/$USER/.lttr && mplayer -cache 250 http://voice.wvfs.fsu.edu:8000/stream;;
      2)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://129.81.156.83:8000/listen" >> /home/$USER/.lttr && mplayer -cache 250 http://129.81.156.83:8000/listen;;
      3)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://fm939.wnyc.org/wnycfm" >> /home/$USER/.lttr && mplayer -cache 250 http://fm939.wnyc.org/wnycfm;;
      4)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "https://tektite.streamguys1.com:5145/wwnolive" >> /home/$USER/.lttr && mplayer -cache 1500 -cache-min 50 https://tektite.streamguys1.com:5145/wwnolive;;
      5)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://live-mp3-128.kexp.org:8000/kexp128.mp3" >> /home/$USER/.lttr && mplayer -cache 250 http://live-mp3-128.kexp.org:8000/kexp128.mp3;;
      6)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://live-icy.gslb01.dr.dk:80/A/A29H.mp3" >> /home/$USER/.lttr && mplayer -cache 1500 -cache-min 50 http://live-icy.gslb01.dr.dk:80/A/A29H.mp3;;
      7)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://stream.wuog.org:8000" >> /home/$USER/.lttr && mplayer -cache 250 -cache-min 25 http://stream.wuog.org:8000;;
      8)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream" >> /home/$USER/.lttr && mplayer -cache 250 -cache-min 25 http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream;;
      9)
                echo "$comment1" > /home/$USER/.lttr ;
                echo "$comment2" >> /home/$USER/.lttr;
                echo "" >> /home/$USER/.lttr;
                echo "http://onair.wfuv.org/onair-hi" >> /home/$USER/.lttr && mplayer -cache 250 -cache-min 25 http://onair.wfuv.org/onair-hi;;
      s|S)
                /usr/bin/telnet towel.blinkenlights.nl;;
      q|Q)
                exit;;
      *)
                echo "***>>> That's not one of the options, but you can run again for another try <<<***";;

esac
