# Calling Makefile with Vars

* make file in kernel srcs folder
*  ?= assignment only has an effect if the variable is not yet defined

```
/kernelSRC/Makefile 
====================
aaa?="aa"
bbb="bb"

help:
	@echo "kernelSrc Help Plot:"
	@echo "curent varibels are:"
	@echo aaa=$(aaa)
	@echo bbb=$(bbb)
```

* calling script from other folder needing kernel builds:

```
preapreKernel.sh 
================
#!/bin/bash

##export varible to used in makefile
export aaa="a"
export bbb="b"

make  -C /proj/theKernel/kernelSRC help
```

## run

```
./preapreKernel.sh 
make: Entering directory '/proj/theKernel/kernelSRC'

kernelSrc Help Plot:
curent varibels are:
aaa=a				//overide the defined
bbb=bb				//no overide

make: Leaving directory '/proj/theKernel/kernelSRC'
```

