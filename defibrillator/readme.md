# defibrillator

```
A defibrillator is a device that gives a high energy electric shock to the heart of someone who is in cardiac arrest
```

## about

* project to summarize the method to move production system to monitor and debug bsp realted crashes;

## playEnv

* [buildPlayEnv](playEnv/readme.md)


## hw support devices
* [hwEq](hwEq/readme.md)

## methods

* [debugFS](debugFS/readme.md)
* [LogLevel](logLevels/readme.md)
   * [kerenlLogLevel](logLevels/kerenlLogLevel.md)
   * [increase dmesgBuff size](logLevels/dmesgBuff.md)
* [userSpaceLogger](userlog/readme.md)
   * [report remote](userlog/rsyslogRemote.md)
* [kernelPeriodocMsg](timers/periodicTimer.md)
* []()
* []()

## kernelConf
* [kernel config for debug method](kerConf/readme.md)
* [hakingMenu](kerConf/hakingMenu.md)
* [timeKeeping](kerConf/timekeeping.md)



## boot time features 
* in case no serail on procution board is monitored
	* [set the uboot to use netconsole reports](uboot/netconsole.md)
* [make uboot to pass reset cause to user space](uboot/saveRebootCause.md)


## hw bus 

* [usbBus](usb/readme.md)
  * [autosuspend](usb/autosusped.md)
  * [usb debug method](usb/debugging.md)
  * [usbmon](usb/usbmon.md)



