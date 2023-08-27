#!/bin/sh 

# Author: kjfreidhof 

# License: MIT 

# Created: 8/26/23

# About: A script that installs your choice of web browser on FreeBSD 

# Script: brow.sh


# if any command here fails exit the script

set -e 

# Gives the user a list of web browsers to choose from

echo "What Web browser do you want: "
echo "1. Firefox"
echo "2. Firefox-esr"
echo "3. Chromium"
echo "4. Iridium browser"
echo "5. Falkon"
echo "6. Konqueror"
echo "7. Gnome Web"
echo "8. qutebrowser"
echo "9. Dilio"
echo "10. Links"
echo "11. w3m"

# Then tells the user enter a choice from 1-11.
printf "Enter the Choice: "
read -r browser

# Based on the option the user choose it executes one of the following commands below. 
case $browser in 

# if the user chooses 1 install firefox 
1)
    pkg install firefox
    ;;

# if the user chooses 2 install firefox-esr
2)
    pkg install firefox-esr
    ;;
# if the user chooses 3 install chromium 
3)
    pkg install chromium
    ;;

# if the user chooses 4 install iridium
4)
    pkg install iridium
    ;;
# if the user chooses 5 install falkon

5)
    pkg install falkon
    ;;
# if the user chooses 6 install falkon
6)
    pkg install konqueror
    ;; 

# if the user chooses 7 install epiphany
7) 
    pkg install epiphany
    ;;
# if the user chooses 8 install qutebrowser
8)
    pkg install qutebrowser
    ;;
# if the user chooses 9 install qutebrowser
9)
    pkg install dilio
    ;;

# if the user chooses 10 install links 

10)
    pkg install links
    ;;
# if the user chooses 11 install w3m
11)
    pkg install w3m
    ;;

# if the user chooses the wrong option give an error message 
*)
    echo "Invalid Option Choose 1-11."
    ;;



esac

