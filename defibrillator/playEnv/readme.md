# play ENV

* will contain 1 emulator os as productions
* and the second one as monitor debug
* both build on 1 container with qemu emulator and supporting toolset
* to work with container start from stage01 ; on host skip this stage; 

## build the play env

* full build (continer+tools)

```
<RootDeploy>projectsBuild/kernelDefi$ ./kernelDefiBuild.sh -f /proj/theKernel/kernelDefi/buildEnvCont1
```

* update tools:

```
<RootDeploy>projectsBuild/kernelDefi$ ./kernelDefiBuild.sh -u /proj/theKernel/kernelDefi/buildEnvCont1
```

## build the project

* add make rules (my make env from this repo)

```
mkdir /proj/theKernel/kernelDefi/kernelProj1
cp -r ../../buildOptions/myKerBuildScripts/* /proj/theKernel/kernelDefi/kernelProj1
```


## enter cont

```
sudo ./buildEnvCont1/enter -r buildEnvCont1/ -p kernelProj1/
```

```
mounting the kernelProj1/ folder to inner /proj
[CONT]root@vostro14:~$ ls /proj/
buildrootSRC  kernelSRC  makeKernel  makeRootFS

```

## build

* see [buildKernel](../../buildOptions/myKerBuildScripts/buildKernel.md)
* see [buildRootfs](../../buildOptions/myKerBuildScripts/buildRoot.md)

## run

* see [runtests with qemu](../../buildOptions/myKerBuildScripts/runtests/readme.md)
