#!/bin/bash

# Modify LinuxMining dir
cd /usr/local/LinuxMining
chown root:root ethdcrminer64
chmod 755 ethdcrminer64
chmod u+s ethdcrminer64
chmod +x run.sh

# auto-start script
apt install screen
cd /usr/local/LinuxMining/scripts
chmod +x miner_launcher.sh
chmod +x oc_settings.sh
cd ~

# replace rc.local file
cp /usr/local/LinuxMining/scripts/rc.local /etc/

# Add line into bashrc
echo 'alias miner='"'screen -x ethm'"'' >>~/.bashrc
echo 'alias runOC='"'bash /usr/local/LinuxMining/scripts/oc_settings.sh'"'' >>~/.bashrc