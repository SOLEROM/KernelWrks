# my make files magic build for the buildroot

* this makefile rule will call the buildrootSRC/Makefile rules
* usage

```
!!!!!!!!!!!!!!!!!!!!!!!!!!
make -f makeRootFS XXXXXXX	//rule input
!!!!!!!!!!!!!!!!!!!!!!!!!!
``` 

## help

```
make -f makeRootFS help
```

## deps

```
make -f makeRootFS deps
```


## defconfig

```
make -f makeRootFS defconfig
============================
make -C /proj/buildrootSRC/buildroot O=/proj/buildrootFiles defconfig
mkdir -p /proj/buildrootFiles/build/buildroot-config/lxdialog
PKG_CONFIG_PATH="" make CC="/usr/bin/gcc" HOSTCC="/usr/bin/gcc" \
    obj=/proj/buildrootFiles/build/buildroot-config -C support/kconfig -f Makefile.br conf
/usr/bin/gcc -D_GNU_SOURCE -D_DEFAULT_SOURCE -DCURSES_LOC="<ncurses.h>" -DLOCALE  -I/proj/buildrootFiles/build/buildroot-config -DCONFIG_=\"\"  -MM *.c > /proj/buildrootFiles/build/buildroot-config/.depend 2>/dev/null || :
/usr/bin/gcc -D_GNU_SOURCE -D_DEFAULT_SOURCE -DCURSES_LOC="<ncurses.h>" -DLOCALE  -I/proj/buildrootFiles/build/buildroot-config -DCONFIG_=\"\"   -c conf.c -o /proj/buildrootFiles/build/buildroot-config/conf.o
/usr/bin/gcc -D_GNU_SOURCE -D_DEFAULT_SOURCE -DCURSES_LOC="<ncurses.h>" -DLOCALE  -I/proj/buildrootFiles/build/buildroot-config -DCONFIG_=\"\"  -I. -c /proj/buildrootFiles/build/buildroot-config/zconf.tab.c -o /proj/buildrootFiles/build/buildroot-config/zconf.tab.o
/usr/bin/gcc -D_GNU_SOURCE -D_DEFAULT_SOURCE -DCURSES_LOC="<ncurses.h>" -DLOCALE  -I/proj/buildrootFiles/build/buildroot-config -DCONFIG_=\"\"   /proj/buildrootFiles/build/buildroot-config/conf.o /proj/buildrootFiles/build/buildroot-config/zconf.tab.o  -o /proj/buildrootFiles/build/buildroot-config/conf
rm /proj/buildrootFiles/build/buildroot-config/zconf.tab.c
  GEN     /proj/buildrootFiles/Makefile
#
# configuration written to /proj/buildrootFiles/.config
#

```

## config

```
make -f makeRootFS menuconfig
```


## build

```
make -f makeRootFS build
```

## add kernel build modules to builrootFS

```
make -f makeRootFS cpmod
========================
usage:
	# deps on kernel build
	# will add the kernel modules to output/rootfs.mount

```

## output

```
<proj>/output/
├── mybuildRootConfig		//buildroot config
└── rootfs.tar			//buildroot blob fs
```
