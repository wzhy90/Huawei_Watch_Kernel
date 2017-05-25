#!/bin/bash
## GCC 4.9 Google
CUR_TC=../arm-linux-gnueabihf_linaro_4.9.4/bin/

##compile kernel - Google
ARCH=arm KCPPFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 KCFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 KAFLAGS=" -mcpu=cortex-a7 -mtune=cortex-a7 -mfpu=neon-vfpv4" \
 CROSS_COMPILE=${CUR_TC}arm-linux-gnueabihf- make -j4

if [ "$?" != 0 ]
then
echo "There are some errors when making files..."
else
echo "checking for compiled kernel..."
if [ -f arch/arm/boot/zImage ]
then

echo "generating device tree..."
if [ ! -d ./final_files ]
then
mkdir ./final_files
fi
#./dtbToolCM --force-v2 -o ./final_files/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/

### copy zImage
#cp arch/arm/boot/zImage ./final_files/.
cp arch/arm/boot/zImage-dtb ./final_files/kernel

echo "DONE"

fi
fi
