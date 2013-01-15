#include <stdio.h>
#include "dpiheader.h"

void f_tmp(int data){
  printf("--- c data=%d\n", data);
}

#ifdef __cplusplus
extern "C" {
#endif
int c_main(void) {
  printf("Hello from c_main()\n");

  int i=10;
  f_tmp(i);

  void * ptr;
  void * ptr_null;

  ptr = &f_tmp;
  ptr_null = NULL;

  c_chandle(ptr);
  c_chandle(ptr_null);

  return (0);
}
#ifdef __cplusplus
}
#endif
