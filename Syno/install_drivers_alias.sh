#!/bin/sh
cp *.ko /lib/modules
cp S99Modules.sh /usr/syno/etc.defaults/rc.d/
cp /bin/ash /usr/local/debian-chroot/var/chroottarget/bin/
echo 'alias debian="chroot /usr/local/debian-chroot/var/chroottarget/ /bin/bash"' >> ~/.profile
ln -s /usr/local/debian-chroot/var/chroottarget/ /volume1/debian
