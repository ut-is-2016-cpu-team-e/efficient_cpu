// *********************
// cpuex2016 
// group-E simulator
// *********************
#include <stdio.h>
#include <iostream>
#include <cstdlib>
#include <string>
#include <string.h>
#include <stdlib.h>
#include <fstream>
#include <sstream>
#include <cmath>
#include <cstdint>
#include <cassert>
#include "tools.h"
#include "cpu.h"
#include "show.h"
using namespace std;

#define ADDR (1024 * 1024 * 4)

bool isHltOn = false;
bool isAllOn = false;

void executeR(Cpu& cpu) {
  uint32_t inst = cpu.getRom(cpu.getPc());

  uint32_t rs = bitRange(inst, 21, 25);
  uint32_t rt = bitRange(inst, 16, 20);
  uint32_t rd = bitRange(inst, 11, 15);
  uint32_t shamt = bitRange(inst, 6, 10);
  uint32_t funct = bitRange(inst, 0, 5);

  cpu.incPc();

  switch (funct) {
    // add
  case 0x20 : cpu[rd] = cpu[rs] + cpu[rt];
              cpu.incInstCnt(Cpu::NUM_ADD);
              break;
    // sub
  case 0x22 : cpu[rd] = cpu[rs] - cpu[rt];
              cpu.incInstCnt(Cpu::NUM_SUB);
              break;
    // and
  case 0x24 : cpu[rd] = cpu[rs] & cpu[rt];
              cpu.incInstCnt(Cpu::NUM_AND);
              break;
    // or
  case 0x25 : cpu[rd] = cpu[rs] | cpu[rt];
              cpu.incInstCnt(Cpu::NUM_OR);
              break;
    // slt
  case 0x2a : cpu[rd] = ((int)cpu[rs] < (int)cpu[rt]) ? 1 : 0;
              cpu.incInstCnt(Cpu::NUM_SLT);
              break;
    // sll
  case 0x00 : cpu[rd] = cpu[rt] << shamt;
              cpu.incInstCnt(Cpu::NUM_SLL);
              break;
    // srl
  case 0x02 : cpu[rd] = cpu[rt] >> shamt;
              cpu.incInstCnt(Cpu::NUM_SRL);
              break;
    // jr
  case 0x08 : cpu.getPc() = cpu[rs];
              cpu.incInstCnt(Cpu::NUM_JR);
              break;
  default : cout << "failed to load the opcode" << endl;
            assert(false);
  }
}

void execRom(Cpu& cpu) {
  uint32_t inst = cpu.getRom(cpu.getPc());
  uint32_t opCode = bitRange(inst, 26, 31);
  uint32_t rs = bitRange(inst, 21, 25);
  uint32_t rt = bitRange(inst, 16, 20);
  // I format
  uint32_t imm = bitRange(inst, 0, 15);
  // J format
  uint32_t address = bitRange(inst, 0, 25);

  if (inst == 0 || opCode != 0) {
    cpu.incPc(); 
  }
  // nop
  if (inst == 0) {
    cpu.incInstCnt(Cpu::NUM_NOP);
    return;
  }
  // others
  switch (opCode) {
    // R format
  case 0x00 : executeR(cpu); break;

    // I format
    // addi
  case 0x08 : extendSign16(imm);
              cpu[rt] = cpu[rs] + imm;
              cpu.incInstCnt(Cpu::NUM_ADDI);
              break;
    // lw
  case 0x23 : extendSign16(imm);
              cpu[rt] = cpu.getRam(cpu[rs] + imm);
              cpu.incInstCnt(Cpu::NUM_LW);
              break;
    // sw
  case 0x2b : extendSign16(imm);
              cpu.getRam(cpu[rs] + imm) = cpu[rt];
              cpu.incInstCnt(Cpu::NUM_SW);
              break;
    // andi
  case 0x0c : cpu[rt] = cpu[rs] & imm;
              cpu.incInstCnt(Cpu::NUM_ANDI);
              break;
    // ori
  case 0x0d : cpu[rt] = cpu[rs] | imm;
              cpu.incInstCnt(Cpu::NUM_ORI);
              break;
    // slti
  case 0x0a : extendSign16(imm);
              cpu[rt] = (cpu[rs] < imm) ? 1 : 0;
              cpu.incInstCnt(Cpu::NUM_SLTI);
              break;
    // beq
  case 0x04 : if (cpu[rs] == cpu[rt]) {
                extendSign16(imm);
                cpu.setDiffPc(imm);
                cpu.incPc();
              }
              cpu.incInstCnt(Cpu::NUM_BEQ);
              break;
    // bne
  case 0x05 : if (cpu[rs] != cpu[rt]) {
                extendSign16(imm);
                cpu.setDiffPc(imm);
                cpu.incPc();
              }
              cpu.incInstCnt(Cpu::NUM_BNE);
              break;

    // move
  case 0x0e : cpu[rt] = cpu[rs];
              cpu.incInstCnt(Cpu::NUM_MOVE);
              break;
    // subi
  case 0x06 : extendSign16(imm);
              cpu[rt] = cpu[rs] - imm;
              cpu.incInstCnt(Cpu::NUM_SUBI);
              break;
    // li
  case 0x01 : extendSign16(imm);
              cpu[rt] = imm;
              cpu.incInstCnt(Cpu::NUM_LI);
              break;
    // hlt
  case 0x0f : isHltOn = true;
              cpu.incInstCnt(Cpu::NUM_HLT);
              break;

    // J format
    // j
  case 0x02 : cpu.getPc() = address;
              cpu.incInstCnt(Cpu::NUM_J);
              break;
    // jal
  case 0x03 : cpu[31] = cpu.getPc();
              cpu.getPc() = address;
              cpu.incInstCnt(Cpu::NUM_JAL);
              break;
            
  default : cout << "failed to load the opcode" << endl;
            assert(false);
  }
}

int main(int argc, char* argv[])
{
  if (argc != 3) {
    cerr << "usage: ./sim  foo.s  number-of-instructions[-all]" << endl;
    return -1;
  } else if (argc == 3) {
    if (!strcmp(argv[2], "-all")) {
      isAllOn = true;
    }
  }

  // initialize CPU and MEMORY
  Cpu cpu(argv[1], argv[2], isAllOn);
  
  // execute
  if (!isAllOn) {
    for (unsigned long i = 0; i < cpu.getInstSize() && isHltOn == false; i++) {
      execRom(cpu);
    }
  } else {
    for (unsigned long i = 0; isHltOn == false; i++) {
      execRom(cpu);
    }
  }


  showReg(cpu);
  showInstCnt(cpu);

  return 0;
}


