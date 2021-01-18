# play test

```
kernelSRC/linux-next/./arch/x86/kernel/setup.c
==============================================


        //stack show play
        dump_stack();

result with:
============
[    0.000000] Call Trace:
[    0.000000]  ? dump_stack+0x57/0x6b
[    0.000000]  ? 0xffffffffb7400000
[    0.000000]  ? setup_arch+0xd1/0xc7f
[    0.000000]  ? start_kernel+0x5f/0x52c
[    0.000000]  ? copy_bootdata+0x12/0x47
[    0.000000]  ? secondary_startup_64+0xb6/0xc0

```



