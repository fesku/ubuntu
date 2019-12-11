#!/bin/bash

# Add user to password less sudo
echo $USER' ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers > /dev/null

sudo apt update

sudo apt install -y git

git --version

git config --global user.name "Shankar Roy"
git config --global user.email "shankar.roy@gmail.com"

sudo apt install python3    
#Setup Python3 as the default 
sudo ln -fs /usr/bin/python3 /usr/bin/python
sudo apt install -y python3-pip
pip3 --version
pip3 install numpy

sudo apt-get install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa \
gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio

# Dependency forcompiling OpenCV
sudo apt-get install -y build-essential cmake unzip pkg-config
sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install -y libjasper-dev
# If missing do the following
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt install libjasper1 libjasper-dev
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt install -y libjasper1 libjasper-dev

sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev

sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libatlas-base-dev gfortran

# To compile OpenCV with gstreamer we will need the following
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev

#Install Open JDK needed for Eclipse based IDE
sudo apt install -y openjdk-8-jdk