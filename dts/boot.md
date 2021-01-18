# boot


* The bootloader loads two binaries:  the kernel image and the DTB

```
U-Boot command: 
        boot[mz] <kernel img addr> - <dtb addr>
```

* The bootloader passes the DTB address through r2
* contain DTB with memory information, kernelcommand line, and potentially other info
* No moremachine type



## backSupport

* if no specific support for the DeviceTree - a compatibility mechanism:

```
## (1) config:
CONFIG_ARM_APPENDED_DTB
    tells the kernel to look for a DTB right after the kernel image
CONFIG_ARM_ATAG_DTB_COMPAT 
    tells the kernel to read the ATAGS information from the bootloader, and update the DT using them

## (2) prepare:
 cat arch/arm/boot/zImage arch/arm/boot/dts/myboard.dtb > my-zImage 
 mkimage ... -d my-zImage my-uImage
```


