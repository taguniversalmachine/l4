#!/bin/sh
# sudo 
apt update
apt-install --assume-yes make build-essential
apt install --assume-yes software-properties-common
apt-get install --assume-yes python3 python3-pip python3-setuptools python3-wheel ninja-build
add-apt-repository  ppa:deadsnakes/ppa
apt update
apt install --assume-yes python3.8
apt-get install --assume-yes flex bison
apt install --assume-yes device-tree-compiler
apt install --assume-yes gcc-multilib

apt-get install --assume-yes python3.8
apt-get install --assume-yes unzip
# sudo tar xPf genode-22.11.tar.bz2
apt-get install --assume-yes pkg-config
apt-get install --assume-yes libncurses
apt-get install --assume-yes texinfo
apt-get install --assume-yes gnatmake
apt-get install --assume-yes gprbuild
# install vscode remote development extension and generate rsa keys for build vm
# https://dev.to/kouts/setup-vs-code-on-windows-for-development-in-a-linux-vm-or-a-remote-server-4c6n