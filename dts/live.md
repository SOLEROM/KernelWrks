# DT on the target

## psudoFS

* dtc can also extract the DTS from /proc of a live kernel : /proc/device-tree 
* or /sys/firmware/devicetree/base

```
exmaple:
========
ls -l /sys/firmware/devicetree/base/

TBD

```

* access dts properties from files:

```
hexdump /sys/firmware/devicetree/base/apb-pclk/clock-frequency
```


## live unpack

* get a full device tree from the filesystem

```
> dtc -I fs -O dts /sys/firmware/devicetree/base
 ( outputs the dts to stdout ) 

  TBD

```









## debugfs

device tree should be accessible inside debugfs.

