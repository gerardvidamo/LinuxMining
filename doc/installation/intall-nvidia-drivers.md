
## Installing NVIDIA Drivers

Install [NVIDIA Drivers](http://us.download.nvidia.com/XFree86/Linux-x86_64/390.87/NVIDIA-Linux-x86_64-390.87.run)
```console
$ sudo apt purge nvidia-*
$ sudo add-apt-repository ppa:graphics-drivers/ppa
$ sudo apt update
$ sudo apt install nvidia-390
```

Dont forget to run this command:
```console
$ sudo update-grub
```

> Note: Make sure to modify this file once the overclock is done.

Adding nogpumanager to GRUB_CMDLINE_LINUX_DEFAULT in `/etc/default/grub` solves the issue. Thus, the line in `/etc/default/grub` should look like: 

```bash
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nogpumanager"
```

### Enable Overclock
```console
$ sudo nvidia-xconfig -a --allow-empty-initial-configuration --cool-bits=28 --use-display-device="DFP-0" --connected-monitor="DFP-0" --enable-all-gpus
$ sudo systemctl restart lightdm.service
$ sudo reboot
```
