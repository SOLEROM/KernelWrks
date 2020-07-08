# my make files magic build for the kernel

* this makefile rule will call the kernelSRC/Makefile rules
* usage

```
!!!!!!!!!!!!!!!!!!!!!!!!!!
make -f makeKernel XXXXXXX	//rule input
!!!!!!!!!!!!!!!!!!!!!!!!!!
``` 

## help

```
[CONT]root@vostro14:/proj$ make -f makeKernel help
===================================================
kernel build help
calling optins:
 make help  - show this menu
 make update  - reset and update master git branch
 make deps  - check and install deps list
 make vars  - show varibels value
 (2)make menuconfig  - menuconfig
 make clean  - clean
 make cleanall  - clean + rm output results and configs
 (1)make defconfig_x86  - defconfig
 (3)make build  - build
 make rebuild  - build + modules again
 (4)make modules  - build and install modules to output folder
 make ouput  - copy build results and config to output folder
 make outOfTree - build module makefile; run: folder=./YYY module=XXX.c
 make docs - build documentaion


```


## vars

```
[CONT]root@vostro14:/proj$ make -f makeKernel vars
==================================================
wrkdir = /proj
kerHome = /proj/theKernel/kernelSRC
kerSrc = /proj/theKernel/kernelSRC/gitNext/linux-next
buildFolder = /proj/kernelBuildFiles
output = /proj/output
myConfig = /proj/output/myKernelConfig
```

## deps install

```
[CONT]root@vostro14:/proj$ make -f makeKernel deps
//will apt-install
```


## get the src

* will print the code to run to get the code

```
[CONT]root@vostro14:/proj$ make -f makeKernel src
==================================================
kernel src update:  (run it to get the code manually)
=====================================================
cd kernelSRC
git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git
cd linux-next
git checkout master
git fetch origin
git reset --hard remotes/origin/master

```


## update src

```
make -f makeKernel update 
=========================
#cd and run in kerSrc:
cd /proj/kernelSRC/linux-next; \
git checkout master ;\
git fetch origin ;\
git reset --hard remotes/origin/master ;\
git pull
Already on 'master'
Your branch is up to date with 'origin/master'.
HEAD is now at 5b2a702f85b3 Add linux-next specific files for 20200707
Already up to date.
```



## config

```
make -f makeKernel defconfig_x86
make -f makeKernel menuconfig
```

## build

* kernel 

```
make -f makeKernel build
```

* def modules

```
make -f makeKernel modules
```

* out of tree modules

```
make -f makeKernel outOfTree
============================
usage:
	#input 1:folder path;2:c-module-name.c
	#cd to module folder; pass kernelBuild  run genmak to c.module src

```

* collect

```
make -f makeKernel cpout
```


## output

```
/kernelProj1/output/
├── bzImage			//kernel blob
└── myKernelConfig		//last config file
├── modules			//kernel config modules
│   └── lib
│       └── modules

```
