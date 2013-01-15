#include <stdio.h>

void show(int a){
  printf("--- a = %d\n", a);
}

void show(int a, int b){
  printf("--- a = %d, b = %d\n", a, b);
}

int main(int argc, char const* argv[])
{
  show(10);
  show(20,30);
  return 0;
}
