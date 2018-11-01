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
