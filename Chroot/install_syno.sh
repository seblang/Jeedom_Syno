#!/bin/sh
chmod 777 /dev/ttyUSB*
cp sources.list /etc/apt/
aptitude update
aptitude upgrade
aptitude install sudo
aptitude install locales
dpkg-reconfigure locales
echo "export LANG=fr_FR.utf8" >> ~/.bashrc
echo "export LC_ALL=fr_FR.utf8" >> ~/.bashrc
dpkg-reconfigure tzdata
echo "cd /home" >> ~/.bashrc