#!/bin/bash

kernel=../output/bzImage

#  -S  Do not start CPU at startup (you must type 'c' in the monitor).
#  -s  Shorthand for -gdb tcp::1234, i.e. open a gdbserver on TCP port          1234.

##simple with gdb
qemu-system-x86_64 \
-no-kvm -s -S \
-kernel $kernel  \
-hda /dev/zero \
-append "root=/dev/zero console=ttyS0 nokaslr" \
-nographic

