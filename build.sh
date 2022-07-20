#!/bin/bash
apt -qq update && apt -qq install cargo build-essential git pkg-config libssl-dev -y
set -e
apt install gcc g++ -y
TARGET_DIR=${TARGET_DIR:-"./target"}
TARGET_DIR=$(readlink -f "${TARGET_DIR}")
mkdir -p "${TARGET_DIR}"
echo -n > info.txt
for abi in x86_64-linux-gnu i686-linux-gnu aarch64-linux-gnu arm-linux-gnueabihf mips-linux-gnu mips64-linux-gnuabi64 mipsel-linux-gnu mips64el-linux-gnuabi64;do
    command -v ${abi}-gcc || apt install gcc-${abi} g++-${abi} -y
    CC=${abi}-gcc
    CXX=${abi}-g++
    STRIP=${abi}-strip
    make clean
    make ZT_STATIC=1 CC=${CC} CXX=${CXX} ZT_SSO_SUPPORTED=0 one  || exit 1
    $STRIP ./zerotier-one
    tar cvf zerotier-one_${abi}_static.tar.gz zerotier-one
    info=$(file zerotier-one)
    echo "${info/#zerotier-one/zerotier-one_${abi}_static}" >> info.txt
    mv *.gz "${TARGET_DIR}"
done
echo "###############################"
cat info.txt
