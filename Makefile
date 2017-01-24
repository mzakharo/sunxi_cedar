# Names of modules to build 
MODULES	= sunxi_cedar_mod

$(MODULES)-y := sunxi_cedar.o cache-v7.o
#ccflags-y := -w

obj-m += $(MODULES:%=%.o)
BUILD	= $(MODULES:%=%.ko)

# AW16XX Audio Card Support
#obj-$(CONFIG_VIDEO_DECODER_SUNXI) += sunxi_cedar_mod.o
#obj-$(CONFIG_VIDEO_AVS_COUNTER) += sunxi_avs.o
#sunxi_cedar_mod-objs := sunxi_cedar.o cache-v7.o

SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
	rm -f $(BUILD) *.o *.ko *.mod.c *.mod.o *~ .*.cmd Module.symvers modules.order
	rm -rf .tmp_versions

