#!/bin/sh

# Author: kjfreidhof 

# License: MIT 

# Created: 8/26/23

# About: The Environment script sets up the Environment for the user in Freebsd based on their choices

# Script: Env.sh

# Notes for the user if they install the following desktop environments 

read1="Make sure to edit the /etc/fstab described in the FreeBSD handbook"
read2="It is required for gnome,xfce,cinnamon,and mate to work in FreeBSD Press enter to continue" 

# Exit if any of the following commands fail  

set -e 

# Lets the user pick the desktop environment they want to use  

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

# asks the user to choose what desktop environment they want to use via the corresponding number
printf "Enter Choice: "
read -r Desk

# Based on what option they choose run one of the following commands below
case $Desk in

# if the user chooses kde5 install kde5 and sddm 
# Also sets it up for the user with little configuration done. 
# Kde Plasma Recommended option for new users in FreeBSD

1)
    pkg install kde5 sddm 
    sysrc dbus_enable="YES"
    sysrc sddm_enable="YES"
    sysrc sddm_lang="en_US"
    ;; 


# if the user chooses kde-minimal then run the following commands below 

2)
    pkg install plasma5-plasma konsole sddm
    sysrc dbus_enable="YES"
    sysrc sddm_enable="YES"
    sysrc sddm_lang="en_US"
    ;; 

# if the user chooses gnome-meta then run the following commands below 
# Also messages the user if they are runing gnome on what to do 
3)
    pkg install gnome
    sysrc dbus_enable="YES"
    sysrc gdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r continue
    $continue
    ;; 
    
     

# if the user chooses gnome-lite then run the following commands below 
# Also messages the user if they are runing gnome on what to do 
4)
    pkg install gnome-lite
    sysrc dbus_enable="YES"
    sysrc gdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r continue
    $continue
    ;; 

# if the user chooses xfce choose then run the following commands below 
# Also messages the user if they are runing gnome on what to do 

5)
    pkg install xfce lightdm lightdm-gtk-greeter
    sysrc dbus_enable="YES"
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r continue
    $continue
    ;;

# if the user chooses mate-meta choose then run the following commands below 
# Also messages the user if they are choosing to install mate on what to do 

6)
    pkg install mate lightdm lightdm-gkt-greeter
    sysrc dbus_enable="YES" 
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r
    ;;

# if the user chooses mate-base choose then run the following commands below 
# Also messages the user if they choosing to install mate on what to do 

7)
    pkg install mate-base lightdm lightdm-gtk-greeter
    sysrc dbus_enable="YES"
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r 
    ;;

# if the user chooses cinnamon choose then run the following commands below 
# Also messages the user if they are runing cinnamon on what to do 

8)
    pkg install cinnamon lightdm lightdm-gtk-greeter
    sysrc dbus_enale="YES"
    sysrc lightdm_enable="YES"
    echo "$read1"
    echo "$read2"
    read -r 
    ;; 


#  if the user chooses lxqt choose then run the following commands below 

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

