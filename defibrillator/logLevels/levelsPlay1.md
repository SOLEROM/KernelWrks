# play with printk levels vs kernel boot params

## code test

```
kernelSRC/linux-next/./arch/x86/kernel/setup.c
==============================================

        printk(KERN_INFO "(SOL::KERN_INFO)Command line: %s\n", boot_command_line);

        //defi loglevels play
        printk(KERN_DEBUG "(SOL::KERN_DEBUG)Command line: %s\n", boot_command_line);
        pr_info("(SOL)pr_info write\n");
        pr_err("(SOL)pr_err write\n");


```

# play
* all msg will shown on dmesg
* test on boot log:

## level 6

```
./2_qemu_kernelroot_loglevel6.sh 
[    0.000000] (SOL)pr_err write
```

## level 7

```
./2_qemu_kernelroot_loglevel7.sh  
[    0.000000] (SOL::KERN_INFO)Command line: root=/dev/sda rw console=ttyS0 loglevel=7
[    0.000000] (SOL)pr_info write
[    0.000000] (SOL)pr_err write

```

## level 8

```
./2_qemu_kernelroot_loglevel8.sh  
[    0.000000] (SOL::KERN_INFO)Command line: root=/dev/sda rw console=ttyS0 loglevel=8
[    0.000000] (SOL::KERN_DEBUG)Command line: root=/dev/sda rw console=ttyS0 loglevel=8
[    0.000000] (SOL)pr_info write
[    0.000000] (SOL)pr_err write
```
