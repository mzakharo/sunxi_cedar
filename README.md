#------------------------------------------------------------
# Cedar_dev : video engine driver
#------------------------------------------------------------

#Get prerequisites
```bash
apt-get install git build-essential fakeroot kernel-package zlib1g-dev libncurses5-dev lzop
apt-get install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf
```
#Build Linux kernel
```bash
git clone --single-branch --branch debian/4.3.0-ntc-4 https://github.com/NextThingCo/CHIP-linux.git
cd CHIP-linux/
export KERNEL_SRC=$(pwd)
make ARCH=arm multi_v7_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j$(($(nproc)+1)) INSTALL_MOD_PATH=$WORKSPACE modules
```
#Build sunxi_cedar_mod.ko module
```bash
git clone https://github.com/mzakharo/sunxi_cedar.git
cd sunxi_cedar/
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j$(($(nproc)+1))
```

