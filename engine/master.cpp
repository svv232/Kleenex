#include "fuzzer.h"

int main(int argc, char const* const* argv) {
  ktest_to_afldict(); 
  std::thread klee_afl(&Afl_Properties::run_command
          , Afl_Properties(myinput, myoutput,myfuzzerdict, myprogram)); 
  std::thread klee_afl_dumb(&Afl_Properties::run_dumb_fuzz
          , Afl_Properties(myinput, myoutput,myfuzzerdict, myprogram)); 
  sleep(700);
  kill_jobs();
  klee_afl.join();
  klee_afl_dumb.join();
}
