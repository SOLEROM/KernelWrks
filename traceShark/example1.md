# simple 1 sec trace

## run on target (qemu)

```
trace-cmd record -a -e all sleep 1

```

## anal on host

* open trace.dat at kernel-shark

