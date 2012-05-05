#include <stdio.h>
#include "dpiheader.h"

// extern void c_const_char_p( const char*  , const char*    );

int c_main(void) {
  printf("Hello from c_main()\n");

  char char_in[] = "ABCDE";
  char* char_out[10];

  c_sv_string ( char_in , char_out); printf("------ c in=%s, out=%s\n", char_in , char_out[0]);

  return (0);
}

