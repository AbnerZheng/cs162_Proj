Final Report for Project 2: User Programs
=========================================

1. Set a break point at process\_execute and continue to that point. What is the name and address of the thread running this function? What other threads are present in pintos at this time? Copy their struct threads. (Hint: for the last part `dumplist &all_list thread allelem` may be useful.)

直接执行`dumplist &allelem thread allelem`就可以得到答案。 运行到该函数的线程名字为`main`,地址为`0xc000e000`. 还有个名为idle的线程被阻塞。

```text
pintos-debug: dumplist #0: 0xc000e000 {tid = 1, status = THREAD
_RUNNING, name = "main", '\000' <repeats 11 times>, stack = 0xc
000ee0c "\210", <incomplete sequence \357>, priority = 31, alle
lem = {prev = 0xc0034b50 <all_list>, next = 0xc0104020}, elem =
 {prev = 0xc0034b60 <ready_list>, next = 0xc0034b68 <ready_list
+8>}, pagedir = 0x0, magic = 3446325067}
pintos-debug: dumplist #1: 0xc0104000 {tid = 2, status = THREAD
_BLOCKED, name = "idle", '\000' <repeats 11 times>, stack = 0xc
0104f34 "", priority = 0, allelem = {prev = 0xc000e020, next =
0xc0034b58 <all_list+8>}, elem = {prev = 0xc0034b60 <ready_list
>, next = 0xc0034b68 <ready_list+8>}, pagedir = 0x0, magic = 34
46325067}
```

2. What is the backtrace for the current thread? Copy the backtrace from gdb as your answer and also copy down the line of c code corresponding to each function call.

```text
#0  process_execute (file_name=file_name@entry=0xc0007d50 "args
-none") at ../../userprog/process.c:32
#1  0xc002025e in run_task (argv=0xc0034a0c <argv+12>) at ../..
/threads/init.c:288
#2  0xc00208e4 in run_actions (argv=0xc0034a0c <argv+12>) at ..
/../threads/init.c:340
#3  main () at ../../threads/init.c:133
```

* init.c/main():
```c
/* Pintos main program. */
int
main (void)
{
  char **argv;

  /* Clear BSS. */
  bss_init ();

  /* Break command line into arguments and parse options. */
  argv = read_command_line ();
  argv = parse_options (argv);

  /* Initialize ourselves as a thread so we can use locks,
     then enable console locking. */
  thread_init ();
  console_init ();

  /* Greet user. */
  printf ("Pintos booting with %'"PRIu32" kB RAM...\n",
          init_ram_pages * PGSIZE / 1024);

  /* Initialize memory system. */
  palloc_init (user_page_limit);
  malloc_init ();
  paging_init ();

  /* Segmentation. */
#ifdef USERPROG
  tss_init ();
  gdt_init ();
#endif

  /* Initialize interrupt handlers. */
  intr_init ();
  timer_init ();
  kbd_init ();
  input_init ();
#ifdef USERPROG
  exception_init ();
  syscall_init ();
#endif

  /* Start thread scheduler and enable interrupts. */
  thread_start ();
  serial_init_queue ();
  timer_calibrate ();

#ifdef FILESYS
  /* Initialize file system. */
  ide_init ();
  locate_block_devices ();
  filesys_init (format_filesys);
#endif

  printf ("Boot complete.\n");

  /* Run actions specified on kernel command line. */
  run_actions (argv);

  /* Finish up. */
  shutdown ();
  thread_exit ();
}
```

* init.c#run\_actions()
```c
/* Executes all of the actions specified in ARGV[]
   up to the null pointer sentinel. */
static void
run_actions (char **argv)
{
  /* An action. */
  struct action
    {
      char *name;                       /* Action name. */
      int argc;                         /* # of args, including action name. */
      void (*function) (char **argv);   /* Function to execute action. */
    };

  /* Table of supported actions. */
  static const struct action actions[] =
    {
      {"run", 2, run_task},
#ifdef FILESYS
      {"ls", 1, fsutil_ls},
      {"cat", 2, fsutil_cat},
      {"rm", 2, fsutil_rm},
      {"extract", 1, fsutil_extract},
      {"append", 2, fsutil_append},
#endif
      {NULL, 0, NULL},
    };

  while (*argv != NULL)
    {
      const struct action *a;
      int i;

      /* Find action name. */
      for (a = actions; ; a++)
        if (a->name == NULL)
          PANIC ("unknown action `%s' (use -h for help)", *argv);
        else if (!strcmp (*argv, a->name))
          break;

      /* Check for required arguments. */
      for (i = 1; i < a->argc; i++)
        if (argv[i] == NULL)
          PANIC ("action `%s' requires %d argument(s)", *argv, a->argc - 1);

      /* Invoke action and advance. */
      a->function (argv);
      argv += a->argc;
    }
}
```

*init.c#run_task()

```c
/* Runs the task specified in ARGV[1]. */
static void
run_task (char **argv)
{
  const char *task = argv[1];

  printf ("Executing '%s':\n", task);
#ifdef USERPROG
  process_wait (process_execute (task));
#else
  run_test (task);
#endif
  printf ("Execution of '%s' complete.\n", task);
}
```

* init.c#process_execute()

```c
/* Starts a new thread running a user program loaded from
   FILENAME.  The new thread may be scheduled (and may even exit)
   before process_execute() returns.  Returns the new process's
   thread id, or TID_ERROR if the thread cannot be created. */
tid_t
process_execute (const char *file_name)
{
  char *fn_copy;
  tid_t tid;

  sema_init (&temporary, 0);
  /* Make a copy of FILE_NAME.
     Otherwise there's a race between the caller and load(). */
  fn_copy = palloc_get_page (0);
  if (fn_copy == NULL)
    return TID_ERROR;
  strlcpy (fn_copy, file_name, PGSIZE);

  /* Create a new thread to execute FILE_NAME. */
  tid = thread_create (file_name, PRI_DEFAULT, start_process, fn_copy);
  if (tid == TID_ERROR)
    palloc_free_page (fn_copy);
  return tid;
}
```
