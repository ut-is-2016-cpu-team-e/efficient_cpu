#include <iostream>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <fstream>
#include <sstream>
#include <cassert>
#include "cpu.h"
#include "tools.h"
#include "assembler.h"
#include "debugger.h"
using namespace std;

Cpu::Cpu(unordered_map<string, string>& option) 
  : isHltOn(false), mRom(0), mRam(0), mReg(0), mFReg(0), 
  mPc(0), mCurrentPc(0), mDiffPc(1), mInstLines(0), mInstSize(0) {
    mRom = new uint32_t [ADDR]{};
    mRam = new int32_t [ADDR]{};
    mReg = new int32_t [32]{};
    mFReg = new uint32_t [32]{};
    mReg[29] = SP_VAL; // the address that stack pointer has

    if (option.find("-asm") != option.end()) {
      genMachineBin(option["-asm"].c_str());
    } 
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

    if (option.find("-debug") != option.end()) {
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
    } else if (option.find("-all") != option.end()) {
      ;
    } else if (option.find("-num") != option.end()) {
      mInstSize = stoul(option["-num"]);
    } else {
      cerr << "please give [-num size] or [-all] as a option" << endl;
      exit(EXIT_FAILURE);
    }
  }

Cpu::~Cpu() {
  delete [] mRom;
  delete [] mRam;
  delete [] mReg;
  delete [] mFReg;
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

uint32_t& Cpu::getCurrentPc() {
  return mCurrentPc;
}

void Cpu::setDiffPc(int32_t diffPc) {
  mDiffPc = diffPc;
}

uint32_t Cpu::getInstLine() const {
  return mInstLines;
}

unsigned long Cpu::getInstSize() const {
  return mInstSize;
}
