# simple Code Example


compatible
of_match_device
Getting a reference to the clock : clk_get(&pdev->dev, NULL);
Getting the I/O registers resource :   platform_get_resource(pdev, IORESOURCE_MEM, 0);
Getting the interrupt : platform_get_irq(pdev, 0);
Get a DMA channel : dma_request_slave_channel(s->dev, "rx");


TBD

custom property:

```
struct device_node *np = pdev->dev.of_node;
if (of_get_property(np, "YYYY,XXXX", NULL))
```
