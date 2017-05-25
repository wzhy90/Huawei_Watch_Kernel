#!/bin/bash
## GCC 4.9 Google
CUR_TC=../arm-linux-androideabi-4.9/bin/

##compile kernel - Google
ARCH=arm KCPPFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 KCFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 KAFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 CROSS_COMPILE=${CUR_TC}arm-linux-androideabi- make -j4 modules
