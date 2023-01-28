#! /bin/sh
speedtest-cli
sudo dpkg-reconfigure tzdata
apt update
apt upgrade -s
flatpak update -y
apt autoremove 
apt autoclean
sudo sync
sudo sysctl -w vm.drop_caches=3
sudo sysctl vm.swappiness=10
sudo swapoff -a
sudo swapon -a