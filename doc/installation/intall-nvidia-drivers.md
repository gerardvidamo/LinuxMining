
## Installing NVIDIA Drivers

Install [NVIDIA Drivers](http://www.nvidia.com/Download/driverResults.aspx/123918/en-us)
```console
sudo apt purge nvidia-*
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-390
```