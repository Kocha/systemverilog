#include <stdio.h>

extern void v_task1(void);
extern void v_task2(int i);
extern void v_task3(int i, int *o);
extern void v_task4(int i, int *o);

int c_main(void) {
  int i=0, o=0;
  printf("Hello from c_main()\n");
  v_task1();
  i=1; v_task2(i);
  i=1; v_task3(i, &o); printf("------ Call Task3 output = %d\n", o);
  i=0; v_task4(i, &o); printf("------ Call Task3 output = %d\n", o);
  return (0);
}

