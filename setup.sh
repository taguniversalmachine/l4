#!/bin/sh
# sudo 
apt update
apt-install --assume-yes make build-essential
apt install --assume-yes software-properties-common
apt-get install --assume-yes python3 python3-pip python3-setuptools python3-wheel ninja-build
add-apt-repository --assume-yes ppa:deadsnakes/ppa
apt update
apt install --assume-yes python3.8
apt-get install --assume-yes flex bison
apt install --assume-yes device-tree-compiler
