#! /bin/bash
# Author: Ansh Chandnani (mrdebator)

# update current libraries 
echo 'Updating current libraries...'
sudo apt-get update

# Aircrack-ng 
echo 'Installing Aircrack-ng...'
sudo apt-get install -y aircrack-ng
echo 'Upgrading Aircrack-ng...'
sudo apt-get upgrade aircrack-ng

# JohnTheRipper
echo 'Installing JohnTheRipper...'
sudo apt-get install -y john
echo 'Upgrading JohnTheRipper...'
sudo apt-get upgrade john

# Hashcat
sudo apt-get install ocl-icd-libopencl1 git build-essential
mkdir /installs && mkdir /installs/apps && cd /installs/apps

git clone https://github.com/hashcat/hashcat.git

cd hashcat
git submodule update -init

make 
cd ../

git clone https://github.com/hashcat/hashcat-utils.git

cd hashcat-utils/src

make
cp *.bin ../bin

# Nmap
echo 'Installing nmap...'
sudo apt-get install -y nmap
echo 'Upgrading nmap...'
sudo apt-get upgrade nmap

# TShark

echo 'Installing tShark...'
sudo apt-get install -y tshark
echo 'Upgrading tShark...'
sudo apt-get upgrade tshark

