set(userprog_SRCS
        gdt.h
        gdt.c
        pagedir.h
        pagedir.c
        process.h
        process.c
        tss.c
        tss.h
        syscall.c
        syscall.h
        exception.h
        exception.c
        )

add_library(userprog ${userprog_SRCS})
