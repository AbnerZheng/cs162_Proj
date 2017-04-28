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
void syswrite(struct intr_frame *f UNUSED);
void syscreate(struct intr_frame *f UNUSED);

void
syscall_init (void)
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
}

void fail_exit(){
  printf("%s: exit(%d)\n", &thread_current ()->name, -1);
  thread_exit ();
}

void validate_addr(uint32_t* addr){
  if(!is_user_vaddr (addr)){
    fail_exit ();
  }
}

static void
syscall_handler (struct intr_frame *f UNUSED)
{
  uint32_t* args = ((uint32_t*) f->esp);

  if(args < f->eip){
    fail_exit ();
  }
  switch (args[0]){
    case SYS_EXIT:
      f->eax = args[1];
      validate_addr (args[1]);
      printf("%s: exit(%d)\n", &thread_current ()->name, args[1]);
      thread_exit();
      break;
    case SYS_WRITE:
      // 首先获取fid
      syswrite(f);
      break;
    case SYS_CREATE:
      syscreate(f);
      break;
  }

}


void syscreate(struct intr_frame *f UNUSED){
  uint32_t *args = ((uint32_t*) f->esp);
  char* file = args[1];
  if(!file){
    fail_exit ();
  }

  if(strlen (file) == 0){
     f->eax = 0;
  }
}


void syswrite(struct intr_frame *f UNUSED){
  uint32_t* args = ((uint32_t*) f->esp);
  int fid = args[1];
  char* buffer = args[2]; // 这时还只是用户地址,要转换为系统地址
  char* phy_buffer =  pagedir_get_page (thread_current ()->pagedir, buffer);
  int size = args[3];
  putbuf (phy_buffer, size);
}