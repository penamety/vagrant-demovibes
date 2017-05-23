#!/bin/bash

cat > /etc/apt/sources.list.d/debian-contrib-nonfree.list << EOF
deb http://httpredir.debian.org/debian jessie non-free
deb-src http://httpredir.debian.org/debian jessie non-free
deb http://httpredir.debian.org/debian jessie-backports main contrib non-free
deb-src http://httpredir.debian.org/debian jessie-backports main contrib non-free
EOF

cat > /etc/apt/preferences.d/00-pin-jessie-backports.pref << EOF
Package: *
Pin: release a=jessie-backports
Pin-Priority: 999
EOF

apt-get -qq update
apt-get -qq upgrade
apt-get install -qq python2.7 python
update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
apt-get -qq install ansible
