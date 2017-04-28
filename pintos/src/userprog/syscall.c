#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include <lib/kernel/stdio.h>
#include <threads/vaddr.h>
#include <string.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "pagedir.h"

static void syscall_handler (struct intr_frame *);

static int syswrite (int fd, const void *buffer, unsigned size);

static int syscreate (const char *file, unsigned initial_size);

static int sysexit (int status);

typedef int (*handler) (uint32_t, uint32_t, uint32_t);

static handler syscall_vec[128];

void
syscall_init (void)
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
  syscall_vec[SYS_EXIT]   = (handler) sysexit;
  syscall_vec[SYS_CREATE] = (handler) syscreate;
  syscall_vec[SYS_WRITE]  = (handler) syswrite;
}

void validate_addr (uint32_t *addr, uint32_t cs)
{
  if (!is_user_vaddr (addr)) {
    sysexit (-1);
  }
}

static void
syscall_handler (struct intr_frame *f UNUSED)
{
  uint32_t *args = ((uint32_t *) f->esp);

  validate_addr (args[0], 0);

  if (args[0] < SYS_EXIT || args[0] > SYS_INUMBER) {
    sysexit (-1);
  }

  handler h = syscall_vec[args[0]];

  validate_addr (args[1], 0);
  validate_addr (args[2], 0);
  validate_addr (args[3], 0);

  int ret = h (args[1], args[2], args[3]);
  f->eax = ret;
}

static int
sysexit (int status)
{
  printf ("%s: exit(%d)\n", &thread_current ()->name, status);
  thread_exit ();
}

static int
syscreate (const char *file, unsigned initial_size)
{
  if (strlen (file) == 0) {
    return 0;
  }
}


static int syswrite (int fd, const void *buffer, unsigned size)
{
  char *phy_buffer = pagedir_get_page (thread_current ()->pagedir, buffer);
  putbuf (phy_buffer, size);
}