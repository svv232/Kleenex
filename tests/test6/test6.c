#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char * argv[]){
    char * line = NULL;
    char buf[20];
    size_t line_size = 0;
    printf("hello world\n");
    getline(&line,&line_size,stdin);
    if (strlen(line) > 20){
    memcpy(buf, line, strlen(line));
    } else {
    memcpy(buf, line, 20);
    }
    printf("%s\n",buf);
    return 0;
}
