#! /bin/bash
# Author: Ansh Chandnani (mrdebator)

# Unzipping rockyou.txt
unzip ./wordlists/rockyou.txt.zip  -d ./wordlists

# update current libraries
echo 'Updating current libraries...'
sudo apt-get update

# net-tools
echo 'Installing net-tools'
sudo apt install -y net-tools
echo 'Upgrading net-tools'
sudo apt upgrade net-tools

# cURL
echo 'Installing cURL...'
sudo apt install -y curl

# Python
echo 'Installing Python 2.7...'
sudo apt install -y python2
sudo apt upgrade python2

echo 'Installing Python 3'
sudo apt install -y python3
sudo apt upgrade python3

# pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
echo 'Configuring pip2...'
sudo python2 get-pip.py
echo 'Configuring pip3...'
sudo python3 get-pip.py   # This sets pip3 as default for pip

# Java
echo 'Installing Java...'
sudo apt-get install -y openjdk-8-jdk
sudo apt install -y default-jre

# Ruby
echo 'Installing Ruby...'
sudo apt install -y ruby-full

# git
echo 'Installing Git...'
sudo apt install -y git

# mlocate
echo 'Installing mlocate and locate database...'
sudo apt-get install -y mlocate
sudo updatedb

# masscan
echo 'Installing masscan for fast Internet scanning'
sudo apt-get install -y masscan
echo 'Upgrading masscan...'
sudo apt upgrade masscan

# Aircrack-ng
echo 'Installing Aircrack-ng...'
sudo apt-get install -y aircrack-ng
echo 'Upgrading Aircrack-ng...'
sudo apt-get upgrade aircrack-ng

# Dependancies for John Jumbo
sudo apt-get install -y build-essential libssl-dev   # REQUIRED OpenSSL component
# Other reccpmmended dependancies (https://openwall.info/wiki/john/tutorials/Ubuntu-build-howto)
sudo apt-get install -y yasm libgmp-dev libpcap-dev libnss3-dev libkrb5-dev pkg-config libbz2-dev zlib1g-dev

# JohnTheRipper Jumbo
echo 'Installing JohnTheRipper...'
# Cloning
git clone git://github.com/magnumripper/JohnTheRipper -b bleeding-jumbo john-jumbo
# Building
cd ./john-jumbo/src
./configure && make -s clean && make -sj4

# Hashcat
sudo apt-get install -y ocl-icd-libopencl1 git build-essential
mkdir /installs && mkdir /installs/apps && cd /installs/apps

git clone --recurse-submodules https://github.com/hashcat/hashcat.git

cd hashcat
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

# dirsearch
echo 'Installing dirsearch...'
git clone https://github.com/mausoria/dirsearch.git

# Impacket
git clone https://github.com/SecureAuthCorp/impacket.git
cd impacket
pip install .
cd ..
sudo apt-get install -y python3-impacket

# Evil-WinRM
echo 'Installing evil-winrm'
gem install evil-winrm

# Vim
echo 'Installing vim...'
sudo apt install -y vim
