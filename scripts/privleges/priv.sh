#!/bin/sh 

echo "Do you want sudo or doas?"
echo "d. doas"
echo "s. sudo"

printf "Enter choice: "
read -r choice 

case $choice in

	d)
		pkg install doas
		echo "Are you sure you want to copy doas.conf to /usr/local/etc [y/n]: "
		read -r Choice

		if [ "$Choice" = y ] || [ "$Choice" =  Y ]; then
		cp doas.conf /usr/local/etc

		elif [ "$Choice" = n ] || [ "$Choice" = N ]; then
			exit

	else 
		echo "Error: wrong option choose y or n."
		exit

	fi
		;;
	
	s)
		pkg install sudo
		;;

	*)
		echo "Error: Wrong option choose d or s make sure its not captialized."
		;;


esac
