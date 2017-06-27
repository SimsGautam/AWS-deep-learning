#!/bin/bash

# stop on error
set -e

# install into /mnt/bin
sudo mkdir -p /mnt/bin
sudo chown ubuntu:ubuntu /mnt/bin

# install the required packages
sudo apt-get update && sudo apt-get -y upgrade
#sudo apt-get -y install linux-headers-$(uname -r) linux-image-extra-`uname -r`

# install cuda
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
rm cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
sudo apt-get update
sudo apt-get install -y cuda
