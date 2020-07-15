# user space logs

## syslog

* /var/log/syslog 

*

```
logger "aaaa"
> tail /var/log/syslog
Jul 11 13:54:13 vostro14 solov: aaaa
```

## rsyslog

* ubuntu example:

```
/etc/rsyslog.*
==============
/etc/rsyslog.conf 
/etc/rsyslog.d
├── 20-ufw.conf
├── 50-default.conf
└── postfix.conf
```

## kernel log

* /var/log/kern.log

```
ls /var/log/kern.log
kern.log       kern.log.1     kern.log.2.gz  kern.log.3.gz  kern.log.4.gz
```


