#

QEMU -machine dumpdtb

If you are running Linux inside QEMU, QEMU automatically generates the DTBs if you don't give it explicitly with -dtb, and so it is also able to dump it directly with:

qemu-system-aarch64 -machine virt -cpu cortex-a57 -machine dumpdtb=dtb.dtb


