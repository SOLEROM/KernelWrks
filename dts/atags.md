# Atags - before the Device Tree

* The bootloader loads a single binary, the kernel image, and executes it: uimage or zImage.

```
U-Boot command 
    bootm <kernel img addr>  
```

* The bootloader tells the kernel on which board it is beingbooted through a machine type integer, passed in register r1.
* The bootloader prepares some additional information, called ATAGS, which address is passed to the kernel through register r2 
* Contains information such as memory size and location, kernel command line, etc.


