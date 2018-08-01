#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>

enum handler_states {
    halt,
    write_data,
    allocate,
    deallocate,
    read_data,
    nothing,
};

static const char signal_handler[] = {
  'h',
  'w',
  'a',
  'd',
  'r',
  'n'
};

char * get_signals(){
  char * buf = NULL;
  size_t line_size = 0;
  getline(&buf, &line_size, stdin);
  return buf;
}

int main(int argc, char ** argv){
  char * signals = get_signals();
  int mem_total = 1;
  for (;*signals != '\0'; ++signals){ 
    char mem[mem_total];
    char sig = *signals;
    if (sig == signal_handler[halt]){
      sleep(1);
    } else if (sig == signal_handler[read_data]){ 
        printf("%s\n", mem);
    } else if (sig == signal_handler[allocate]){
        printf("ALLOCATION COMPLETE\n");
        mem_total *= 2;
    } else if (sig == signal_handler[deallocate]){
        printf("DEALLOCATION COMPLETE!\n");
        mem_total /= 2;
    } else if (sig == signal_handler[write_data]){
        if (mem_total == 1){
            printf("HEYY NO MEMORY HAS BEEN ALLOCATED!\n");
            exit(1);
         } else {
            printf("GIVE ME SOME BYTES :)\n");
            char * data = NULL;
            size_t data_size = 0;
            getline(&data, &data_size, stdin);
            memcpy(mem, data, strlen(data));
         }
    } else if (sig == signal_handler[nothing] || sig == '\n'){
        continue;
    } else {
        printf("Improper Signal Trigger Error Handler:(\n");
    }
  }
  printf("The Signals have been handled ;)\n");
}   
