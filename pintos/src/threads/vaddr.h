#ifndef THREADS_VADDR_H
#define THREADS_VADDR_H

#include <debug.h>
#include <stdint.h>
#include <stdbool.h>

#include "threads/loader.h"

/* Functions and macros for working with virtual addresses.

   See pte.h for functions and macros specifically for x86
   hardware page tables. */

#define BITMASK(SHIFT, CNT) (((1ul << (CNT)) - 1) << (SHIFT))

/* Page offset (bits 0:12). */
#define PGSHIFT 0                          /* Index of first offset bit. */
#define PGBITS  12                         /* Number of offset bits. */
#define PGSIZE  (1 << PGBITS)              /* Bytes in a page. */
#define PGMASK  BITMASK(PGSHIFT, PGBITS)   /* Page offset bits (0:12). */

/* Offset within a page. */
static inline unsigned pg_ofs (const void *va) {
  return (uintptr_t) va & PGMASK;
}

/* Virtual page number. */
static inline uintptr_t pg_no (const void *va) {
  return (uintptr_t) va >> PGBITS;
}

/* Round up to nearest page boundary. */
static inline void *pg_round_up (const void *va) {
  return (void *) (((uintptr_t) va + PGSIZE - 1) & ~PGMASK);
}

/* Round down to nearest page boundary. */
static inline void *pg_round_down (const void *va) {
  return (void *) ((uintptr_t) va & ~PGMASK);
}

/**
 * 从PHYS_BASE 这个虚拟地址开始, 物理地址和虚拟地址开始一一对应,也就是说,
 * 虚拟地址PHYS_BASE 映射到物理地址0.
 * 这个地址同时也标志这用户程序地址空间的结束.  在这个地址之上, 用户地址空间
 * 开始属于内核,而在这个地址以下,无论这个地址想映射到哪个地址都是可以的.
 *
 * Base address of the 1:1 physical-to-virtual mapping.  Physical
 * memory is mapped starting at this virtual address.  Thus,
 * physical address 0 is accessible at PHYS_BASE, physical
 * address address 0x1234 at (uint8_t *) PHYS_BASE + 0x1234, and
 * so on.

 * This address also marks the end of user programs' address
 * space.  Up to this point in memory, user programs are allowed
 * to map whatever they like.  At this point and above, the
 * virtual address space belongs to the kernel.
 **/
#define	PHYS_BASE ((void *) LOADER_PHYS_BASE)

/* Returns true if VADDR is a user virtual address. */
static inline bool
is_user_vaddr (const void *vaddr)
{
  return vaddr < PHYS_BASE; // 在PHYS_BASE 以下都是用户自己的地址空间
}

/* Returns true if VADDR is a kernel virtual address. */
static inline bool
is_kernel_vaddr (const void *vaddr)
{
  return vaddr >= PHYS_BASE; //而在这个地址之上则是内核地址空间
}

/**
 * 物理地址到内核虚拟地址,  因为是内核虚拟地址,所以这些地址空间映射到PHYS_BASE 之上.
 * Returns kernel virtual address at which physical address PADDR
 * is mapped.
 **/
static inline void *
ptov (uintptr_t paddr)
{
  ASSERT ((void *) paddr < PHYS_BASE);

  return (void *) (paddr + PHYS_BASE);
}

/**
 * Returns physical address at which kernel virtual address VADDR
 * is mapped.
 *
 * 从内核虚拟地址转换到物理地址
 **/
static inline uintptr_t
vtop (const void *vaddr)
{
  ASSERT (is_kernel_vaddr (vaddr));

  return (uintptr_t) vaddr - (uintptr_t) PHYS_BASE;
}

#endif /* threads/vaddr.h */
