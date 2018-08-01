GCC=g++-5
FLAGS=-g -std=c++17 -Wall 
LINKER_FLAGS=-lstdc++fs -pthread -I /home/klee/klee_src/include/klee/Internal/ADT/ 
TARGET=main
FUZZ_BINARY= a.out
OBJS= master.cpp fuzzer.cpp ktest_to_afldict.cpp\
	  /home/klee/klee_src/lib/Basic/KTest.cpp
SHELL = /bin/bash
BLACKLIST_LOC=../blacklist
TISSUE_BOX=/home/klee/Kleenex/tissue_box/
CLANG=clang
CLANG_FLAGS= -c -g
OUT= $(TISSUE_BOX)bacteria
BYTECODE=$(OUT).bc

AFL_CC= /home/klee/afl-2.52b/afl-gcc

all: bc klee_run build_afl_binary build_afl_dict $(TARGET) clean

bc: $(BYTECODE)

%.bc: $(OUT).c
	$(CLANG) -I /home/klee/klee_src/include/ -emit-llvm $(CLANG_FLAGS) $< -o $@

klee_run:
	klee --libc=uclibc --posix-runtime --optimize -solver-backend=z3\
         --only-output-states-covering-new -max-forks=4 -use-cache\
		 -use-independent-solver --allocate-determ=1 --search=nurs:covnew\
		 --search=random-state $(BYTECODE) --sym-stdin 50

build_afl_binary:
	$(AFL_CC) $(OUT).c

build_afl_dict:
	for string in `strings $(FUZZ_BINARY)`;\
		do \
		if ! grep -Fxq $$string $(BLACKLIST_LOC) && [[ $$string =~ ^[a-zA-Z]*$$ ]];\
		then echo $$RANDOM=\"$$string\" >> klee.dict;\
		fi \
	done

$(TARGET): $(OBJS)
	$(GCC) $(FLAGS) -o $(TARGET) $(OBJS) $(LINKER_FLAGS) && ./$(TARGET)

clean:
	rm $(TARGET) $(FUZZ_BINARY) logging *.dict core
