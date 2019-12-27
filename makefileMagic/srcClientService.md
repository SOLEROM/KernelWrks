# srcClientService

* a method to get kernel build data and results to working directory from kernel source folder
* will create 2 dirs at the working folder:
	* kernelBuildFiles - will have all the build data
	* output	- will have the config and output build data
* menuconfig will work on output/config file
* build will use the output/config file
* Makefile_clientFolder will call Makefile_kernelSrc services
* Makefile_clientFolder will override Makefile_kernelSrc varibels


* see file conente here:

```
Makefile_kernelSrc	- makefile will be at kernelSrc Folder
Makefile_clientFolder   - makefile will be at folder using kernel build results
```


