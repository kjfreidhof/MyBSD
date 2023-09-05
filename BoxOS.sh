#!/usr/bin/env sh 

echo "What option do you want to choose"
echo "1. Install video drivers"
echo "2. Manage Freebsd or install/Manage packages"
echo "3. Setup user privleges"
echo "4. install xorg fonts"
echo "5. choose display server to install"
echo "6. choose desktop environment to install."

printf "Enter choice: "
read -r choice

case "$choice" in
	1)
		cd /usr/src/video && ./vdrive.sh
		;;

	2)
		cd /usr/src/repo && ./repo.sh
		;;

	3)
		cd /usr/src/privleges && ./priv.sh
		;;

	4)
		cd /usr/src/fonts && ./font.sh
		;;

	5)
		cd /usr/src/display-servers && ./dserver.sh
		;;

	6)
		cd /usr/src/Environment && ./Env.sh
		;;

	*)
		echo "Error: Wrong option choose 1-6"
		;;

		
esac
