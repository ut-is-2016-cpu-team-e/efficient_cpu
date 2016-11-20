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

void genMachineBin(const char* filename);

#endif
