#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x904a5d9c, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0xc37090e6, __VMLINUX_SYMBOL_STR(driver_unregister) },
	{ 0xd2763bc4, __VMLINUX_SYMBOL_STR(spi_register_driver) },
	{ 0x7cff4930, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0x7ffc8718, __VMLINUX_SYMBOL_STR(gpio_set_debounce) },
	{ 0x403f9529, __VMLINUX_SYMBOL_STR(gpio_request_one) },
	{ 0xf8a66988, __VMLINUX_SYMBOL_STR(input_free_device) },
	{ 0x7df9ae15, __VMLINUX_SYMBOL_STR(devm_kfree) },
	{ 0x1b08d769, __VMLINUX_SYMBOL_STR(input_register_device) },
	{ 0x946bdc67, __VMLINUX_SYMBOL_STR(sysfs_create_group) },
	{ 0xb0c3fe6f, __VMLINUX_SYMBOL_STR(_dev_info) },
	{ 0xd6b8e852, __VMLINUX_SYMBOL_STR(request_threaded_irq) },
	{ 0xfa2a45e, __VMLINUX_SYMBOL_STR(__memzero) },
	{ 0xec6848eb, __VMLINUX_SYMBOL_STR(input_set_abs_params) },
	{ 0xb81960ca, __VMLINUX_SYMBOL_STR(snprintf) },
	{ 0x63b87fc5, __VMLINUX_SYMBOL_STR(__init_waitqueue_head) },
	{ 0xdc798d37, __VMLINUX_SYMBOL_STR(__mutex_init) },
	{ 0xab11fa89, __VMLINUX_SYMBOL_STR(dev_set_drvdata) },
	{ 0x8ff80455, __VMLINUX_SYMBOL_STR(input_allocate_device) },
	{ 0x5ff14069, __VMLINUX_SYMBOL_STR(kmem_cache_alloc_trace) },
	{ 0x2f6ecc1c, __VMLINUX_SYMBOL_STR(spi_setup) },
	{ 0x8e865d3c, __VMLINUX_SYMBOL_STR(arm_delay_ops) },
	{ 0xc8b57c27, __VMLINUX_SYMBOL_STR(autoremove_wake_function) },
	{ 0x8893fa5d, __VMLINUX_SYMBOL_STR(finish_wait) },
	{ 0xd62c833f, __VMLINUX_SYMBOL_STR(schedule_timeout) },
	{ 0x75a17bed, __VMLINUX_SYMBOL_STR(prepare_to_wait) },
	{ 0xef3a3e92, __VMLINUX_SYMBOL_STR(input_event) },
	{ 0xd8a8b6b7, __VMLINUX_SYMBOL_STR(dev_err) },
	{ 0x3bd1b1f6, __VMLINUX_SYMBOL_STR(msecs_to_jiffies) },
	{ 0x64a5db0, __VMLINUX_SYMBOL_STR(spi_sync) },
	{ 0xf9a482f9, __VMLINUX_SYMBOL_STR(msleep) },
	{ 0xe707d823, __VMLINUX_SYMBOL_STR(__aeabi_uidiv) },
	{ 0x2e5810c6, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr1) },
	{ 0x6c8d5ae8, __VMLINUX_SYMBOL_STR(__gpio_get_value) },
	{ 0xa46f2f1b, __VMLINUX_SYMBOL_STR(kstrtouint) },
	{ 0xfe990052, __VMLINUX_SYMBOL_STR(gpio_free) },
	{ 0x713f6107, __VMLINUX_SYMBOL_STR(dev_printk) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x24001dd2, __VMLINUX_SYMBOL_STR(input_unregister_device) },
	{ 0xf20dabd8, __VMLINUX_SYMBOL_STR(free_irq) },
	{ 0xe7cecada, __VMLINUX_SYMBOL_STR(sysfs_remove_group) },
	{ 0xb2b21f8b, __VMLINUX_SYMBOL_STR(device_init_wakeup) },
	{ 0x3ce4ca6f, __VMLINUX_SYMBOL_STR(disable_irq) },
	{ 0xb9e52429, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0x62b72b0d, __VMLINUX_SYMBOL_STR(mutex_unlock) },
	{ 0xce2840e7, __VMLINUX_SYMBOL_STR(irq_set_irq_wake) },
	{ 0xe16b893b, __VMLINUX_SYMBOL_STR(mutex_lock) },
	{ 0xfcec0987, __VMLINUX_SYMBOL_STR(enable_irq) },
	{ 0x91715312, __VMLINUX_SYMBOL_STR(sprintf) },
	{ 0x6c729b95, __VMLINUX_SYMBOL_STR(dev_get_drvdata) },
	{ 0xefd6cf06, __VMLINUX_SYMBOL_STR(__aeabi_unwind_cpp_pr0) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

