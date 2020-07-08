# my make files magic build 

## build
* [buildKernel](buildKernel.md)
* [buildRootfs](buildRootfs.md)

## run

* []()

## file tree

* config space
```
├── kernelSRC		//kerenl src tree to get the git code
│   ├── Makefile	//makefile to run rules on the kernel
│   └── myGenMake	//build makefile for modules
├── buildrootSRC	//buildroot src tree to get the git code
│   ├── Makefile	//makefile to run rules on the buildroot 
├── makeKernel		//makefile to call kernel makefile
├── makeRootFs		//makefiel to call and build rootfs
```

* build space

```
 buildrootFiles/	//will hold the build files
 buildrootSRC/
 kernelBuildFiles/	//will hold the build files
 kernelSRC/
```

* output

```
<proj>/output/
├── bzImage
├── modules
├── mybuildRootConfig
├── myKernelConfig
└── rootfs.tar
```
