// *********************
// cpuex2016 
// group-E simulator
// *********************
#include <iostream>
#include "assembler.h"
#include "cpu.h"
#include "execute.h"
using namespace std;

int main(int argc, char* argv[])
{
  if (argc != 2 && argc != 3) {
    cerr << "usage : ./sim  *.s  (*.sld)" << endl; 
    return -1;
  }

  // assemble
  Asm a(argv[1]);

  // execute
  Exec machine(argc, argv);
  machine.mainLoop();

  return 0;
}
