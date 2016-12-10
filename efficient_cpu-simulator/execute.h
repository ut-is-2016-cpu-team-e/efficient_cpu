#ifndef INCLUDED_EXECUTE_H
#define INCLUDED_EXECUTE_H
#include <map>
using namespace std;

class Cpu;

class Exec {
  Cpu* mCpu;
  double mElapsed; // elapsed time
  uint64_t mInstCnt;
  map<uint32_t, bool> mBreakPoint;

  uint32_t mInst;
  uint32_t mSign;
  uint32_t mOpCode;
  uint32_t mRs;
  uint32_t mRt;
  uint32_t mRd;
  uint32_t mShamt;
  uint32_t mFunct;
  // I format
  int32_t mImm;
  // J format
  uint32_t mAddress;

  // float
  union {
    uint32_t reg;
    float freg;
  } mU;
  float mFrs, mFrt;
  
  int mX, mY; // screen width & height
  int mIntVal;
  float mFloatVal;
  FILE* mPrint;

  // Instruction Analyzer
  void executeR();
  void executeF();

  // Command Analyzer
  void run();
  void _continue();
  void _break(stringstream& ss, string* op);
  void info();
  void enable(stringstream& ss, string* op);
  void disable(stringstream& ss, string* op);
  void step(stringstream& ss, string* op);
  void label();
  void showPpm();
  void help();
public:
  Exec(int, char**);
  ~Exec();
  void execRom(); // Instruction Analyzer(root)
  void mainLoop(); // Command Analyzer(root)
};

#endif
