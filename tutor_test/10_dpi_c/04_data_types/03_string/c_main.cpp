#include <stdio.h>
#include <string>
#include "dpiheader.h"

#ifdef __cplusplus
extern "C" {
#endif
int c_main(void) {
  printf("Hello from c_main()\n");

  std::string str = "FFFFF";
  char* char_out[10];

  c_sv_string ( str.c_str() , char_out); printf("------ c in=%s, out=%s\n", str.c_str() , char_out[0]);

  return (0);
}
#ifdef __cplusplus
}
#endif
