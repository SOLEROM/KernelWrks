
DETECT_HUNG_TASK
CONFIG_DETECT_SOFTLOCKUP


CONFIG_PRINTK_TIME - add time stamps to dmesg
CONFIG_DEBUG_KERNEL - turn on kernel debugging
CONFIG_DETECT_HUNG_TASK - good for figuring out what's causing a kernel freeze
CONFIG_DEBUG_INFO - ensures you can decode kernel oops symbols
CONFIG_EARLY_PRINTK
CONFIG_LOG_BUF_SHIFT=21 - sets the kernel buffer log size to the biggest buffer
CONFIG_NETCONSOLE=m - compiles netconsole as a module, see tutorial below. 

console to serial
if no serial try:
	Netconsole to See Kernel Messages.

loglevel=7 without quiet

kernel version open issues

watchdogs
 sw
 hw

The fallow memory's ring buffer is dumped when a watchdog reset is detected on kernel boot.

panic=-1

SLUB/SLAB debug by adding slub_debug=FZPU in my kernel arguments. Then when I run slabinfo -v to validate all my slab,

kernel lockup case

lockup watchdogs kernel features

SDRAM or a peripheral device latches up and causes abnormal bus activity. This will stop the CPU from fetching proper code

Softlockup detector and hardlockup detector
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/lockup-watchdogs.txt

RAM stick has defects  - test ram
test cpu temp
test nand flash


