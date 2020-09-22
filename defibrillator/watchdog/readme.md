# kernel watchdog

If you enabled the watchdog driver in your kernel, the watchdog driver sets up a kernel timer in charge of resetting the watchdog.

If no application opens the /dev/watchdog file, then the kernel takes care of resetting the watchdog. Since it is a timer, it won't appear as a dedicated kernel thread, but handled by the soft IRQ thread.

```
/*
* A worker to generate heartbeat requests is needed if all of the
* following conditions are true.
* - Userspace activated the watchdog.
* - The driver provided a value for the maximum hardware timeout, and
*   thus is aware that the framework supports generating heartbeat
*   requests.
* - Userspace requests a longer timeout than the hardware can handle.
*
* Alternatively, if userspace has not opened the watchdog
* device, we take care of feeding the watchdog if it is
* running.
*/

return (hm && watchdog_active(wdd) && t > hm) ||
       (t && !watchdog_active(wdd) && watchdog_hw_running(wdd));
```


