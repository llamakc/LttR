#!/bin/bash

#"listen-to-the-radio.sh" is a member of the quantifier consortium. All rights reserved
clear;

read -n 1 -p "What awesome college rock or NPR news station would you like to listen to? 

1=WVFS 

2=WNYC 

3=WTUL

4=KEXP

5=WWNO

6=Star Wars Episode IV

7=Other

q=quit

==> ? " answer;

clear;

echo ""
echo "           ,-----.                                           "
echo "         ,'_/_|_\_`.                                         "
echo "        /<<::8[O]::>\                                        "
echo "       _|-----------|_                                       "
echo "   :::|  | ====-=- |  |:::                                   "
echo "   :::|  | -=-==== |  |:::                                   "
echo "   :::\  | ::::|()||  /:::                                   "
echo "   ::::| | ....|()|| |::::                                   "
echo "       | |_________| |                                       "
echo "       | |\_______/| |                                       "
echo "      /   \ /   \ /   \       - Alright, here you go -       "
echo "      `---' `---' `---'       -   Happy Listening!!  -       "
echo ""

case $answer in
      1)
                mplayer -cache 250 http://voice.wvfs.fsu.edu:8000/stream;;
      2)
                mplayer -cache 250 http://fm939.wnyc.org/wnycfm;;
      3)
                mplayer -cache 250 http://129.81.156.83:8000/listen;;
      4)
                /usr/bin/xdg-open https://kexp.org/listen/;;
      5)
                mplayer -cache 1500 -cache-min 50 https://tektite.streamguys1.com:5145/wwnolive;;
      6)
		/usr/bin/telnet towel.blinkenlights.nl;;
      7)
          /usr/bin/xdg-open https://flypaper.soundfly.com/discover/10-of-the-most-influential-college-radio-stations-in-the-us/;;

      q|Q)
                exit;;
      *)
                echo "*********That's not one of the options, but you can run again for another try*****";;

esac
