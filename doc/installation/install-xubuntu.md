## Installing Ubuntu 

Fresh install of [xUbuntu 16.04 LTS](http://mirror.us.leaseweb.net/ubuntu-cdimage/xubuntu/releases/16.04/release/xubuntu-16.04.3-desktop-amd64.iso)

Disable Sleep/Suspend
```console
$ sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
```
Sudo without password 
```console
$ sudo visudo
```
In the bottom of the file, type the follow: `$USER ALL=(ALL) NOPASSWD: ALL`

> Note: Run this command once your miner is installed and overclocking is done.

Install package updates by typing (or copying & pasting via right-click into Putty) the following command:
```console
$ sudo apt-get dist-upgrade
```
