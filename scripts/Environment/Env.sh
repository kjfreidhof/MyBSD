#!/bin/sh

read1="Make sure to edit the /etc/fstab described in the FreeBSD handbook"
read2="It is required for gnome,xfce,cinnamon,and mate to work in FreeBSD Press enter to continue" 

set -e 

echo "Choose the Desktop Environment you want to use: "
echo "1. KDE-meta"
echo "2. KDE-minimal"
echo "3. gnome-meta"
echo "4. gnome-lite"
echo "5. xfce"
echo "6. mate-meta"
echo "7. mate-base"
echo "8. Cinnamon"
echo "9. LXQT"

printf "Enter Choice: "
read -r Desk

case $Desk in

1)
    pkg install kde5 sddm 
    sysrc dbus_enable="YES"
    sysrc sddm_enable="YES"
    sysrc sddm_lang="en_US"
    ;; 

2)
    pkg install plasma5-plasma konsole sddm
    sysrc dbus_enable="YES"
    sysrc sddm_enable="YES"
    sysrc sddm_lang="en_US"
    ;; 


3)
    pkg install gnome
    sysrc dbus_enable="YES"
    sysrc gdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r
    ;; 
    
     

4)
    pkg install gnome-lite
    sysrc dbus_enable="YES"
    sysrc gdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r
    ;; 
5)
    pkg install xfce lightdm lightdm-gtk-greeter
    sysrc dbus_enable="YES"
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r
    ;;

6)
    pkg install mate lightdm lightdm-gkt-greeter
    sysrc dbus_enable="YES" 
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r
    ;;

7)
    pkg install mate-base lightdm lightdm-gtk-greeter
    sysrc dbus_enable="YES"
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r 
    ;;

8)
    pkg install cinnamon lightdm lightdm-gtk-greeter
    sysrc dbus_enale="YES"
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r 
    ;; 

9)
    pkg install lxqt sddm
    sysrc dbus_enable="YES"
    sysrc sddm_enable="YES"
    sysrc sddm_lang="en_US"
    ;;

*)
    echo "Invalid Option Choose 1-9: "
    ;;




esac