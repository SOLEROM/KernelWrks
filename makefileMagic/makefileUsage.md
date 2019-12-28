# makefileUsage

* phony 

```
.PHONY: all
all:
	@echo "nothing for all ; use help"

```

* rules dep

```
menuconfig: buildFolders

 //call buildFolder before menuconfig

```

* call rule in rule 

```
cleanall:
	$(MAKE) clean	//call clean on cleanall

```

* special chars

```
@cmd // run cmd but dont print it
```

* flags 

```
--no-print-directory		//dont print enter to direcory msg
-C XXX				//enter XXX folder before running make
```



