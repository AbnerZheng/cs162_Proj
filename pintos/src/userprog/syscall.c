#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include <lib/kernel/stdio.h>
#include <threads/vaddr.h>
#include <string.h>
#include <filesys/directory.h>
#include <filesys/filesys.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "pagedir.h"

static void syscall_handler (struct intr_frame *);

static int syswrite (int fd, const void *buffer, unsigned size);

static int syscreate (const char *file, unsigned initial_size);

static int sysexit (int status);

static int sysopen (const char *filename);

typedef int (*handler) (uint32_t, uint32_t, uint32_t);

static handler syscall_vec[128];

struct fd_elem{
    int fd;
    struct file *file_elem;
    struct list_elem elem;
};

void
syscall_init (void)
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
  syscall_vec[SYS_EXIT]   = (handler) sysexit;
  syscall_vec[SYS_CREATE] = (handler) syscreate;
  syscall_vec[SYS_WRITE]  = (handler) syswrite;
  syscall_vec[SYS_OPEN]   = (handler) sysopen;
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
  if( ret == -1 ){
    sysexit (-1);
  }
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

  if (!file) {
    return -1;
  }
//  size_t len = strlen (file);
//  if (len  == 0 || len > NAME_MAX ) {
//    return 0;
//  }

  return filesys_create (file, initial_size);
}

static int sysopen (const char *filename)
{
  if (!filename) {
    return -1;
  }
  struct file* f = filesys_open (filename);


//  return filesys_open (filename);
}

static int syswrite (int fd, const void *buffer, unsigned size)
{
  char *phy_buffer = pagedir_get_page (thread_current ()->pagedir, buffer);
  putbuf (phy_buffer, size);
}