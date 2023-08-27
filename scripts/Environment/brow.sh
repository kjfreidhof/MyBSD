#!/bin/sh 

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

printf "Enter the Choice: "
read -r browser

case $browser in 

1)
    pkg install firefox
    ;;

2)
    pkg install firefox-esr
    ;;

3)
    pkg install chromium
    ;;

4)
    pkg install iridium
    ;;

5)
    pkg install falkon
    ;;


6)
    pkg install konqueror
    ;; 

7) 
    pkg install epiphany
    ;;

8)
    pkg install qutebrowser
    ;;

9)
    pkg install dilio
    ;;

10)
    pkg install links
    ;;

11)
    pkg install w3m
    ;;

*)
    echo "Invalid Option Choose 1-11."
    ;;



esac

