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
Makefile  makeKernel  makeRootFS  myGenMake  theKernel

```

## prepare

* install deps

```
[CONT]root@vostro14:/proj$ make -f makeKernel deps
```

* get the src code

```
[CONT]root@vostro14:/proj$ make -f makeKernel src
```

* will print the commands to run to get the code

```
kernel src update:  (run it to get the code manually)
=====================================================
cd kernelSRC
git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next.git
cd linux-next
git checkout master
git fetch origin
git reset --hard remotes/origin/master
```



