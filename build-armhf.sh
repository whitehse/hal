#!/bin/sh

#export STAGING_DIR=/tmp/openwrt-sdk-ipq40xx-generic_gcc-11.3.0_musl_eabi.Linux-x86_64/staging_dir/
#export CC=$STAGING_DIR/toolchain-arm_cortex-a7+neon-vfpv4_gcc-11.3.0_musl_eabi/bin/arm-openwrt-linux-muslgnueabi-gcc
#export CFLAGS="-I/tmp/libpcap-1.10.0/ -mfloat-abi=hard -mfpu=fpv4-sp-d16"
#export LDFLAGS="-mfloat-abi=hard -mfpu=fpv4-sp-d16"
##./configure --host=arm-linux --with-pcap=linux

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=arm-linux-gnueabihf-gcc-10 ..
#cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_C_COMPILER=arm-linux-gnueabihf-gcc ..
#cmake -DCMAKE_C_COMPILER=/tmp/openwrt-sdk-ipq40xx-generic_gcc-11.3.0_musl_eabi.Linux-x86_64//staging_dir/toolchain-arm_cortex-a7+neon-vfpv4_gcc-11.3.0_musl_eabi/bin/arm-openwrt-linux-muslgnueabi-gcc ..
make
