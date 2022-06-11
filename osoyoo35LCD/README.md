# 64bit-screen-pi
3,5inches display works with 64bit systems.. tested with kali and a 3,5 inches touchscreen.. no bootloop .. all fixed


You can install the touch driver for 3.5″ HDMI touch screen based on the existing system, but it just supports Raspberry Pi OS.

1) Burn OS system (Raspberry Pi OS) in a TF card/micro SD card, and insert this card in your raspberry Pi

Note:

The Raspberry Pi must be connected to the network, or else the program won’t be successfully installed.
 You can remotely control Raspberry Pi via ssh, vnc or remote desktop tools, or directly control Raspberry Pi with other HDMI monitor with keyboard and mouse
All following steps are tested on OS: 2021-05-07-raspios-buster-armhf, there may be some differences with other OS
2) Run the following commands in terminal to switch user permission as administrator

sudo passwd root
sudo passwd –unlock root
su root

3) Run the following command in terminal to download the driver:
sudo git clone https://github.com/kedei/LCD_driver

4) Run the following command in terminal to change the executable permissions of file:
sudo chmod -R 777 LCD_driver

5) Run the following command in terminal to enter the file
cd LCD_driver

Step 4: Run the following command (Please don’t turn off Raspberry Pi, and it will reboot in 2 minites):
sudo ./LCD35_hdmi

Wait for about 2 minutes, the driver would be installed and reset automatically, insert the 3.5″ HDMI screen and turn on.

Now you have completed to install the touch driver for 3.5″ HDMI touch screen.

Offline installation
You can install the touch driver for 3.5″ HDMI touch screen based on the existing system, but it just supports raspbian system.

1) Burn OS system (Raspberry Pi OS) in a TF card/micro SD card, and insert this card in your raspberry Pi

2) Connect the raspberry pi with 3.5″ HDMI touch screen and make sure that the network is available for raspberry pi

3) Download Driver to your PC — 3.5″ HDMI touch screen driver

4) Copy the driver into a NEW USB flash, and insert to Rapberry Pi.

5) Copy the driver and paste it to the folder of raspberry pi, Raspbian Direction: Pi,

6) Enter the following command in terminal to change the executable permissions of file:
sudo chmod 777 LCD_show_35hdmi.tar.gz

7) Enter the following command in terminal to unzip the file
tar -xzvf LCD_show_35hdmi.tar.gz

8) Enter the following command in terminal to enter the files after Unzip
cd LCD_show_35hdmi

9)choose one command to install suitable resolution driver:

Resolution 720*480(recommend): sudo ./LCD35_720*480
Resolution 480*320: sudo ./LCD35_480*320
Resolution 810*540: sudo ./LCD35_810*540

Wait for about 5 minutes, the driver would be installed and reset automatically, insert the 3.5″ HDMI screen and turn on.

Now you have completed to install the touch driver for 3.5″ HDMI touch screen.
