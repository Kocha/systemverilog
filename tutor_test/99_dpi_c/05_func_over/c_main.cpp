#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif
extern void sv_show( int );
extern void sv_show2( int , int );
#ifdef __cplusplus
}
#endif

void show(int a){
  sv_show(a);
}

void show(int a, int b){
  sv_show2(a, b);
}

#ifdef __cplusplus
extern "C" {
#endif
int c_main( void )
{
  int x = 2;
  int y = 9;
  show(x);
  show(x, y);
  return 0;
}
#ifdef __cplusplus
}
#endif
