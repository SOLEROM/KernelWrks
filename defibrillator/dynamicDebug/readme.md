# dynamic_debug

Dynamic Debugging in the Linux kernel allows you to dynamically enable or disable debugging messages for different components in the kernel at runtime. This is particularly useful for debugging issues in a production environment without the need to recompile the kernel or modules.


* see more in : Documentation/admin-guide/dynamic-debug-howto.rst

## check

* check if present

```
zcat /proc/config.gz | grep CONFIG_DYNAMIC_DEBUG
grep CONFIG_DYNAMIC_DEBUG /boot/config-$(uname -r)
```

* check if enabled

```
mount -t debugfs none /sys/kernel/debug
ls /sys/kernel/debug/dynamic_debug/control
```

## build to the kernel


```
CONFIG_DYNAMIC_DEBUG = y

Kernel hacking  ---> 
   [*] Debugging support  ---> 
      [*] Dynamic Debugging

```


## control

```
# all file
echo 'file file_name.c +p' > /sys/kernel/debug/dynamic_debug/control
# specific function
echo 'func function_name +p' > /sys/kernel/debug/dynamic_debug/control
# module
echo -n 'module * +p' > /sys/kernel/debug/dynamic_debug/control
# 
```