#!/usr/bin/env bash
 
######"listen-to-the-radio.sh" is a member of the //Quantifier//Consortium//. All rights reserved.

bold=$(tput bold)
natural=$(tput sgr0)
comment0="#EXTM3U"
comment1="##https://github.com/llamakc/Lttr"
comment2="##Config file for the listen-to-the-radio music player $(date)"
##two separate comments is annoying, but necessary, since not all versions of echo respect the newline parameter, or the -e flag

if ! [ -x "$(command -v mpv)" ]; then
  echo "${bold}Oh, no! This script requires that you have mpv installed and available in your path. You should either install mpv, or edit the script to include your preferred player. ${natural}Exiting..." >&2
  exit 1
fi

mkdir -m700 -p /home/$USER/.config/lttr/
touch /home/$USER/.config/lttr/lttrrc;
chmod +x /home/$USER/.config/lttr/lttrrc;
clear;

#https://wiki.bash-hackers.org/howto/getopts_tutorial
while getopts "123456789spdn" flag;  do 
        case "${flag}" in 
             1) 
		echo " -- Now you're listinging to WVFS, Tallahassee FL. You don't have to, but you are -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, WVFS Tallahassee" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://voice.wvfs.fsu.edu:8000/stream" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://voice.wvfs.fsu.edu:8000/stream --input-ipc-server=/tmp/mpvsocket
                        ;;
		2)
                echo " -- Now you're listinging to WTUL -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, WTUL New Orleans" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://129.81.156.83:8000/listen" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://129.81.156.83:8000/listen --input-ipc-server=/tmp/mpvsocket
			;;
		3)
                echo " -- Now you're listinging to your local NPR station WNYC -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, WNYC New York" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://fm939.wnyc.org/wnycfm" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://fm939.wnyc.org/wnycfm --input-ipc-server=/tmp/mpvsocket
			;;
		4)
               echo " -- Now you're listinging to your local NPR station WWNO -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, WWNO New Orleans" >> /home/$USER/.config/lttr/lttrrc;
                echo "https://tektite.streamguys1.com:5145/wwnolive" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause https://tektite.streamguys1.com:5145/wwnolive --input-ipc-server=/tmp/mpvsocket
			;;
		5)
                echo " -- Now you're listinging to KEXP, Seatle -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, KEXP Seatle" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://live-mp3-128.kexp.org:8000/kexp128.mp3" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://live-mp3-128.kexp.org:8000/kexp128.mp3 --input-ipc-server=/tmp/mpvsocket
			;;
		6)
               echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo " -- Now you're listinging to DR P6 all the way from Denmark -- ";
                echo " ";
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, DR P6 Denmark" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://live-icy.gslb01.dr.dk:80/A/A29H.mp3" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://live-icy.gslb01.dr.dk:80/A/A29H.mp3 --input-ipc-server=/tmp/mpvsocket
			;;
		7)
                echo " -- Now you're listinging to WUOG. Who here is missing that Golden Bowl?  -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, WUOG Athens" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://stream.wuog.org:8000" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://stream.wuog.org:8000 --input-ipc-server=/tmp/mpvsocket
			;;
		8)
                echo " -- Now you're listinging to KVRX, staying weird in Austin TX -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, KVRX Austin" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream --input-ipc-server=/tmp/mpvsocket
			;;
		9)
                echo " -- Now you're listinging to WFUV, Straight Outta The Bronx! -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, WFUV New York" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://onair.wfuv.org/onair-hi" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://onair.wfuv.org/onair-hi --input-ipc-server=/tmp/mpvsocket
			;;
		s)
                echo " -- This is WSOU; Seton Hall's Pirate Radio. A Secret LttR station! -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, WSOU New Jersey" >> /home/$USER/.config/lttr/lttrrc;
                echo "https://crystalout.surfernetwork.com:8001/WSOU_MP3" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause https://crystalout.surfernetwork.com:8001/WSOU_MP3 --input-ipc-server=/tmp/mpvsocket
			;;
		d)
               echo " -- This is Dandelion Radio. A Secret LttR station! -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, Dandelio Radio London" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://stream.dandelionradio.com:9414" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://stream.dandelionradio.com:9414 --input-ipc-server=/tmp/mpvsocket
			;;
		n)
               echo " -- This is DFM from the Netherlands (dfm.nl). A Secret LttR station! -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, DFM Stereo Amsterdam" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://stereo.dfm.nu" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://stereo.dfm.nu --input-ipc-server=/tmp/mpvsocket
			;;
		p)
               echo " -- This is P6 Beat from Denmark. A Secret LttR station! -- ";
                echo " ";
                echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "#EXTINF:-1, P6 Beat Denmark" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://live-icy.gslb01.dr.dk/A/A29H.mp3" >> /home/$USER/.config/lttr/lttrrc;
                exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://live-icy.gslb01.dr.dk/A/A29H.mp3 --input-ipc-server=/tmp/mpvsocket
			;;
        esac
done

 
read -n 1 -p "Which college rock or NPR news station would you like to listen to?
1=WVFS (Tallahassee)		2=WTUL (New Orleans)
3=WNYC (NPR New York)		4=WWNO (NPR New Orleans)
5=KEXP (Seatle)			6=DR P6 Beat (Denmark)
7=WUOG (Athens, GA)		8=KVRX (Austin)
9=WFUV (Bronx, NY)		0=Last Station Played
q=quit
==> ? " answer;

clear;

echo ""
echo " -- Happy Listening, $(whoami). The time and date right now is $(date) -- "

case $answer in
      0)

                echo " -- LttR is now happily playing for you the last station you listened to --";
                echo " --                  (Brought to you by Carl's Jr)                       --";
		echo " ";
		mpv --pulse-buffer=500 --cache=yes --cache-pause --playlist=/home/$USER/.config/lttr/lttrrc;;
      1)
		echo " -- Now you're listinging to WVFS, Tallahassee FL. You don't have to, but you are -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, WVFS Tallahassee" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://voice.wvfs.fsu.edu:8000/stream" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://voice.wvfs.fsu.edu:8000/stream --input-ipc-server=/tmp/mpvsocket;;
      2)
		echo " -- Now you're listinging to WTUL -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, WTUL New Orleans" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://129.81.156.83:8000/listen" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://129.81.156.83:8000/listen --input-ipc-server=/tmp/mpvsocket;;
      3)
		echo " -- Now you're listinging to your local NPR station WNYC -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, WNYC New York" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://fm939.wnyc.org/wnycfm" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://fm939.wnyc.org/wnycfm --input-ipc-server=/tmp/mpvsocket;;
      4)
		echo " -- Now you're listinging to your local NPR station WWNO -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, WWNO New Orleans" >> /home/$USER/.config/lttr/lttrrc;
                echo "https://tektite.streamguys1.com:5145/wwnolive" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause https://tektite.streamguys1.com:5145/wwnolive --input-ipc-server=/tmp/mpvsocket;;
      5)
		echo " -- Now you're listinging to KEXP, Seatle -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, KEXP Seatle" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://live-mp3-128.kexp.org:8000/kexp128.mp3" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://live-mp3-128.kexp.org:8000/kexp128.mp3 --input-ipc-server=/tmp/mpvsocket;;
############### https://kexp-mp3-128.streamguys1.com/kexp128.mp3
      6)
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
		echo " -- Now you're listinging to DR P6 all the way from Denmark -- ";
		echo " ";
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, DR P6 Denmark" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://live-icy.gslb01.dr.dk:80/A/A29H.mp3" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://live-icy.gslb01.dr.dk:80/A/A29H.mp3 --input-ipc-server=/tmp/mpvsocket;;
      7)
		echo " -- Now you're listinging to WUOG. Who here is missing that Golden Bowl?  -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, WUOG Athens" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://stream.wuog.org:8000" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://stream.wuog.org:8000 --input-ipc-server=/tmp/mpvsocket;;
      8)
		echo " -- Now you're listinging to KVRX, staying weird in Austin TX -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, KVRX Austin" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://tstv-stream.tsm.utexas.edu:8000/kvrx_livestream --input-ipc-server=/tmp/mpvsocket;;
      9)
		echo " -- Now you're listinging to WFUV, Straight Outta The Bronx! -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, WFUV New York" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://onair.wfuv.org/onair-hi" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://onair.wfuv.org/onair-hi --input-ipc-server=/tmp/mpvsocket;;
      s|S)
		echo " -- This is WSOU; Seton Hall's Pirate Radio. A Secret LttR station! -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, WSOU New Jersey" >> /home/$USER/.config/lttr/lttrrc;
                echo "https://crystalout.surfernetwork.com:8001/WSOU_MP3" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause https://crystalout.surfernetwork.com:8001/WSOU_MP3 --input-ipc-server=/tmp/mpvsocket;;
      d|D)
		echo " -- This is Dandelion Radio. A Secret LttR station! -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, Dandelio Radio London" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://stream.dandelionradio.com:9414" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://stream.dandelionradio.com:9414 --input-ipc-server=/tmp/mpvsocket;;
      p|P)
		echo " -- This is P6 Beat from Denmark. A Secret LttR station! -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, P6 Beat Denmark" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://live-icy.gslb01.dr.dk/A/A29H.mp3" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://live-icy.gslb01.dr.dk/A/A29H.mp3 --input-ipc-server=/tmp/mpvsocket;;
      n|N)
		echo " -- This is DFM from the Netherlands (dfm.nl). A Secret LttR station! -- ";
		echo " ";
		echo "$comment0" > /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
                echo "$comment1" >> /home/$USER/.config/lttr/lttrrc ;
                echo "$comment2" >> /home/$USER/.config/lttr/lttrrc;
                echo "" >> /home/$USER/.config/lttr/lttrrc;
		echo "#EXTINF:-1, DFM Stereo Amsterdam" >> /home/$USER/.config/lttr/lttrrc;
                echo "http://stereo.dfm.nu" >> /home/$USER/.config/lttr/lttrrc;
		exec mpv --pulse-buffer=500 --cache=yes --cache-pause http://stereo.dfm.nu --input-ipc-server=/tmp/mpvsocket;;
      t|T)
                /usr/bin/telnet towel.blinkenlights.nl;;
      w|W)
		echo " -- This is a playlist of local writing music. A Secret LttR station!                      -- ";
		echo " -- It will probably fail for you, unless you have local music saved as ~/data/.music/*mp3 -- ";
                echo " ";

                mpv --shuffle ~/data/.music/*mp3;;
      q|Q)
                exit;;
      *)
                echo "***>>> That's not one of the options, but you can run again for another try <<<***";;

esac
