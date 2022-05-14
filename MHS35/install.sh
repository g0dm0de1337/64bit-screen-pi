#!/bin/bash

# prepare X11
rm -rf /etc/X11/xorg.conf.d/40-libinput.conf
mkdir -p /etc/X11/xorg.conf.d
cp -rf ./99-calibration.conf  /etc/X11/xorg.conf.d/99-calibration.conf
cp -rf ./99-fbdev.conf /etc/X11/xorg.conf.d/99-fbdev.conf

# load module on boot
cp ./mhs35-overlay.dtb /boot/overlays/
cp ./mhs35-overlay.dtb /boot/overlays/mhs35.dtbo
echo "hdmi_force_hotplug=1" >> /boot/config.txt
echo "dtparam=i2c_arm=on" >> /boot/config.txt
echo "dtparam=spi=on" >> /boot/config.txt
echo "enable_uart=1" >> /boot/config.txt
echo "dtoverlay=mhs35:rotate=90" >> /boot/config.txt
echo "max_framebuffers=2" >> /boot/config.txt
echo "arm_64bit=1" >> /boot/config.txt
echo "hdmi_force_hotplug=1" >> /boot/config.txt
echo "kernel=kernel8l-alt.img" >> /boot/config.txt
echo "hdmi_group=1" >> /boot/config.txt
echo "hdmi_mode=4" >> /boot/config.txt
echo "hdmi_cvt 480 320 60 6 0 0 0" >> /boot/config.txt
echo "hdmi_drive=2" >> /boot/config.txt
cp ./cmdline.txt /boot/

# Note: Make sure this isn't in yout config.txt. Comment it out if it is:
#dtoverlay=vc4-fkms-v3d

# touch screen calibration
apt-get install xserver-xorg-input-evdev
cp -rf /usr/share/X11/xorg.conf.d/10-evdev.conf /usr/share/X11/xorg.conf.d/45-evdev.conf

# done :)
echo "reboot now"
reboot
