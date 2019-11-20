#!/bin/sh
clear;

read -n 1 -p "What station would you like to listen to? (1=wvfs 2=wnyc 3=wtul
q=quit " answer;

clear;
echo "         ****************************************"
echo "         **Alright here you go. Happy listening!!"
echo "         ****************************************"

case $answer in
      1)
                mplayer http://voice.wvfs.fsu.edu:8000/stream;;
      2)
                mplayer -cache 250 http://fm939.wnyc.org/wnycfm;;
      3)
                mplayer -cache 250 http://129.81.156.83:8000/listen;;
      q|Q)
                exit;;

esac
