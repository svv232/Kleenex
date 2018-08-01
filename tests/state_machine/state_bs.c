#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

struct lock {
  int entries[3];
  bool locked;
} lock_default = {{3, 4, 1}, false};

typedef struct lock lock_box;

void win(){
  char name[20];
  size_t line_size = 0;
  char * line = NULL;
  printf("WHAT IS YOUR NAME !!\n");
  getline(&line, &line_size, stdin);
  memcpy(name, line, strlen(line));
  printf("YOU ARE THE GOOOAAAT %s\n", name);
}

bool check(int * entries){
    if (entries[0] == 3 && entries[1] == 4 && entries[2] == 1){
        return true;
    }
    return false;
}

int main(int argc, char** argv){
  lock_box my_lock = lock_default;
  printf("PICK THE LOCK!!!!!\n------------------------\n");
  if (check(my_lock.entries)){
    win();
  } else {
    printf("You are a loser plain an simple ... \n");
  }
  return 0;
}
