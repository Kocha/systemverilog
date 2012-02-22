#include <stdio.h>

extern void verilog_task(int i, int *o);

int c_task(int i, int *o) {
  printf("Hello from c_task()\n");
  verilog_task(i, o);
  *o = 2 * i;
  return (0);
}
