#include <stdio.h>

int main(void) {
  char str[] = {"not a byte"};
  for(int i=0; i<10; i++) {
    printf("str[%d] = %c\n",i, str[i]);
  }
  return 0;
}
