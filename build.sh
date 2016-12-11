#!/bin/bash
## GCC 4.9 Linaro
CUR_TC=/home/wzhy90/arm-cortex_a7-linux-gnueabihf-linaro_4.9/bin/

##compile kernel
ARCH=arm CROSS_COMPILE=${CUR_TC}arm-cortex_a7-linux-gnueabihf- make -j4

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
