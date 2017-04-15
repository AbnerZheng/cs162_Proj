#include "userprog/pagedir.h"
#include <stdbool.h>
#include <stddef.h>
#include <string.h>
#include "threads/init.h"
#include "threads/pte.h"
#include "threads/palloc.h"

static uint32_t *active_pd (void);
static void invalidate_pagedir (uint32_t *);

/* Creates a new page directory that has mappings for kernel
   virtual addresses, but none for user virtual addresses.
   创建一个新的页目录，该目录有内核地址映射，但没有用户虚拟地址

   Returns the new page directory, or a null pointer if memory
   allocation fails. */
uint32_t *
pagedir_create (void)
{
  uint32_t *pd = palloc_get_page (0);
  if (pd != NULL)
    memcpy (pd, init_page_dir, PGSIZE);
  return pd;
}

/* Destroys page directory PD, freeing all the pages it
   references. */
void
pagedir_destroy (uint32_t *pd)
{
  uint32_t *pde;

  if (pd == NULL)
    return;

  ASSERT (pd != init_page_dir);
  for (pde = pd; pde < pd + pd_no (PHYS_BASE); pde++)
    if (*pde & PTE_P)
      {
        uint32_t *pt = pde_get_pt (*pde);
        uint32_t *pte;

        for (pte = pt; pte < pt + PGSIZE / sizeof *pte; pte++)
          if (*pte & PTE_P)
            palloc_free_page (pte_get_page (*pte));
        palloc_free_page (pt);
      }
  palloc_free_page (pd);
}

/**
 * 根据虚拟地址VADDR在页目录PD中查找相应的PTE(page table entry)
 * Returns the address of the page table entry for virtual
 * address VADDR in page directory PD.
 *
 * 如果PD没有对应于VADDR的页表。对应的行为取决于CREATE。 如果CREATE设为
 * TRUE， 那么一个新的页表将会被创建，并返回该指针。否则，返回null
 *
 * If PD does not have a page table for VADDR, behavior depends
 * on CREATE.  If CREATE is true, then a new page table is
 * created and a pointer into it is returned.  Otherwise, a null
 * pointer is returned.
 **/
static uint32_t *
lookup_page (uint32_t *pd, const void *vaddr, bool create)
{
  uint32_t *pt, *pde;

  ASSERT (pd != NULL);

  /* Shouldn't create new kernel virtual mappings. */
  // create和is_kernel_vaddr(vaddr)不能同时为真, 不能创建新的内核虚拟映射
  ASSERT (!create || is_user_vaddr (vaddr));

  /**
   * Check for a page table for VADDR.
   * If one is missing, create one if requested.
   **/
  pde = pd + pd_no (vaddr);
  if (*pde == 0)
    {
      if (create)
        {
          pt = palloc_get_page (PAL_ZERO);
          if (pt == NULL)
            return NULL;

          *pde = pde_create (pt);
        }
      else
        return NULL;
    }

  /* Return the page table entry. */
  pt = pde_get_pt (*pde);
  return &pt[pt_no (vaddr)];
}

/**
 * 在页目录PD中添加一条映射， 从用户虚拟页UPAGE到由内核虚拟地址KPAGE标识
 * 的物理帧.UPAGE必须没有被映射过。
 * KPAGE应该可能是一个通过palloc_get_page从用户池中获取的页，如果WRITABLE
 * 设true，那么该页是可读可写的，否则是只读的。
 *
 * Adds a mapping in page directory PD from user virtual page
 * UPAGE to the physical frame identified by kernel virtual
 * address KPAGE.
 * UPAGE must not already be mapped.
 * KPAGE should probably be a page obtained from the user pool
 * with palloc_get_page().
 * If WRITABLE is true, the new page is read/write;
 * otherwise it is read-only.
 * Returns true if successful, false if memory allocation
 * failed.
 **/
bool
pagedir_set_page (uint32_t *pd, void *upage, void *kpage, bool writable)
{
  uint32_t *pte;

  ASSERT (pg_ofs (upage) == 0); //页内的偏移量必须为0
  ASSERT (pg_ofs (kpage) == 0);
  ASSERT (is_user_vaddr (upage)); // upage必须是用户地址
  ASSERT (vtop (kpage) >> PTSHIFT < init_ram_pages); // 物理地址所处的页必须比ram_pages小
  ASSERT (pd != init_page_dir);

  pte = lookup_page (pd, upage, true);

  if (pte != NULL)
    {
      ASSERT ((*pte & PTE_P) == 0);
      *pte = pte_create_user (kpage, writable);
      return true;
    }
  else
    return false;
}

/* Looks up the physical address that corresponds to user virtual
   address UADDR in PD.  Returns the kernel virtual address
   corresponding to that physical address, or a null pointer if
   UADDR is unmapped.

   根据uaddr和pd来查找物理地址
   */
void *
pagedir_get_page (uint32_t *pd, const void *uaddr)
{
  uint32_t *pte;

  ASSERT (is_user_vaddr (uaddr)); //保证是用户地址空间

  pte = lookup_page (pd, uaddr, false);
  if (pte != NULL && (*pte & PTE_P) != 0)
    return pte_get_page (*pte) + pg_ofs (uaddr);
  else
    return NULL;
}

/* Marks user virtual page UPAGE "not present" in page
   directory PD.  Later accesses to the page will fault.  Other
   bits in the page table entry are preserved.
   UPAGE need not be mapped. */
void
pagedir_clear_page (uint32_t *pd, void *upage)
{
  uint32_t *pte;

  ASSERT (pg_ofs (upage) == 0);
  ASSERT (is_user_vaddr (upage));

  pte = lookup_page (pd, upage, false);
  if (pte != NULL && (*pte & PTE_P) != 0)
    {
      *pte &= ~PTE_P;
      invalidate_pagedir (pd);
    }
}

/* Returns true if the PTE for virtual page VPAGE in PD is dirty,
   that is, if the page has been modified since the PTE was
   installed.
   Returns false if PD contains no PTE for VPAGE. */
bool
pagedir_is_dirty (uint32_t *pd, const void *vpage)
{
  uint32_t *pte = lookup_page (pd, vpage, false);
  return pte != NULL && (*pte & PTE_D) != 0;
}

/* Set the dirty bit to DIRTY in the PTE for virtual page VPAGE
   in PD. */
void
pagedir_set_dirty (uint32_t *pd, const void *vpage, bool dirty)
{
  uint32_t *pte = lookup_page (pd, vpage, false);
  if (pte != NULL)
    {
      if (dirty)
        *pte |= PTE_D;
      else
        {
          *pte &= ~(uint32_t) PTE_D;
          invalidate_pagedir (pd);
        }
    }
}

/* Returns true if the PTE for virtual page VPAGE in PD has been
   accessed recently, that is, between the time the PTE was
   installed and the last time it was cleared.  Returns false if
   PD contains no PTE for VPAGE. */
bool
pagedir_is_accessed (uint32_t *pd, const void *vpage)
{
  uint32_t *pte = lookup_page (pd, vpage, false);
  return pte != NULL && (*pte & PTE_A) != 0;
}

/* Sets the accessed bit to ACCESSED in the PTE for virtual page
   VPAGE in PD. */
void
pagedir_set_accessed (uint32_t *pd, const void *vpage, bool accessed)
{
  uint32_t *pte = lookup_page (pd, vpage, false);
  if (pte != NULL)
    {
      if (accessed)
        *pte |= PTE_A;
      else
        {
          *pte &= ~(uint32_t) PTE_A;
          invalidate_pagedir (pd);
        }
    }
}

/**
 * 将pd载入到CR3寄存器
 * 也就是一条汇编指令
 * movl pd, $cr3
 *
 * Loads page directory PD into the CPU's page directory base
 * register.
 */
void
pagedir_activate (uint32_t *pd)
{
  if (pd == NULL)
    pd = init_page_dir;

  /* Store the physical address of the page directory into CR3
     aka PDBR (page directory base register).  This activates our
     new page tables immediately.  See [IA32-v2a] "MOV--Move
     to/from Control Registers" and [IA32-v3a] 3.7.5 "Base
     Address of the Page Directory". */
  asm volatile ("movl %0, %%cr3" : : "r" (vtop (pd)) : "memory");
}

/**
 * Returns the currently active page directory.
 * 返回目前活跃的页目录, 这个目录页存放在CR3寄存器中, 所以也只是一条汇编指令：
 * movl $CR3, pd
 **/
static uint32_t *
active_pd (void)
{
  /* Copy CR3, the page directory base register (PDBR), into
     `pd'.
     See [IA32-v2a] "MOV--Move to/from Control Registers" and
     [IA32-v3a] 3.7.5 "Base Address of the Page Directory". */
  uintptr_t pd;
  asm volatile ("movl %%cr3, %0" : "=r" (pd));
  return ptov (pd);
}

/* Some page table changes can cause the CPU's translation
   lookaside buffer (TLB) to become out-of-sync with the page
   table.  When this happens, we have to "invalidate" the TLB by
   re-activating it.

   This function invalidates the TLB if PD is the active page
   directory.  (If PD is not active then its entries are not in
   the TLB, so there is no need to invalidate anything.) */
static void
invalidate_pagedir (uint32_t *pd)
{
  if (active_pd () == pd)
    {
      /* Re-activating PD clears the TLB.  See [IA32-v3a] 3.12
         "Translation Lookaside Buffers (TLBs)". */
      pagedir_activate (pd);
    }
}
