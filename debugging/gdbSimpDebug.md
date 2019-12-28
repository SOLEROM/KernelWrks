# basic debugging kernel with gdb

## kernel build additions

* add debug info and dgb scripts

```
 > Kernel hacking > Compile-time checks and compiler options 
    [*] Compile the kernel with debug info                                                               
    [ ]   Reduce debugging information                                                                  
    [ ]   Produce split debuginfo in .dwo files                                                          
    [ ]   Generate dwarf4 debuginfo                                                                      
    [ ]   Generate BTF typeinfo                                                                        
    [*]   Provide GDB scripts for kernel debugging  
```



## qemu run additions

* debug port and start

```
#  -S  Do not start CPU at startup (you must type 'c' in the monitor).
#  -s  Shorthand for -gdb tcp::1234, i.e. open a gdbserver on TCP port  1234.

qemu-system-x86_64 \
-no-kvm -s -S \

```

* kaslr - must be dissabled to debug

```
 -append "root=/dev/zero console=ttyS0 nokaslr" \
```

* gdb security off (loading from other path enable)

```
/home/<HOME>/.gdbinit
======================
set auto-load safe-path /


```

## gdb connect

```
## (1) run qemu
## (2) run gdb

> gdb ./

(gdb) target remote localhost:1234

(gdb) break start_kernel

(gdb) c

```



## example

```
(gdb) target remote localhost:1234
Remote debugging using localhost:1234
0x000000000000fff0 in exception_stacks ()
(gdb) break start_kernel
Breakpoint 1 at 0xffffffff829d4ac0: file /proj/theKernel/kernelSRC/gitNext/linux-next/init/main.c, line 577.
(gdb) c
Continuing.

Breakpoint 1, start_kernel () at /proj/theKernel/kernelSRC/gitNext/linux-next/init/main.c:577
577	{
(gdb) list
572	{
573		rest_init();
574	}
575	
576	asmlinkage __visible void __init start_kernel(void)
577	{
578		char *command_line;
579		char *after_dashes;
580	
581		set_task_stack_end_magic(&init_task);
(gdb) 

```


## automation

* (1) run qemu
* (2) run gdb script

```

## script:
gdb --command=./gdb1.commands kernelBuildFiles/vmlinux


gdb1.commands 
================
#gdb security off (loading from other path enable)
set auto-load safe-path /
#connect to qemu
target remote localhost:1234
#break on start
break start_kernel
#run
c

```
