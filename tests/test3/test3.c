#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <klee/klee.h>

int checker(char * buff){
    if (!(strcmp(buff, "hello\n"))){
        return 0;
    } else {
        return -1;
    }
}

int main(int argc, char ** argv){
    char buff[20];
    klee_make_symbolic(&buff, sizeof buff, "buff");
    return checker(buff);
}
