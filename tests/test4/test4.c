#include <stdio.h>
#include <stdint.h>
#include <klee/klee.h>

void give_shell() {
    system("/bin/sh");
}

void init() {
    setvbuf(stdout, NULL, _IONBF, 0);
}

void vuln() {
    char buf[32];

    puts("We don't give you the flag anymore, but we did leave some code that might be useful...");
    klee_make_symbolic(&buf, sizeof buf, "buf");
    //gets(buf);
    puts("ok... lets see if you could control the world enough to get a shell...");
}

int main() {
    init();
    vuln();
    return 0;
} 
