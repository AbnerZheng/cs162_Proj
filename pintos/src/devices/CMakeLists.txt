set(devices_SRCS
        block.h
        block.c
        ide.c
        ide.h
        input.h
        input.c
        intq.c
        intq.h
        kbd.c
        kbd.h
        partition.c
        partition.h
        pit.c
        pit.h
        )

add_library(devices ${devices_SRCS})
