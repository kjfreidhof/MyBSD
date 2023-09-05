#!/bin/sh 

set -e 

echo "Choose the audio backend to install?"
echo "1. pulse-rust"
echo "2. jack"
echo "3. oss"
echo "4. alsa"
echo "5. sndio"

printf "Enter choice: "
read -r choice

case "$choice" in
	1)
		pkg install pulseaudio
		;;

	2)
		pkg install jackit
		;;


	3)
		pkg install oss 
		;;


	4)
		pkg install alsa-lib
		;;

	5)
		pkg install sndio
		;;


	*)
		echo "Error: Wrong option choose 1-5"
		exit
		;;

esac





