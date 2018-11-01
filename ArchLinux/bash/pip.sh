#!/bin/sh

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
echo "PATH=$PATH:~/.local/bin" >> ~/.profile
