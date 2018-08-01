#include "fuzzer.h"

Afl_Properties::Afl_Properties(
  const std::string& input, 
  const std::string& output, 
  const std::string& fuzzer_dict,
  const std::string& fuzzed_program,
  bool crash_exploration_mode,
  int mem_limit):
    
  input_dir(input), output_dir(output), fuzzer_dict(fuzzer_dict),
  fuzzed_program(fuzzed_program),
  crash_exploration_mode(crash_exploration_mode),
  mem_limit(mem_limit){}

int Afl_Properties::run_command() const{
  std::stringstream command;
  command << afl_fuzz << " -i " <<
      Afl_Properties::input_dir << " -o " << Afl_Properties::output_dir <<
      " -x " << Afl_Properties::fuzzer_dict << " -m " << Afl_Properties::mem_limit
      << " ";
  if (Afl_Properties::crash_exploration_mode){command << " -C ";}
  command << " " << Afl_Properties::fuzzed_program;
  return system(command.str().c_str());
}

int Afl_Properties::run_dumb_fuzz() const{
  std::stringstream command;
  command << afl_fuzz << " -i " <<
      Afl_Properties::input_dir << " -o " << Afl_Properties::output_dir << "2" <<
      " -m " << Afl_Properties::mem_limit << " -n ";
  command << " " << Afl_Properties::fuzzed_program;
  return system(command.str().c_str());
}

int kill_jobs(){
    return system("pkill afl-fuzz");
}
