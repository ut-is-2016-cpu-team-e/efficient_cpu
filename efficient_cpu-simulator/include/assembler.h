#ifndef INCLUDED_ASM_H
#define INCLUDED_ASM_H

#include <vector>
#include <unordered_map>
using namespace std;

class AsmT {
public:
  int mRegNum, mOperandNum; // mRegNum <= mOperandNum
  string mFormat, mOpcd, mShamt, mFunct;
  AsmT(int r, int v, const char* fo, const char* op, const char* sha, const char* fun)
    : mRegNum(r), mOperandNum(v), mFormat(fo), mOpcd(op), mShamt(sha), mFunct(fun) {}
  AsmT() { AsmT(0, 0, "", "", "", ""); }
};

class Asm {
  unordered_map<string, AsmT> gAsmb;
  unordered_map<string, string> gReg2bin;
  bool isJoutOn;
  bool isDumpOn;
  
  void removeComment(string& cmd);
  void removeComma(string& cmd);
  void removeSpaces(string& cmd);
  int initializeInst(string& cmd, int& addr, unordered_map<string, int>& lab, vector<string>& inst);
  // void divideRegOff(string& s, string& t);
  // void setLibLab(int& addr, unordered_map<string, int>& label, vector<string>& inst);
  void regHandler(string& op);
  string assemble(string& cmd, const int addr, unordered_map<string, int>& label);
  void setInit();
public:
  Asm(const char* filename);
};

#endif
