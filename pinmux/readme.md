# pinmux

On a typical SoC, one physical pin can serve multiple functions (GPIO, UART TX, SPI MOSI, I²C SDA, etc.).
Pinmux is the mechanism that selects which function each pin performs at runtime.

* Datasheet defines what is possible; pinctrl driver defines what Linux exposes.

```
Userspace
   |
Drivers (UART, SPI, I2C, GPIO, etc.)
   |
pinctrl core
   |
SoC-specific pinctrl driver
   |
Hardware registers (PAD / MUX)

```
###  pinmux vs pinconf

Pinmux decides the role of a pin; pinconf decides how it behaves electrically.

pinmux (function selection)
    * UART_TX vs GPIO vs SPI
    * Controlled by MUX registers

pinconf (electrical properties)
    * Pull-up / pull-down
    * Drive strength
    * Slew rate
    * Open-drain


### dtb describe

```
&pinctrl {
    uart1_pins: uart1-pins {
        pins = "PA9", "PA10";
        function = "uart1";
        bias-disable;
        drive-strength = <8>;
    };
};
```

```
&uart1 {
    pinctrl-names = "default";
    pinctrl-0 = <&uart1_pins>;
    status = "okay";
};


```