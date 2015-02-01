#!/bin/sh
chmod 777 /dev/ttyUSB*
wget --no-check-certificate https://github.com/sarakha63/Jeedom_Syno/raw/master/Chroot/sources.list
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
wget --no-check-certificate http://github.com/jeedom/core/raw/master/install/install.sh
chmod 777 install.sh
./install.sh
wget --no-check-certificate https://github.com/sarakha63/Jeedom_Syno/raw/master/Chroot/jeedom.sh
chmod 777 jeedom.sh
./jeedom.sh stop
wget --no-check-certificate https://github.com/sarakha63/Jeedom_Syno/raw/master/Chroot/default
wget --no-check-certificate https://github.com/sarakha63/Jeedom_Syno/raw/master/Chroot/default_ssl
mv default /etc/nginx/sites-available
mv default_ssl /etc/nginx/sites-available
wget --no-check-certificate https://github.com/sarakha63/Jeedom_Syno/raw/master/Chroot/installopen.sh
chmod 777 installopen.sh
./installopen.sh
./jeedom.sh start
rm installopen.sh
rm install.sh