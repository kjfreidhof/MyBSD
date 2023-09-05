#!/bin/sh

echo "What do you want to do?"
echo "1. upgrade freebsd"
echo "2. update the repo"
echo "3. upgrade packages"
echo "4. search for a package"
echo "5. remove any left over dependinces"
echo "6. install a package"

printf "Enter a choice: "
read -r choice

case $choice in

	1)
		freebsd-update fetch && freebsd-update install
		;;

	2)
		pkg update -y
		;;

	3)
		pkg upgrade -y
		;;

	4)
		echo "what package are you searching for: "
		read -r pkg
		pkg search $pkg | less 
		;; 

	5)
		pkg autoremove 
		;;

	6)
		echo "what package are you installing"
		read -r name
		pkg install "$name"
		;;

	*)
		echo "Error: Invalid option choose 1-6."
		;;



esac
