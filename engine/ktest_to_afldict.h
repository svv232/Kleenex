#ifndef KTEST_TO_AFLDICT_H
#define KTEST_TO_AFLDICT_H

#include <iostream>
#include <unordered_set>
#include <experimental/filesystem>
#include <sstream>
#include <fstream>
#include <KTest.h>
#define filepath "/home/klee/Kleenex/tissue_box/klee-last/"
#define myinput "/home/klee/Kleenex/tissue_box/input"

namespace fs = std::experimental::filesystem;
void allocations_parse(std::string messages_file);
void warnings_parse(std::string messages_file);
void ktest_parse(fs::path &path_obj,
        std::unordered_set<std::string> &cache);
void generate_afl_seed_dir(const std::string& path, 
        std::unordered_set<std::string>& cache);
void ktest_to_afldict();
#endif 
