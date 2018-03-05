#!/bin/bash
echo Welcome To Automated Kernel Compiler For Srt
echo By rajkale99
make clean && make mrproper
echo Cleaned Some Old Crappy Files
export CROSS_COMPILE=/home/rajkale99/toolchains/ubertc-4.9/bin/aarch64-linux-android-
mkdir output  
echo Compiler Set Sucessful    
export ARCH=arm64
echo Compiler Set To Build For ARM64
make -C $(pwd) O=output msm-perf_defconfig
echo Picked Stock Config
make -j5 -C $(pwd) O=output
echo Building Has Been Completed
