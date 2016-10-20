#include <iostream>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <fstream>
#include <sstream>
#include "cpu.h"
#include "tools.h"
#include "assembler.h"
using namespace std;

Cpu::Cpu(char* filename, const char* size, bool isAllOn) 
  : mPc(0), mDiffPc(1), mInstLines(0), mInstSize(0) {
  mRom = new uint32_t [ADDR] {};
  mRam = new int32_t [ADDR] {};
  mReg = new int32_t [32] {};
  mReg[29] = SP_VAL; // the address that stack pointer has
  
  genMachineBin(filename, getPc());
  filename = (char*)"bin.log";
  ifstream in(filename);

  string command;
  if (in) {
    while (getline(in, command)) {
      mRom[mInstLines++] = s2uint32(command);
    } 
  } else {
    cout << "can't open file." << endl;
    exit(EXIT_FAILURE);
  }
  if (!isAllOn) {
    mInstSize = (unsigned long)(atol(size));
  }
}

Cpu::~Cpu() {
  delete [] mRom;
  delete [] mRam;
  delete [] mReg;
}

uint32_t Cpu::getRom(const uint32_t addr) const {
  return mRom[addr];
}

int32_t& Cpu::getRam(const uint32_t addr) {
  return mRam[addr];
}

int32_t& Cpu::operator[] (const uint32_t regAddr) {
  return mReg[regAddr];
}

void Cpu::incInstCnt(InstNumber NUM) {
  mInstCnt[NUM]++;
}

map<Cpu::InstNumber, int>& Cpu::getInstCnt() {
  return mInstCnt;
}

void Cpu::incPc() {
  mPc += mDiffPc;
  mDiffPc = 1;
}

uint32_t& Cpu::getPc() {
  return mPc;
}

void Cpu::setDiffPc(int32_t diffPc) {
  mDiffPc = diffPc;
}

unsigned long Cpu::getInstSize() const {
  return mInstSize;
}
