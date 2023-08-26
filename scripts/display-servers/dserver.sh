#!/bin/sh

set -e

xdg="XDG_RUNTIME_DIR=/var/run/user/`id -u`"

echo "Choose the display server you want to use: "
echo "1. xorg"
echo "2. wayland - Not recommended untested"

printf "Enter choice: "
read -r choice

case $choice in

1)
    pkg install xorg
    ;; 

2)
    pkg install wayland seatd 
    export xdg
    sysrc seatd_enable="YES"
    service seatd start
    ;;

*)
    echo "Invalid option choose 1-2"
    ;; 


esac