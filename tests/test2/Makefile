CC=clang
FLAGS= -c -g
OUT=test5
BYTECODE=$(OUT).bc

all: bc run 

bc: $(BYTECODE)

%.bc: %.c
	$(CC) -I /home/klee/klee_src/include/ -emit-llvm $(FLAGS) $< -o $@

run:
	klee --libc=uclibc --allocate-determ=1 --search=nurs:md2u --search=random-state $(BYTECODE)
