#include <iostream>
#include <iomanip>
#include <string>
#include <map>
#include <ncurses.h>
#include "show.h"
#include "tools.h"

void showInstLine(Cpu& cpu) {
  int32_t pc = static_cast<int32_t>(cpu.getPc());
  int32_t j = static_cast<int32_t>(cpu.getPc()-15);
  int32_t line = static_cast<int32_t>(cpu.getInstLine());
  move(0, 0);
  for (int32_t i = 0; i < 31; i++) {
    if (j < 0 || j >= line) { j++; continue; }
    if (cpu.mLabel.find(j) != cpu.mLabel.end()) {
      printw("    %s\n", cpu.mLabel[j].c_str());
    }
    if (j == pc) {
      attrset(COLOR_PAIR(1) | A_UNDERLINE);
      printw("<next>--->%05d| %s", j, cpu.mAssembly[j].c_str());
      attrset(COLOR_PAIR(1));
    } else { 
      printw("          %05d| %s", j, cpu.mAssembly[j].c_str());
    }
    addch('\n');
    j++;
  }
}

void showVerticalLine(int y, int x, int n) {
  for (int i = 0; i < n; i++) {
    mvaddch(y+i, x, '|');
  }
}

void showHorizontalLine(int y, int x, int n) {
  for (int i = 0; i < n; i++) {
    mvaddch(y, x+i, '-');
  }
}

void showReg(Cpu& cpu) {
  attron(A_UNDERLINE);
  mvaddstr(0, 60, "<Reg Status>");
  attroff(A_UNDERLINE);
  mvprintw(1, 60, "$zero(reg[0])  : %11d", cpu[0]); 
  mvprintw(2, 60, "$v0  (reg[1])  : %11d", cpu[1]);
  for (int i = 0; i < 8; i++) {
    mvprintw(3+i, 60, "$a%d  (reg[%d])  : %11d", i, i+2, cpu[i+2]);
  }
  mvprintw(11, 60, "$a%d  (reg[%d]) : %11d", 8, 10, cpu[10]);
  mvprintw(12, 60, "$a%d  (reg[%d]) : %11d", 9, 11, cpu[11]);
  for (int i = 10; i < 27; i++) {
    mvprintw(3+i, 60, "$a%d (reg[%d]) : %11d", i, i+2, cpu[i+2]);
  }
  mvprintw(30, 60, "$sp  (reg[29]) : %11d", cpu[29]);
  mvprintw(31, 60, "$fp  (reg[30]) : %11d", cpu[30]);
  mvprintw(32, 60, "$ra  (reg[31]) : %11d", cpu[31]);
}

void showFReg(Cpu& cpu) {
  attron(A_UNDERLINE);
  mvaddstr(0, 92, "<FReg Status>");
  attroff(A_UNDERLINE);
  mvprintw(1, 92, "$fv  (freg[0])  : %11d (%12f)", cpu(0), int322f(cpu(0)));
  for (int i = 0; i < 9; i++) {
    mvprintw(2+i, 92, "$f%d  (freg[%d])  : %11d (%12f)", i, i+1, cpu(i+1), int322f(cpu(i+1)));
  }
  mvprintw(11, 92, "$f%d  (freg[%d]) : %11d (%12f)", 9, 10, cpu(10), int322f(cpu(10)));
  for (int i = 10; i < 31; i++) {
    mvprintw(2+i, 92, "$f%d (freg[%d]) : %11d (%12f)", i, i+1, cpu(i+1), int322f(cpu(i+1)));
  }
}

void showInstCnt(Cpu& cpu) {
  map<Cpu::InstNumber, uint64_t>& a = cpu.getInstCnt();
  uint64_t total = 0;
  int j = 0;
  for (auto i = a.begin(); i != a.end(); i++) {
    total += i->second;
  }

  attron(A_UNDERLINE);
  mvaddstr(j++, 138, "<Instruction Counter>");
  attroff(A_UNDERLINE);
  mvprintw(j++, 138, "nop   : %llu", a[Cpu::NUM_NOP]);
  mvprintw(j++, 138, "add   : %llu", a[Cpu::NUM_ADD]);
  mvprintw(j++, 138, "sub   : %llu", a[Cpu::NUM_SUB]);
  mvprintw(j++, 138, "addi  : %llu", a[Cpu::NUM_ADDI]);
  mvprintw(j++, 138, "subi  : %llu", a[Cpu::NUM_SUBI]);
  mvprintw(j++, 138, "move  : %llu", a[Cpu::NUM_MOVE]);
  mvprintw(j++, 138, "lw    : %llu", a[Cpu::NUM_LW]);
  mvprintw(j++, 138, "sw    : %llu", a[Cpu::NUM_SW]);
  mvprintw(j++, 138, "and   : %llu", a[Cpu::NUM_AND]);
  mvprintw(j++, 138, "andi  : %llu", a[Cpu::NUM_ANDI]);
  mvprintw(j++, 138, "or    : %llu", a[Cpu::NUM_OR]);
  mvprintw(j++, 138, "xor   : %llu", a[Cpu::NUM_XOR]);
  mvprintw(j++, 138, "ori   : %llu", a[Cpu::NUM_ORI]);
  mvprintw(j++, 138, "neg   : %llu", a[Cpu::NUM_NEG]);
  mvprintw(j++, 138, "sll   : %llu", a[Cpu::NUM_SLL]);
  mvprintw(j++, 138, "srl   : %llu", a[Cpu::NUM_SRL]);
  mvprintw(j++, 138, "sla   : %llu", a[Cpu::NUM_SLA]);
  mvprintw(j++, 138, "sra   : %llu", a[Cpu::NUM_SRA]);
  mvprintw(j++, 138, "beq   : %llu", a[Cpu::NUM_BEQ]);
  mvprintw(j++, 138, "bne   : %llu", a[Cpu::NUM_BNE]);
  mvprintw(j++, 138, "blt   : %llu", a[Cpu::NUM_BLT]);
  mvprintw(j++, 138, "j     : %llu", a[Cpu::NUM_J]);
  mvprintw(j++, 138, "jr    : %llu", a[Cpu::NUM_JR]);
  mvprintw(j++, 138, "jal   : %llu", a[Cpu::NUM_JAL]);

  j = 1;
  mvprintw(j++, 163, "fadd       : %llu", a[Cpu::NUM_FADD]);
  mvprintw(j++, 163, "fsub       : %llu", a[Cpu::NUM_FSUB]);
  mvprintw(j++, 163, "fmul       : %llu", a[Cpu::NUM_FMUL]);
  mvprintw(j++, 163, "fdiv       : %llu", a[Cpu::NUM_FDIV]);
  mvprintw(j++, 163, "finv       : %llu", a[Cpu::NUM_FINV]);
  mvprintw(j++, 163, "fabs       : %llu", a[Cpu::NUM_FABS]);
  mvprintw(j++, 163, "flw        : %llu", a[Cpu::NUM_FLW]);
  mvprintw(j++, 163, "fsw        : %llu", a[Cpu::NUM_FSW]);
  mvprintw(j++, 163, "fbeq       : %llu", a[Cpu::NUM_FBEQ]);
  mvprintw(j++, 163, "fbne       : %llu", a[Cpu::NUM_FBNE]);
  mvprintw(j++, 163, "fblt       : %llu", a[Cpu::NUM_FBLT]);
  mvprintw(j++, 163, "fmove      : %llu", a[Cpu::NUM_FMOVE]);
  mvprintw(j++, 163, "mfc1       : %llu", a[Cpu::NUM_MFC1]);
  mvprintw(j++, 163, "mtc1       : %llu", a[Cpu::NUM_MTC1]);
  mvprintw(j++, 163, "fneg       : %llu", a[Cpu::NUM_FNEG]);

  j++;
  mvprintw(j++, 163, "sqrt       : %llu", a[Cpu::NUM_SQRT]);
  mvprintw(j++, 163, "sin        : %llu", a[Cpu::NUM_SIN]);
  mvprintw(j++, 163, "cos        : %llu", a[Cpu::NUM_COS]);
  mvprintw(j++, 163, "atan       : %llu", a[Cpu::NUM_ATAN]);
  mvprintw(j++, 163, "floor      : %llu", a[Cpu::NUM_FLOOR]);
  mvprintw(j++, 163, "itof       : %llu", a[Cpu::NUM_ITOF]);
  mvprintw(j++, 163, "ftoi       : %llu", a[Cpu::NUM_FTOI]);
  mvprintw(j++, 163, "print_int  : %llu", a[Cpu::NUM_PRINT_INT]);
  mvprintw(j++, 163, "print_byte : %llu", a[Cpu::NUM_PRINT_BYTE]);
  mvprintw(j++, 163, "read_int   : %llu", a[Cpu::NUM_READ_INT]);
  mvprintw(j++, 163, "read_float : %llu", a[Cpu::NUM_READ_FLOAT]);

  j++;
  mvprintw(j++, 163, "li         : %llu", a[Cpu::NUM_LI]);
  mvprintw(j++, 163, "lil        : %llu", a[Cpu::NUM_LIL]);
  mvprintw(j++, 163, "hlt        : %llu", a[Cpu::NUM_HLT]);
  mvprintw(j++, 163, "jout       : %llu", a[Cpu::NUM_JOUT]);

  mvaddch(j++, 163, '\n');
  mvprintw(j, 163, "(total)    : %llu", total);
}

void showAll(int y, int x, Cpu& cpu) {
  attron(A_UNDERLINE);
  mvprintw(y-7, 0, "<current> %05d| %s", cpu.getCurrentPc(), cpu.mAssembly[cpu.getCurrentPc()].c_str());
  attroff(A_UNDERLINE);

  mvaddstr(y-2, 0, "(Log)");

  attrset(COLOR_PAIR(2));
  mvaddstr(y-5, 0, "(Command)");
  mvaddch(y-4, 0, '>');

  attrset(COLOR_PAIR(1));
  showInstLine(cpu);
  showReg(cpu);
  showFReg(cpu);
  showInstCnt(cpu);

  showHorizontalLine(y-6, 0, x);
  showHorizontalLine(y-3, 0, x);
  showVerticalLine(0, 58, y-6);
  showVerticalLine(0, 90, y-6);
  showVerticalLine(0, 136, y-6);

  move(y-4, 1);
}
