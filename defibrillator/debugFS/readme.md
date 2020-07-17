# about debugFS

* for option addind custom files to debug fs [see here](../../debugging/debugfs/readme.md)
* its a RAM-based filesystem can be used to output a lot of different debugging information.
* enabled by:

```
Kernel hacking
    [*] Debug filesystem

```

* mount

```
on demnad:
===========
mount -t debugfs none /sys/kernel/debug

on boot via /etc/fstab file:
============================
debugfs /sys/kernel/debug debugfs 0 0

```

## list

```
# ls /sys/kernel/debug/
# 
# mount -t debugfs none /sys/kernel/debug/
# ls /sys/kernel/debug/
acpi                dri                 sleep_time
bdi                 error_injection     suspend_stats
block               extfrag             swiotlb
clear_warn_once     fault_around_bytes  tracing
clk                 hid                 usb
device_component    ieee80211           wakeup_sources
devices_deferred    kprobes             x86
dma_buf             mce
dmaengine           regmap

```

