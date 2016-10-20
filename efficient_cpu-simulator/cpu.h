#ifndef INCLUDED_CPU_H
#define INCLUDED_CPU_H

#include <map>
using namespace std;

#define ADDR (1024 * 1024 * 4)
#define SP_VAL (1024 * 1024 * 3)

class Cpu {
private:
  uint32_t* mRom; // store instruction
  int32_t* mRam; // store data

  // $zero    reg[0]
  // $v0      reg[1]  
  // $a0-$a26 reg[2]-reg[28]
  // $sp      reg[29]             
  // $fp      reg[30]
  // $ra      reg[31]            
  int32_t* mReg;

  uint32_t mPc; // program counter
  int32_t mDiffPc; // for the branch
  uint32_t mInstLines;
  unsigned long mInstSize; // determined by argv[2]
public:
  Cpu(char* filename, const char* size, bool isAllOn);
  ~Cpu();

  // instruction number
  enum InstNumber {
    NUM_NOP,
    NUM_ADD,
    NUM_SUB,
    NUM_ADDI,
    NUM_LW,
    NUM_SW,
    NUM_AND,
    NUM_ANDI,
    NUM_OR,
    NUM_ORI,
    NUM_SLT,
    NUM_SLTI,
    NUM_SLL,
    NUM_SRL,
    NUM_BEQ,
    NUM_BNE,
    NUM_J,
    NUM_JR,
    NUM_JAL,

    NUM_MOVE,
    NUM_SUBI,
    NUM_LI,
    NUM_HLT,
  };

  uint32_t getRom(const uint32_t addr) const;
  int32_t& getRam(const uint32_t addr);
  int32_t& operator[] (const uint32_t regAddr); // access to register
  void incInstCnt(Cpu::InstNumber);
  map<Cpu::InstNumber, int>& getInstCnt();
  void incPc();
  uint32_t& getPc();
  void setDiffPc(int32_t diffPc);
  unsigned long getInstSize() const;
private:
  map<Cpu::InstNumber, int> mInstCnt; // the counter of executed instructions
};

#endif

