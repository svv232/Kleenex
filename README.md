KLEENEX
----------

Kleenex is a C++ wrapper around KLEE and AFL. Path information currently is hard coded in the Makefile and the #define statements in the header files. These must be modified for use on another machine.

Change:
-------

fuzzer.h
- afl_fuzz   /path/to/afl-fuzz
- myoutput   /path/to/tissue_box/output
- myfuzzerdict  /path/to/engine/klee.dict
- myprogram  /path/to/engine/a.out

ktest_to_afldict.h
- filepath  /path/to/tissue_box/klee-last
- myinput   /path/to/tissue_box/input

Makefile

- TISSUE_BOX   /path/to/tissue_box
- AFL_CC  /path/to/preferred/afl-compiler

For Use
-------
- Place the desired C file in tissue_box under the name bacteria.c
- run `make` in the engine


Dependencies
-------------

- KLEE
- AFL (American Fuzzy Lop)
- C++17

Set up Details are coming soon!
--------------------------------
