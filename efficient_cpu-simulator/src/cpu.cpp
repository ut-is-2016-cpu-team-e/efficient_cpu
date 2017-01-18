#include <iostream>
#include <cstdint>
#include <string>
#include <fstream>
#include <sstream>
#include <cassert>
#include "cpu.h"
#include "tools.h"
#include "assembler.h"
using namespace std;

Cpu::Cpu()
  : isHltOn(false), mRom(0), mRam(0), mReg(0), mFReg(0),
  mPc(0), mCurrentPc(0), mDiffPc(1), mInstLines(0) {
    mRom = new uint32_t [ADDR]{};
    mRam = new int32_t [ADDR]{};
    mReg = new int32_t [32]{};
    mFReg = new uint32_t [32]{};
    mReg[29] = SP_VAL; // the address that stack pointer has

    ppm = fopen("sim.ppm", "w+");

    char* filename1 = (char*)"bin.log";
    ifstream in1(filename1);

    string command;
    if (in1) {
      while (getline(in1, command)) {
        mRom[mInstLines++] = s2uint32(command);
      }
    } else {
      cerr << "can't open \"bin.log\" file." << endl;
      assert(false);
    }

    char* filename2 = (char*)"asm.log";
    ifstream in2(filename2);
    if (in2) {
      uint32_t cnt = 0;
      while (getline(in2, command)) {
        if (command[command.size() - 1] == ':') {
          mLabel[cnt] = command;
        } else {
          mAssembly.push_back(command);
          cnt++;
        }
      }
    } else {
      cerr << "can't open \"asm.log\" file." << endl;
      assert(false);
    }
  }

Cpu::~Cpu() {
  delete [] mRom;
  delete [] mRam;
  delete [] mReg;
  delete [] mFReg;
  fclose(ppm);
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

uint32_t& Cpu::operator() (const uint32_t regAddr) {
  return mFReg[regAddr];
}

void Cpu::incInstCnt(InstNumber NUM) {
  mInstCnt[NUM]++;
}

map<Cpu::InstNumber, uint64_t>& Cpu::getInstCnt() {
  return mInstCnt;
}

void Cpu::incPc() {
  mPc += mDiffPc;
  mDiffPc = 1;
}

uint32_t& Cpu::getPc() {
  return mPc;
}

uint32_t& Cpu::getCurrentPc() {
  return mCurrentPc;
}

void Cpu::setDiffPc(int32_t diffPc) {
  mDiffPc = diffPc;
}

uint32_t Cpu::getInstLine() const {
  return mInstLines;
}

void Cpu::push(uint32_t addr) {
  mAddrStack.push(addr);
}

uint32_t Cpu::pop() {
  if (mAddrStack.empty()) {
    cerr << "address stack is empty." << endl;
    assert(false);
  }
  uint32_t ret = mAddrStack.top();
  mAddrStack.pop();

  return ret;
}

int Cpu::size() {
  return mAddrStack.size();
}
