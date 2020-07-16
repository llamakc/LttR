!/bin/bash
 
#"listen-to-the-radio.sh" is a member of the quantifier consortium. All rights reserved
touch ~/.lttr;
chmod 755 ~/.lttr;
clear;
 
read -n 1 -p "What awesome college rock or NPR news station would you like to listen to? 
1=WVFS (Tallahassee)                            2=WTUL (New Orleans)
3=WNYC (NPR New York)                           4=WWNO (NPR New Orleans)
5=KEXP (Seatle)                                 6=DR P6 Beat (Denmark)
7=Dandelion Radio (London)                      8=KVRX (Austin)
9=WFUV (Bronx, NY)                              0=Last Station Played
q=quit
==> ? " answer;

clear;

echo ""
echo "   -   Happy Listening!!  -       "
echo ""

case $answer in
      0)
                mplayer -cache 250 -cache-min 25 -playlist ~/.lttr;;
      1)
                echo "http://voice.wvfs.fsu.edu:8000/stream" > ~/.lttr && mplayer -cache 250 http://voice.wvfs.fsu.edu:8000/stream;;
      2)
                echo "http://129.81.156.83:8000/listen" > ~/.lttr && mplayer -cache 250 http://129.81.156.83:8000/listen;;
      3)
                echo "http://fm939.wnyc.org/wnycfm" > ~/.lttr && mplayer -cache 250 http://fm939.wnyc.org/wnycfm;;
      4)
                echo "https://tektite.streamguys1.com:5145/wwnolive" > ~/.lttr && mplayer -cache 1500 -cache-min 50 https://tektite.streamguys1.com:5145/wwnolive;;
      5)
                echo "http://live-mp3-128.kexp.org:8000/kexp128.mp3" > ~/.lttr && mplayer -cache 250 http://live-mp3-128.kexp.org:8000/kexp128.mp3;;
      6)
                echo "http://live-icy.gslb01.dr.dk:80/A/A29H.mp3" > ~/.lttr && mplayer -cache 1500 -cache-min 50 http://live-icy.gslb01.dr.dk:80/A/A29H.mp3;;
      7)
                echo "http://stream.dandelionradio.com:9414" > ~/.lttr && mplayer -cache 250 -cache-min 25 http://stream.dandelionradio.com:9414;;
      8)
                echo "http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream" > ~/.lttr && mplayer -cache 250 -cache-min 25 http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream;;
      9)
                echo "http://onair.wfuv.org/onair-hi" > ~/.lttr && mplayer -cache 250 -cache-min 25 http://onair.wfuv.org/onair-hi;;
      s|S)
                /usr/bin/telnet towel.blinkenlights.nl;;
      q|Q)
                exit;;
      *)
                echo "*********That's not one of the options, but you can run again for another try*****";;

esac
