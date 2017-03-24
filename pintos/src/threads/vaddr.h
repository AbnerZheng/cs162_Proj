#ifndef THREADS_VADDR_H
#define THREADS_VADDR_H

#include <debug.h>
#include <stdint.h>
#include <stdbool.h>

#include "threads/loader.h"

/* Functions and macros for working with virtual addresses.
   虚拟地址的一些函数
   See pte.h for functions and macros specifically for x86
   hardware page tables. */

#define BITMASK(SHIFT, CNT) (((1ul << (CNT)) - 1) << (SHIFT)) // Mask掉CNT位，从SHIFT开始

/* Page offset (bits 0:12, 即4K bits). */
#define PGSHIFT 0                          /* Index of first offset bit. */
#define PGBITS  12                         /* Number of offset bits. */
#define PGSIZE  (1 << PGBITS)              /* Bytes in a page. */
#define PGMASK  BITMASK(PGSHIFT, PGBITS)   /* Page offset bits (0:12). */

/* Offset within a page. */
static inline unsigned pg_ofs (const void *va) {
  return (uintptr_t) va & PGMASK; // unitprt_t == uint32
}

/* Virtual page number. */
static inline uintptr_t pg_no (const void *va) {
  return (uintptr_t) va >> PGBITS; // 虚拟页码,右移12位
}

/* Round up to nearest page boundary. */
static inline void *pg_round_up (const void *va) { // 向上获取最近的页边界
  return (void *) (((uintptr_t) va + PGSIZE - 1) & ~PGMASK);
}

/* Round down to nearest page boundary. */
static inline void *pg_round_down (const void *va) {
  return (void *) ((uintptr_t) va & ~PGMASK);
}

/* Base address of the 1:1 physical-to-virtual mapping.  Physical
   memory is mapped starting at this virtual address.  Thus,
   physical address 0 is accessible at PHYS_BASE, physical
   address address 0x1234 at (uint8_t *) PHYS_BASE + 0x1234, and
   so on.

   物理内存从base address这个虚拟地址开始映射。虚拟地址0x1234被映射到PHYS_BASE+0x1234

   这个地址也标注了用户程序地址空间的结尾。 在这个地址之上，属于内核地址空间
   This address also marks the end of user programs' address
   space.  Up to this point in memory, user programs are allowed
   to map whatever they like.  At this point and above, the
   virtual address space belongs to the kernel. */
#define	PHYS_BASE ((void *) LOADER_PHYS_BASE)

/**
 * Returns true if VADDR is a user virtual address.
 * 最末端的地址是属于内核的地址空间
 * */
static inline bool
is_user_vaddr (const void *vaddr)
{
  return vaddr < PHYS_BASE;
}

/* Returns true if VADDR is a kernel virtual address. */
static inline bool
is_kernel_vaddr (const void *vaddr)
{
  return vaddr >= PHYS_BASE;
}

/**
 * 返回内核虚拟地址
 * Returns kernel virtual address at which physical address PADDR
   is mapped. */
static inline void *
ptov (uintptr_t paddr)
{
  ASSERT ((void *) paddr < PHYS_BASE);

  return (void *) (paddr + PHYS_BASE);
}

/* Returns physical address at which kernel virtual address VADDR
   is mapped. */
static inline uintptr_t
vtop (const void *vaddr)
{
  ASSERT (is_kernel_vaddr (vaddr));

  return (uintptr_t) vaddr - (uintptr_t) PHYS_BASE;
}

#endif /* threads/vaddr.h */
