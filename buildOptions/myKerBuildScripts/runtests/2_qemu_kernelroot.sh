#!/bin/bash

KERNEL="../output/bzImage"
ROOTFS="../output/rootfs.ext4"

qemu-system-x86_64 \
-kernel $KERNEL \
-boot c -m 2049M \
-hda $ROOTFS \
-append "root=/dev/sda rw console=ttyS0 " \
-nographic

