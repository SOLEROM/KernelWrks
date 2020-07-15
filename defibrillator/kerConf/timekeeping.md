# timekeeping sanity checking

```
 > Kernel hacking

[ ] Enable extra timekeeping sanity checking

```



* https://community.nxp.com/thread/471104

```
[ 0.005027] INFO: timekeeping: Cycle offset (4281355128) is larger than the the 'mxc_timer1' clock's 50% safety margin (2147483647)
[ 0.005034] timekeeping: Your kernel is still fine, but is feeling a bit nervous
[ 0.005039] WARNING: Underflow in clocksource 'mxc_timer1' observed, time update ignored.
[ 0.005041] Please report this, consider using a different clocksource, if possible.
[ 0.005045] Your kernel is probably still fine.
```
