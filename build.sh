#!/bin/bash
sudo apt install gcc g++ -y
mkdir -p target
make clean
make ZT_STATIC=1 one && strip ./zerotier-one && mv  ./zerotier-one target/zerotier-one.`gcc -dumpmachine` && \
for abi in aarch64-linux-gnu arm-linux-gnueabihf mips-linux-gnu mips64-linux-gnuabi64 mipsel-linux-gnu mips64el-linux-gnuabi64;do
    sudo apt install gcc-${abi} g++-${abi} -y && \
    CC=${abi}-gcc && \
    CXX=${abi}-g++ && \
    STRIP=${abi}-strip && \
    make clean && \
    make ZT_STATIC=1 CC=${CC} CXX=${CXX} one && \
    $STRIP ./zerotier-one && \
    file ./zerotier-one && \
    mv ./zerotier-one ./target/zerotier-one.${abi}
done
file ./target/zerotier-one*
