#!/bin/bash
## GCC 4.9 Google
CUR_TC=../arm-linux-androideabi-4.9/bin/

##compile kernel - Google
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-linux-androideabi- make distclean

rm -r ./final_files
rm arch/arm/boot/zImage-dtb && rm arch/arm/mach-msm/smd_rpc_sym.c
