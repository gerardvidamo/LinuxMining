# Linux Mining

Based on my gist documentation [Ethereum mining](https://gist.github.com/gerardvidamo/a5682145df27957834381b03a0949291)

### Getting started
- Install Prerequisites [Guides](https://github.com/gerardvidamo/LinuxMining/tree/master/doc)

### Linux Mining Installation
Create dir for the repository
```console
$ sudo mkdir /usr/local/LinuxMining
```
cd to  `/usr/local` then clone repository
```console
$ cd /usr/local
$ git clone https://github.com/gerardvidamo/LinuxMining.git
```
Installation
> Note: Make sure to install all of the [prerequisites](https://github.com/gerardvidamo/LinuxMining/tree/master/doc) and update all of the packages before doing the installation.
```console
$ bash install.sh
```

### Overclock Settings

GTX 1070 (~30 MH/s Solo ETH):
```bash
MemoryOffset="1100"
ClockOffset="-200"
FanSpeed="80"
```
GTX 1060 (~21.5 MH/s Solo ETH):
```bash
MemoryOffset="1600"
ClockOffset="-160"
FanSpeed="80"
```
GTX 1050 Ti (~13.1 MH/s Solo ETH):
```bash
MemoryOffset="1300"
ClockOffset="-100"
FanSpeed="80"
```

### Results using 5 EVGA GTX 1070 @ 100 Watts
```
ETH - Total Speed: 157.755 Mh/s, Total Shares: 9, Rejected: 0, Time: 00:02
ETH: GPU0 31.574 Mh/s, GPU1 31.548 Mh/s, GPU2 31.535 Mh/s, GPU3 31.526 Mh/s, GPU4 31.572Mh/s
```

```
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 390.77                 Driver Version: 390.77                    |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  GeForce GTX 1070    On   | 00000000:01:00.0  On |                  N/A |
| 50%   62C    P2    99W / 100W |   2898MiB /  8119MiB |    100%      Default |
+-------------------------------+----------------------+----------------------+
|   1  GeForce GTX 1070    On   | 00000000:03:00.0  On |                  N/A |
| 50%   56C    P2    99W / 100W |   2896MiB /  8119MiB |    100%      Default |
+-------------------------------+----------------------+----------------------+
|   2  GeForce GTX 1070    On   | 00000000:06:00.0  On |                  N/A |
| 50%   52C    P2    77W / 100W |   2896MiB /  8119MiB |    100%      Default |
+-------------------------------+----------------------+----------------------+
|   3  GeForce GTX 1070    On   | 00000000:08:00.0  On |                  N/A |
| 50%   44C    P2    99W / 100W |   2896MiB /  8119MiB |    100%      Default |
+-------------------------------+----------------------+----------------------+
|   4  GeForce GTX 1070    On   | 00000000:0A:00.0  On |                  N/A |
| 50%   57C    P2    99W / 100W |   2896MiB /  8119MiB |    100%      Default |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
|    0       893      G   /usr/lib/xorg/Xorg                            31MiB |
|    0      1833      C   ./ethdcrminer64                             2855MiB |
|    1       893      G   /usr/lib/xorg/Xorg                            29MiB |
|    1      1833      C   ./ethdcrminer64                             2855MiB |
|    2       893      G   /usr/lib/xorg/Xorg                            29MiB |
|    2      1833      C   ./ethdcrminer64                             2855MiB |
|    3       893      G   /usr/lib/xorg/Xorg                            29MiB |
|    3      1833      C   ./ethdcrminer64                             2855MiB |
|    4       893      G   /usr/lib/xorg/Xorg                            29MiB |
|    4      1833      C   ./ethdcrminer64                             2855MiB |
+-----------------------------------------------------------------------------+
```