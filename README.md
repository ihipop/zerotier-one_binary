# [ZeroTier-One](https://github.com/zerotier/ZeroTierOne) Binary
Release static build of zerotier-one binary

## Download example

`wget https://github.com/ihipop/zerotier-one_binary/releases/download/v1.8.2/zerotier-one.x86_64-linux-gnu -O zerotier-one && chmod +x zerotier-one`


## Where is `zerotier-cli` and `zerotier-idtool` below version 2.0 ?

```bash
ln -sf zerotier-one zerotier-cli
ln -sf zerotier-one zerotier-idtool
```
 ## How do I build it ?
 see https://github.com/ihipop/zerotier-one_binary/blob/master/build.sh
 
 
 ## File info example
 ```
 zerotier-one.aarch64-linux-gnu:       ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=689fc5d63553007ae875b94c1d75c6ae254f00a9, for GNU/Linux 3.7.0, stripped
zerotier-one.arm-linux-gnueabihf:     ELF 32-bit LSB executable, ARM, EABI5 version 1 (GNU/Linux), statically linked, BuildID[sha1]=60c86f362b6c8e122cc950a8ba83effa3f35b811, for GNU/Linux 3.2.0, stripped
zerotier-one.mips64el-linux-gnuabi64: ELF 64-bit LSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=e677088c91bf4d0c58404dbb24c1a99a0887351c, for GNU/Linux 3.2.0, stripped
zerotier-one.mips64-linux-gnuabi64:   ELF 64-bit MSB executable, MIPS, MIPS64 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=7cac0eddaf18920e46ee391cf6b18fb5cabb908b, for GNU/Linux 3.2.0, stripped
zerotier-one.mipsel-linux-gnu:        ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=43c36e31f94fde2b160416e73bb3f09ed7857120, for GNU/Linux 3.2.0, stripped
zerotier-one.mips-linux-gnu:          ELF 32-bit MSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=a73843954a0649ea777a488047b3d5a5d5e1e615, for GNU/Linux 3.2.0, stripped
zerotier-one.x86_64-linux-gnu:        ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=7c008d6ae6a16ee876866499d2c66d7c4ec17aeb, for GNU/Linux 3.2.0, stripped
```
