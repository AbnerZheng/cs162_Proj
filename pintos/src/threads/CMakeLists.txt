set(threads_SRCS
        init.c
        interrupt.c
        malloc.c
        palloc.c
        synch.c
        thread.c
        thread.h
        fixed-point.h
        loader.h
        pte.h
        flags.h
        )

add_library(threads ${threads_SRCS})
