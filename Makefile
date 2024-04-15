obj-m += ds3231.o

KPATH :=/lib/modules/$(shell uname -r)/build

allofit: modules
modules:
	@$(MAKE) -C $(KPATH) M=$(PWD) modules
modules_install:
	@$(MAKE) -C $(KPATH) M=$(PWD) modules_install
kernel_clean:
	@$(MAKE) -C $(KPATH) M=$(PWD) clean
clean: kernel_clean
	rm -rf Module.symvers modules.order
