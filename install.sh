#!/bin/bash

# Modify LinuxMining dir
cd /usr/local/LinuxMining
cd Clay*
sudo mv * /usr/local/LinuxMining
cd ..
sudo rm -r Clay*
sudo chown root:root ethdcrminer64
sudo chmod 755 ethdcrminer64
sudo chmod u+s ethdcrminer64
sudo chmod +x run.sh

# auto-start script
sudo apt install screen
cd ~
# replace rc.local file
echo '' >>~/etc/rc.local

sudo chmod +x miner_launcher.sh

# Add line into bashrc
echo 'alias miner='screen -x ethm'' >>~/.bashrc
