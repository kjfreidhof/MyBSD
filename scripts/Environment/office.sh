#!/bin/sh

# Author: kjfreidhof 

# License: MIT 

# Created: 8/26/23

# About: A script that installs your choice of office application on FreeBSD 

# Script: edit.sh

# if any off the commands below fail exit
set -e

# Gives the user the option to choose from the list
echo "Choose the office you want to use:"
echo "1, libreoffice"
echo "2, Calligra Suite"
echo "3, AbiWord"

# Tells the user to enter 1 of the above
printf "Enter Choice: "
read -r office

# if the user does one of the following above execute one of the commands below 
case $office in 

# if the user chooses 1 then execute the following command below to install libreoffice
1)
    pkg install libreoffice
    ;;

# if the user chooses 2 then execute the following command below to install calligra
2)
    pkg install calligra 
    ;; 

# if the user chooses 3 then execute the following commands below to install abiword
3) 
    pkg install abiword
    ;;

# the user chooses and invalid option execute the following message below 
*)
    echo "Invalid option choose 1-3"
    
esac

