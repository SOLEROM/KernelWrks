# sw lock

* enable (3) "Detect Soft Lockup" in the kernel

```
Kernel hacking --->
  Debug Oops, Lockups and Hangs  ---> 
    [ ] Panic on Oops           //(1)                                                                        
    (0) panic timeout           //(2)                                                             
    [ ] Detect Soft Lockups     //(3)                                                                           
    [ ] Detect Hard Lockups     //(4)                                                                     
    [ ] Detect Hung Tasks       //(5)                                                                     
    [ ] Detect Workqueue Stalls //(6)                                                                   
    < > Test module to generate lockups  //(7)
```

* bugs that cause the kernel to loop in kernel mode for more than 10 seconds, without giving other tasks a chance to run.
* When a soft-lockup is detected, the kernel will print the current stack trace (which you should report), but the system will stay locked up

* (7) [see test module](testModule.md)

## ref
* https://www.programmersought.com/article/5967249140/


## exmaple


