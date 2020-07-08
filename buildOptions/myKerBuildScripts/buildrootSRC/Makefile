
wrkdir=$(shell pwd)
buildRootHome?=$(wrkdir)
buildRootSrc?=$(buildRootHome)/buildroot
buildRootFolder?=$(buildRootSrc)/buildFiles
output?=$(buildRootSrc)/output
myConfig?=$(output)/myConfig

####################################################################################
.PHONY: all
all:
	@echo "nothing for all ; use help"
####################################################################################
vars:
	@echo "buildRootHome = $(buildRootHome)"
	@echo "buildRootSrc = $(buildRootSrc)"
	@echo "buildFolder = ${buildRootFolder}"
	@echo "output = $(output)"
	@echo "myConfig = $(myConfig)"

####################################################################################
help:
	@echo "buildRoot build help"
	@echo "calling optins:"
	@echo " make help  - show this menu"
	@echo " make deps  - check and install deps list"
	@echo " make vars  - show varibels value"
	@echo " make src  - download the src"
	@echo " make update  - update the git src code"
	@echo " (1) make defconfig  - defconfig"
	@echo " (2) make menuconfig  - menuconfig"
	@echo " (3) make build  - build"
	@echo " make clean  - clean"

####################################################################################

src:
	@echo "buildroot src update:  (run it to get the code manually)"
	@echo "======================================================="
	@echo "cd $(buildRootHome) "
	@echo "git clone https://github.com/buildroot/buildroot.git"
	@echo "cd buildroot/"
	@echo "git checkout master"
	@echo "git fetch origin"
	@echo "git reset --hard remotes/origin/master"

update:
	#cd and run in buildrootSrc:
	cd $(buildRootSrc); \
	git checkout master ;\
	git fetch origin ;\
	git reset --hard remotes/origin/master ;\
	git pull


####################################################################################

menuconfig: buildFolders
	@make -C $(buildRootSrc) O=$(buildRootFolder) menuconfig

clean:
	make -C $(buildRootSrc) O=$(buildRootFolder) clean

cleanall:
	$(MAKE) clean
	rm -rf ${buildRootFolder}/*
	rm -rf ${output}/*

deps:
	## repo deps to build kernel
	sudo apt-get install -y rsync

buildFolders:
	@mkdir -p $(buildRootFolder)
	@mkdir -p $(output)


defconfig: buildFolders
	make -C $(buildRootSrc) O=$(buildRootFolder) defconfig

build:	buildFolders
	make -C $(buildRootSrc) O=$(buildRootFolder) -j 4
	$(MAKE) cpout

rebuild:
	$(MAKE) build

cpout:  
	cp $(buildRootFolder)/.config  $(myConfig)
	cp $(buildRootFolder)/images/*  $(output)

