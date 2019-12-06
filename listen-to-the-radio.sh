#!/bin/bash

#"listen-to-the-radio.sh" is a member of the quantifier consortium. All rights reserved
#needs and if/else for $BROWSER to be sure you have that set, or exit otherwise
clear;

read -n 1 -p "What station would you like to listen to? 

1=WVFS 

2=WNYC 

3=WTUL

4=Other

q=quit

==> ? " answer;

clear;
echo ""
echo "         ******************************************"
echo "         **Alright here you go. Happy listening!!**"
echo "         ******************************************"

case $answer in
      1)
                mplayer -cache 250 http://voice.wvfs.fsu.edu:8000/stream;;
      2)
                mplayer -cache 250 http://fm939.wnyc.org/wnycfm;;
      3)
                mplayer -cache 250 http://129.81.156.83:8000/listen;;
      4)
                exec /usr/bin/firefox https://flypaper.soundfly.com/discover/10-of-the-most-influential-college-radio-stations-in-the-us/;;
      q|Q)
                exit;;
      *)
                echo "*********That's not one of the options, but you can run again for another try*****";;

esac
