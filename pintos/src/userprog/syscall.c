#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include <lib/kernel/stdio.h>
#include <threads/vaddr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "pagedir.h"

static void syscall_handler (struct intr_frame *);
void syswrite(struct intr_frame *f UNUSED);

void
syscall_init (void)
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
}

static void
syscall_handler (struct intr_frame *f UNUSED)
{
  uint32_t* args = ((uint32_t*) f->esp);

  if(args < f->eip){
    printf("%s: exit(%d)\n", &thread_current ()->name, -1);
    thread_exit ();
  }
  switch (args[0]){
    case SYS_EXIT:
      f->eax = args[1];
      if(!is_user_vaddr (args[1])){
        printf("%s: exit(%d)\n", &thread_current ()->name, -1);
      }else{
        printf("%s: exit(%d)\n", &thread_current ()->name, args[1]);
      }
      thread_exit();
      break;
    case SYS_WRITE:
      // 首先获取fid
      syswrite(f);
      break;
    case SYS_CREATE:

      break;
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