#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include <lib/kernel/stdio.h>
#include <threads/vaddr.h>
#include <string.h>
#include <filesys/directory.h>
#include <filesys/filesys.h>
#include <threads/malloc.h>
#include <filesys/file.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "pagedir.h"

static void syscall_handler (struct intr_frame *);

static int syswrite (int fd, const void *buffer, unsigned size);

static int syscreate (const char *file, unsigned initial_size);

static int sysexit (int status);

static int sysopen (const char *filename);

static int sysclose (int fd);

static int sysfilesize (int fd);

static int sysread (int fd, void *buffer, unsigned size);

typedef int (*handler) (uint32_t, uint32_t, uint32_t);

static handler syscall_vec[128];

static struct fd_elem *get_file_from_current_thread_by_fd (int fd);

static int alloc_fid (void);

static struct list file_list;

struct fd_elem
{
    int              fd;
    struct file      *file_elem;
    struct list_elem elem;
    struct list_elem thread_elem;
};

void
syscall_init (void)
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
  syscall_vec[SYS_EXIT]     = (handler) sysexit;
  syscall_vec[SYS_CREATE]   = (handler) syscreate;
  syscall_vec[SYS_WRITE]    = (handler) syswrite;
  syscall_vec[SYS_OPEN]     = (handler) sysopen;
  syscall_vec[SYS_CLOSE]    = (handler) sysclose;
  syscall_vec[SYS_READ]     = (handler) sysread;
  syscall_vec[SYS_FILESIZE] = (handler) sysfilesize;

  list_init (&file_list);
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

  if (!file) {
    sysexit (-1);
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
  struct file *f = filesys_open (filename); // 打开一个文件
  if (!f) return -1;

  struct fd_elem *fdElem = (struct fd_elem *) malloc (sizeof (struct fd_elem));
  if (!fdElem) {
    file_close (f);
    return -1;
  }

  fdElem->file_elem = f;
  fdElem->fd        = alloc_fid ();

  list_push_back (&file_list, &fdElem->elem);
  struct thread *current = thread_current ();
  list_push_back (&current->files, &fdElem->thread_elem);


  return fdElem->fd;

//  return filesys_open (filename);

}

static int syswrite (int fd, const void *buffer, unsigned size)
{
  char *phy_buffer = pagedir_get_page (thread_current ()->pagedir, buffer);
  if(fd == 1)
    putbuf (phy_buffer, size);
  else if(fd == 0)
    sysexit (-1);
  else{
    struct fd_elem *elem =  get_file_from_current_thread_by_fd (fd);
    if(!elem)
      sysexit (-1);
    return file_write (elem->file_elem, buffer, size);
  }

}


static int
alloc_fid (void)
{
  static int fid = 2; //使用一个静态变量
  return fid++;
}

static int
sysclose (int fd)
{
  struct fd_elem *elem = get_file_from_current_thread_by_fd (fd);
  if (!elem)
    sysexit (-1);
  file_close (elem->file_elem);
  list_remove (&elem->thread_elem);
  list_remove (&elem->elem);
  free (elem);
  return 0;
}

static struct fd_elem *
get_file_from_current_thread_by_fd (int fd)
{
  struct thread    *current = thread_current ();
  struct list_elem *l;
  struct list_elem *end;

  end    = list_end (&current->files);
  for (l = list_begin (&current->files); l != end; list_next (l)) {
    struct fd_elem *entry = list_entry (l, struct fd_elem, thread_elem);
    if (entry->fd == fd) {
      return entry;
    }
  }

  return NULL;
};

static int sysread (int fd, void *buffer, unsigned size)
{
  struct fd_elem *elem = get_file_from_current_thread_by_fd (fd);
  if (!elem)
    sysexit (-1);
  return file_read (elem->file_elem, buffer, size);
}

static int sysfilesize (int fd)
{
  struct fd_elem *elem = get_file_from_current_thread_by_fd (fd);
  if(!elem){
    sysexit (-1);
  }

  return file_length(elem->file_elem);
}
