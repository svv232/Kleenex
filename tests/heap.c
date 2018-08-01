#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define N_VARS 16

#define DEBUG(fmt, ...) do {} while (0)

typedef int (*print_func_t)(const char *msg);

enum obj_type {NUMBER = 0, STRING};
typedef enum obj_type obj_type_t;

typedef struct number {
    uint64_t val;
} number;

typedef struct string {
    print_func_t printer;
    size_t len;
    char *val;
} string;

typedef struct variable {
    obj_type_t type;
    void *item;
} variable;

variable vars[N_VARS];

void init() {
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);
}

void print_menu() {
    puts("1: Create variable");
    puts("2: Edit variable");
    puts("3: Print variable");
    puts("4: Delete variable");
    puts("5: Exit");
    printf("> ");
}

uint64_t get_num() {
    char buf[32] = {0};
    read(0, buf, sizeof(buf)-1);
    return strtoull(buf, NULL, 0);
}

number *create_number() {
    number *n = malloc(sizeof(number));
    DEBUG("Allocated number* at %p", n);

    puts("Value?");
    n->val = get_num();

    return n;
}

string *create_string() {
    string *s = malloc(sizeof(string));
    DEBUG("Allocated string* at %p", s);

    puts("Length?");
    s->len = get_num();

    puts("Contents?");
    s->val = malloc(s->len);
    DEBUG("Allocated string->val at %p", s->val);
    read(0, s->val, s->len-1);
    s->val[s->len-1] = 0;

    s->printer = puts;

    return s;
}


void create_variable() {
    int i;
    for (i = 0; i < N_VARS; i++) {
        if (vars[i].item == NULL) {
            break;
        }
    }

    if (i == N_VARS) {
        puts("No more room!");
        return;
    }

    puts("Type?");
    obj_type_t t = (obj_type_t)get_num();
    vars[i].type = t;

    switch (t) {
    case NUMBER:
        vars[i].item = create_number();
        break;

    case STRING:
        vars[i].item = create_string();
        break;

    default:
        puts("Invalid object type!");
        break;
    }
}

void print_number(number* num) {
    printf("%lu\n", num->val);
}

void print_string(string* str) {
    str->printer(str->val);
}

void display_variable() {
    puts("Index?");
    size_t index = get_num();
    if (vars[index].item) {
        switch (vars[index].type) {
        case NUMBER:
            print_number((number*)vars[index].item);
            break;
        case STRING:
            print_string((string*)vars[index].item);
            break;
        default:
            puts("Invalid type in variable");
            exit(1);
        }
    }
}

void edit_number(number *num) {
    num->val = get_num();
}

void edit_string(string *str) {
    puts("Length?");
    str->len = get_num();

    puts("Contents?");
    free(str->val);
    str->val = malloc(str->len);
    read(0, str->val, str->len-1);
    str->val[str->len-1] = 0;
}

void edit_variable() {
    puts("Index?");
    size_t index = get_num();
    if (vars[index].item) {
        switch (vars[index].type) {
        case NUMBER:
            edit_number((number*)vars[index].item);
            break;
        case STRING:
            edit_string((string*)vars[index].item);
            break;
        default:
            exit(1);
        }
    }
}

void delete_string(string *s) {
    free(s->val);
}

void delete_variable() {
    puts("Index?");
    size_t index = get_num();
    switch (vars[index].type) {
    case STRING:
        delete_string((string*)vars[index].item);
        break;
    }
    free(vars[index].item);
}
    
int main(int argc, char ** argv) {
    init();
    while (1) {
        print_menu();
        switch(get_num()) {
        case 1:
            create_variable();
            break;
        case 2:
            edit_variable();
            break;
        case 3:
            display_variable();
            break;
        case 4:
            delete_variable();
            break;
        case 5:
            exit(0);
            break;
        }
    }
}
