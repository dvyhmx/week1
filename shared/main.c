#include <stdio.h>
#include "include/add.h"
#include "include/sub.h"

int main(int argc, char* argv[]) {

    printf("7 + 5 = %d\n", add(7,5));

    printf("7 - 5 = %d\n", sub(7,5));

  return 0;
}