obj-m += ads7846_device.o
obj-m += ads7846.o

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	mkdir -p /lib/modules/$(shell uname -r)/kernel/drivers/input/touchscreen
	cp ads7846_device.ko /lib/modules/$(shell uname -r)/kernel/drivers/input/touchscreen/ads7846_device.ko
	cp ads7846.ko /lib/modules/$(shell uname -r)/kernel/drivers/input/touchscreen/ads7846.ko
	sed -i '/blacklist spi-bcm2708/s/^b/#b/' /etc/modprobe.d/raspi-blacklist.conf
	grep -q "ads7846_device" /etc/modules || echo "ads7846_device gpio_pendown=4" | tee -a /etc/modules
	grep -q "ads7846" /etc/modules || echo "ads7846" | tee -a /etc/modules
	depmod -a

uninstall:
	rm -f /lib/modules/$(shell uname -r)/kernel/drivers/input/touchscreen/ads7846_device.ko
	rm -f /lib/modules/$(shell uname -r)/kernel/drivers/input/touchscreen/ads7846.ko
	sed -i '/ads7846/d' /etc/modules
	sed -i '/ads7846_device/d' /etc/modules
	depmod -a
