#ifndef THREADS_INIT_H
#define THREADS_INIT_H

#include <debug.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

/* Page directory with kernel mappings only. */
// 只有内核页目录映射的页目录
extern uint32_t *init_page_dir;

#endif /* threads/init.h */
