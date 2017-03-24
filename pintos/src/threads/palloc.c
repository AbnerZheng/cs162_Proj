#include "threads/palloc.h"
#include <bitmap.h>
#include <debug.h>
#include <inttypes.h>
#include <round.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "threads/loader.h"
#include "threads/synch.h"
#include "threads/vaddr.h"

/**
 * 页分配器, 按页大小(或者多页)的块分发内存
 *
 * Page allocator.  Hands out memory in page-size (or
 * page-multiple) chunks.  See malloc.h for an allocator that
 * hands out smaller chunks.
 *
 * 系统内存被分为两个池， 分别称为内核、用户池。用户池是用做用户(虚拟)内存,
 * 内核池是为了其他事情。 内核需要内存用来它自己的操作即使用户进程疯狂交换.
 *
 * System memory is divided into two "pools" called the kernel
 * and user pools.  The user pool is for user (virtual) memory
 * pages, the kernel pool for everything else.  The idea here is
 * that the kernel needs to have memory for its own operations
 * even if user processes are swapping like mad.
 *
 * 默认情况下， 内核RAM的一半分为内核池，一半分为用户池。 这么做应该是对内核
 * 池的过渡浪费，但对于演示用途还是可以接受的.
 * By default, half of system RAM is given to the kernel pool and
 * half to the user pool.  That should be huge overkill for the
 * kernel pool, but that's just fine for demonstration purposes.
 **/

/* A memory pool. */
struct pool
 {
    struct lock lock;                   /* 互斥 Mutual exclusion. */
    struct bitmap *used_map;            /* 空闲页的Bitmap Bitmap of free pages. */
    uint8_t *base;                      /* 池的基地址 Base of pool. */
  };

/* Two pools: one for kernel data, one for user pages. */
static struct pool kernel_pool, user_pool;

static void init_pool (struct pool *, void *base, size_t page_cnt,
                       const char *name);
static bool page_from_pool (const struct pool *, void *page);

/* Initializes the page allocator.  At most USER_PAGE_LIMIT
   pages are put into the user pool. */
void
palloc_init (size_t user_page_limit)
{
  /* Free memory starts at 1 MB and runs to the end of RAM. */
  uint8_t *free_start = ptov (1024 * 1024);
  uint8_t *free_end = ptov (init_ram_pages * PGSIZE);
  size_t free_pages = (free_end - free_start) / PGSIZE;
  size_t user_pages = free_pages / 2;
  size_t kernel_pages;
  if (user_pages > user_page_limit)
    user_pages = user_page_limit;
  kernel_pages = free_pages - user_pages;

  /* Give half of memory to kernel, half to user. */
  init_pool (&kernel_pool, free_start, kernel_pages, "kernel pool");
  init_pool (&user_pool, free_start + kernel_pages * PGSIZE,
             user_pages, "user pool");
}

/**
 * 获取并返回长为PANG_CNT的连续空闲页
 * 如果，PAG_USER被设置， 该页是从用户池中获取，否则则为内核池。
 * Obtains and returns a group of PAGE_CNT contiguous free pages.
 * If PAL_USER is set, the pages are obtained from the user pool,
 * otherwise from the kernel pool.  If PAL_ZERO is set in FLAGS,
 * then the pages are filled with zeros.  If too few pages are
 * available, returns a null pointer, unless PAL_ASSERT is set in
 * FLAGS, in which case the kernel panics.
 * @param page_cnt  - the count of page to allocate
 * @param flags     - 如果设为PAL_USER，则从用户池中分配，否则为内核池
 **/
void *
palloc_get_multiple (enum palloc_flags flags, size_t page_cnt)
{
  struct pool *pool = flags & PAL_USER ? &user_pool : &kernel_pool;
  void *pages;
  size_t page_idx;

  if (page_cnt == 0)
    return NULL;

  lock_acquire (&pool->lock);
  page_idx = bitmap_scan_and_flip (pool->used_map, 0, page_cnt, false); // 找到连续page_cnt都是false的组，然后把他们翻转为1
  lock_release (&pool->lock);

  if (page_idx != BITMAP_ERROR)
    pages = pool->base + PGSIZE * page_idx; // 每页是PGSIZE(在这里是4K)
  else
    pages = NULL;

  if (pages != NULL)
    {
      if (flags & PAL_ZERO) //如果flags中有设置PAL_ZERO，那么将页的所有值设置为0
        memset (pages, 0, PGSIZE * page_cnt);
    }
  else
    {
      if (flags & PAL_ASSERT)
        PANIC ("palloc_get: out of pages");
    }

  return pages;
}

/**
 * Obtains a single free page and returns its kernel virtual
 * address.
 * 获取一个大小为1的空闲页， 然后返回它的内核虚拟空间
 * 如果， PAL_USER设为true, 那么该页是从用户池中获得的，否则为内核池。
 * 如果FLAGS中的PAL_ZERO设为1， 那么这一页都会被设为0。 如果不能分配成功，
 * 返回一个null空指针，除非PAL_ASSERT设置为1，此时就会抛出一个内核panic
 *
 * If PAL_USER is set, the page is obtained from the user pool,
 * otherwise from the kernel pool.  If PAL_ZERO is set in FLAGS,
 * then the page is filled with zeros.  If no pages are
 * available, returns a null pointer, unless PAL_ASSERT is set in
 * FLAGS, in which case the kernel panics.
 **/
void *
palloc_get_page (enum palloc_flags flags)
{
  return palloc_get_multiple (flags, 1);
}

/* Frees the PAGE_CNT pages starting at PAGES. */
void
palloc_free_multiple (void *pages, size_t page_cnt)
{
  struct pool *pool;
  size_t page_idx;

  ASSERT (pg_ofs (pages) == 0);
  if (pages == NULL || page_cnt == 0)
    return;

  if (page_from_pool (&kernel_pool, pages))
    pool = &kernel_pool;
  else if (page_from_pool (&user_pool, pages))
    pool = &user_pool;
  else
    NOT_REACHED ();

  page_idx = pg_no (pages) - pg_no (pool->base);

#ifndef NDEBUG
  memset (pages, 0xcc, PGSIZE * page_cnt);
#endif

  ASSERT (bitmap_all (pool->used_map, page_idx, page_cnt));
  bitmap_set_multiple (pool->used_map, page_idx, page_cnt, false);
}

/* Frees the page at PAGE. */
void
palloc_free_page (void *page)
{
  palloc_free_multiple (page, 1);
}

/* Initializes pool P as starting at START and ending at END,
   naming it NAME for debugging purposes. */
static void
init_pool (struct pool *p, void *base, size_t page_cnt, const char *name)
{
  /* We'll put the pool's used_map at its base.
     Calculate the space needed for the bitmap
     and subtract it from the pool's size. */
  size_t bm_pages = DIV_ROUND_UP (bitmap_buf_size (page_cnt), PGSIZE);
  if (bm_pages > page_cnt)
    PANIC ("Not enough memory in %s for bitmap.", name);
  page_cnt -= bm_pages;

  printf ("%zu pages available in %s.\n", page_cnt, name);

  /* Initialize the pool. */
  lock_init (&p->lock);
  p->used_map = bitmap_create_in_buf (page_cnt, base, bm_pages * PGSIZE);
  p->base = base + bm_pages * PGSIZE;
}

/* Returns true if PAGE was allocated from POOL,
   false otherwise. */
static bool
page_from_pool (const struct pool *pool, void *page)
{
  size_t page_no = pg_no (page);
  size_t start_page = pg_no (pool->base);
  size_t end_page = start_page + bitmap_size (pool->used_map);

  return page_no >= start_page && page_no < end_page;
}
