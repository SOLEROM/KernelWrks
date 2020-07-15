# dmesg buffer

* size 

```
Printk is implemented by using a ring buffer in the kernel with a size of __LOG_BUF_LEN bytes 
where __LOG_BUF_LEN equals (1 << CONFIG_LOG_BUF_SHIFT).

```

* The range for this config is 12 to 21.

```
>>> (1<<12)/1024
4			[kb]
>>> (1<<13)/1024
8
>>> (1<<14)/1024
16
>>> (1<<15)/1024
32
>>> (1<<16)/1024
64
>>> (1<<17)/1024
128
>>> (1<<18)/1024
256
>>> (1<<19)/1024
512
>>> (1<<20)/1024
1024
>>> (1<<21)/1024
2048

```

* config 

```
grep CONFIG_LOG_BUF_SHIFT .config 

//at my play env: 
//grep CONFIG_LOG_BUF_SHIFT output/myKernelConfig 

CONFIG_LOG_BUF_SHIFT=18
```
