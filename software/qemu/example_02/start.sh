#!/bin/bash

QEMU=/home/x10168/src_build/build/qemu-2.8.0/arm-softmmu/qemu-system-arm

# -M cubieboard
# -M vexpress-a9 -dtb vexpress-v2p-ca9.dtb console=ttyAMA0
# -dtb dt.dtb
# -append "earlyprintk console=ttyAMA0 console=tty0"


#${QEMU} --help
${QEMU} -m 512 -M vexpress-a9				\
	-kernel zImage -dtb vexpress-v2p-ca9.dtb	\
	-serial stdio					\
	-append "console=ttyAMA0,115200 console=tty0 root=/dev/nfs nfsroot=/home/x10168/test/arm/fs/sysroot rw ip=192.168.2.190:192.168.2.10:192.168.2.10:255.255.255.0::eth0 nfsrootdebug init=/sbin/init"	\
	-net nic,macaddr=0x12:0x34:0x56:0x78:0x90:0xab	\
	-net tap,id=mynet0,ifname=tap20,script=tapup.sh,downscritp=tapdown.sh
#        -net tap,id=mynet0,ifname=tap20,script=tapup.sh,downscript=tapdown.sh        \
#        -device 9pnet,netdev=mynet0


