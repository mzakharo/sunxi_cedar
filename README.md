#------------------------------------------------------------
# Cedar_dev : video engine driver
#------------------------------------------------------------
```bash
apt-get install git build-essential fakeroot kernel-package zlib1g-dev libncurses5-dev lzop
apt-get install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf
```


```bash
git clone --single-branch --branch debian/4.3.0-ntc-4 https://github.com/NextThingCo/CHIP-linux.git
cd CHIP-linux/
make ARCH=arm multi_v7_defconfig
```
