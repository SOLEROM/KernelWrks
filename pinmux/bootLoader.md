# boot loaded pinmux

* boot loader sets pinmux for early boot stages, before Linux kernel takes over.
* Bootloader needs UART, I2C, PMIC, QSPI before Linux exists
* can programs pinmux directly into registers



Why kernel DTB still matters ; Even though bootloader sets pinmux:
    * Linux assumes nothing
    * Linux applies its own pinctrl states
    * Linux may undo bootloader configuration
