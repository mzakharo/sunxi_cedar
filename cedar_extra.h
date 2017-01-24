#ifndef _CEDAR_EXTRA_H_
#define _CEDAR_EXTRA_H_

#ifndef SW_INT_IRQNO_VE 
#define SW_INT_IRQNO_VE 53
#endif

#ifndef SUNXI_VER_A10A
#define SUNXI_VER_A10A 0
#define SUNXI_VER_A13A 0
#define SUNXI_VER_A13B 0
#define SUNXI_VER_A10B 0
#define SUNXI_VER_A10C 0
#define SUNXI_VER_A20 1
#define sw_get_ic_ver() (1)
#define clk_reset(v,d)
#endif

#ifndef VM_RESERVED
  # define VM_RESERVED (VM_DONTEXPAND | VM_DONTDUMP)
#endif

#ifndef SW_PA_SDRAM_START
#define SW_PA_SDRAM_START                 0x40000000
#endif

#endif
