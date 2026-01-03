# debugging pinmux


* basic ```> dmesg | grep pinctrl```

## runtime debugFS

```
# List pin controllers
ls /sys/kernel/debug/pinctrl/

# Inspect pin state
cat /sys/kernel/debug/pinctrl/*/pins
cat /sys/kernel/debug/pinctrl/*/pinmux-pins

```


## tools::gpioinfo

gpiod - Tools for interacting with Linux GPIO character device - binary

```
apt-get install gpiod
> gpioinfo

```