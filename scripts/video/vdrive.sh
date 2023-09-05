#!/bin/sh

echo "Select the graphics driver you want to install:"
echo "i. Intel Graphics"
echo "a. AMD Graphics"
echo "n. NVIDIA Graphics"
echo "virt. Virtualbox video driver"
echo "vm. VMware video driver"

printf "Enter your choice: "
read -r choice 

case $choice in 
i)
    pkg install drm-kmod libva-intel-driver mesa-libs mesa-dri
    sysrc kld_list+=i915kms
    ;;

a)
    pkg install drm-kmod 
    sysrc kld_list+=amdgpu
    sysrc kld_list+=radeonkms
    ;;


n)
    pkg install nvidia-driver
    sysrc kld_list+=nvidia-modeset
    sysrc kld_list+=nvidia
    ;;

virt)
    pkg install virtualbox-ose-additions
   sysrc vboxguest_enable="YES"
   sysrc vboxservice_enable="YES"
   ;;

vm)
    pkg install xf86-video-vmware
    ;;

*)
    echo "Invalid option please choose i,a,n,virt,or vm."

esac