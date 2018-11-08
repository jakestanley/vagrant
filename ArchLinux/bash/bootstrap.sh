#!/bin/sh

pacman -Syyu --noconfirm \
    wget \
    curl \
    python \
    ansible \
    python-pip

rm /etc/localtime
ln -s /usr/share/zoneinfo/Europe/London /etc/localtime

mkdir -p /var/lib/docker

# install sublime GPG keys
curl -O https://download.sublimetext.com/sublimehq-pub.gpg
pacman-key --add sublimehq-pub.gpg
pacman-key --lsign-key 8A8F901A
rm sublimehq-pub.gpg
