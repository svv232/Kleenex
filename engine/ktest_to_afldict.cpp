#include "ktest_to_afldict.h"

void generate_afl_seed_dir(const std::string& path, 
        std::unordered_set<std::string>& cache){
 auto dir_path = fs::path(path.c_str());  
 fs::create_directory(path);
 std::ostringstream filename;
 for(auto& test:cache){
   std::ofstream file;
   filename << path << "/" << rand() << ".txt";
   file.open(filename.str());
   file << test << std::endl; 
   filename.str(std::string());
 }
}

void allocations_parse(std::string messages_file){
  //write to logging
  std::ifstream messages(messages_file);
  std::ofstream logging;
  logging.open("logging", std::ios_base::app);
  std::ostringstream out_line;
  std::string line;
  while (std::getline(messages, line)){
    std::string message_type;
    std::istringstream mem_message(line);
    mem_message >> message_type;
    mem_message >> message_type;
    if (message_type == "Deterministic"){
        std::string memory;
        mem_message >> memory;
        mem_message >> memory;
        out_line << memory;
        mem_message >> memory;
        mem_message >> memory;
        mem_message >> memory;
        out_line << ":";
        out_line << memory;
        logging << out_line.str() << std::endl;
    } else if (message_type == "ERROR:"){
        std::string path;
        mem_message >> path;
        mem_message >> path;
        out_line << path;
        mem_message >> path;
        out_line << " " << path;
        logging << out_line.str() << std::endl;
    }
    mem_message.str(std::string());
    out_line.str(std::string());
  }
  messages.close();
  logging.close();
}

void warnings_parse(std::string messages_file){

}

void ktest_parse(fs::path &path_obj,
        std::unordered_set<std::string> &cache) {
  auto ktest_file = path_obj.string();
  std::ostringstream debug;
  KTest* result = kTest_fromFile(ktest_file.c_str());
  auto objects = result -> objects;
  uint64_t object_amount = result -> numObjects;
  for (size_t i = 0; i < object_amount; ++i){
    auto object = objects[i];
    auto size = object.numBytes;
    auto data = object.bytes;
    for(size_t i=0; i < size; ++i){
      //debug << "\\x0" << (int)data[i];
      debug << (char)data[i];
      //debug << data[i];
    }
    //std::cout << ktest_file << "=" << "\"" << debug.str() << "\"" << std::endl;
    if (cache.find(debug.str()) == cache.end()){
      cache.insert(debug.str());
    }
    debug.str(std::string());
  }
}

void ktest_to_afldict(){
  std::unordered_set<std::string> cache;
  for (const auto &f : fs::directory_iterator(filepath)){
    auto path = f.path();
    auto ext = path.extension();
    auto filename = path.string();
    if (ext == ".ktest"){
        ktest_parse(path, cache);
    } else if (ext == ".txt"){
        if (path.stem() == "messages"){
            allocations_parse(filename);
        } else if (path.stem() == "warnings"){
            warnings_parse(filename);
        }
    } else if (ext == ".ll"){

    } else if (ext == ".stats"){
    
    } else if (ext == ".istats"){

    } else if (ext == ""){

    } else if (ext == ".kquery"){

    } else if (ext == ".err"){

    }
  }
  generate_afl_seed_dir(myinput,cache);
}
