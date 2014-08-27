cmd_/home/pi/src/tontec28-drivers/ads7846/ads7846.o :=  gcc-4.7 -Wp,-MD,/home/pi/src/tontec28-drivers/ads7846/.ads7846.o.d  -nostdinc -isystem /usr/lib/gcc/arm-linux-gnueabihf/4.7/include -I/usr/src/linux-headers-3.12-1-common/arch/arm/include -Iarch/arm/include/generated  -I/usr/src/linux-headers-3.12-1-common/include -Iinclude -I/usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/usr/src/linux-headers-3.12-1-common/include/uapi -Iinclude/generated/uapi -include /usr/src/linux-headers-3.12-1-common/include/linux/kconfig.h   -I/home/pi/src/tontec28-drivers/ads7846 -D__KERNEL__ -mlittle-endian   -I/usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=6 -march=armv6 -mtune=arm1136j-s -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(ads7846)"  -D"KBUILD_MODNAME=KBUILD_STR(ads7846)" -c -o /home/pi/src/tontec28-drivers/ads7846/.tmp_ads7846.o /home/pi/src/tontec28-drivers/ads7846/ads7846.c

source_/home/pi/src/tontec28-drivers/ads7846/ads7846.o := /home/pi/src/tontec28-drivers/ads7846/ads7846.c

deps_/home/pi/src/tontec28-drivers/ads7846/ads7846.o := \
    $(wildcard include/config/hwmon.h) \
    $(wildcard include/config/pm/sleep.h) \
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
  /usr/src/linux-headers-3.12-1-common/include/linux/hwmon.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/err.h \
  arch/arm/include/generated/asm/errno.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/errno.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/errno-base.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/preempt/notifiers.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/mm/owner.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/sched.h \
  arch/arm/include/generated/asm/param.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/param.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/capability.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/capability.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /usr/lib/gcc/arm-linux-gnueabihf/4.7/include/stdarg.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/linkage.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/stringify.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/linkage.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/bitops.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/bitops.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/irqflags.h \
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
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/timex.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/timex.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/seqlock.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/thread_info.h \
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
  /usr/src/linux-headers-3.12-1-common/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/const.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/bottom_half.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock_types.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock_types_up.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rwlock_types.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/spinlock_up.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
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
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/param.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/timex.h \
    $(wildcard include/config/arch/multiplatform.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include/mach/timex.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/jiffies.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rbtree.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/cpumask.h \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/bitmap.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/nodemask.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/movable/node.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/compaction.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/auxvec.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/auxvec.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rwsem-spinlock.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/completion.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/current.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/wait.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/page-flags-layout.h \
    $(wildcard include/config/sparsemem.h) \
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
    $(wildcard include/config/have/arch/pfn/valid.h) \
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
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/getorder.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  arch/arm/include/generated/asm/cputime.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/cputime_jiffies.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/sem.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/rcutiny.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/sem.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/ipc.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/highuid.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/sembuf.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/signal.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/signal.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/signal.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/signal-defs.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/siginfo.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/siginfo.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/pid.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/pfn.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/percpu.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/percpu.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/notifier.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/srcu.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/topology.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/proportions.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/percpu_counter.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/seccomp.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rculist.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/resource.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/resource.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/resource.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/timerqueue.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/latencytop.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/security.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/key.h \
    $(wildcard include/config/sysctl.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/sysctl.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/sysctl.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/gfp.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/delay.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/delay.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/input.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/input.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/ioport.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/kobject.h \
    $(wildcard include/config/debug/kobject/release.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/sysfs.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/kobject_ns.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/stat.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/stat.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/stat.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/kref.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/klist.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/ratelimit.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/pm_wakeup.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/kdev_t.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/kdev_t.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/dcache.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/rculist_bl.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/list_bl.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/bit_spinlock.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/lockref.h \
    $(wildcard include/config/cmpxchg/lockref.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/path.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/list_lru.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/radix-tree.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/semaphore.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/fiemap.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/shrinker.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/migrate_mode.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/percpu-rwsem.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/fs.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/limits.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/ioctl.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/ioctl.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/dqblk_xfs.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/dqblk_v1.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/dqblk_v2.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/dqblk_qtree.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/projid.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/quota.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/nfs_fs_i.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/fcntl.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/fcntl.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/uapi/asm/fcntl.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/asm-generic/fcntl.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/mod_devicetable.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/uuid.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/uuid.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/irqreturn.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/irqnr.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/irqnr.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/hardirq.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/preempt_mask.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/hardirq.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include/mach/irqs.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include/mach/platform.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include/mach/arm_control.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/irq_cpustat.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/vtime.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/context_tracking_state.h \
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
  /usr/src/linux-headers-3.12-1-common/include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/slab_def.h \
    $(wildcard include/config/memcg/kmem.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/proc/devicetree.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/of_gpio.h \
    $(wildcard include/config/of/gpio.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/gpio.h \
    $(wildcard include/config/gpiolib.h) \
    $(wildcard include/config/arch/have/custom/gpio/h.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/gpio.h \
    $(wildcard include/config/arch/nr/gpio.h) \
    $(wildcard include/config/need/mach/gpio/h.h) \
  /usr/src/linux-headers-3.12-1-common/arch/arm/mach-bcm2708/include/mach/gpio.h \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/gpio.h \
    $(wildcard include/config/gpio/sysfs.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/pinctrl/pinctrl.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/of_device.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/cpu.h \
    $(wildcard include/config/arch/has/cpu/autoprobe.h) \
    $(wildcard include/config/arch/cpu/probe/release.h) \
    $(wildcard include/config/pm/sleep/smp.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/node.h \
    $(wildcard include/config/memory/hotplug/sparse.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/platform_device.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/of_platform.h \
    $(wildcard include/config/of/address.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/spi/spi.h \
    $(wildcard include/config/spi.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/kthread.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/regulator/consumer.h \
    $(wildcard include/config/regulator.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/module.h \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/kmod.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/elf.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/elf.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/user.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/elf.h \
  /usr/src/linux-headers-3.12-1-common/include/uapi/linux/elf-em.h \
  /usr/src/linux-headers-3.12-1-common/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /usr/src/linux-headers-3.12-1-common/include/linux/tracepoint.h \
  /usr/src/linux-headers-3.12-1-common/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  /usr/src/linux-headers-3.12-1-common/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/pi/src/tontec28-drivers/ads7846/ads7846.h \

/home/pi/src/tontec28-drivers/ads7846/ads7846.o: $(deps_/home/pi/src/tontec28-drivers/ads7846/ads7846.o)

$(deps_/home/pi/src/tontec28-drivers/ads7846/ads7846.o):
