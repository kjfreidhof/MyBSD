#!/bin/sh

# Author: kjfreidhof 

# License: MIT 

# Created: 8/26/23

# About: Installs font types for FreeBSD

# Script: font.sh


set -e

# Ask user if they want to install type1 fonts. 

echo "Do you wnat to install type1 fonts:"
echo "y. Yes"
echo "n. no"

# asks user to enter a choice.
printf "Enter a Choice: "
read -r choice

# if the choice is equal to y or Y then in install the fonts 
 if [ "$choice" = y ] || [ "$choice" = Y ]; then
        pkg install urwfonts mkfontscale

# if the choice is equal to n or N then exit
# elif [ "$choice" = n ] || [ "$choice" = N ]; then
            
            # for i in $choice; do
              #      c


            # done 
    


# else Invalid option message then exit the script
else
        echo "Invalid option choose y for yes or n for no:"
        exit

fi 

# setting the xfont path

