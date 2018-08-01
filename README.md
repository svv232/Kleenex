Description
-----------
While fuzzing the probability of finding a crash increases as code coverage increases.
The premise of my research was to develop an intelligent, white box method of
fuzzing to elicit memory corruption. White box program fuzzing can be described
as sending payloads that verify all code paths are hit. Simply put, the process during
this research was using program path analysis to generate test cases, and applying
mutation based fuzzing techniques on these initial test cases. For path analysis Klee,
a symbolic virtual machine, generated unique input for each discoverable
path within a program; this process will be further described in the
implementation section of the post. AFL , American Fuzzy Lop, applies it's
genetic algorithms and semantic analysis on the generated Klee output to fuzz programs.
With this in mind I developed Kleenex a wholistic C++ wrapper around Klee and AFL
that can spin up different types of afl-fuzz threads using initial Klee analysis.

KLEENEX
----------
Path information currently is hard coded in the Makefile and the #define statements in the header files. These must be modified for use on another machine.

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
