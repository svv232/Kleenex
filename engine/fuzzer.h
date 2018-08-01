#ifndef FUZZER_H
#define FUZZER_H

#include "ktest_to_afldict.h"
#include <unistd.h>
#include <thread>

#define afl_fuzz "/home/klee/afl-2.52b/./afl-fuzz" //paths vary on other systems
#define myoutput "/home/klee/Kleenex/tissue_box/output"
#define myfuzzerdict "/home/klee/Kleenex/engine/klee.dict"
#define myprogram "/home/klee/Kleenex/engine/a.out"

struct Afl_Properties { 
  //all paths are absolute
  Afl_Properties(
    const std::string& input, 
    const std::string& output, 
    const std::string& fuzzer_dict,
    const std::string& fuzzed_program,
    bool crash_exploration_mode = false,
    int mem_limit = 50);

  int run_command() const;
  int run_dumb_fuzz() const;
  const std::string input_dir; 
  const std::string output_dir;
  const std::string fuzzer_dict;
  const std::string fuzzed_program;
  const bool crash_exploration_mode;
  const int mem_limit;
};

int kill_jobs();
#endif
