# kernel src documentation

## build env:

```
	sudo apt-get install graphviz dvipng latexmk librsvg2-bin virtualenv texlive-xetex
	virtualenv sphinx_1.7.9
	. sphinx_1.7.9/bin/activate
	pip install -r /proj/theKernel/kernelSRC/gitNext/linux-next/Documentation/sphinx/requirements.txt
```

```
make { htmldocs | psdocs | pdfdocs | rtfdocs }
```

```
	If you want to exit the virtualenv, you can use:
	deactivate


```


## results:

* htmldocs: Documentation/output/index.html
