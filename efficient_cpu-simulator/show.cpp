#include <iostream>
#include <iomanip>
#include <string>
#include <map>
#include "show.h"
#include "tools.h"
using namespace std;

void showInstAll(Cpu& cpu) {
  cout << string(90, '*') << endl << string(90, '*') << endl;
  for (uint32_t i = 0; i < cpu.getInstLine(); i++) {
    if (cpu.mLabel.find(i) != cpu.mLabel.end()) {
      cout << "       " << cpu.mLabel[i] << endl;
    }
    if (i == cpu.getPc()) {
      cout << "<next>-->" << setw(3) << setfill('0') << right << i << "| ";
    } else { 
      cout << "         " << setw(3) << setfill('0') << right << i << "| ";
    }
    cout << uint322bin(cpu.getRom(i), 32) << "  " + cpu.mAssembly[i] << endl;
  }
}

void showInst(Cpu& cpu) {
  int32_t pc = static_cast<int32_t>(cpu.getPc());
  int32_t line = static_cast<int32_t>(cpu.getInstLine());
  cout << string(90, '*') << endl << string(90, '*') << endl;
  for (int32_t i = pc - 20; i < pc + 20; i++) {
    if (i < 0 || i >= line) { cout << endl; continue; }
    if (cpu.mLabel.find(i) != cpu.mLabel.end()) {
      cout << "       " << cpu.mLabel[i] << endl;
    }
    if (i == pc) {
      cout << "<next>-->" << setw(3) << setfill('0') << right << i << "| ";
    } else { 
      cout << "         " << setw(3) << setfill('0') << right << i << "| ";
    }
    cout << uint322bin(cpu.getRom(i), 32) << "  " + cpu.mAssembly[i] << endl;
  }
}

void showStatus(Cpu& cpu) {
  map<Cpu::InstNumber, uint64_t>& a = cpu.getInstCnt();
  uint64_t total = 0;
  for (auto i = a.begin(); i != a.end(); i++) {
    total += i->second;
  }
  cout << string(90, '-') << endl;
  cout << "<Register Status>" << string(64, ' ') << "<Instruction Counter>" << endl;
  cout << "$zero(reg[0])  : " << setw(10) << setfill(' ') << left << cpu[0] << string(4, ' ') 
    << "$fv  (freg[0])  : " << setw(10) << setfill(' ') << left << cpu(0)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(0)) << ")" << string(8, ' ') << "| nop    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_NOP] << "| sqrt       : " << a[Cpu::NUM_SQRT] << endl;
  cout << "$v0  (reg[1])  : " << setw(10) << setfill(' ') << left << cpu[1] << string(4, ' ')
    << "$f0  (freg[1])  : " << setw(10) << setfill(' ') << left << cpu(1)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(1)) << ")" << string(8, ' ') << "| add    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_ADD] << "| sin        : " << a[Cpu::NUM_SIN] << endl;
  cout << "$a0  (reg[2])  : " << setw(10) << setfill(' ') << left << cpu[2] << string(4, ' ')
    << "$f1  (freg[2])  : " << setw(10) << setfill(' ') << left << cpu(2)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(2)) << ")" << string(8, ' ') << "| sub    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_SUB] << "| cos        : " << a[Cpu::NUM_COS] << endl;
  cout << "$a1  (reg[3])  : " << setw(10) << setfill(' ') << left <<  cpu[3] << string(4, ' ')
    << "$f2  (freg[3])  : " << setw(10) << setfill(' ') << left << cpu(3)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(3)) << ")" << string(8, ' ') << "| addi   : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_ADDI] << "| floor      : " << a[Cpu::NUM_FLOOR] << endl;
  cout << "$a2  (reg[4])  : " << setw(10) << setfill(' ') << left << cpu[4] << string(4, ' ')
    << "$f3  (freg[4])  : " << setw(10) << setfill(' ') << left << cpu(4)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(4)) << ")" << string(8, ' ') << "| lw     : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_LW] << "| atan       : " << a[Cpu::NUM_ATAN] << endl;
  cout << "$a3  (reg[5])  : " << setw(10) << setfill(' ') << left << cpu[5] << string(4, ' ')
    << "$f4  (freg[5])  : " << setw(10) << setfill(' ') << left << cpu(5)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(5)) << ")" << string(8, ' ') << "| sw     : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_SW] << "| itof       : " << a[Cpu::NUM_ITOF] << endl;
  cout << "$a4  (reg[6])  : " << setw(10) << setfill(' ') << left << cpu[6] << string(4, ' ')
    << "$f5  (freg[6])  : " << setw(10) << setfill(' ') << left << cpu(6)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(6)) << ")" << string(8, ' ') << "| and    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_AND] << "| ftoi       : " << a[Cpu::NUM_FTOI] << endl;
  cout << "$a5  (reg[7])  : " << setw(10) << setfill(' ') << left << cpu[7] << string(4, ' ')
    << "$f6  (freg[7])  : " << setw(10) << setfill(' ') << left << cpu(7)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(7)) << ")" << string(8, ' ') << "| andi   : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_ANDI] << "| print_int  : " << a[Cpu::NUM_PRINT_INT] << endl;
  cout << "$a6  (reg[8])  : " << setw(10) << setfill(' ') << left << cpu[8] << string(4, ' ')
    << "$f7  (freg[8])  : " << setw(10) << setfill(' ') << left << cpu(8)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(8)) << ")" << string(8, ' ') << "| or     : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_OR] << "| read_int   : " << a[Cpu::NUM_READ_INT] << endl;
  cout << "$a7  (reg[9])  : " << setw(10) << setfill(' ') << left << cpu[9] << string(4, ' ')
    << "$f8  (freg[9])  : " << setw(10) << setfill(' ') << left << cpu(9)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(9)) << ")" << string(8, ' ') << "| ori    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_ORI] << "| read_float : " << a[Cpu::NUM_READ_FLOAT] << endl;
  cout << "$a8  (reg[10]) : " << setw(10) << setfill(' ') << left << cpu[10] << string(4, ' ')
    << "$f9  (freg[10]) : " << setw(10) << setfill(' ') << left << cpu(10)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(10)) << ")" << string(8, ' ') << "| neg    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_NEG] << "|" << endl;
  cout << "$a9  (reg[11]) : " << setw(10) << setfill(' ') << left << cpu[11] << string(4, ' ')
    << "$f10 (freg[11]) : " << setw(10) << setfill(' ') << left << cpu(11)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(11)) << ")" << string(8, ' ') << "| sll    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_SLL] << "| hlt        : " << a[Cpu::NUM_HLT] << endl;
  cout << "$a10 (reg[12]) : " << setw(10) << setfill(' ') << left << cpu[12] << string(4, ' ')
    << "$f11 (freg[12]) : " << setw(10) << setfill(' ') << left << cpu(12)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(12)) << ")" << string(8, ' ') << "| srl    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_SRL] << "| jout       : " << a[Cpu::NUM_JOUT] << endl;
  cout << "$a11 (reg[13]) : " << setw(10) << setfill(' ') << left << cpu[13] << string(4, ' ')
    << "$f12 (freg[13]) : " << setw(10) << setfill(' ') << left << cpu(13)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(13)) << ")" << string(8, ' ') << "| sla    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_SLA] << "|" << endl;
  cout << "$a12 (reg[14]) : " << setw(10) << setfill(' ') << left << cpu[14] << string(4, ' ')
    << "$f13 (freg[14]) : " << setw(10) << setfill(' ') << left << cpu(14)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(14)) << ")" << string(8, ' ') << "| sra    : "
    << setw(12) << setfill(' ') << left << a[Cpu::NUM_SRA] << "|(total)     : " << total << endl;
  cout << "$a13 (reg[15]) : " << setw(10) << setfill(' ') << left << cpu[15] << string(4, ' ')
    << "$f14 (freg[15]) : " << setw(10) << setfill(' ') << left << cpu(15)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(15)) << ")" << string(8, ' ') << "| beq    : " << a[Cpu::NUM_BEQ] << endl;
  cout << "$a14 (reg[16]) : " << setw(10) << setfill(' ') << left << cpu[16] << string(4, ' ')
    << "$f15 (freg[16]) : " << setw(10) << setfill(' ') << left << cpu(16)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(16)) << ")" << string(8, ' ') << "| bne    : " << a[Cpu::NUM_BNE] << endl;
  cout << "$a15 (reg[17]) : " << setw(10) << setfill(' ') << left << cpu[17] << string(4, ' ')
    << "$f16 (freg[17]) : " << setw(10) << setfill(' ') << left << cpu(17)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(17)) << ")" << string(8, ' ') << "| blt    : " << a[Cpu::NUM_BLT] << endl;
  cout << "$a16 (reg[18]) : " << setw(10) << setfill(' ') << left << cpu[18] << string(4, ' ')
    << "$f17 (freg[18]) : " << setw(10) << setfill(' ') << left << cpu(18)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(18)) << ")" << string(8, ' ') << "| j      : " << a[Cpu::NUM_J] << endl;
  cout << "$a17 (reg[19]) : " << setw(10) << setfill(' ') << left << cpu[19] << string(4, ' ')
    << "$f18 (freg[19]) : " << setw(10) << setfill(' ') << left << cpu(19)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(19)) << ")" << string(8, ' ') << "| jr     : " << a[Cpu::NUM_JR] << endl;
  cout << "$a18 (reg[20]) : " << setw(10) << setfill(' ') << left << cpu[20] << string(4, ' ')
    << "$f19 (freg[20]) : " << setw(10) << setfill(' ') << left << cpu(20)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(20)) << ")" << string(8, ' ') << "| jal    : " << a[Cpu::NUM_JAL] << endl;
  cout << "$a19 (reg[21]) : " << setw(10) << setfill(' ') << left << cpu[21] << string(4, ' ')
    << "$f20 (freg[21]) : " << setw(10) << setfill(' ') << left << cpu(21)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(21)) << ")" << string(8, ' ') << "| move   : " << a[Cpu::NUM_MOVE] << endl;
  cout << "$a20 (reg[22]) : " << setw(10) << setfill(' ') << left << cpu[22] << string(4, ' ')
    << "$f21 (freg[22]) : " << setw(10) << setfill(' ') << left << cpu(22)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(22)) << ")" << string(8, ' ') << "| lil    : " << a[Cpu::NUM_LIL] << endl;
  cout << "$a21 (reg[23]) : " << setw(10) << setfill(' ') << left << cpu[23] << string(4, ' ')
    << "$f22 (freg[23]) : " << setw(10) << setfill(' ') << left << cpu(23)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(23)) << ")" << string(8, ' ') << "| subi   : " << a[Cpu::NUM_SUBI] << endl;
  cout << "$a22 (reg[24]) : " << setw(10) << setfill(' ') << left << cpu[24] << string(4, ' ')
    << "$f23 (freg[24]) : " << setw(10) << setfill(' ') << left << cpu(24)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(24)) << ")" << string(8, ' ') << "| li     : " << a[Cpu::NUM_LI] << endl;
  cout << "$a23 (reg[25]) : " << setw(10) << setfill(' ') << left << cpu[25] << string(4, ' ')
    << "$f24 (freg[25]) : " << setw(10) << setfill(' ') << left << cpu(25)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(25)) << ")" << string(8, ' ') << "| fadd   : " << a[Cpu::NUM_FADD] << endl;
  cout << "$a24 (reg[26]) : " << setw(10) << setfill(' ') << left << cpu[26] << string(4, ' ')
    << "$f25 (freg[26]) : " << setw(10) << setfill(' ') << left << cpu(26)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(26)) << ")" << string(8, ' ') << "| fsub   : " << a[Cpu::NUM_FSUB] << endl;
  cout << "$a25 (reg[27]) : " << setw(10) << setfill(' ') << left << cpu[27] << string(4, ' ')
    << "$f26 (freg[27]) : " << setw(10) << setfill(' ') << left << cpu(27)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(27)) << ")" << string(8, ' ') << "| fmul   : " << a[Cpu::NUM_FMUL] << endl;
  cout << "$a26 (reg[28]) : " << setw(10) << setfill(' ') << left << cpu[28] << string(4, ' ')
    << "$f27 (freg[28]) : " << setw(10) << setfill(' ') << left << cpu(28)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(28)) << ")" << string(8, ' ') << "| finv   : " << a[Cpu::NUM_FINV] << endl;
  cout << "$sp  (reg[29]) : " << setw(10) << setfill(' ') << left << cpu[29] << string(4, ' ')
    << "$f28 (freg[29]) : " << setw(10) << setfill(' ') << left << cpu(29)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(29)) << ")" << string(8, ' ') << "| flw    : " << a[Cpu::NUM_FLW] << endl;
  cout << "$fp  (reg[30]) : " << setw(10) << setfill(' ') << left << cpu[30] << string(4, ' ')
    << "$f29 (freg[30]) : " << setw(10) << setfill(' ') << left << cpu(30)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(30)) << ")" << string(8, ' ') << "| fsw    : " << a[Cpu::NUM_FSW] << endl;
  cout << "$ra  (reg[31]) : " << setw(10) << setfill(' ') << left << cpu[31] << string(4, ' ')
    << "$f30 (freg[31]) : " << setw(10) << setfill(' ') << left << cpu(31)
    << "(" << setw(12) << setfill(' ') << right << int322f(cpu(31)) << ")" << string(8, ' ') << "| fbeq   : " << a[Cpu::NUM_FBEQ] << endl;
  cout << string(81, ' ') << "| fbne   : " << a[Cpu::NUM_FBNE] << endl;
  cout << string(81, ' ') << "| fblt   : " << a[Cpu::NUM_FBLT] << endl;
  cout << string(81, ' ') << "| fmove  : " << a[Cpu::NUM_FMOVE] << endl;
  cout << string(81, ' ') << "| mfc1   : " << a[Cpu::NUM_MFC1] << endl;
  cout << string(81, ' ') << "| mtc1   : " << a[Cpu::NUM_MTC1] << endl;
  cout << string(81, ' ') << "| fneg   : " << a[Cpu::NUM_FNEG] << endl;
}  

void showCurrentInst(Cpu& cpu) {
  uint32_t currentPc = cpu.getCurrentPc();
  cout << string(90, '-') << endl;
  cout << "<current>" << setw(3) << setfill('0') << right << currentPc << "| " 
    << uint322bin(cpu.getRom(currentPc), 32) << "  " + cpu.mAssembly[currentPc] << endl;
}
