#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#define MAX 4

struct lock {
  int MAX_VAL;
  int entries[3];
  bool locked;
} lock_default = {MAX, {0, 0, 0}, false};

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
  int current_entry = 0;
  printf("PICK THE LOCK!!!!!\n------------------------\n");
  while (current_entry <= 2) {
    char instruction[20];
    fgets(instruction, 10, stdin);
    if (!(strcmp(instruction, "inc\n"))){
        my_lock.entries[current_entry] = (my_lock.entries[current_entry] % MAX) + 1;
        printf("lock number %d is now %d\n", current_entry, my_lock.entries[current_entry]);
    } else if (!(strcmp(instruction, "next\n"))){
        printf("cool now you are on entry %d\n", ++current_entry);
    } else {
        printf("Couldn't quite get that??\n");
    }
  }
  if (check(my_lock.entries)){
    win();
  } else {
    printf("You are a loser plain an simple ... \n");
  }
}
