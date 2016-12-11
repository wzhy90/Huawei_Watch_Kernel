#!/bin/bash
## GCC 4.9 Linaro
CUR_TC=/home/wzhy90/arm-cortex_a7-linux-gnueabihf-linaro_4.9/bin/

### set kernel profile
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-cortex_a7-linux-gnueabihf- make sturgeon_defconfig
