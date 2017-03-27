#ifndef THREADS_PTE_H
#define THREADS_PTE_H

#include "threads/vaddr.h"

/**
 * X86硬件页表相关的函数和宏
 * Functions and macros for working with x86 hardware page
 * tables.
 *
 * vaddr.h 有更详细的内容
 * See vaddr.h for more generic functions and macros for virtual
 * addresses.
 *
 * 虚拟地址的结构如下:
 *
 * 0-11位一共是12位，表示4K，每页是4K
 *
 * Virtual addresses are structured as follows:

 *  31                  22 21                  12 11                   0
 * +----------------------+----------------------+----------------------+
 * | Page Directory Index |   Page Table Index   |    Page Offset       |
 * +----------------------+----------------------+----------------------+
 **/

/* Page table index (bits 12:21). */
#define	PTSHIFT PGBITS		                 /* First page table bit. */
#define PTBITS  10                         /* Number of page table bits. */
#define PTSPAN  (1 << PTBITS << PGBITS)    /* PGBITS(page offset bits, 12位) Bytes covered by a page table. */
#define PTMASK  BITMASK(PTSHIFT, PTBITS)   /* Page table bits (12:21). */

/* 页目录索引 Page directory index (bits 22:31) 高十位. */
#define PDSHIFT (PTSHIFT + PTBITS)         /* First page directory bit. */
#define PDBITS  10                         /* Number of page dir bits. */
#define PDMASK  BITMASK(PDSHIFT, PDBITS)   /* Page directory bits (22:31). */

/**
 * 根据虚拟地址获取页表中的索引, 获取中间的 12:21 位bits
 * Obtains page table index from a virtual address.
 * @param va - 虚拟地址
 **/
static inline unsigned pt_no (const void *va) {
  return ((uintptr_t) va & PTMASK) >> PTSHIFT;
}

/**
 * 根据虚拟地址获取页目录索引
 * Obtains page directory index from a virtual address.
 * @param va  - 虚拟地址
 **/
static inline uintptr_t pd_no (const void *va) {
  return (uintptr_t) va >> PDSHIFT;
}

/**
 * 页目录和页表项
 *
 *
 * Page directory and page table entries.
 * For more information see the section on page tables in the
 * Pintos reference guide chapter, or [IA32-v3a] 3.7.6
 * "Page-Directory and Page-Table Entries".
 *
 * 页目录项和页表项的格式相似
 *
 * PDEs and PTEs share a common format:
 * 31                                 12 11                     0
 * +------------------------------------+------------------------+
 * |         Physical Address           |         Flags          |
 * +------------------------------------+------------------------+
 *
 * 在PDE中，物理地址指向一个页表
 * 在PTE中，物理地址指向一个数据、代码页
 * In a PDE, the physical address points to a page table.
 * In a PTE, the physical address points to a data or code page.
 *
 * 一些重要的flag罗列在下面, 当PED、PTE不存在时，其他标志被忽略。
 * The important flags are listed below.
 * When a PDE or PTE is not "present", the other flags are
 * ignored.
 * A PDE or PTE that is initialized to 0 will be interpreted as
 * "not present", which is just fine.
 **/
#define PTE_FLAGS 0x00000fff    /* flag使用了低12位 Flag bits. */
#define PTE_ADDR  0xfffff000    /* 物理地址使用了高20位 Address bits. */
#define PTE_AVL   0x00000e00    /* OS可使用的位 Bits available for OS use. */
#define PTE_P 0x1               /* 1=present, 0=not present. */
#define PTE_W 0x2               /* 1=read/write, 0=read-only. */
#define PTE_U 0x4               /* 1=user/kernel, 0=kernel only. */
#define PTE_A 0x20              /* 1=accessed, 0=not acccessed. */
#define PTE_D 0x40              /* 1=dirty, 0=not dirty (PTEs only). */

/**
 * Returns a PDE that points to page table PT.
 * 返回一个PDE结构， 指向页表PT
 * @param pt - 页表指针
 **/
static inline uint32_t pde_create (uint32_t *pt) {
  ASSERT (pg_ofs (pt) == 0); // 页偏移量不能为0
  return vtop (pt) | PTE_U | PTE_P | PTE_W;
}

/**
 * 根据PDE获取它的页表指针
 * Returns a pointer to the page table that page directory entry
 * PDE, which must "present", points to.
 **/
static inline uint32_t *pde_get_pt (uint32_t pde) {
  ASSERT (pde & PTE_P); // must present
  return ptov (pde & PTE_ADDR); // 物理地址是高20位
}

/**
 * 返回一个指向页的PTE。该PTE的页是可读的， 如果WRITABLE设为真，那么它
 * 也能写。该页只能用于ring0的代码(内核)
 * Returns a PTE that points to PAGE.
 * The PTE's page is readable.
 * If WRITABLE is true then it will be writable as well.
 * The page will be usable only by ring 0 code (the kernel).
 **/
static inline uint32_t pte_create_kernel (void *page, bool writable) {
  ASSERT (pg_ofs (page) == 0);
  return vtop (page) | PTE_P | (writable ? PTE_W : 0);
}

/**
 * 与上面的有所不同，该新建的页可以被内核或者用户同时使用
 * Returns a PTE that points to PAGE.
 * The PTE's page is readable.
 * If WRITABLE is true then it will be writable as well.
 * The page will be usable by both user and kernel code.
 **/
static inline uint32_t pte_create_user (void *page, bool writable) {
  return pte_create_kernel (page, writable) | PTE_U;
}

/**
 * 返回PTE指向的页指针
 * Returns a pointer to the page that page table entry PTE points
 * to.
 **/
static inline void *pte_get_page (uint32_t pte) {
  return ptov (pte & PTE_ADDR); // 取高20位，从物理地址转化为虚拟地址
}

#endif /* threads/pte.h */

