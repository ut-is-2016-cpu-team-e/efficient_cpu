#ifndef INCLUDED_CPU_H
#define INCLUDED_CPU_H

#include <map>
#include <unordered_map>
#include <vector>
#include <stack>
using namespace std;

#define ADDR (1024 * 1024 * 4)
#define SP_VAL (1024 * 1024 * 3) // 3M

class Cpu {
public:
  Cpu();
  ~Cpu();
  bool isHltOn;
  unordered_map<uint32_t, string> mLabel;
  unordered_map<uint32_t, uint32_t> mLabelCnt;
  vector<string> mAssembly;
  FILE* ppm; // ppm output

  // instruction number
  enum InstNumber {
    NUM_NOP,
    NUM_ADD,
    NUM_SUB,
    NUM_MUL,
    NUM_ADDI,
    NUM_LW,
    NUM_SW,
    NUM_AND,
    NUM_ANDI,
    NUM_OR,
    NUM_XOR,
    NUM_ORI,
    NUM_NEG,
    NUM_SLL,
    NUM_SRL,
    NUM_SLA,
    NUM_SRA,
    NUM_SL2ADD,
    NUM_BEQ,
    NUM_BNE,
    NUM_BLT,
    NUM_BNI,
    NUM_J,
    NUM_JR,
    NUM_JAL,
    NUM_PUSH,
    NUM_POP,

    NUM_MOVE,
    NUM_LIL,
    NUM_SUBI,
    NUM_LI,
    NUM_FADD,
    NUM_FSUB,
    NUM_FMUL,
    NUM_FDIV,
    NUM_FMADD,
    NUM_FMSUB,
    NUM_FINV,
    NUM_FABS,
    NUM_FLW,
    NUM_FSW,
    NUM_FBEQ,
    NUM_FBNE,
    NUM_FBLT,
    NUM_BLTFABS,
    NUM_FMOVE,
    NUM_MFC1,
    NUM_MTC1,
    NUM_FLIHI,
    NUM_FLILO,
    NUM_FNEG,

    NUM_FSQRT,
    NUM_SIN,
    NUM_COS,
    NUM_ATAN,
    NUM_FLOOR,
    NUM_ITOF,
    NUM_FTOI,
    NUM_PRINT_INT,
    NUM_PRINT_CHAR,
    NUM_READ_INT,
    NUM_READ_FLOAT,
    NUM_HLT,
    NUM_JOUT,
  };

  uint32_t getRom(const uint32_t addr) const;
  int32_t& getRam(const uint32_t addr);
  int32_t& operator[] (const uint32_t regAddr); // access to reg
  uint32_t& operator() (const uint32_t regAddr); // access to freg 
  void incInstCnt(Cpu::InstNumber);
  map<Cpu::InstNumber, uint64_t>& getInstCnt();
  void incPc();
  uint32_t& getPc();
  uint32_t& getCurrentPc();
  void setDiffPc(int32_t diffPc);
  uint32_t getInstLine() const;
  void push(uint32_t addr);
  uint32_t pop();
  int size();
  
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

  // $fv      freg[0]
  // $f0-$f30 freg[1]-freg[31]
  uint32_t* mFReg;

  uint32_t mPc; // program counter(next)
  uint32_t mCurrentPc;
  int32_t mDiffPc; // for the branch
  uint32_t mInstLines;
  stack<uint32_t> mAddrStack;
  map<Cpu::InstNumber, uint64_t> mInstCnt; // the counter of executed instructions
};

#endif
