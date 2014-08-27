cmd_/home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.o :=  gcc-4.7 -Wp,-MD,/home/pi/src/tontec28-drivers/ads7846/.ads7846_device.mod.o.d  -nostdinc -isystem /usr/lib/gcc/arm-linux-gnueabihf/4.7/include -I/usr/src/linux-headers-3.12-1-common/arch/arm/include -Iarch/arm/include/generated  -I/usr/src/linux-headers-3.12-1-common/include -Iinclude -I/usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/usr/src/linux-headers-3.12-1-common/include/uapi -Iinclude/generated/uapi -include /usr/src/linux-headers-3.12-1-common/include/linux/kconfig.h   -I/home/pi/src/tontec28-drivers/ads7846 -D__KERNEL__ -mlittle-endian   -I/usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=6 -march=armv6 -mtune=arm1136j-s -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(ads7846_device.mod)"  -D"KBUILD_MODNAME=KBUILD_STR(ads7846_device)" -DMODULE  -c -o /home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.o /home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.c

source_/home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.o := /home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.c

deps_/home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.o := \
    $(wildcard include/config/module/unload.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/module.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/types.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/types.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/int-ll64.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitsperlong.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/bitsperlong.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/posix_types.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/stddef.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/stddef.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/posix_types.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/posix_types.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/const.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/stat.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/stat.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/stat.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
  /usr/lib/gcc/arm-linux-gnueabihf/4.7/include/stdarg.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/linkage.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/stringify.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/linkage.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/bitops.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/bitops.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/typecheck.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/hwcap.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/hwcap.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/non-atomic.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/fls64.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/sched.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/hweight.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/arch_hweight.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/const_hweight.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/lock.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/le.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/byteorder.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/byteorder/little_endian.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/byteorder/little_endian.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/swab.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/swab.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/swab.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/swab.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/byteorder/generic.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/kern_levels.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/dynamic_debug.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/string.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/string.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/errno.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/errno.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/errno-base.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/kernel.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/sysinfo.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/div64.h \
    $(wildcard include/config/aeabi.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/compiler.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/seqlock.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/bug.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/bottom_half.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock_types.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock_types_up.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rwlock_types.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock_up.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/hw_breakpoint.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rwlock.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock_api_up.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/atomic.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/cmpxchg-local.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/atomic-long.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/atomic64.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/math64.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/time.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/highuid.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/kmod.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/gfp.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/current.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/wait.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/bitmap.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/page-flags-layout.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/generated/bounds.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/glue.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/pgtable-2level-types.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/sizes.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include/mach/memory.h \
    $(wildcard include/config/bcm2708/nol2cache.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/memory_model.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/getorder.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/notifier.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rwsem-spinlock.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/srcu.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/completion.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rcutiny.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/jiffies.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/timex.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/timex.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/param.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/timex.h \
    $(wildcard include/config/arch/multiplatform.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include/mach/timex.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/pfn.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/percpu.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/percpu.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/topology.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rbtree.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/sysctl.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/elf.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/elf.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/user.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/elf.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/elf-em.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/kobject.h \
    $(wildcard include/config/debug/kobject/release.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/sysfs.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/kobject_ns.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/kref.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/tracepoint.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/static_key.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/jump_label.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/system.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/switch_to.h \
    $(wildcard include/config/cpu/v7.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/system_info.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/system_misc.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/reboot.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/reboot.h \
  arch/arm/include/generated/asm/emergency-restart.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/emergency-restart.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/vermagic.h \
  include/generated/utsrelease.h \

/home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.o: $(deps_/home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.o)

$(deps_/home/pi/src/tontec28-drivers/ads7846/ads7846_device.mod.o):
