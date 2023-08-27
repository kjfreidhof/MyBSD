#!/bin/sh 

# Author: kjfreidhof 

# License: MIT 

# Created: 8/26/23

# About: A script that installs your choice of text editor on FreeBSD 

# Script: edit.sh


# if any command below fails exit the script
set -e

# give the user a list of text editors to choose from
echo "What text editor do you want to install:"
echo "v, vim"
echo "e, Emacs"
echo "n, neovim"
# Tells the user to enter the choice by letter 
printf "Enter a Choice: "
read -r editor

# if the user chooses the following above do one of the following commands below 
case "$editor" in
# if choice is v then install vim
v)
    pkg install vim 
    ;;

# if choice is e install emacs
e)
    pkg install emacs
    ;; 
# if choice is n install neovim 
n)
    pkg install neovim
    ;;

# if choice is Invalid display error
*)
    echo "Invalid option choose v,e, or n"

esac
