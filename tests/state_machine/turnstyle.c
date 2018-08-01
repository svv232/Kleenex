#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <unistd.h>

struct state_machine {
  bool locked;
} state_machine_default = {true};

typedef struct state_machine turnStyle;

void coin(turnStyle * machine){
  machine -> locked = false;
}

bool push(turnStyle * machine){
  bool state = machine -> locked;
  if (state) {
    return false;
  } else {
    machine -> locked = true;
    return true;
  }
}

uint64_t get_num(){
  char * buf = NULL;
  size_t line_size = 0;
  getline(&buf, &line_size, stdin);
  return strtoull(buf, NULL, 0);
}

void win(){
    char buf[15];
    printf("WHAT IS YOUR NAME !!!\n");
    fgets(buf, 25, stdin );
    printf("Congratz %s\n", buf);
}

int main(int argc, char ** argv){
    turnStyle machine = state_machine_default;
    turnStyle * mach = malloc(sizeof(turnStyle));
    *mach = machine;
    printf("Enter a 1 coin for entry: \n");
    int * case_num = calloc(sizeof(int), 0);
    *case_num = get_num();
    printf("%d\n", *case_num);
    switch(*case_num) {
    case 1:
        coin(mach);
        free(case_num);
        break;
    }
    if (push(mach)){
        printf("You are in!!!\n");
        win();
    } else {
        printf("DAMN THE GATE IS JAMMED!\n");
    }
    free(mach);
    free(case_num);
    printf("%d\n", *case_num);
    return 0;
}
