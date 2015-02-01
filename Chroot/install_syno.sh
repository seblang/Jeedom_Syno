#!/bin/sh
chmod 777 /dev/ttyUSB*
wget --no-check-certificate –O https://github.com/sarakha63/Jeedom_Syno/raw/master/Chroot/sources.list
mv sources.list /etc/apt/
aptitude update
aptitude upgrade
aptitude install sudo
aptitude install locales
dpkg-reconfigure locales
echo "export LANG=fr_FR.utf8" >> ~/.bashrc
echo "export LC_ALL=fr_FR.utf8" >> ~/.bashrc
dpkg-reconfigure tzdata
echo "cd /home" >> ~/.bashrc