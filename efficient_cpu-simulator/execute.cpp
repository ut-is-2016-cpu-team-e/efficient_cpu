#include <iostream>
#include <cstdlib>
#include <string>
#include <cmath>
#include <cstdint>
#include <cassert>
#include <cmath>
#include "execute.h"
#include "cpu.h"
#include "tools.h"

void executeR(Cpu& cpu) {
  uint32_t inst = cpu.getRom(cpu.getPc());

  uint32_t rs = bitRange(inst, 21, 25);
  uint32_t rt = bitRange(inst, 16, 20);
  uint32_t rd = bitRange(inst, 11, 15);
  uint32_t shamt = bitRange(inst, 6, 10);
  uint32_t funct = bitRange(inst, 0, 5);
  uint32_t sign = cpu[rt] & 0x80000000;

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
    // neg
  case 0x26 : cpu[rd] = -cpu[rs];
              cpu.incInstCnt(Cpu::NUM_NEG);
              break;
    // sll
  case 0x00 : cpu[rd] = cpu[rt] << shamt;
              cpu.incInstCnt(Cpu::NUM_SLL);
              break;
    // srl
  case 0x02 : cpu[rd] = cpu[rt] >> shamt;
              cpu.incInstCnt(Cpu::NUM_SRL);
              break;
    // sla
  case 0x03 : if (sign) {
                cpu[rd] = (cpu[rt] << shamt) | sign;
              } else {
                cpu[rd] = (cpu[rt] << shamt) & 0x7fffffff;
              }
              cpu.incInstCnt(Cpu::NUM_SLA);
              break;
    // sra
  case 0x04 : for (uint32_t i = 0; i < shamt - 1; i++) {
                sign = sign | (sign >> 1);
              }
              cpu[rd] = (cpu[rt] >> shamt) | sign;
              cpu.incInstCnt(Cpu::NUM_SRA);
              break;
    // jr
  case 0x08 : cpu.getPc() = cpu[rs];
              cpu.incInstCnt(Cpu::NUM_JR);
              break;
  default : cout << "failed to load the instruction." << endl;
            assert(false);
  }
}

void executeF(Cpu& cpu) {
  uint32_t inst = cpu.getRom(cpu.getPc());

  uint32_t opCode = bitRange(inst, 26, 31);
  uint32_t rs = bitRange(inst, 21, 25);
  uint32_t rt = bitRange(inst, 16, 20);
  uint32_t rd = bitRange(inst, 11, 15);
  uint32_t funct = bitRange(inst, 0, 5);
  int32_t imm = bitRange(inst, 0, 15);
  string floatVal;

  union {
    uint32_t reg;
    float freg;
  } u;
  float frs, frt;
  u.reg = cpu(rs);
  frs = u.freg;
  u.reg = cpu(rt);
  frt = u.freg;

  cpu.incPc();

  if (opCode == 16) {
    switch (funct) {
    // fadd
    case 0x04 : u.freg = frs + frt;
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_FADD);
                break;
    // fsub
    case 0x05 : u.freg = frs - frt;
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_FSUB);
                break;
    // fmul
    case 0x06 : u.freg = frs * frt;
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_FMUL);
                break;
    // finv
    case 0x07 : u.freg = 1.0 / frs;
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_FINV);
                break;
    // fneg
    case 0x0b : cpu(rd) = cpu(rs) ^ 0x80000000;
                cpu.incInstCnt(Cpu::NUM_FNEG);
                break;
    // fmove
    case 0x08 : u.freg = frs;
                cpu(rt) = u.reg;
                cpu.incInstCnt(Cpu::NUM_FMOVE);
                break;
    // mfc1
    case 0x09 : u.freg = frs;
                cpu[rt] = u.reg;
                cpu.incInstCnt(Cpu::NUM_MFC1);
                break;
     // mtc1
    case 0x0a : cpu(rt) = cpu[rs];
                cpu.incInstCnt(Cpu::NUM_MTC1);
                break;
    // sqrt
    case 0x0c : u.freg = sqrt(frs);
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_SQRT);
                break;
    // sin
    case 0x0d : u.freg = sin(frs);
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_SIN);
                break;
    // cos
    case 0x0e : u.freg = cos(frs);
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_COS);
                break;
    // atan
    case 0x0f : u.freg = atan(frs);
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_ATAN);
                break;
    // floor
    case 0x10 : u.freg = floor(frs);
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_FLOOR);
                break;
    // itof
    case 0x11 : u.freg = static_cast<float>(cpu[rs]);
                cpu(rd) = u.reg;
                cpu.incInstCnt(Cpu::NUM_ITOF);
                break;
    // ftoi
    case 0x12 : cpu[rd] = static_cast<int32_t>(frs);
                cpu.incInstCnt(Cpu::NUM_FTOI);
                break;


    default : cout << "failed to load the instruction." << endl;
              assert(false);
    }
  } else if (opCode == 17) {
    // fbeq
    if (frs == frt) {
      extendSign16(imm);
      cpu.setDiffPc(imm);
      cpu.incPc();
    }
    cpu.incInstCnt(Cpu::NUM_FBEQ);
  } else if (opCode == 18) {
    // fbne
    if (frs != frt) {
      extendSign16(imm);
      cpu.setDiffPc(imm);
      cpu.incPc();
    }
    cpu.incInstCnt(Cpu::NUM_FBNE);
  } else if (opCode == 19) {
    // fblt
    if (frs < frt) {
      extendSign16(imm);
      cpu.setDiffPc(imm);
      cpu.incPc();
    }
    cpu.incInstCnt(Cpu::NUM_FBLT);
  } else if (opCode == 20) {
    // flw
    extendSign16(imm);
    cpu(rt) = cpu.getRam(cpu[rs] + imm);
    cpu.incInstCnt(Cpu::NUM_FLW);
  } else if (opCode == 21) {
    // fsw
    extendSign16(imm);
    cpu.getRam(cpu[rs] + imm) = cpu(rt);
    cpu.incInstCnt(Cpu::NUM_FSW);
  } else if (opCode == 22) {
    // read_float
    cout << "read_float :";
    cin >> floatVal;
    u.freg = stof(floatVal);
    cpu(0) = u.reg;
    cpu.incInstCnt(Cpu::NUM_READ_FLOAT);
  } else {
    cout << "failed to load the instruction." << endl;
    assert(false);
  }
}

void execRom(Cpu& cpu) {
  uint32_t inst = cpu.getRom(cpu.getPc());
  uint32_t opCode = bitRange(inst, 26, 31);
  uint32_t rs = bitRange(inst, 21, 25);
  uint32_t rt = bitRange(inst, 16, 20);
  // I format
  int32_t imm = bitRange(inst, 0, 15);
  // J format
  uint32_t address = bitRange(inst, 0, 25);
  string intVal;

  cpu.getCurrentPc() = cpu.getPc();

  if (inst == 0 || (opCode != 0 && opCode != 16 && opCode != 17
        && opCode != 18 && opCode != 19 && opCode != 20 && opCode != 21 && opCode != 22)) {
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
  case 0x00 : executeR(cpu);
              break;
    // Float format
  case 0x10 : case 0x11 : case 0x12 : case 0x13 : case 0x14 : case 0x15 : case 0x16 :
              executeF(cpu);
              break;
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
    // blt
  case 0x07 : if (cpu[rs] < cpu[rt]) {
                extendSign16(imm);
                cpu.setDiffPc(imm);
                cpu.incPc();
              }
              cpu.incInstCnt(Cpu::NUM_BLT);
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
    // print_int
  case 0x20 : cout << /*"print_int :" <<*/ cpu[rs] << " ";
              /*cout << "Please press any key to continue.";
              while (1) {
                if (cin.get() == '\n') { break; }
              }*/
              cpu.incInstCnt(Cpu::NUM_PRINT_INT);
              break;
    // read_int
  case 0x21 : cout << "read_int :";
              cin >> intVal;
              cpu[1] = stoi(intVal);
              cpu.incInstCnt(Cpu::NUM_READ_INT);
              break;
    // hlt
  case 0x0f : cpu.isHltOn = true;
              cpu.incInstCnt(Cpu::NUM_HLT);
              break;
    // jout
  case 0x3f : cpu.isHltOn = true;
              cpu.incInstCnt(Cpu::NUM_JOUT);
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
     // lil
  case 0x09 : extendSign16(imm);
              cpu[rs] = imm;
              cpu.incInstCnt(Cpu::NUM_LIL);
              break;

  default : cout << "failed to load the instruction." << endl;
            assert(false);
  }
}
