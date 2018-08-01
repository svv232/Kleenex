CC=clang
FLAGS= -c -g
OUT=get_sign

all: bc

bc: get_sign.bc

%.bc: %.c
	$(CC) -I /home/klee/klee_src/include/ -emit-llvm $(FLAGS) $< -o $@
