#!/bin/bash

printf "Modifying Linux Mining files."
# modify LinuxMining dir
cd /usr/local/LinuxMining/
sudo chown root:root z-enemy
sudo chmod 755 z-enemy
sudo chmod u+s z-enemy
sudo chmod +x run.sh

printf "Generating auto start scripts"
# auto-start script
sudo apt install screen
cd /usr/local/LinuxMining/scripts
sudo chmod +x miner_launcher.sh
sudo chmod +x oc_settings.sh
cd ~

printf "Create fake display"
# copy fake display
# sudo cp /usr/local/LinuxMining/X11dfp0.edid /etc/X11/dfp0.edid
# replace rc.local file
sudo cp /usr/local/LinuxMining/scripts/rc.local /etc/

printf "Adding Linux Mining aliases"
# add line into bashrc
# echo 'alias miner='"'screen -x ethm'"'' >>~/.bashrc
# echo 'alias runOC='"'sudo bash /usr/local/LinuxMining/scripts/oc_settings.sh'"'' >>~/.bashrc
