#

* dtc can also extract the DTS from /proc of a live kernel

/proc/device-tree or /sys/firmware/devicetree/base


 access dts properties from files:
 hexdump /sys/firmware/devicetree/base/apb-pclk/clock-frequency


dtc -I fs
get a full device tree from the filesystem
dtc -I fs -O dts /sys/firmware/devicetree/base
outputs the dts to stdout

##
device tree should be accessible inside debugfs.

