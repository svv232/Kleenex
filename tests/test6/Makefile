CC=clang
FLAGS= -c -g
OUT=test6
BYTECODE=$(OUT).bc

all: bc run 

bc: $(BYTECODE)

%.bc: %.c
	$(CC) -I /home/klee/klee_src/include/ -emit-llvm $(FLAGS) $< -o $@

run:
	klee --libc=uclibc --posix-runtime --optimize \
		--only-output-states-covering-new \
		--allocate-determ=1 --search=nurs:md2u --search=dfs $(BYTECODE) \
		--sym-stdin 40
