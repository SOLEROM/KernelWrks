# kernel indexing via vim

## about:

* ctags can be used to take you to the definition of a variable (e.g., a function, variable, or macro). 
* cscope can be used to take you to the call site of a definition (e.g., all function calls, all variable uses, all macro uses). 



## Cscope
* http://cscope.sourceforge.net/
* Cscope is a developer's tool for browsing source code
* Cscope support is built into Vim (so long as it is compiled with the '--enable-cscope' 

* (1) install
```
sudo apt install cscope
wget http://cscope.sourceforge.net/cscope_maps.vim
mkdir ~/.vim/plugin/ ; cp cscope_maps.vim  ~/.vim/plugin/

```
* (2) export vim plugin to PATH
```
PATH=$PATH:$HOME/.vim/plugin
```


## ctags

* http://ctags.sourceforge.net/
* Ctags generates an index (or tag) file of language objects found in source files that allows these items to be quickly and easily located by a text editor or other utility.

* (3) install

```
apt-get install ctags

```

* pay attention that .vim/plugin/cscope_maps.vim is using ctags

```
    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag
```


## build DB


* (1) prepare cscope.files

```
#!/bin/bash

LNX=/proj/theKernel/kernelSRC/linux_troval_git
    find  $LNX                                                                \
	-path "$LNX/arch/*" ! -path "$LNX/arch/i386*" -prune -o               \
	-path "$LNX/include/asm-*" -prune -o 				      \
	-path "$LNX/tmp*" -prune -o                                           \
	-path "$LNX/Documentation*" -prune -o                                 \
	-path "$LNX/scripts*" -prune -o                                       \
	-path "$LNX/drivers*" -prune -o                                       \
        -name "*.[chxsS]" -print > ./cscope.files
```

* (2) prepare db

```
cscope -b -q -k
    

// -b flag tells Cscope to just build the database, and not launch the Cscope GUI.
// -q causes an additional, 'inverted index' file to be created, which makes searches run much faster for large databases. 
// -k sets Cscope's 'kernel' mode--it will not look in /usr/include for any header files that are #included in your source files


```



## use

* (1) 

```
If you use the standalone Cscope browser, make sure to invoke it via

    cscope -d
```

* (2) open vim file from the folder of cscope.out





