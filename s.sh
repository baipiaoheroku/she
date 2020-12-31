#!/bin/bash

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.53.3/rclone-v1.53.3-linux-amd64.zip
unzip -q rclone-v1.53.3-linux-amd64.zip
export PATH=$PWD/rclone-v1.53.3-linux-amd64:$PATH

# Install aria2c static binary
wget -q https://github.com/P3TERX/Aria2-Pro-Core/releases/download/1.35.0_2020.12.29/aria2-1.35.0-static-linux-amd64.tar.gz
tar xf aria2-1.35.0-static-linux-amd64.tar.gz
export PATH=$PWD:$PATH

# Create download folder
mkdir -p downloads

# Tracker
tracker_list=`curl -Ns https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | awk '$1' | tr '\n' ',' | cat`
echo "bt-tracker=$tracker_list" >> aria2c.conf
# DHT
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht.dat
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht6.dat



echo $PATH > PATH
