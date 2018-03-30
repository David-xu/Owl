#!/bin/bash
QEMU=/home/x10168/src_build/build/qemu-2.11.1/x86_64-softmmu/qemu-system-x86_64
#QEMU=/usr/libexec/qemu-kvm

# mouse position shift
#-usbdevice tablet			\

${QEMU} -m 8195 -enable-kvm -smp 8	\
-hda disk.img \
-vnc :40 -vga std \
-cdrom CentOS-7-x86_64-Everything-1708.iso	\
-boot menu=on				\
-netdev tap,id=mynet1,ifname=tap11,vhost=on,script=tapup.sh,downscript=tapdown.sh	\
-device virtio-net-pci,netdev=mynet1
