#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <unistd.h>

int32_t get_num(){
  char * buf = NULL;
  size_t line_size = 0;
  getline(&buf, &line_size, stdin);
  return strtol(buf, NULL, 0);
}

void win(){
    char buf[15];
    printf("WHAT IS YOUR NAME !!!\n");
    fgets(buf, 25, stdin );
    printf("Congratz %s\n", buf);
}

int main(int argc, char ** argv){
    int32_t test = get_num();
    if (test % 2 == 0){
        test /= 2;
        if (test * 3 - 12 + 97 == 0x1337 - 6782){
            test = 1984 * 14;
        }
    } if ((test * 3 + 1) / 2 == 1){
        test = 1996;
    } else {
        test *= 3;
        test += 1;
        test /= 2;
        test /= 2;
        test -= 1;
    }
    if (test < 1984 * 12) {
        test = test * 4 * 17;
        if (test < 2333){
        test = -2147483648;
        test -= -3852843932328;
        }
    } else if (test - 124 ^ 34 == 12345){
        win();
    }
    printf("%d\n", test);
    return test;
}
