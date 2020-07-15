# kernel log level

## about 

* levels: level 0 and decreasing in severity 'till level 7: the lowest log level identifier, the most critical context.


```
	identified
 0	KERN_EMERG
 1	KERN_ALERT
 2 	KERN_CRIT
 3 	KERN_ERR
 4	KERN_WARNING
 5	KERN_NOTICE
 6 	KERN_INFO
 7 	KERN_DEBUG

```

## qeury

```
cat /proc/sys/kernel/printk
4       4       1       7
(1)	(2)	(3)	(4)

```

* (1) current console_loglevel - the log level currently used
* (2) default_message_loglevel - value automatically used for messages without a specific log level
* (3) minimum_console_loglevel - the minimum loglevel which can be used
* (4) default_console_loglevel - default loglevel used for console_loglevel at boot time


## runtime change

```
echo "3" > /proc/sys/kernel/printk

```

## all to console 

*  get all messages printed to the console do a simple

```
 echo 8 > /proc/sys/kernel/printk
```

## change from boot

* pass to kernel cmd line

```
loglevel=3
```


