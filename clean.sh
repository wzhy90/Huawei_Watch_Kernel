#!/bin/bash
## GCC 4.9 Linaro
CUR_TC=/home/wzhy90/arm-cortex_a7-linux-gnueabihf-linaro_4.9/bin/

### cleaning
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-cortex_a7-linux-gnueabihf- make distclean

rm -r ./final_files
rm arch/arm/boot/zImage-dtb && rm arch/arm/mach-msm/smd_rpc_sym.c
