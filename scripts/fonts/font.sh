#!/bin/sh

echo "Do you wnat to install type1 fonts:"
echo "y. Yes"
echo "n. no"

printf "Enter a Choice: "
read -r choice

 if [ "$choice" = y ] || [ "$choice" = Y ]; then
        pkg install urwfonts mkfontscale

elif [ "$choice" = n ] || [ "$choice" = N ]; then
        exit


else
        echo "Invalid option choose y for yes or n for no:"

fi 