#!/bin/sh

echo "Choose the audio device you want to select?"
echo "0. Audio device 0."
echo "1. Audio device 1."

print "Enter Choice: "
read r choice

case $choice in
	
	0)
		sysctl hw.snd.default_unit=0 
		echo "Audio device 0 selected"
		;;

	1)
		sysctl hw.snd.default_unit=1
		echo "Audio device 1 selected"
		;;

	*)
		echo "Error: Invalid option choose 0-1"
		exit
		;;

esac
