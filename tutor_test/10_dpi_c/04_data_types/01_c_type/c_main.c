#include <stdio.h>
#include "dpiheader.h"

int c_main(void) {
  printf("Hello from c_main()\n");

  char      char_in,      char_out;
  short int shortint_in,  shortint_out;
  int       int_in,       int_out;
  long long long_long_in, long_long_out;
  double    double_in,    double_out;
  float     float_in,     float_out;

  char_in      = 8;
  shortint_in  = 8;
  int_in       = 8;
  long_long_in = 8;
  double_in    = 8.0;
  float_in     = 8.0;

  c_char     ( char_in     , &char_out);      //printf("------ c in=%d, out=%d\n",char_in     , char_out);      
  c_shortint ( shortint_in , &shortint_out);  //printf("------ c in=%d, out=%d\n",shortint_in , shortint_out);  
  c_int      ( int_in      , &int_out);       //printf("------ c in=%d, out=%d\n",int_in      , int_out);       
  c_long_long( long_long_in, &long_long_out); //printf("------ c in=%lld, out=%lld\n",long_long_in, long_long_out); 
  c_double   ( double_in   , &double_out);    //printf("------ c in=%f, out=%f\n",double_in   , double_out);    
  c_float    ( float_in    , &float_out);     //printf("------ c in=%f, out=%f\n",float_in    , float_out);     

  return (0);
}

