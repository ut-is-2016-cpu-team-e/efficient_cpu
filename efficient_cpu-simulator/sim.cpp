// *********************
// cpuex2016 
// group-E simulator
// *********************
#include <iostream>
#include <cstdlib>
#include <string>
#include <fstream>
#include <sstream>
#include <cmath>
#include <cstdint>
#include <cassert>
#include "assembler.h"
#include "cpu.h"
#include "execute.h"
#include "debugger.h"
#include "show.h"
#include "tools.h"
using namespace std;

int main(int argc, char* argv[])
{
  unordered_map<string, string> option;
  if (checkOpt(argc, argv, option) == -1) {
    cerr << "usage : ./sim   [-asm *.s]  [-num size]  [-all]  [-debug]" << endl; 
    return -1;
  }

  // execute
  if (option.find("-debug") != option.end()) {
    Debug debug(option);
    debug.debugLoop(option);
  } else {
    // initialize CPU and MEMORY
    Cpu cpu(option);
    if (option.find("-all") == option.end()) {
      for (unsigned long i = 0; i < cpu.getInstSize() && cpu.isHltOn == false; i++) {
        execRom(cpu);
      }
    } else {
      for (unsigned long i = 0; cpu.isHltOn == false; i++) {
        execRom(cpu);
      }
    }
    showStatus(cpu);
  }

  return 0;
}
