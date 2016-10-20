#ifndef INCLUDED_ASM_H
#define INCLUDED_ASM_H

#include <vector>
#include <map>
using namespace std;

class AsmT {
public:
  int mRegNum, mOperandNum; // mRegNum <= mOperandNum
  string mFormat, mOpcd, mShamt, mFunct;
  AsmT(int r, int v, const char* fo, const char* op, const char* sha, const char* fun)
    : mRegNum(r), mOperandNum(v), mFormat(fo), mOpcd(op), mShamt(sha), mFunct(fun) {}
  AsmT() { AsmT(0, 0, "", "", "", ""); }
};

void removeComment(string& cmd);
void removeComma(string& cmd);
void removeSpaces(string& cmd);
int initializeInst(string& cmd, int& addr, map<string, int>& lab, vector<string>& inst);
void dec2bin(string& s, int bitNum);
void reg2bin(string& s);
void divideRegOff(string& s, string& t);
string assemble(string& cmd, const int addr, map<string, int>& label);
void setInit();
void genMachineBin(const char* filename, uint32_t& startPc);

#endif
