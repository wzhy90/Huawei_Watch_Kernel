#!/bin/bash
## GCC 4.9 Google
CUR_TC=../arm-linux-gnueabihf_linaro_4.9.4/bin/

##compile kernel - Google
ARCH=arm KCPPFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 KCFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 KAFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 CROSS_COMPILE=${CUR_TC}arm-linux-gnueabihf- make sturgeon_defconfig
