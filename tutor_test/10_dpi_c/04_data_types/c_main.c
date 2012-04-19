#include <stdio.h>

extern void c_char          ( char         , char*          );
extern void c_shortint      ( short int    , short int*     );
extern void c_int           ( int          , int*           );
extern void c_long_long     ( long long    , long long*     );
extern void c_double        ( double       , double*        );
extern void c_float         ( float        , float*         );
extern void c_void_p        ( void*        , void*          );
extern void c_const_char_p  ( const char*  , const char*    );
extern void c_unsigned_char1( unsigned char, unsigned char* );
extern void c_unsigned_char2( unsigned char, unsigned char* );
extern void c_unsigned_char3( unsigned char, unsigned char* );

int c_main(void) {
  printf("Hello from c_main()\n");

  char          char_in,      char_out;
  short int     shortint_in,  shortint_out;
  int           int_in,       int_out;
  long long     long_long_in, long_long_out;
  double        double_in,    double_out;
  float         float_in,     float_out;
  unsigned char uchar_in,     uchar_out;


  char_in = 8; c_char( char_in , &char_out); printf("------ c in=%d, out=%d\n", char_in, char_out);


  return (0);
}

