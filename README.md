#------------------------------------------------------------
# cedar_dev : video engine driver
#------------------------------------------------------------

This is a sunxi-cedar driver port from  [linux-sunxi 3.4 kernel module](https://github.com/linux-sunxi/linux-sunxi/tree/a8f8ba9ba383c2358d67b4dcaa5ce5cd4f0dd587/drivers/media/video/sunxi) to [CHIP-linux 4.4](https://github.com/NextThingCo/CHIP-linux/tree/debian/4.4.13-ntc-mlc), enabling "/dev/cedar_dev" entry for use with [gst-plugin-cedar](https://github.com/gzhuli/gst-plugin-cedar) and [ffmpeg-cedrus](https://github.com/stulluk/FFmpeg-Cedrus/raw/master/ffmpeg_2-1_armhf.deb) amongst others.

#Get prerequisites
```bash
apt-get install git build-essential fakeroot kernel-package zlib1g-dev libncurses5-dev lzop
apt-get install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf
```
#Prepare Linux kernel tree
```bash
git clone --single-branch --branch debian/4.4.13-ntc-mlc https://github.com/NextThingCo/CHIP-linux.git
cd CHIP-linux/
export KERNEL_SRC=$(pwd)
export LOCALVERSION="-ntc-mlc"
make ARCH=arm multi_v7_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j$(($(nproc)+1)) INSTALL_MOD_PATH=$WORKSPACE modules
```
#Build sunxi_cedar_mod.ko module
```bash
git clone https://github.com/mzakharo/sunxi_cedar.git
cd sunxi_cedar/
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j$(($(nproc)+1))
```

